Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_object?download=true
inline.NumInlined: 1936
inline.NumDeleted: 791
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9ObjectRef9l_set_posEP9lua_State:bb.a

_ZN9ObjectRef9getobjectEPS_.exit.thread6:         ; preds = %bb.b, %bb.a, %_ZN9ObjectRef9getobjectEPS_.exit
  ret i32 0
}

declare { <2 x float>, float } @_Z13checkFloatPosP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef9l_add_posEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %1 = alloca %"class.core::vector3d.37", align 8 ; 5 uses
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getobjectEPS_.exit.thread6, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.k = tail call { <2 x float>, float } @_Z13checkFloatPosP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.k, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.k, 1
  store <2 x float> %.fca.0.extract, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(324) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread6

_ZN9ObjectRef9getobjectEPS_.exit.thread6:         ; preds = %bb.b, %bb.a, %_ZN9ObjectRef9getobjectEPS_.exit
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef9l_move_toEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getobjectEPS_.exit.thread13, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b
  %i.k = tail call { <2 x float>, float } @_Z13checkFloatPosP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.k, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.k, 1
  %i.l = tail call noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(324) %i.c, <2 x float> %.fca.0.extract, float %.fca.1.extract, i1 noundef zeroext %i.l)
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread13

_ZN9ObjectRef9getobjectEPS_.exit.thread13:        ; preds = %bb.b, %bb.a, %_ZN9ObjectRef9getobjectEPS_.exit
  ret i32 0
}

declare noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ObjectRef7l_punchEP9lua_State(ptr noundef %0) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ToolCapabilities, align 8   ; 10 uses
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2)
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 225
  %i.j = load i8, ptr %i.i, align 1, !tbaa !56, !range !57, !noundef !58
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.m = load i8, ptr %i.l, align 8, !range !57
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 true, i1 %i.n
  br i1 %i.o, label %_ZN9ObjectRef9getobjectEPS_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ] ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN9ObjectRef9getobjectEPS_.exit53, label %bb.f

bb.f:                                             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %.not.i51 = icmp eq ptr %i.p, null
  br i1 %.not.i51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 225
  %i.r = load i8, ptr %i.q, align 1, !tbaa !56, !range !57, !noundef !58
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  %i.u = load i8, ptr %i.t, align 8, !range !57
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = select i1 %i.s, i1 true, i1 %i.v
  br i1 %i.w, label %_ZN9ObjectRef9getobjectEPS_.exit53, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %_ZN9ObjectRef9getobjectEPS_.exit53

_ZN9ObjectRef9getobjectEPS_.exit53:               ; preds = %bb.h, %bb.g, %_ZN9ObjectRef9getobjectEPS_.exit
  %i.x = phi ptr [ null, %_ZN9ObjectRef9getobjectEPS_.exit ], [ %i.p, %bb.h ], [ null, %bb.g ] ; 4 uses
  %i.y = icmp eq ptr %.0.i, null
  br i1 %i.y, label %bb.u, label %bb.i

bb.i:                                             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit53
  %i.z = tail call i32 @lua_type(ptr noundef %0, i32 noundef 3)
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %_ZN9LuaHelper9readParamIfEET_P9lua_StateiRKS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call nsz noundef float @_ZN9LuaHelper9readParamIfEET_P9lua_Statei(ptr noundef %0, i32 noundef 3)
  br label %_ZN9LuaHelper9readParamIfEET_P9lua_StateiRKS1_.exit

_ZN9LuaHelper9readParamIfEET_P9lua_StateiRKS1_.exit: ; preds = %bb.i, %bb.j
  %i.ac = phi nsz float [ %i.ab, %bb.j ], [ 1.000000e+06, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_Z22read_tool_capabilitiesP9lua_Statei(ptr dead_on_unwind nonnull writable sret(%struct.ToolCapabilities) align 8 %1, ptr noundef %0, i32 noundef 4)
  %.not49 = icmp eq ptr %i.x, null
  br i1 %.not49, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN9LuaHelper9readParamIfEET_P9lua_StateiRKS1_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ad, align 8, !tbaa !160
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !160
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  %.sroa.01.0.copyload.i54 = load <2 x float>, ptr %i.ae, align 8, !tbaa !160
  %.sroa.22.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.x, i64 320
  %.sroa.22.0.copyload.i56 = load float, ptr %.sroa.22.0..sroa_idx.i55, align 8, !tbaa !160
  %i.af = invoke i32 @lua_type(ptr noundef %0, i32 noundef 5)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.k
  %i.ag = fsub nsz <2 x float> %.sroa.01.0.copyload.i, %.sroa.01.0.copyload.i54
  %.fca.0.insert.i59 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ag, 0
  %i.ah = fsub nsz float %.sroa.22.0.copyload.i, %.sroa.22.0.copyload.i56
  %.fca.1.insert.i60 = insertvalue { <2 x float>, float } %.fca.0.insert.i59, float %i.ah, 1
  %i.ai = icmp slt i32 %i.af, 1
  br i1 %i.ai, label %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.aj = invoke { <2 x float>, float } @_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_Statei(ptr noundef %0, i32 noundef 5)
          to label %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit unwind label %bb.t

_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit: ; preds = %.noexc, %bb.l
  %.fca.1.insert.merged.i = phi { <2 x float>, float } [ %.fca.1.insert.i60, %.noexc ], [ %i.aj, %bb.l ] ; 2 uses
  %.fca.0.extract6 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 0 ; 5 uses
  %.fca.1.extract7 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 1 ; 4 uses
  %.sroa.075.0.vec.extract = extractelement <2 x float> %.fca.0.extract6, i64 0 ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x float> %.fca.0.extract6, %.fca.0.extract6
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.al = call nsz float @llvm.fmuladd.f32(float %.sroa.075.0.vec.extract, float %.sroa.075.0.vec.extract, float %i.ak)
  %i.am = call nsz float @llvm.fmuladd.f32(float %.fca.1.extract7, float %.fca.1.extract7, float %i.al) ; 2 uses
  %i.an = fcmp nsz oeq float %i.am, 0.000000e+00
  br i1 %i.an, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit
  %i.ao = fpext nsz float %i.am to double
  %i.ap = call nsz double @llvm.sqrt.f64(double %i.ao)
  %i.aq = fdiv nsz double 1.000000e+00, %i.ap     ; 2 uses
  %i.ar = fpext nsz <2 x float> %.fca.0.extract6 to <2 x double>
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul nsz <2 x double> %i.at, %i.ar
  %i.av = fptrunc nsz <2 x double> %i.au to <2 x float>
  %i.aw = fpext nsz float %.fca.1.extract7 to double
  %i.ax = fmul nsz double %i.aq, %i.aw
  %i.ay = fptrunc nsz double %i.ax to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

bb.n:                                             ; preds = %_ZN9LuaHelper9readParamIfEET_P9lua_StateiRKS1_.exit
  %i.az = invoke i32 @lua_type(ptr noundef %0, i32 noundef 5)
          to label %.noexc66 unwind label %bb.t

.noexc66:                                         ; preds = %bb.n
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit68, label %bb.o

bb.o:                                             ; preds = %.noexc66
  %i.bb = invoke { <2 x float>, float } @_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_Statei(ptr noundef %0, i32 noundef 5)
          to label %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit68 unwind label %bb.t

_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit68: ; preds = %.noexc66, %bb.o
  %.fca.1.insert.merged.i62 = phi { <2 x float>, float } [ zeroinitializer, %.noexc66 ], [ %i.bb, %bb.o ] ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i62, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i62, 1
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.m, %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit, %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit68
  %.sroa.12.0 = phi nsz float [ %.fca.1.extract, %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit68 ], [ %.fca.1.extract7, %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit ], [ %i.ay, %bb.m ]
  %.sroa.075.0 = phi nsz <2 x float> [ %.fca.0.extract, %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit68 ], [ %.fca.0.extract6, %_ZN9LuaHelper9readParamIN4core8vector3dIfEEEET_P9lua_StateiRKS4_.exit ], [ %i.av, %bb.m ]
  %i.bc = load ptr, ptr %.0.i, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 200
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(324) %.0.i, <2 x float> %.sroa.075.0, float %.sroa.12.0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %i.x, float noundef %i.ac, i16 noundef zeroext 0)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.bg = uitofp nsz i32 %i.bf to double
  invoke void @lua_pushnumber(ptr noundef %0, double noundef %i.bg)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !161
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef %i.bj)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i: ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !161
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef %i.bo)
          to label %_ZN16ToolCapabilitiesD2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #30
  unreachable

