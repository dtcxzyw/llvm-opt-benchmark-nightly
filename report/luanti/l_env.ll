inline.NumInlined: 1766
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9ModApiEnv15l_bulk_set_nodeEP9lua_State:bb.a
bb.g:                                             ; preds = %bb.e, %._crit_edge, %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %._crit_edge ], [ 1, %bb.e ]
  ret i32 %.1
}

declare i64 @lua_objlen(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_rawgeti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ModApiEnv10l_add_nodeEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.MapNode, align 4            ; 4 uses
  %i.a = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 55, ptr nonnull @.str.11, i32 noundef 1, i1 noundef zeroext false)
  br label %_ZN9ModApiEnv10l_set_nodeEP9lua_State.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.c = tail call i32 @_Z8readnodeP9lua_Statei(ptr noundef %0, i32 noundef 2)
  store i32 %i.c, ptr %1, align 4
  %i.d = call noundef zeroext i1 @_ZN17ServerEnvironment7setNodeEN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(3560) %i.a, i48 %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.e = zext i1 %i.d to i32
  call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN9ModApiEnv10l_set_nodeEP9lua_State.exit

_ZN9ModApiEnv10l_set_nodeEP9lua_State.exit:       ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ModApiEnv13l_remove_nodeEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 55, ptr nonnull @.str.11, i32 noundef 1, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.c = tail call noundef zeroext i1 @_ZN17ServerEnvironment10removeNodeEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(3560) %i.a, i48 %i.b)
  %i.d = zext i1 %i.c to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN17ServerEnvironment10removeNodeEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(3560), i48) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ModApiEnv11l_swap_nodeEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.MapNode, align 4            ; 4 uses
  %i.a = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 55, ptr nonnull @.str.11, i32 noundef 1, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.c = tail call i32 @_Z8readnodeP9lua_Statei(ptr noundef %0, i32 noundef 2)
  store i32 %i.c, ptr %1, align 4
  %i.d = call noundef zeroext i1 @_ZN17ServerEnvironment8swapNodeEN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(3560) %i.a, i48 %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.e = zext i1 %i.d to i32
  call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN17ServerEnvironment8swapNodeEN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(3560), i48, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ModApiEnv16l_bulk_swap_nodeEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.MapNode, align 4            ; 4 uses
  %i.a = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 55, ptr nonnull @.str.11, i32 noundef 1, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5)
  %i.b = tail call i64 @lua_objlen(ptr noundef %0, i32 noundef 1)
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.d = tail call i32 @_Z8readnodeP9lua_Statei(ptr noundef %0, i32 noundef 2)
  store i32 %i.d, ptr %1, align 4
  %.not2021 = icmp slt i32 %i.c, 1
  br i1 %.not2021, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.e = zext nneg i8 %spec.select to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.018.lcssa = phi i32 [ 1, %bb.c ], [ %i.e, %._crit_edge.loopexit ]
  call void @lua_pushboolean(ptr noundef %0, i32 noundef %.018.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01723 = phi i32 [ %i.h, %.lr.ph ], [ 1, %bb.c ] ; 3 uses
  %.01822 = phi i8 [ %spec.select, %.lr.ph ], [ 1, %bb.c ]
  call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %.01723)
  %i.f = call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef -1)
  %i.g = call noundef zeroext i1 @_ZN17ServerEnvironment8swapNodeEN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(3560) %i.a, i48 %i.f, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %spec.select = select i1 %i.g, i8 %.01822, i8 0 ; 2 uses
  call void @lua_settop(ptr noundef %0, i32 noundef -2)
  %i.h = add nuw i32 %.01723, 1
  %exitcond.not = icmp eq i32 %.01723, %i.c
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !98

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @luaL_checktype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 5) i32 @_ZN9ModApiEnv14l_get_node_rawEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1)
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 17, ptr nonnull @.str.12, i32 noundef 1, i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2)
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 17, ptr nonnull @.str.13, i32 noundef 1, i1 noundef zeroext true)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = tail call i32 @lua_type(ptr noundef %0, i32 noundef 3)
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 17, ptr nonnull @.str.14, i32 noundef 1, i1 noundef zeroext true)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.k = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef 2)
  %i.l = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef 3)
  %i.m = fcmp nsz ogt double %i.j, 0.000000e+00
  %i.n = select nsz i1 %i.m, double 5.000000e-01, double -5.000000e-01
  %i.o = fadd nsz double %i.j, %i.n
  %i.p = fptosi double %i.o to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  %i.u = insertelement <2 x double> poison, double %i.l, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.k, i64 1 ; 2 uses
  %i.w = fcmp nsz ogt <2 x double> %i.v, zeroinitializer
  %i.x = select <2 x i1> %i.w, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double -5.000000e-01)
  %i.y = fadd nsz <2 x double> %i.v, %i.x
  %i.z = fptosi <2 x double> %i.y to <2 x i16>
  %i.aa = zext <2 x i16> %i.z to <2 x i48>
  %i.ab = shl nuw <2 x i48> %i.aa, <i48 32, i48 16>
  %.sroa.530.0.insert.insert = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.ab)
  %.sroa.029.0.insert.ext = zext i16 %i.p to i48
  %.sroa.029.0.insert.insert = or disjoint i48 %.sroa.530.0.insert.insert, %.sroa.029.0.insert.ext
  %i.ac = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.t, i48 %.sroa.029.0.insert.insert, ptr noundef nonnull %i.a) ; 3 uses
  %.sroa.4.0.extract.shift = lshr i32 %i.ac, 16
  %.sroa.5.0.extract.shift = lshr i32 %i.ac, 24
  %.sroa.5.0.extract.trunc = zext nneg i32 %.sroa.5.0.extract.shift to i64
  %i.ad = and i32 %i.ac, 65535
  %i.ae = zext nneg i32 %i.ad to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ae)
  %i.af = and i32 %.sroa.4.0.extract.shift, 255
  %i.ag = zext nneg i32 %i.af to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ag)
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.sroa.5.0.extract.trunc)
  %i.ah = load i8, ptr %i.a, align 1, !tbaa !99, !range !72, !noundef !73
  %i.ai = zext nneg i8 %i.ah to i32
  call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ 4, %bb.h ], [ 0, %bb.a ]
  ret i32 %.0
}