_ZN16ToolCapabilitiesD2Ev.exit:                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.u

bb.t:                                             ; preds = %bb.n, %bb.o, %bb.k, %bb.l, %bb.p, %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16ToolCapabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.br

bb.u:                                             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit53, %_ZN16ToolCapabilitiesD2Ev.exit
  %.0 = phi i32 [ 1, %_ZN16ToolCapabilitiesD2Ev.exit ], [ 0, %_ZN9ObjectRef9getobjectEPS_.exit53 ]
  ret i32 %.0
}

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z22read_tool_capabilitiesP9lua_Statei(ptr dead_on_unwind writable sret(%struct.ToolCapabilities) align 8, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16ToolCapabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12ToolGroupCapSt4lessIS5_ESaISt4pairIKS5_S6_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsSt4lessIS5_ESaISt4pairIKS5_sEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef13l_right_clickEP9lua_State(ptr noundef %0) #2 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 225
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56, !range !57, !noundef !58
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.j = load i8, ptr %i.i, align 8, !range !57
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %_ZN9ObjectRef9getobjectEPS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !21   ; 4 uses
  %.not.i10 = icmp eq ptr %i.m, null
  br i1 %.not.i10, label %_ZN9ObjectRef9getobjectEPS_.exit12.thread15, label %bb.d

bb.d:                                             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 225
  %i.o = load i8, ptr %i.n, align 1, !tbaa !56, !range !57, !noundef !58
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.r = load i8, ptr %i.q, align 8, !range !57
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = select i1 %i.p, i1 true, i1 %i.s
  %i.u = icmp eq ptr %.0.i, null
  %or.cond17 = or i1 %i.u, %i.t
  br i1 %or.cond17, label %_ZN9ObjectRef9getobjectEPS_.exit12.thread15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %.0.i, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(324) %.0.i, ptr noundef nonnull %i.m)
  br label %_ZN9ObjectRef9getobjectEPS_.exit12.thread15

_ZN9ObjectRef9getobjectEPS_.exit12.thread15:      ; preds = %bb.d, %_ZN9ObjectRef9getobjectEPS_.exit, %bb.e
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN9ObjectRef8l_set_hpEP9lua_State(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.PlayerHPChangeReason, align 8 ; 15 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread46, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 225
  %i.f = load i8, ptr %i.e, align 1, !tbaa !56, !range !57, !noundef !58
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.i = load i8, ptr %i.h, align 8, !range !57
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.g, i1 true, i1 %i.j
  br i1 %i.k, label %_ZN9ObjectRef9getobjectEPS_.exit.thread46, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b
  %i.l = tail call nsz noundef float @_ZN9LuaHelper9readParamIfEET_P9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.m = fptosi float %i.l to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
end_hunk_0
begin_hunk_1_@_ZN9ObjectRef19l_set_bone_positionEP9lua_State:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getobjectEPS_.exit.thread41, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !165
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.l, align 8, !tbaa !159
  store i8 0, ptr %i.k, align 8, !tbaa !123
  %i.m = invoke i32 @lua_type(ptr noundef %0, i32 noundef 2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_Statei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %0, i32 noundef 2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %1, align 8, !tbaa !120    ; 6 uses
  %i.p = icmp eq ptr %i.o, %i.k
  %i.q = load ptr, ptr %2, align 8, !tbaa !120    ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.s, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !159  ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  switch i64 %i.u, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.q, align 1, !tbaa !123
  store i8 %i.w, ptr %i.o, align 1, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.x = load i64, ptr %i.t, align 8, !tbaa !159  ; 2 uses
  store i64 %i.x, ptr %i.l, align 8, !tbaa !159
  %i.y = load ptr, ptr %1, align 8, !tbaa !120
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !123
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !120
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.q, ptr %1, align 8, !tbaa !120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !123
  store <2 x i64> %i.ab, ptr %i.l, align 8, !tbaa !123
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !123
  store ptr %i.q, ptr %1, align 8, !tbaa !120
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !tbaa !123
  store <2 x i64> %i.ae, ptr %i.l, align 8, !tbaa !123
  %.not.i29 = icmp eq ptr %i.o, null
  br i1 %.not.i29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.o, ptr %2, align 8, !tbaa !120
  store i64 %i.ac, ptr %i.r, align 8, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %2, align 8, !tbaa !120
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.af = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.o, %bb.i ], [ %i.r, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !159
  store i8 0, ptr %i.af, align 1, !tbaa !123
  %i.ah = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.m

bb.k:                                             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.x

bb.m:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %3, i8 0, i64 25, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ap, align 4, !tbaa !160
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  store float 1.000000e+00, ptr %i.ar, align 4, !tbaa !214
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.as, i8 0, i64 13, i1 false)
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.at, align 4, !tbaa !160
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <2 x float> splat (float 1.000000e+00), ptr %i.au, align 4, !tbaa !160
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 104
  store float 1.000000e+00, ptr %i.av, align 4, !tbaa !215
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 108
  store i8 0, ptr %i.aw, align 4, !tbaa !217
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x float> zeroinitializer, ptr %i.ax, align 4, !tbaa !160
  %i.ay = invoke i32 @lua_type(ptr noundef %0, i32 noundef 3)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = invoke { <2 x float>, float } @_Z9check_v3fP9lua_Statei(ptr noundef %0, i32 noundef 3)
          to label %bb.p unwind label %bb.u       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.fca.0.extract6 = extractvalue { <2 x float>, float } %i.ba, 0
  %.fca.1.extract7 = extractvalue { <2 x float>, float } %i.ba, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <2 x float> %.fca.0.extract6, ptr %i.bb, align 4, !tbaa !160
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %.fca.1.extract7, ptr %.sroa.511.0..sroa_idx, align 4, !tbaa !160
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bc = invoke i32 @lua_type(ptr noundef %0, i32 noundef 4)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = invoke { <2 x float>, float } @_Z9check_v3fP9lua_Statei(ptr noundef %0, i32 noundef 4)
          to label %bb.t unwind label %bb.u       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.be, 0 ; 2 uses
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.be, 1
  %.sroa.037.0.vec.extract = extractelement <2 x float> %.fca.0.extract1, i64 0
  %i.bf = fmul nsz float %.sroa.037.0.vec.extract, f0x3C8EFA35 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.bf, i64 0
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bg = fpext nsz float %i.bf to double
  %i.bh = fmul nsz double %i.bg, 5.000000e-01
  %sincos.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.bh) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.bi = shufflevector <2 x float> %.fca.0.extract1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float %.fca.1.extract2, i64 1
  %i.bk = fmul nsz <2 x float> %i.bj, splat (float f0x3C8EFA35) ; 3 uses
  %i.bl = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.bl, ptr %i.as, align 4, !tbaa !160
  %i.bm = extractelement <2 x float> %i.bk, i64 1
  store float %i.bm, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !160
  %i.bn = fpext nsz <2 x float> %i.bk to <2 x double>
  %i.bo = fmul nsz <2 x double> %i.bn, splat (double 5.000000e-01)
  %i.bp = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.bo) ; 2 uses
  %i.bq = extractvalue { <2 x double>, <2 x double> } %i.bp, 0 ; 3 uses
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = extractelement <2 x double> %i.bq, i64 0
  %i.bt = extractvalue { <2 x double>, <2 x double> } %i.bp, 1 ; 2 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bv = extractelement <2 x double> %i.bq, i64 1
  %i.bw = shufflevector <2 x double> %i.bt, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.bx = shufflevector <4 x double> %i.bw, <4 x double> %i.br, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.by = fmul nsz <4 x double> %i.bu, %i.bx      ; 3 uses
  %i.bz = fmul nsz double %i.bv, %i.bs            ; 2 uses
  %i.ca = fneg nsz double %i.bz
  %i.cb = insertelement <4 x double> poison, double %cos.i.i, i64 0
  %i.cc = insertelement <4 x double> %i.cb, double %sin.i.i, i64 1 ; 2 uses
  %i.cd = shufflevector <4 x double> %i.cc, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ce = shufflevector <4 x double> %i.by, <4 x double> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %i.cf = insertelement <4 x double> %i.ce, double %i.ca, i64 0
  %i.cg = fneg nsz <4 x double> %i.by
  %i.ch = shufflevector <4 x double> %i.cf, <4 x double> %i.cg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ci = insertelement <4 x double> %i.ch, double %i.bz, i64 3
  %i.cj = fmul nsz <4 x double> %i.cd, %i.ci
  %i.ck = shufflevector <4 x double> %i.cc, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.cl = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ck, <4 x double> %i.by, <4 x double> %i.cj)
  %i.cm = fptrunc nsz <4 x double> %i.cl to <4 x float> ; 6 uses
  %foldExtExtBinop = fmul nsz <4 x float> %i.cm, %i.cm
  %i.cn = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.co = extractelement <4 x float> %i.cm, i64 0 ; 2 uses
  %i.cp = call nsz float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cn)
  %i.cq = extractelement <4 x float> %i.cm, i64 2 ; 2 uses
  %i.cr = call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cp)
  %i.cs = extractelement <4 x float> %i.cm, i64 3 ; 2 uses
  %i.ct = call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cr)
  %i.cu = fpext nsz float %i.ct to double
  %i.cv = call nsz double @llvm.sqrt.f64(double %i.cu)
  %i.cw = fdiv nsz double 1.000000e+00, %i.cv
  %i.cx = fptrunc nsz double %i.cw to float
  %i.cy = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.da = fmul nsz <4 x float> %i.cz, %i.cm
  store <4 x float> %i.da, ptr %i.aq, align 4, !tbaa !160
  br label %bb.v

bb.u:                                             ; preds = %bb.o, %bb.v, %bb.q, %bb.m, %bb.s
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.x

bb.v:                                             ; preds = %bb.t, %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.dc, align 4, !tbaa !356
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i8 1, ptr %i.dd, align 4, !tbaa !357
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 280
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(324) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(120) %3)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.dh = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.k
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.w
  %i.dj = load i64, ptr %i.k, align 8, !tbaa !123
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread41