declare double @lua_tonumber(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #2

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ModApiEnv16l_get_node_lightEP9lua_State(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.e = tail call noundef i32 @_ZN11Environment12getTimeOfDayEv(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  %i.f = tail call i32 @lua_isnumber(ptr noundef %0, i32 noundef 2)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef 2)
  %i.h = fmul nsz double %i.g, 2.400000e+04
  %i.i = fptoui double %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.017 = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  %i.j = urem i32 %.017, 24000                    ; 2 uses
  %i.k = uitofp nsz nneg i32 %i.j to float        ; 2 uses
  %i.l = icmp samesign ugt i32 %i.j, 12000
  %i.m = fsub nsz float 2.400000e+04, %i.k
  %.241.i = select nsz i1 %i.l, float %i.m, float %i.k ; 10 uses
  %i.n = fcmp nsz ugt float %.241.i, 4.625000e+03
  br i1 %i.n, label %bb.e, label %_Z22time_to_daynight_ratiofb.exit

bb.e:                                             ; preds = %bb.d
  %i.o = fcmp nsz ult float %.241.i, 6.125000e+03
  br i1 %i.o, label %.preheader.preheader.i, label %_Z22time_to_daynight_ratiofb.exit

.preheader.preheader.i:                           ; preds = %bb.e
  %i.p = fcmp nsz ult float %.241.i, 4.375000e+03
  br i1 %i.p, label %bb.f, label %.preheader.1.i

bb.f:                                             ; preds = %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.04263.lcssa.wide.i = phi i64 [ 0, %.preheader.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 3, %.preheader.3.i ], [ 4, %.preheader.4.i ], [ 5, %.preheader.5.i ], [ 6, %.preheader.6.i ], [ 7, %.preheader.7.i ] ; 2 uses
  %.lcssa.i = phi float [ 4.375000e+03, %.preheader.preheader.i ], [ 4.625000e+03, %.preheader.1.i ], [ 4.875000e+03, %.preheader.2.i ], [ 5.125000e+03, %.preheader.3.i ], [ 5.375000e+03, %.preheader.4.i ], [ 5.625000e+03, %.preheader.5.i ], [ 5.875000e+03, %.preheader.6.i ], [ 6.125000e+03, %.preheader.7.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @__const._Z22time_to_daynight_ratiofb.values, i64 %.04263.lcssa.wide.i
  %i.r = add nuw nsw i64 %.04263.lcssa.wide.i, 4294967295
  %i.s = and i64 %i.r, 4294967295
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @__const._Z22time_to_daynight_ratiofb.values, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !76 ; 2 uses
  %i.v = fsub nsz float %.lcssa.i, %i.u
  %i.w = fsub nsz float %.241.i, %i.u
  %i.x = fdiv nsz float %i.w, %i.v                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !76
  %i.aa = fsub nsz float 1.000000e+00, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !76
  %i.ad = fmul nsz float %i.ac, %i.aa
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %i.z, float %i.ad)
  %i.af = fptoui float %i.ae to i32
  br label %_Z22time_to_daynight_ratiofb.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.ag = fcmp nsz ult float %.241.i, 4.625000e+03
  br i1 %i.ag, label %bb.f, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.ah = fcmp nsz ult float %.241.i, 4.875000e+03
  br i1 %i.ah, label %bb.f, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.ai = fcmp nsz ult float %.241.i, 5.125000e+03
  br i1 %i.ai, label %bb.f, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.aj = fcmp nsz ult float %.241.i, 5.375000e+03
  br i1 %i.aj, label %bb.f, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.ak = fcmp nsz ult float %.241.i, 5.625000e+03
  br i1 %i.ak, label %bb.f, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.al = fcmp nsz ult float %.241.i, 5.875000e+03
  br i1 %i.al, label %bb.f, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %.preheader.6.i
  br label %bb.f

_Z22time_to_daynight_ratiofb.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.5.i = phi i32 [ %i.af, %bb.f ], [ 175, %bb.d ], [ 1000, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  %i.aq = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ap, i48 %i.d, ptr noundef nonnull %i.a) ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %i.aq, 16
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %i.ar = load i8, ptr %i.a, align 1, !tbaa !99, !range !72, !noundef !73
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_Z22time_to_daynight_ratiofb.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au), !inline_history !108
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 312
  %i.ba = and i32 %i.aq, 65535
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bc, align 1, !tbaa !85 ; 3 uses
  %i.bd = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i, label %bb.h

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i: ; preds = %bb.g
  %i.be = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  br label %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit

bb.h:                                             ; preds = %bb.g
  %i.bf = and i8 %.sroa.4.0.extract.trunc, 15
  %i.bg = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %i.bh = call noundef i8 @llvm.umax.i8(i8 %i.bg, i8 %i.bf)
  %i.bi = lshr i8 %.sroa.4.0.extract.trunc, 4
  %i.bj = call i8 @llvm.umax.i8(i8 %i.bg, i8 %i.bi)
  br label %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit

_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit: ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i, %bb.h
  %i.bk = phi i8 [ %i.bh, %bb.h ], [ %i.be, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i ]
  %i.bl = phi i8 [ %i.bj, %bb.h ], [ %i.be, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i ]
  %i.bm = zext nneg i8 %i.bk to i32
  %i.bn = mul i32 %.5.i, %i.bm
  %i.bo = sub i32 1000, %.5.i
  %i.bp = zext nneg i8 %i.bl to i32
  %i.bq = mul i32 %i.bo, %i.bp
  %i.br = add i32 %i.bq, %i.bn
  %i.bs = udiv i32 %i.br, 1000
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.bs, i32 15)
  %i.bt = zext nneg i32 %spec.store.select.i.i to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.bt)
  br label %bb.j