bb.x:                                             ; preds = %bb.u, %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.db, %bb.u ], [ %i.an, %bb.l ], [ %i.am, %bb.k ]
  %i.dl = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.k
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.x
  %i.dn = load i64, ptr %i.k, align 8, !tbaa !123
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn.pn

_ZN9ObjectRef9getobjectEPS_.exit.thread41:        ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  ret i32 0
}

declare { <2 x float>, float } @_Z9check_v3fP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN9ObjectRef19l_get_bone_positionEP9lua_State(ptr noundef %0) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %struct.BoneOverride, align 4       ; 8 uses
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 67, ptr nonnull @.str.13, i32 noundef 1, i1 noundef zeroext true)
  %i.b = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 225
  %i.f = load i8, ptr %i.e, align 1, !tbaa !56, !range !57, !noundef !58
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.i = load i8, ptr %i.h, align 8, !range !57
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.g, i1 true, i1 %i.j
  br i1 %i.k, label %_ZN9ObjectRef9getobjectEPS_.exit.thread39, label %_ZN9ObjectRef9getobjectEPS_.exit

_ZN9ObjectRef9getobjectEPS_.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !165
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !159
  store i8 0, ptr %i.l, align 8, !tbaa !123
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.n = invoke i32 @lua_type(ptr noundef %0, i32 noundef 2)
          to label %.noexc25 unwind label %bb.j

.noexc25:                                         ; preds = %_ZN9ObjectRef9getobjectEPS_.exit
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.noexc25
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.p, ptr %1, align 8, !tbaa !165, !alias.scope !360
  %i.q = load ptr, ptr %2, align 8, !tbaa !120, !noalias !360 ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !159, !noalias !360 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !360
  store i64 %i.r, ptr %i.a, align 8, !tbaa !182, !noalias !360
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc26 unwind label %bb.j   ; 2 uses

.noexc26:                                         ; preds = %.noexc.i.i
  store ptr %i.t, ptr %1, align 8, !tbaa !120, !alias.scope !360
  %i.u = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !360
  store i64 %i.u, ptr %i.p, align 8, !tbaa !123, !alias.scope !360
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc26, %bb.c
  %i.v = phi ptr [ %i.t, %.noexc26 ], [ %i.p, %bb.c ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !123
  store i8 %i.w, ptr %i.v, align 1, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !182, !noalias !360 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !159, !alias.scope !360
  %i.z = load ptr, ptr %1, align 8, !tbaa !120, !alias.scope !360
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !360
  br label %_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_StateiRKS7_.exit

bb.f:                                             ; preds = %.noexc25
  invoke void @_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_Statei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef %0, i32 noundef 2)
          to label %_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_StateiRKS7_.exit unwind label %bb.j

_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_StateiRKS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.f
  %i.ab = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.l
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_StateiRKS7_.exit
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !123
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_StateiRKS7_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 288
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr dead_on_unwind nonnull writable sret(%struct.BoneOverride) align 4 %3, ptr noundef nonnull align 8 dereferenceable(324) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.ai, align 4, !tbaa !160
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !160
  invoke void @_Z8push_v3fP9lua_StateN4core8vector3dIfEE(ptr noundef %0, <2 x float> %.sroa.07.0.copyload, float %.sroa.28.0.copyload)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !160
  %i.al = fmul nsz <2 x float> %i.ak, splat (float f0x42652EE0)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = load float, ptr %i.am, align 4, !tbaa !215
  %i.ao = fmul nsz float %i.an, f0x42652EE0
  invoke void @_Z8push_v3fP9lua_StateN4core8vector3dIfEE(ptr noundef %0, <2 x float> %i.al, float %i.ao)
          to label %bb.i unwind label %bb.k
end_hunk_1
begin_hunk_2_@_ZN9ObjectRef19l_get_bone_positionEP9lua_State:bb.a
  %i.ba = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.k
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !123
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn23 = phi { ptr, i32 } [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.az, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn23

_ZN9ObjectRef9getobjectEPS_.exit.thread39:        ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.0 = phi i32 [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef19l_set_bone_overrideEP9lua_State(ptr noundef %0) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %struct.BoneOverride, align 4       ; 20 uses
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9ObjectRef9getobjectEPS_.exit.thread93, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getobjectEPS_.exit.thread93, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_Statei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef %0, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %2, i8 0, i64 25, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.l, align 4, !tbaa !160
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !214
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.o, i8 0, i64 13, i1 false)
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.p, align 4, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.q, align 4, !tbaa !160
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  store float 1.000000e+00, ptr %i.r, align 4, !tbaa !215
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  store i8 0, ptr %i.s, align 4, !tbaa !217
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.t, align 4, !tbaa !160
  %i.u = invoke i32 @lua_type(ptr noundef %0, i32 noundef 3)
          to label %bb.d unwind label %bb.ao

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lua_getfield(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.15)
          to label %bb.f unwind label %bb.ao

bb.f:                                             ; preds = %bb.e
  %i.w = invoke i32 @lua_type(ptr noundef %0, i32 noundef -1)
          to label %bb.g unwind label %bb.ao

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16PositionPropertyEEEDaRT_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.16)
          to label %bb.i unwind label %bb.ao

bb.i:                                             ; preds = %bb.h
  %i.y = invoke i32 @lua_type(ptr noundef %0, i32 noundef -1)
          to label %bb.j unwind label %bb.ao

bb.j:                                             ; preds = %bb.i
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = invoke { <2 x float>, float } @_Z9check_v3fP9lua_Statei(ptr noundef %0, i32 noundef -1)
          to label %bb.l unwind label %bb.ao      ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.fca.0.extract6 = extractvalue { <2 x float>, float } %i.aa, 0
  %.fca.1.extract7 = extractvalue { <2 x float>, float } %i.aa, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12
  store <2 x float> %.fca.0.extract6, ptr %i.ab, align 4, !tbaa !160
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %.fca.1.extract7, ptr %.sroa.511.0..sroa_idx, align 4, !tbaa !160
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.n unwind label %bb.ao

bb.n:                                             ; preds = %bb.m
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.271)
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.n
  %i.ac = invoke i32 @lua_toboolean(ptr noundef %0, i32 noundef -1)
          to label %.noexc50 unwind label %bb.ao

.noexc50:                                         ; preds = %.noexc
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = zext i1 %i.ad to i8
  store i8 %i.af, ptr %i.ae, align 4, !tbaa !220
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %.noexc51 unwind label %bb.ao

.noexc51:                                         ; preds = %.noexc50
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.272)
          to label %.noexc52 unwind label %bb.ao

.noexc52:                                         ; preds = %.noexc51
  %i.ag = invoke i32 @lua_isnumber(ptr noundef %0, i32 noundef -1)
          to label %.noexc53 unwind label %bb.ao

.noexc53:                                         ; preds = %.noexc52
  %.not.i49 = icmp eq i32 %i.ag, 0
  br i1 %.not.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc53
  %i.ah = invoke double @lua_tonumber(ptr noundef %0, i32 noundef -1)
          to label %.noexc54 unwind label %bb.ao

.noexc54:                                         ; preds = %bb.o
  %i.ai = fptrunc nsz double %i.ah to float
  store float %i.ai, ptr %i.k, align 4, !tbaa !221
  br label %bb.p

bb.p:                                             ; preds = %.noexc54, %.noexc53
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16PositionPropertyEEEDaRT_.exit" unwind label %bb.ao

"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16PositionPropertyEEEDaRT_.exit": ; preds = %bb.p, %bb.g
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.q unwind label %bb.ao

bb.q:                                             ; preds = %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16PositionPropertyEEEDaRT_.exit"
  invoke void @lua_getfield(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.17)
          to label %bb.r unwind label %bb.ao

bb.r:                                             ; preds = %bb.q
  %i.aj = invoke i32 @lua_type(ptr noundef %0, i32 noundef -1)
          to label %bb.s unwind label %bb.ao

bb.s:                                             ; preds = %bb.r
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16RotationPropertyEEEDaRT_.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.16)
          to label %bb.u unwind label %bb.ao

bb.u:                                             ; preds = %bb.t
  %i.al = invoke i32 @lua_type(ptr noundef %0, i32 noundef -1)
          to label %bb.v unwind label %bb.ao

bb.v:                                             ; preds = %bb.u
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = invoke { <2 x float>, float } @_Z9check_v3fP9lua_Statei(ptr noundef %0, i32 noundef -1)
          to label %bb.x unwind label %bb.ao      ; 2 uses

bb.x:                                             ; preds = %bb.w
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.an, 0 ; 3 uses
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.an, 1 ; 2 uses
  store <2 x float> %.fca.0.extract1, ptr %i.o, align 4, !tbaa !160
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store float %.fca.1.extract2, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !160
  %i.ao = extractelement <2 x float> %.fca.0.extract1, i64 0
  %i.ap = fpext nsz float %i.ao to double
  %i.aq = fmul nsz double %i.ap, 5.000000e-01
  %sincos.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.aq) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.ar = insertelement <2 x float> %.fca.0.extract1, float %.fca.1.extract2, i64 0
  %i.as = fpext nsz <2 x float> %i.ar to <2 x double>
  %i.at = fmul nsz <2 x double> %i.as, splat (double 5.000000e-01)
  %i.au = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.at) ; 2 uses
  %i.av = extractvalue { <2 x double>, <2 x double> } %i.au, 0 ; 3 uses
  %i.aw = extractvalue { <2 x double>, <2 x double> } %i.au, 1 ; 3 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1 ; 2 uses
  %i.ay = extractelement <2 x double> %i.aw, i64 0
  %i.az = fmul nsz double %i.ay, %i.ax
  %i.ba = extractelement <2 x double> %i.av, i64 0
  %i.bb = fmul nsz double %i.ba, %i.ax            ; 2 uses
  %i.bc = shufflevector <2 x double> %i.av, <2 x double> %i.aw, <2 x i32> <i32 1, i32 2>
  %i.bd = fmul nsz <2 x double> %i.bc, %i.av      ; 3 uses
  %i.be = fneg nsz <2 x double> %i.bd
  %i.bf = insertelement <4 x double> poison, double %cos.i.i, i64 0
  %i.bg = insertelement <4 x double> %i.bf, double %sin.i.i, i64 1 ; 2 uses
  %i.bh = shufflevector <4 x double> %i.bg, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bi = shufflevector <2 x double> %i.be, <2 x double> %i.bd, <4 x i32> <i32 0, i32 poison, i32 1, i32 2>
  %i.bj = insertelement <4 x double> %i.bi, double %i.bb, i64 1
  %i.bk = fmul nsz <4 x double> %i.bh, %i.bj
  %i.bl = shufflevector <4 x double> %i.bg, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.bm = insertelement <4 x double> poison, double %i.az, i64 0
  %i.bn = insertelement <4 x double> %i.bm, double %i.bb, i64 2
  %i.bo = shufflevector <2 x double> %i.bd, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x double> %i.bn, <4 x double> %i.bo, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.bq = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bl, <4 x double> %i.bp, <4 x double> %i.bk)
  %i.br = fptrunc nsz <4 x double> %i.bq to <4 x float> ; 6 uses
  %foldExtExtBinop = fmul nsz <4 x float> %i.br, %i.br
  %i.bs = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.bt = extractelement <4 x float> %i.br, i64 0 ; 2 uses
  %i.bu = call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bs)
  %i.bv = extractelement <4 x float> %i.br, i64 2 ; 2 uses
  %i.bw = call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bu)
  %i.bx = extractelement <4 x float> %i.br, i64 3 ; 2 uses
  %i.by = call nsz float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = fpext nsz float %i.by to double
  %i.ca = call nsz double @llvm.sqrt.f64(double %i.bz)
  %i.cb = fdiv nsz double 1.000000e+00, %i.ca
  %i.cc = fptrunc nsz double %i.cb to float
  %i.cd = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = fmul nsz <4 x float> %i.ce, %i.br
  store <4 x float> %i.cf, ptr %i.m, align 4, !tbaa !160
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.z unwind label %bb.ao

bb.z:                                             ; preds = %bb.y
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.271)
          to label %.noexc57 unwind label %bb.ao

.noexc57:                                         ; preds = %bb.z
  %i.cg = invoke i32 @lua_toboolean(ptr noundef %0, i32 noundef -1)
          to label %.noexc58 unwind label %bb.ao