bb.i:                                             ; preds = %_Z22time_to_daynight_ratiofb.exit
  call void @lua_pushnil(ptr noundef %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ 0, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_ZN11Environment12getTimeOfDayEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i32 @lua_isnumber(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ModApiEnv19l_get_natural_lightEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN14PointabilitiesC2EOS_:bb.a
bb.i:                                             ; preds = %bb.h, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit6
  %i.bp = phi ptr [ %i.bk, %bb.h ], [ %i.ay, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit6 ]
  %.not.i.i.i.i7 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i7, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit8, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !499
  %i.bs = urem i64 %i.br, %i.bb
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs
  store ptr %i.bc, ptr %i.bt, align 8, !tbaa !501
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit8

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit8: ; preds = %bb.i, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 0, ptr %i.bu, align 8, !tbaa !541
  store i64 1, ptr %i.ba, align 8, !tbaa !88
  store ptr null, ptr %i.bm, align 8, !tbaa !539
  store ptr %i.bm, ptr %i.ax, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !87 ; 2 uses
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !87
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !88 ; 2 uses
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !88
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !78 ; 3 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !80
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !540
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !540
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !478
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr null, ptr %i.cj, align 8, !tbaa !539
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 4 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit8
  store ptr %i.cj, ptr %i.bv, align 8, !tbaa !87
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !539
  store ptr %i.cn, ptr %i.cj, align 8, !tbaa !539
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit8
  %i.co = phi ptr [ %i.cj, %bb.k ], [ %i.bx, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit8 ]
  %.not.i.i.i.i9 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i9, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit10, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !499
  %i.cr = urem i64 %i.cq, %i.ca
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cr
  store ptr %i.cb, ptr %i.cs, align 8, !tbaa !501
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit10

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEC2EOSF_.exit10: ; preds = %bb.l, %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 0, ptr %i.ct, align 8, !tbaa !541
  store i64 1, ptr %i.bz, align 8, !tbaa !88
  store ptr null, ptr %i.cl, align 8, !tbaa !539
  store ptr %i.cl, ptr %i.bw, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @luaL_newmetatable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @luaL_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN10ModApiBase15defaultToStringI10LuaRaycastEEiP9lua_State(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN10LuaRaycast9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef nonnull @_ZN10LuaRaycast9classNameE, ptr noundef %i.b) ; 0 uses
  ret i32 1
}

declare ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #21

declare void @_ZN12LuaEntitySAOC1EP17ServerEnvironmentN4core8vector3dIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(1145), ptr noundef, <2 x float>, float, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0E9_M_invokeERKSt9_Any_dataOS1_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #22 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 224
  %.val.val = load i8, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 225
  %.val.val2 = load i8, ptr %i.b, align 1, !tbaa !42, !range !72, !noundef !73
  %i.c = trunc nuw i8 %.val.val2 to i1
  %i.d = trunc nuw i8 %.val.val to i1
  %i.e = select i1 %i.c, i1 true, i1 %i.d
  %i.f = xor i1 %i.e, true
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !77
  br label %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv27l_get_objects_inside_radiusEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0E9_M_invokeERKSt9_Any_dataOS1_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #22 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 224
  %.val.val = load i8, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 225
  %.val.val2 = load i8, ptr %i.b, align 1, !tbaa !42, !range !72, !noundef !73
  %i.c = trunc nuw i8 %.val.val2 to i1
  %i.d = trunc nuw i8 %.val.val to i1
  %i.e = select i1 %i.c, i1 true, i1 %i.d
  %i.f = xor i1 %i.e, true
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbP18ServerActiveObjectEZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !77
  br label %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN9ModApiEnv21l_get_objects_in_areaEP9lua_StateE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN17FacePositionCache16getFacePositionsEt(i16 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i48) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smax.v2i16(<2 x i16>, <2 x i16>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind willreturn memory(read) }

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
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS10LuaRaycast", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTS12PointedThing", !16, i64 0, !17, i64 1, !18, i64 2, !18, i64 8, !18, i64 14, !19, i64 20, !19, i64 22, !20, i64 24, !20, i64 36, !20, i64 48, !21, i64 60}
!16 = !{!"_ZTS16PointedThingType", !7, i64 0}
!17 = !{!"_ZTS16PointabilityType", !7, i64 0}
!18 = !{!"_ZTSN4core8vector3dIsEE", !19, i64 0, !19, i64 2, !19, i64 4}
!19 = !{!"short", !7, i64 0}
!20 = !{!"_ZTSN4core8vector3dIfEE", !21, i64 0, !21, i64 4, !21, i64 8}
!21 = !{!"float", !7, i64 0}
!22 = !{!15, !19, i64 20}
!23 = !{!24, !6, i64 96}
!24 = !{!"_ZTS13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE", !25, i64 0, !25, i64 48, !6, i64 96, !34, i64 104}
!25 = !{!"_ZTSSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE", !26, i64 0}
!26 = !{!"_ZTSSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE", !27, i64 0}
!27 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !28, i64 0, !30, i64 8}
!28 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessItEE", !29, i64 0}
!29 = !{!"_ZTSSt4lessItE"}
!30 = !{!"_ZTSSt15_Rb_tree_header", !31, i64 0, !34, i64 32}
!31 = !{!"_ZTSSt18_Rb_tree_node_base", !32, i64 0, !33, i64 8, !33, i64 16, !33, i64 24}
!32 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!33 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!34 = !{!"long", !7, i64 0}
!35 = !{!30, !33, i64 8}
!36 = !{!19, !19, i64 0}
!37 = !{!33, !33, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS18ServerActiveObject", !13, i64 0}
!42 = !{!43, !45, i64 225}
!43 = !{!"_ZTS18ServerActiveObject", !44, i64 0, !19, i64 10, !45, i64 12, !18, i64 14, !46, i64 24, !51, i64 88, !56, i64 160, !57, i64 168, !45, i64 224, !45, i64 225, !64, i64 232, !20, i64 312}
!44 = !{!"_ZTS12ActiveObject", !19, i64 8}
!45 = !{!"bool", !7, i64 0}
!46 = !{!"_ZTSSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !47, i64 0}
!47 = !{!"_ZTSSt14_Optional_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0EE", !48, i64 0}
!48 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0ELb0EE", !49, i64 0}
!49 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb1ELb0ELb0EE", !50, i64 0}
!50 = !{!"_ZTSSt22_Optional_payload_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !7, i64 0, !45, i64 56}
!51 = !{!"_ZTSSt8optionalIS_ISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEE", !52, i64 0}
!52 = !{!"_ZTSSt14_Optional_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0EE", !53, i64 0}
!53 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0ELb0EE", !54, i64 0}
!54 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb1ELb0ELb0EE", !55, i64 0}
!55 = !{!"_ZTSSt22_Optional_payload_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEEE", !7, i64 0, !45, i64 64}
!56 = !{!"p1 _ZTS17ServerEnvironment", !13, i64 0}
!57 = !{!"_ZTSSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE", !58, i64 0}
!58 = !{!"_ZTSSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !59, i64 0, !34, i64 8, !61, i64 16, !34, i64 24, !63, i64 32, !62, i64 48}
!59 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !60, i64 0}
!60 = !{!"any p2 pointer", !13, i64 0}
!61 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !62, i64 0}
!62 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!63 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !21, i64 0, !34, i64 8}
!64 = !{!"_ZTSSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE", !65, i64 0}
!65 = !{!"_ZTSSt5dequeI19ActiveObjectMessageSaIS0_EE", !66, i64 0}
!66 = !{!"_ZTSSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE", !67, i64 0}
!67 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE11_Deque_implE", !68, i64 0}
!68 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE16_Deque_impl_dataE", !69, i64 0, !34, i64 8, !70, i64 16, !70, i64 48}
!69 = !{!"p2 _ZTS19ActiveObjectMessage", !60, i64 0}
!70 = !{!"_ZTSSt15_Deque_iteratorI19ActiveObjectMessageRS0_PS0_E", !71, i64 0, !71, i64 8, !71, i64 16, !69, i64 24}
!71 = !{!"p1 _ZTS19ActiveObjectMessage", !13, i64 0}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!75, !45, i64 224}
!75 = !{!"_ZTSSt22_Optional_payload_baseI14PointabilitiesE", !7, i64 0, !45, i64 224}
!76 = !{!21, !21, i64 0}
!77 = !{!13, !13, i64 0}
!78 = !{!79, !62, i64 16}
!79 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !59, i64 0, !34, i64 8, !61, i64 16, !34, i64 24, !63, i64 32, !62, i64 48}
!80 = !{!61, !62, i64 0}
!81 = !{!82, !84, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !83, i64 0, !34, i64 8, !7, i64 16}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !84, i64 0}
!84 = !{!"p1 omnipotent char", !13, i64 0}
!85 = !{!7, !7, i64 0}
!86 = distinct !{!86, !39}
!87 = !{!79, !59, i64 0}
!88 = !{!79, !34, i64 8}
!89 = !{!90, !91, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseI12PointedThingSaIS0_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!91 = !{!"p1 _ZTS12PointedThing", !13, i64 0}
!92 = !{!90, !91, i64 16}
!93 = !{!94, !95, i64 0}
!94 = !{!"_ZTS19ScriptCallbackState", !95, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !82, i64 24}
!95 = !{!"p1 _ZTS15ServerScripting", !13, i64 0}
!96 = !{!94, !6, i64 16}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !39}
!99 = !{!45, !45, i64 0}
!100 = !{!101, !105, i64 40}
!101 = !{!"_ZTS11Environment", !6, i64 8, !102, i64 12, !6, i64 16, !21, i64 20, !21, i64 24, !45, i64 28, !6, i64 32, !103, i64 36, !105, i64 40, !106, i64 48}
!102 = !{!"_ZTSSt6atomicIfE", !21, i64 0}
!103 = !{!"_ZTSSt6atomicIjE", !104, i64 0}
!104 = !{!"_ZTSSt13__atomic_baseIjE", !6, i64 0}
!105 = !{!"p1 _ZTS8IGameDef", !13, i64 0}
!106 = !{!"_ZTSSt5mutex", !107, i64 0}
!107 = !{!"_ZTSSt12__mutex_base", !7, i64 0}
!108 = distinct !{null}
!109 = distinct !{null}
!110 = !{!111, !112, i64 8}
!111 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!112 = !{!"p1 _ZTS15ContentFeatures", !13, i64 0}
!113 = !{!111, !112, i64 0}
!114 = !{!82, !34, i64 8}
!115 = !{!83, !84, i64 0}
!116 = !{!34, !34, i64 0}
!117 = !{!118, !45, i64 296}
!118 = !{!"_ZTSSt22_Optional_payload_baseI9ItemStackE", !7, i64 0, !45, i64 296}
!119 = !{!120, !120, i64 0}
!120 = !{!"p1 _ZTS9ObjectRef", !13, i64 0}
!121 = !{!122, !130, i64 104}
!122 = !{!"_ZTS17ServerEnvironment", !101, i64 0, !123, i64 88, !95, i64 96, !130, i64 104, !131, i64 112, !141, i64 328, !145, i64 400, !64, i64 2920, !21, i64 3000, !149, i64 3004, !150, i64 3008, !6, i64 3152, !149, i64 3156, !149, i64 3160, !149, i64 3164, !45, i64 3168, !45, i64 3169, !6, i64 3172, !21, i64 3176, !6, i64 3180, !156, i64 3184, !161, i64 3208, !21, i64 3320, !21, i64 3324, !21, i64 3328, !21, i64 3332, !21, i64 3336, !21, i64 3340, !169, i64 3344, !174, i64 3368, !175, i64 3376, !149, i64 3384, !176, i64 3392, !6, i64 3448, !178, i64 3456, !180, i64 3512, !185, i64 3528, !185, i64 3544}
!123 = !{!"_ZTSSt10unique_ptrI9ServerMapSt14default_deleteIS0_EE", !124, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_dataI9ServerMapSt14default_deleteIS0_ELb1ELb1EE", !125, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_implI9ServerMapSt14default_deleteIS0_EE", !126, i64 0}
!126 = !{!"_ZTSSt5tupleIJP9ServerMapSt14default_deleteIS0_EEE", !127, i64 0}
!127 = !{!"_ZTSSt11_Tuple_implILm0EJP9ServerMapSt14default_deleteIS0_EEE", !128, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm0EP9ServerMapLb0EE", !129, i64 0}
!129 = !{!"p1 _ZTS9ServerMap", !13, i64 0}
!130 = !{!"p1 _ZTS6Server", !13, i64 0}
!131 = !{!"_ZTSN6server15ActiveObjectMgrE", !132, i64 0, !133, i64 120}
!132 = !{!"_ZTS15ActiveObjectMgrI18ServerActiveObjectE", !24, i64 8}
!133 = !{!"_ZTSN8k_d_tree14DynamicKdTreesILh3EftEE", !134, i64 0, !139, i64 24, !34, i64 80, !34, i64 88}
!134 = !{!"_ZTSSt6vectorIN8k_d_tree6KdTreeILh3EftEESaIS2_EE", !135, i64 0}
!135 = !{!"_ZTSSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE", !136, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE12_Vector_implE", !137, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!138 = !{!"p1 _ZTSN8k_d_tree6KdTreeILh3EftEE", !13, i64 0}
!139 = !{!"_ZTSSt13unordered_mapItN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryESt4hashItESt8equal_toItESaISt4pairIKtS3_EEE", !140, i64 0}
!140 = !{!"_ZTSSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !59, i64 0, !34, i64 8, !61, i64 16, !34, i64 24, !63, i64 32, !62, i64 48}
!141 = !{!"_ZTS26OnMapblocksChangedReceiver", !142, i64 0, !143, i64 8, !45, i64 64}
!142 = !{!"_ZTS16MapEventReceiver"}
!143 = !{!"_ZTSSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE", !144, i64 0}
!144 = !{!"_ZTSSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE", !59, i64 0, !34, i64 8, !61, i64 16, !34, i64 24, !63, i64 32, !62, i64 48}
!145 = !{!"_ZTS13GUIDGenerator", !146, i64 0, !147, i64 2504}
!146 = !{!"_ZTSSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE", !7, i64 0, !34, i64 2496}
!147 = !{!"_ZTSSt24uniform_int_distributionImE", !148, i64 0}
!148 = !{!"_ZTSNSt24uniform_int_distributionImE10param_typeE", !34, i64 0, !34, i64 8}
!149 = !{!"_ZTS15IntervalLimiter", !21, i64 0}
!150 = !{!"_ZTS15ActiveBlockList", !151, i64 0, !151, i64 48, !151, i64 96}
!151 = !{!"_ZTSSt3setIN4core8vector3dIsEESt4lessIS2_ESaIS2_EE", !152, i64 0}
!152 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !153, i64 0}
!153 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !154, i64 0, !30, i64 8}
!154 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4core8vector3dIsEEEE", !155, i64 0}
!155 = !{!"_ZTSSt4lessIN4core8vector3dIsEEE"}
!156 = !{!"_ZTSSt6vectorI12ABMWithStateSaIS0_EE", !157, i64 0}
!157 = !{!"_ZTSSt12_Vector_baseI12ABMWithStateSaIS0_EE", !158, i64 0}
end_hunk_1