.noexc58:                                         ; preds = %.noexc57
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.cj = zext i1 %i.ch to i8
  store i8 %i.cj, ptr %i.ci, align 4, !tbaa !222
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %.noexc59 unwind label %bb.ao

.noexc59:                                         ; preds = %.noexc58
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.272)
          to label %.noexc60 unwind label %bb.ao

.noexc60:                                         ; preds = %.noexc59
  %i.ck = invoke i32 @lua_isnumber(ptr noundef %0, i32 noundef -1)
          to label %.noexc61 unwind label %bb.ao

.noexc61:                                         ; preds = %.noexc60
  %.not.i56 = icmp eq i32 %i.ck, 0
  br i1 %.not.i56, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc61
  %i.cl = invoke double @lua_tonumber(ptr noundef %0, i32 noundef -1)
          to label %.noexc62 unwind label %bb.ao

.noexc62:                                         ; preds = %bb.aa
  %i.cm = fptrunc nsz double %i.cl to float
  store float %i.cm, ptr %i.p, align 4, !tbaa !223
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc62, %.noexc61
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16RotationPropertyEEEDaRT_.exit" unwind label %bb.ao

"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16RotationPropertyEEEDaRT_.exit": ; preds = %bb.ab, %bb.s
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.ac unwind label %bb.ao

bb.ac:                                            ; preds = %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16RotationPropertyEEEDaRT_.exit"
  invoke void @lua_getfield(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.18)
          to label %bb.ad unwind label %bb.ao

bb.ad:                                            ; preds = %bb.ac
  %i.cn = invoke i32 @lua_type(ptr noundef %0, i32 noundef -1)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride13ScalePropertyEEEDaRT_.exit", label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.16)
          to label %bb.ag unwind label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.cp = invoke i32 @lua_type(ptr noundef %0, i32 noundef -1)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cr = invoke { <2 x float>, float } @_Z9check_v3fP9lua_Statei(ptr noundef %0, i32 noundef -1)
          to label %bb.aj unwind label %bb.ao     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.cr, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.cr, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj
  %.sroa.7.0 = phi nsz float [ %.fca.1.extract, %bb.aj ], [ 1.000000e+00, %bb.ah ]
  %.sroa.0.0 = phi nsz <2 x float> [ %.fca.0.extract, %bb.aj ], [ splat (float 1.000000e+00), %bb.ah ]
  store <2 x float> %.sroa.0.0, ptr %i.q, align 4, !tbaa !160
  store float %.sroa.7.0, ptr %i.r, align 4, !tbaa !160
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.271)
          to label %.noexc65 unwind label %bb.ao

.noexc65:                                         ; preds = %bb.al
  %i.cs = invoke i32 @lua_toboolean(ptr noundef %0, i32 noundef -1)
          to label %.noexc66 unwind label %bb.ao

.noexc66:                                         ; preds = %.noexc65
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.s, align 4, !tbaa !217
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %.noexc67 unwind label %bb.ao

.noexc67:                                         ; preds = %.noexc66
  invoke void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.272)
          to label %.noexc68 unwind label %bb.ao

.noexc68:                                         ; preds = %.noexc67
  %i.cv = invoke i32 @lua_isnumber(ptr noundef %0, i32 noundef -1)
          to label %.noexc69 unwind label %bb.ao

.noexc69:                                         ; preds = %.noexc68
  %.not.i64 = icmp eq i32 %i.cv, 0
  br i1 %.not.i64, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.noexc69
  %i.cw = invoke double @lua_tonumber(ptr noundef %0, i32 noundef -1)
          to label %.noexc70 unwind label %bb.ao

.noexc70:                                         ; preds = %bb.am
  %i.cx = fptrunc nsz double %i.cw to float
  store float %i.cx, ptr %i.t, align 4, !tbaa !224
  br label %bb.an

bb.an:                                            ; preds = %.noexc70, %.noexc69
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride13ScalePropertyEEEDaRT_.exit" unwind label %bb.ao

bb.ao:                                            ; preds = %.invoke, %bb.w, %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride13ScalePropertyEEEDaRT_.exit", %bb.ak, %bb.af, %bb.ad, %bb.ac, %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16RotationPropertyEEEDaRT_.exit", %bb.y, %bb.u, %bb.t, %bb.r, %bb.q, %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride16PositionPropertyEEEDaRT_.exit", %bb.m, %bb.i, %bb.h, %bb.f, %bb.e, %bb.k, %bb.n, %.noexc, %.noexc50, %.noexc51, %.noexc52, %bb.o, %bb.p, %bb.z, %.noexc57, %.noexc58, %.noexc59, %.noexc60, %bb.aa, %bb.ab, %bb.al, %.noexc65, %.noexc66, %.noexc67, %.noexc68, %bb.am, %bb.an, %bb.c, %bb.ai, %bb.ag
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.cz = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride13ScalePropertyEEEDaRT_.exit": ; preds = %bb.an, %bb.ae
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %.invoke unwind label %bb.ao

.invoke:                                          ; preds = %"_ZZN9ObjectRef19l_set_bone_overrideEP9lua_StateENK3$_0clIN12BoneOverride13ScalePropertyEEEDaRT_.exit", %bb.d
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 280
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(324) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(120) %2)
          to label %bb.ap unwind label %bb.ao

bb.ap:                                            ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.df = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ap
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !123
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN9ObjectRef9getobjectEPS_.exit.thread93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ao
  %i.dk = load i64, ptr %i.da, align 8, !tbaa !123
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.cy

_ZN9ObjectRef9getobjectEPS_.exit.thread93:        ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i32 0
}

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZN9ObjectRef24l_get_inventory_formspecEP9lua_State:bb.a
_ZN9ObjectRef9getplayerEPS_.exit.thread:          ; preds = %bb.b, %_ZN9ObjectRef9getobjectEPS_.exit.i.i, %bb.a, %_ZN9ObjectRef9getplayerEPS_.exit, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %_ZN9ObjectRef9getplayerEPS_.exit ], [ 0, %bb.a ], [ 0, %_ZN9ObjectRef9getobjectEPS_.exit.i.i ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef22l_set_formspec_prependEP9lua_State(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZN9ObjectRef9getobjectEPS_.exit.i.i

_ZN9ObjectRef9getobjectEPS_.exit.i.i:             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(10) %i.c), !inline_history !119
  %.not.i.i = icmp eq i32 %i.m, 100
  br i1 %.not.i.i, label %_ZN9ObjectRef9getplayerEPS_.exit, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

_ZN9ObjectRef9getplayerEPS_.exit:                 ; preds = %_ZN9ObjectRef9getobjectEPS_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9ObjectRef9getplayerEPS_.exit
  %i.q = tail call { i64, ptr } @_ZN9LuaHelper9readParamISt17basic_string_viewIcSt11char_traitsIcEEEET_P9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 4 uses
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 208 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.w = load i64, ptr %i.v, align 8, !tbaa !159  ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.r
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.r, 0
  br i1 %i.y, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.d
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.u, ptr %i.s, i64 %i.r)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef 0, i64 noundef %i.w, ptr noundef %i.s, i64 noundef %i.r) ; 0 uses
  %i.ab = tail call noundef ptr @_ZN10ModApiBase9getServerEP9lua_State(ptr noundef %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 328
  tail call void @_ZN6Server29reportFormspecPrependModifiedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1880) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
  br label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %bb.b, %_ZN9ObjectRef9getobjectEPS_.exit.i.i, %bb.a, %bb.e, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN9ObjectRef9getplayerEPS_.exit
  ret i32 0
}

declare void @_ZN6Server29reportFormspecPrependModifiedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1880), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ObjectRef22l_get_formspec_prependEP9lua_State(ptr noundef %0) #2 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %_ZN9ObjectRef9getobjectEPS_.exit.i.i

_ZN9ObjectRef9getobjectEPS_.exit.i.i:             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(10) %i.c), !inline_history !119
  %.not.i.i = icmp eq i32 %i.m, 100
  br i1 %.not.i.i, label %_ZN9ObjectRef9getplayerEPS_.exit, label %_ZN9ObjectRef9getplayerEPS_.exit.thread

_ZN9ObjectRef9getplayerEPS_.exit:                 ; preds = %_ZN9ObjectRef9getobjectEPS_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN9ObjectRef9getplayerEPS_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.t = load i64, ptr %i.s, align 8, !tbaa !159
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.r, i64 noundef %i.t)
  br label %_ZN9ObjectRef9getplayerEPS_.exit.thread

_ZN9ObjectRef9getplayerEPS_.exit.thread:          ; preds = %bb.b, %_ZN9ObjectRef9getobjectEPS_.exit.i.i, %bb.a, %_ZN9ObjectRef9getplayerEPS_.exit, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %_ZN9ObjectRef9getplayerEPS_.exit ], [ 0, %bb.a ], [ 0, %_ZN9ObjectRef9getobjectEPS_.exit.i.i ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef20l_get_player_controlEP9lua_State(ptr noundef %0) #6 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %_ZN9ObjectRef9getobjectEPS_.exit.i.i

_ZN9ObjectRef9getobjectEPS_.exit.i.i:             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(10) %i.c), !inline_history !119
  %.not.i.i = icmp eq i32 %i.m, 100
  br i1 %.not.i.i, label %_ZN9ObjectRef9getplayerEPS_.exit, label %_ZN9ObjectRef9getplayerEPS_.exit.thread

_ZN9ObjectRef9getplayerEPS_.exit.thread:          ; preds = %bb.a, %_ZN9ObjectRef9getobjectEPS_.exit.i.i, %bb.b
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 12)
  br label %bb.d

_ZN9ObjectRef9getplayerEPS_.exit:                 ; preds = %_ZN9ObjectRef9getobjectEPS_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 8 uses
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 12)
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN9ObjectRef9getplayerEPS_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 240 ; 5 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !264
  %i.s = and i8 %i.r, 1
  %i.t = zext nneg i8 %i.s to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.t)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.33)
  %i.u = load i8, ptr %i.q, align 4, !tbaa !264
  %i.v = and i8 %i.u, 2
  %i.w = zext nneg i8 %i.v to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.w)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.34)
  %i.x = load i8, ptr %i.q, align 4, !tbaa !264
  %i.y = and i8 %i.x, 4
  %i.z = zext nneg i8 %i.y to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.z)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.35)
  %i.aa = load i8, ptr %i.q, align 4, !tbaa !264
  %i.ab = and i8 %i.aa, 8
  %i.ac = zext nneg i8 %i.ab to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.ac)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.36)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 241
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !265, !range !57, !noundef !58
  %i.af = zext nneg i8 %i.ae to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.af)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.37)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 242
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !266, !range !57, !noundef !58
  %i.ai = zext nneg i8 %i.ah to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.ai)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.38)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 243
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !267, !range !57, !noundef !58
  %i.al = zext nneg i8 %i.ak to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.al)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.39)
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 245 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !268, !range !57, !noundef !58
  %i.ao = zext nneg i8 %i.an to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.ao)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.40)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 246 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !269, !range !57, !noundef !58
  %i.ar = zext nneg i8 %i.aq to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.ar)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.41)
  %i.as = tail call nsz <2 x float> @_ZNK13PlayerControl11getMovementEv(ptr noundef nonnull align 4 dereferenceable(24) %i.q)
  %i.at = fpext nsz <2 x float> %i.as to <2 x double> ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.au)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.42)
  %i.av = extractelement <2 x double> %i.at, i64 1
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.av)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.43)
  %i.aw = load i8, ptr %i.am, align 1, !tbaa !268, !range !57, !noundef !58
  %i.ax = zext nneg i8 %i.aw to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.ax)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.44)
  %i.ay = load i8, ptr %i.ap, align 2, !tbaa !269, !range !57, !noundef !58
  %i.az = zext nneg i8 %i.ay to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.az)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.45)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 244
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !270, !range !57, !noundef !58
  %i.bc = zext nneg i8 %i.bb to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.bc)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.46)
  br label %bb.d

bb.d:                                             ; preds = %_ZN9ObjectRef9getplayerEPS_.exit.thread, %_ZN9ObjectRef9getplayerEPS_.exit, %bb.c
  ret i32 1
}

declare <2 x float> @_ZNK13PlayerControl11getMovementEv(ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef25l_get_player_control_bitsEP9lua_State(ptr noundef %0) #2 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %_ZN9ObjectRef9getobjectEPS_.exit.i.i

_ZN9ObjectRef9getobjectEPS_.exit.i.i:             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(10) %i.c), !inline_history !119
  %.not.i.i = icmp eq i32 %i.m, 100
  br i1 %.not.i.i, label %_ZN9ObjectRef9getplayerEPS_.exit, label %_ZN9ObjectRef9getplayerEPS_.exit.thread

_ZN9ObjectRef9getplayerEPS_.exit:                 ; preds = %_ZN9ObjectRef9getobjectEPS_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN9ObjectRef9getplayerEPS_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.r = load i8, ptr %i.q, align 4, !tbaa !264
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 241
  %i.t = load i8, ptr %i.s, align 1, !tbaa !265, !range !57, !noundef !58
  %i.u = shl nuw nsw i8 %i.t, 4
  %i.v = or i8 %i.u, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 242
  %i.x = load i8, ptr %i.w, align 2, !tbaa !266, !range !57, !noundef !58
  %i.y = shl nuw nsw i8 %i.x, 5
  %i.z = or i8 %i.v, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 243
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !267, !range !57, !noundef !58
  %i.ac = shl nuw nsw i8 %i.ab, 6
  %i.ad = or i8 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 245
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !268, !range !57, !noundef !58
  %i.ag = shl nuw i8 %i.af, 7
  %i.ah = or i8 %i.ad, %i.ag
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 246
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !269, !range !57, !noundef !58
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = or disjoint i64 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 244
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !270, !range !57, !noundef !58
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 9
  %i.as = or disjoint i64 %i.an, %i.ar
  br label %_ZN9ObjectRef9getplayerEPS_.exit.thread

_ZN9ObjectRef9getplayerEPS_.exit.thread:          ; preds = %_ZN9ObjectRef9getplayerEPS_.exit, %bb.a, %_ZN9ObjectRef9getobjectEPS_.exit.i.i, %bb.b, %bb.c
  %.sink = phi i64 [ %i.as, %bb.c ], [ 0, %bb.b ], [ 0, %_ZN9ObjectRef9getobjectEPS_.exit.i.i ], [ 0, %bb.a ], [ 0, %_ZN9ObjectRef9getplayerEPS_.exit ]
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %.sink)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ObjectRef22l_set_physics_overrideEP9lua_State(ptr noundef %0) #2 align 2 {
bb.a:
  %1 = alloca %struct.PlayerPhysicsOverride, align 4 ; 4 uses
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 7 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN9ObjectRef12getplayersaoEPS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef12getplayersaoEPS_.exit.thread, label %_ZN9ObjectRef9getobjectEPS_.exit.i

_ZN9ObjectRef9getobjectEPS_.exit.i:               ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(10) %i.c), !inline_history !61
  %.not.i = icmp eq i32 %i.m, 100
  br i1 %.not.i, label %_ZN9ObjectRef12getplayersaoEPS_.exit, label %_ZN9ObjectRef12getplayersaoEPS_.exit.thread

_ZN9ObjectRef12getplayersaoEPS_.exit:             ; preds = %_ZN9ObjectRef9getobjectEPS_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 264 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(56) %i.p, i64 56, i1 false), !tbaa.struct !513
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 2, i32 noundef 5)
  %i.q = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.47, ptr noundef nonnull align 4 dereferenceable(4) %i.p) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 268
  %i.s = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef nonnull align 4 dereferenceable(4) %i.r) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  %i.u = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.48, ptr noundef nonnull align 4 dereferenceable(4) %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 276
  %i.w = tail call noundef zeroext i1 @_Z12getboolfieldP9lua_StateiPKcRb(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %i.v) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 277
  %i.y = tail call noundef zeroext i1 @_Z12getboolfieldP9lua_StateiPKcRb(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %i.x) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 278
  %i.aa = tail call noundef zeroext i1 @_Z12getboolfieldP9lua_StateiPKcRb(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.ac = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.51, ptr noundef nonnull align 4 dereferenceable(4) %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 284
  %i.ae = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.52, ptr noundef nonnull align 4 dereferenceable(4) %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.ag = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.53, ptr noundef nonnull align 4 dereferenceable(4) %i.af) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 292
  %i.ai = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.54, ptr noundef nonnull align 4 dereferenceable(4) %i.ah) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.ak = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.55, ptr noundef nonnull align 4 dereferenceable(4) %i.aj) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 300
  %i.am = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.56, ptr noundef nonnull align 4 dereferenceable(4) %i.al) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  %i.ao = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.57, ptr noundef nonnull align 4 dereferenceable(4) %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 308
  %i.aq = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.58, ptr noundef nonnull align 4 dereferenceable(4) %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 312
  %i.as = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.59, ptr noundef nonnull align 4 dereferenceable(4) %i.ar) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 316
  %i.au = tail call noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.60, ptr noundef nonnull align 4 dereferenceable(4) %i.at) ; 0 uses
  %i.av = call noundef zeroext i1 @_ZNK21PlayerPhysicsOverrideeqERKS_(ptr noundef nonnull align 4 dereferenceable(56) %i.p, ptr noundef nonnull align 4 dereferenceable(56) %1)
  br i1 %i.av, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN9ObjectRef12getplayersaoEPS_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 1225
  store i8 0, ptr %i.aw, align 1, !tbaa !514
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN9ObjectRef12getplayersaoEPS_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN9ObjectRef12getplayersaoEPS_.exit.thread

_ZN9ObjectRef12getplayersaoEPS_.exit.thread:      ; preds = %bb.b, %_ZN9ObjectRef9getobjectEPS_.exit.i, %bb.a, %bb.d
  ret i32 0
}

declare noundef zeroext i1 @_Z13getfloatfieldP9lua_StateiPKcRf(ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef zeroext i1 @_Z12getboolfieldP9lua_StateiPKcRb(ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ObjectRef22l_get_physics_overrideEP9lua_State(ptr noundef %0) #2 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN9ObjectRef9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 225
  %i.e = load i8, ptr %i.d, align 1, !tbaa !56, !range !57, !noundef !58
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load i8, ptr %i.g, align 8, !range !57
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %_ZN9ObjectRef9getplayerEPS_.exit.thread, label %_ZN9ObjectRef9getobjectEPS_.exit.i.i
end_hunk_3
