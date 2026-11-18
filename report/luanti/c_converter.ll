Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/c_converter?download=true
inline.NumInlined: 663
inline.NumDeleted: 233
begin_hunk_0_@_Z8read_v2fP9lua_Statei:bb.a

bb.o:                                             ; preds = %.noexc72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %.noexc72
  store ptr %i.ci, ptr %5, align 8, !tbaa !17, !alias.scope !63
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !16
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !16, !alias.scope !63
  %.phi.trans.insert.i69 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.pre.i70 = load i64, ptr %.phi.trans.insert.i69, align 8, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.o
  %i.cq = phi i64 [ %i.cm, %bb.o ], [ %.pre.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !15, !alias.scope !63
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !17
  store i64 0, ptr %i.cr, align 8, !tbaa !15
  store i8 0, ptr %i.cj, align 8, !tbaa !16
  %i.ct = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.br
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.p
  %i.cv = load i64, ptr %i.br, align 8, !tbaa !16
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  %i.cx = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bn
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.cz = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.db = load ptr, ptr %5, align 8, !tbaa !17
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !15
  invoke void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 %i.dc, ptr %i.db, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.dd = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ch
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.q
  %i.df = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.u

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i67, %bb.n
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.br
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.s
  %i.dl = load i64, ptr %i.br, align 8, !tbaa !16
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.r
  %.pn25 = phi { ptr, i32 } [ %i.dh, %bb.r ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.di, %bb.s ]
  %i.dn = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.dp = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ch
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.t
  %i.du = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.pn28 = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.dr, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.v

bb.u:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.dw = call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -2)
  %i.dx = call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -1)
  %i.dy = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dx, i64 1
  %i.ea = fptrunc nsz <2 x double> %i.dz to <2 x float>
  call void @lua_settop(ptr noundef %0, i32 noundef -3)
  ret <2 x float> %i.ea

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  resume { ptr, i32 } %.pn28.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_v2s16P9lua_StateN4core8vector2dIsEE(ptr noundef %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i32 %1 to i64
  %sext = shl i64 %.sroa.0.0.extract.trunc, 48
  %i.a = ashr i32 %1, 16
  %i.b = sext i32 %i.a to i64
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 10)
  %i.c = ashr exact i64 %sext, 48
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.c)
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b)
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_v2s32P9lua_StateN4core8vector2dIiEE(ptr noundef %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 10)
  %i.a = shl i64 %1, 32
  %i.b = ashr exact i64 %i.a, 32
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b)
  %i.c = ashr i64 %1, 32
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.c)
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1)
  ret void
}

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_v2u32P9lua_StateN4core8vector2dIjEE(ptr noundef %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 10)
  %i.a = and i64 %1, 4294967295
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.a)
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %.sroa.2.0.extract.shift)
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_Z10read_v2s32P9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nsz <2 x float> @_Z8read_v2fP9lua_Statei(ptr noundef %0, i32 noundef %1)
  %i.b = fptosi <2 x float> %i.a to <2 x i32>
  %.sroa.0.0.insert.insert.i = bitcast <2 x i32> %i.b to i64
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11read_v2_auxP9lua_Statei(ptr noundef %0, i32 noundef %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.a, 5
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.22)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.c = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 5)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.c)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.d = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.a)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.d)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.v unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.o:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.q:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.j, %bb.q ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.r ] ; 2 uses
  %.1 = phi i1 [ true, %bb.q ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.r ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.p ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.o ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ] ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.n ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.m ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ] ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.an = load i64, ptr %i.al, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.ap = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !15
  %12 = icmp ult i64 %11, 16
  call void @llvm.assume(i1 %12)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.az) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.5, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.5, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread
  %.pn.pn.pn.pn.pn.pn.pn56.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread63 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn.pn.pn.pn.pn.pn56 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn.pn.pn.pn.pn.pn.pn56.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #8
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn.pn.pn.pn.pn.pn55 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn56, %bb.s ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn55

bb.u:                                             ; preds = %bb.a
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef %1)
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 9)
  tail call void @lua_insert(ptr noundef %0, i32 noundef -2)
  tail call void @lua_call(ptr noundef %0, i32 noundef 1, i32 noundef 2)
  ret void

bb.v:                                             ; preds = %bb.l
  unreachable
}

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !12
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  %i.o = load i64, ptr %i.i, align 8, !tbaa !16
  store i64 %i.o, ptr %i.g, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !15
  store ptr %i.i, ptr %i.f, align 8, !tbaa !17
  store i64 0, ptr %i.q, align 8, !tbaa !15
  store i8 0, ptr %i.i, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !17
  %i.g = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.g, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.i, ptr %i.h, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !15
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef, i64, ptr, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare double @lua_tonumber(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local <2 x float> @_Z9check_v2fP9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.std::allocator", align 1   ; 5 uses
  tail call fastcc void @_ZL11read_v2_auxP9lua_Statei(ptr noundef %0, i32 noundef %1)
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef -2) ; 2 uses
  %.not = icmp eq i32 %i.a, 3
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.c = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 3)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.c)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.d = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.a)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.d)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.bc unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.o:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.q:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.l, %bb.k
  %.036 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn93 = phi { ptr, i32 } [ %i.j, %bb.q ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.r ] ; 2 uses
  %.137 = phi i1 [ true, %bb.q ], [ %.036, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.036, %bb.r ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.p
  %.pn93.pn = phi { ptr, i32 } [ %i.i, %bb.p ], [ %.pn93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.238 = phi i1 [ true, %bb.p ], [ %.137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %.137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.o
  %.pn93.pn.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %.pn93.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn93.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ] ; 2 uses
  %.339 = phi i1 [ true, %bb.o ], [ %.238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ] ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.n
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn93.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.pn93.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ] ; 2 uses
  %.440 = phi i1 [ true, %bb.n ], [ %.339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ] ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.m
  %.pn93.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn93.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.pn93.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ] ; 4 uses
  %.541 = phi i1 [ true, %bb.m ], [ %.440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %.440, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ] ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.an = load i64, ptr %i.al, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %i.ap = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread: ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !15
  %28 = icmp ult i64 %27, 16
  call void @llvm.assume(i1 %28)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.az) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.541, label %.sink.split272, label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.541, label %.sink.split272, label %bb.bb

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.thread
  %.pn93.pn.pn.pn.pn.pn.pn162.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread169 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.sink.split272

bb.s:                                             ; preds = %bb.a
  %i.ba = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) ; 2 uses
  %.not76 = icmp eq i32 %i.ba, 3
  br i1 %.not76, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.3)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.4)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.bc = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 3)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.bc)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.5)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.bd = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.ba)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.bd)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.6)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.bc unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread: ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split269

bb.ae:                                            ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.af:                                            ; preds = %bb.x, %bb.w
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.ag:                                            ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.ah:                                            ; preds = %bb.aa, %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.ai:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %.032 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.aj
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.ai
  %.pn85 = phi { ptr, i32 } [ %i.bj, %bb.ai ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.bk, %bb.aj ] ; 2 uses
  %.133 = phi i1 [ true, %bb.ai ], [ %.032, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.032, %bb.aj ] ; 2 uses
  %i.bq = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !16
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.ah
  %.pn85.pn = phi { ptr, i32 } [ %i.bi, %bb.ah ], [ %.pn85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ] ; 2 uses
  %.234 = phi i1 [ true, %bb.ah ], [ %.133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %.133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ] ; 2 uses
  %i.bv = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !16
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.ag
  %.pn85.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.ag ], [ %.pn85.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn85.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ] ; 2 uses
  %.335 = phi i1 [ true, %bb.ag ], [ %.234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ] ; 2 uses
  %i.ca = load ptr, ptr %13, align 8, !tbaa !17   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.af
  %.pn85.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.af ], [ %.pn85.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn85.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.af ], [ %.335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ] ; 2 uses
  %i.cf = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.ae
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.ae ], [ %.pn85.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.pn85.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.ae ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 2 uses
  %i.ck = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !16
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  %i.cp = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.thread: ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.thread
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #24
  br label %.sink.split269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.thread
  %29 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %30 = load i64, ptr %29, align 8, !tbaa !15
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  br label %.sink.split269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.cy = load i64, ptr %i.cq, align 8, !tbaa !16
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br i1 %.5, label %.sink.split272, label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br i1 %.5, label %.sink.split272, label %bb.bb

.sink.split269:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.thread
  %.pn85.pn.pn.pn.pn.pn.pn174.ph = phi { ptr, i32 } [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.thread ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread181 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %.sink.split272

bb.ak:                                            ; preds = %bb.s
  %i.da = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -2) ; 2 uses
  %i.db = fptrunc nsz double %i.da to float       ; 2 uses
  %i.dc = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -1) ; 2 uses
  %i.dd = fptrunc nsz double %i.dc to float       ; 2 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -3)
  %i.de = fcmp uno double %i.da, 0.000000e+00
  %i.df = tail call float @llvm.fabs.f32(float %i.db)
  %i.dg = fcmp oeq float %i.df, +inf
  %or.cond = or i1 %i.de, %i.dg
  br i1 %or.cond, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.dh = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.7)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread

bb.an:                                            ; preds = %bb.am
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.8)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.bc unwind label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread: ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split270

bb.aq:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.028 = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.ar
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !16
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %bb.aq
  %.pn80 = phi { ptr, i32 } [ %i.dj, %bb.aq ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %i.dk, %bb.ar ] ; 4 uses
  %.129 = phi i1 [ true, %bb.aq ], [ %.028, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %.028, %bb.ar ] ; 2 uses
  %i.dq = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !16
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %i.dv = load ptr, ptr %20, align 8, !tbaa !17   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread: ; preds = %bb.am
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %20, align 8, !tbaa !17   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !16
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #24
  br label %.sink.split270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread
  %32 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !15
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  br label %.sink.split270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.ee = load i64, ptr %i.dw, align 8, !tbaa !16
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.ef) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br i1 %.129, label %.sink.split272, label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br i1 %.129, label %.sink.split272, label %bb.bb

.sink.split270:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.thread
  %.pn80.pn.pn186.ph = phi { ptr, i32 } [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.thread ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread193 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br label %.sink.split272

bb.as:                                            ; preds = %bb.ak
  %i.eg = fcmp uno double %i.dc, 0.000000e+00
  %i.eh = tail call float @llvm.fabs.f32(float %i.dd)
  %i.ei = fcmp oeq float %i.eh, +inf
  %or.cond218 = or i1 %i.eg, %i.ei
  br i1 %or.cond218, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.ej = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.au unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread

bb.au:                                            ; preds = %bb.at
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.7)
          to label %bb.av unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread

bb.av:                                            ; preds = %bb.au
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.9)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  invoke void @__cxa_throw(ptr nonnull %i.ej, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.bc unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread: ; preds = %bb.at
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split271

bb.ay:                                            ; preds = %bb.av
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %.0 = phi i1 [ false, %bb.ax ], [ true, %bb.aw ] ; 2 uses
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.az
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !16
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.el, %bb.ay ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %i.em, %bb.az ] ; 4 uses
  %.1 = phi i1 [ true, %bb.ay ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.0, %bb.az ] ; 2 uses
  %i.es = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !16
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  %i.ex = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread: ; preds = %bb.au
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !16
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #24
  br label %.sink.split271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.thread
  %35 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %36 = load i64, ptr %35, align 8, !tbaa !15
  %37 = icmp ult i64 %36, 16
  call void @llvm.assume(i1 %37)
  br label %.sink.split271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.fg = load i64, ptr %i.ey, align 8, !tbaa !16
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  br i1 %.1, label %.sink.split272, label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  br i1 %.1, label %.sink.split272, label %bb.bb

.sink.split271:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.thread
  %.pn.pn.pn198.ph = phi { ptr, i32 } [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.thread ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread205 ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  br label %.sink.split272

bb.ba:                                            ; preds = %bb.as
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.db, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.dd, i64 1
  ret <2 x float> %.sroa.0.4.vec.insert

.sink.split272:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %.sink.split271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %.sink.split270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %.sink.split269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %.sink.split
  %.sink = phi ptr [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.b, %.sink.split ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.bb, %.sink.split269 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.dh, %.sink.split270 ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.ej, %.sink.split271 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ]
  %.pn93.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn93.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn93.pn.pn.pn.pn.pn.pn162.ph, %.sink.split ], [ %.pn93.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn85.pn.pn.pn.pn.pn.pn174.ph, %.sink.split269 ], [ %.pn85.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.pn80.pn.pn186.ph, %.sink.split270 ], [ %.pn80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn.pn.pn198.ph, %.sink.split271 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ]
  call void @__cxa_free_exception(ptr %.sink) #8
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.pn93.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn93.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn93.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn85.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn93.pn.pn.pn.pn.pn.pn.pn.ph, %.sink.split272 ]
  resume { ptr, i32 } %.pn93.pn.pn.pn.pn.pn.pn.pn

bb.bc:                                            ; preds = %bb.ax, %bb.ap, %bb.ad, %bb.l
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare ptr @lua_typename(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !12
  %i.d = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.f, ptr %i.a, align 8, !tbaa !18
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.d ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !17
  %i.i = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.i, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #25
  unreachable

_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !15
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV8LuaError, i64 16), ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_Z8read_v3fP9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.core::vector3d.3", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call fastcc void @_ZL8read_v3dP9lua_Statei(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, i32 noundef %1)
  %i.a = load <2 x double>, ptr %2, align 16, !tbaa !22
  %i.b = fptrunc nsz <2 x double> %i.a to <2 x float>
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load double, ptr %i.c, align 16, !tbaa !24
  %i.e = fptrunc nsz double %i.d to float
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.b, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.e, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL8read_v3dP9lua_Statei(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call fastcc void @_ZL11read_v3_auxP9lua_Statei(ptr noundef %1, i32 noundef %2)
  %i.a = tail call i32 @lua_type(ptr noundef %1, i32 noundef -3)
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !12
  store i64 2334106421097295433, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !16
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1, i64 noundef 19)
          to label %.noexc46 unwind label %bb.h   ; 6 uses

.noexc46:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !12, !alias.scope !76
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc46
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc46
  store ptr %i.h, ptr %4, align 8, !tbaa !17, !alias.scope !76
  %i.o = load i64, ptr %i.i, align 8, !tbaa !16
  store i64 %i.o, ptr %i.g, align 8, !tbaa !16, !alias.scope !76
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !15, !alias.scope !76
  store ptr %i.i, ptr %i.f, align 8, !tbaa !17
  store i64 0, ptr %i.q, align 8, !tbaa !15
  store i8 0, ptr %i.i, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15, !noalias !77
  %i.t = and i64 %i.s, -16
end_hunk_0
begin_hunk_1_@_ZL8read_v3dP9lua_Statei:bb.a
  br i1 %i.ef, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

bb.v:                                             ; preds = %.noexc117
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !15 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ec, ptr noundef nonnull align 8 dereferenceable(1) %i.ee, i64 %i.ej, i1 false)
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %.noexc117
  store ptr %i.ed, ptr %10, align 8, !tbaa !17, !alias.scope !80
  %i.ek = load i64, ptr %i.ee, align 8, !tbaa !16
  store i64 %i.ek, ptr %i.ec, align 8, !tbaa !16, !alias.scope !80
  %.phi.trans.insert.i114 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.pre.i115 = load i64, ptr %.phi.trans.insert.i114, align 8, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.v
  %i.el = phi i64 [ %i.eh, %bb.v ], [ %.pre.i115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.el, ptr %i.en, align 8, !tbaa !15, !alias.scope !80
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !17
  store i64 0, ptr %i.em, align 8, !tbaa !15
  store i8 0, ptr %i.ee, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !15, !noalias !81
  %i.ep = and i64 %i.eo, -16
  %i.eq = icmp eq i64 %i.ep, 4611686018427387888
  br i1 %i.eq, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i119

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc123 unwind label %bb.ac

.noexc123:                                        ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i119: ; preds = %bb.w
  %i.er = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.2, i64 noundef 16)
          to label %.noexc124 unwind label %bb.ac ; 6 uses

.noexc124:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i119
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.es, ptr %9, align 8, !tbaa !12, !alias.scope !81
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !17 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 5 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

bb.y:                                             ; preds = %.noexc124
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !15 ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 16
  call void @llvm.assume(i1 %i.ey)
  %i.ez = add nuw nsw i64 %i.ex, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.es, ptr noundef nonnull align 8 dereferenceable(1) %i.eu, i64 %i.ez, i1 false)
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %.noexc124
  store ptr %i.et, ptr %9, align 8, !tbaa !17, !alias.scope !81
  %i.fa = load i64, ptr %i.eu, align 8, !tbaa !16
  store i64 %i.fa, ptr %i.es, align 8, !tbaa !16, !alias.scope !81
  %.phi.trans.insert.i121 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.pre.i122 = load i64, ptr %.phi.trans.insert.i121, align 8, !tbaa !15
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.y
  %i.fb = phi i64 [ %i.ex, %bb.y ], [ %.pre.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.fb, ptr %i.fd, align 8, !tbaa !15, !alias.scope !81
  store ptr %i.eu, ptr %i.er, align 8, !tbaa !17
  store i64 0, ptr %i.fc, align 8, !tbaa !15
  store i8 0, ptr %i.eu, align 8, !tbaa !16
  %i.fe = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ec
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.z
  %i.fg = load i64, ptr %i.ec, align 8, !tbaa !16
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  %i.fi = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.dy
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.fk = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.fm = load ptr, ptr %9, align 8, !tbaa !17
  %i.fn = load i64, ptr %i.fd, align 8, !tbaa !15
  invoke void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %1, i64 %i.fn, ptr %i.fm, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.fo = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.es
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.aa
  %i.fq = load i64, ptr %i.es, align 8, !tbaa !16
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.ae

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i112
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i119, %bb.x
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ec
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.ac
  %i.fw = load i64, ptr %i.ec, align 8, !tbaa !16
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.ab
  %.pn39 = phi { ptr, i32 } [ %i.fs, %bb.ab ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.ft, %bb.ac ]
  %i.fy = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.dy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.ga = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.es
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.ad
  %i.gf = load i64, ptr %i.es, align 8, !tbaa !16
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %.pn42 = phi { ptr, i32 } [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %i.gc, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.af

bb.ae:                                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.gh = call nsz double @lua_tonumber(ptr noundef %1, i32 noundef -3)
  %i.gi = call nsz double @lua_tonumber(ptr noundef %1, i32 noundef -2)
  %i.gj = call nsz double @lua_tonumber(ptr noundef %1, i32 noundef -1)
  call void @lua_settop(ptr noundef %1, i32 noundef -4)
  store double %i.gh, ptr %0, align 8, !tbaa !82
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.gi, ptr %i.gk, align 8, !tbaa !83
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.gj, ptr %i.gl, align 8, !tbaa !24
  ret void

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ]
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_Z9check_v3fP9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.std::allocator", align 1   ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %29 = alloca %"class.std::allocator", align 1   ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %33 = alloca %"class.std::allocator", align 1   ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"class.std::allocator", align 1   ; 5 uses
  tail call fastcc void @_ZL11read_v3_auxP9lua_Statei(ptr noundef %0, i32 noundef %1)
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef -3) ; 2 uses
  %.not = icmp eq i32 %i.a, 3
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.c = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 3)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.c)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.d = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.a)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.d)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.cc unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.o:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.q:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.l, %bb.k
  %.068 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn141 = phi { ptr, i32 } [ %i.j, %bb.q ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.r ] ; 2 uses
  %.169 = phi i1 [ true, %bb.q ], [ %.068, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.068, %bb.r ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.p
  %.pn141.pn = phi { ptr, i32 } [ %i.i, %bb.p ], [ %.pn141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.pn141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.270 = phi i1 [ true, %bb.p ], [ %.169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.o
  %.pn141.pn.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %.pn141.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %.pn141.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ] ; 2 uses
  %.371 = phi i1 [ true, %bb.o ], [ %.270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %.270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ] ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.n
  %.pn141.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn141.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.pn141.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ] ; 2 uses
  %.472 = phi i1 [ true, %bb.n ], [ %.371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ] ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.m
  %.pn141.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn141.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %.pn141.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ] ; 4 uses
  %.573 = phi i1 [ true, %bb.m ], [ %.472, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %.472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ] ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.an = load i64, ptr %i.al, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  %i.ap = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.thread: ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.thread
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.thread
  %38 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %39 = load i64, ptr %38, align 8, !tbaa !15
  %40 = icmp ult i64 %39, 16
  call void @llvm.assume(i1 %40)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.az) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.573, label %.sink.split406, label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.573, label %.sink.split406, label %bb.cb

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.thread
  %.pn141.pn.pn.pn.pn.pn.pn240.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread247 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.sink.split406

bb.s:                                             ; preds = %bb.a
  %i.ba = tail call i32 @lua_type(ptr noundef %0, i32 noundef -2) ; 2 uses
  %.not111 = icmp eq i32 %i.ba, 3
  br i1 %.not111, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.3)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.4)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.bc = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 3)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.bc)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.5)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.bd = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.ba)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.bd)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.6)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.cc unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.thread: ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split401

bb.ae:                                            ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.af:                                            ; preds = %bb.x, %bb.w
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.ag:                                            ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.ah:                                            ; preds = %bb.aa, %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

bb.ai:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %.060 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.aj
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.ai
  %.pn133 = phi { ptr, i32 } [ %i.bj, %bb.ai ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %i.bk, %bb.aj ] ; 2 uses
  %.161 = phi i1 [ true, %bb.ai ], [ %.060, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %.060, %bb.aj ] ; 2 uses
  %i.bq = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !16
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %bb.ah
  %.pn133.pn = phi { ptr, i32 } [ %i.bi, %bb.ah ], [ %.pn133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %.pn133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ] ; 2 uses
  %.262 = phi i1 [ true, %bb.ah ], [ %.161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %.161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ] ; 2 uses
  %i.bv = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !16
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.ag
  %.pn133.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.ag ], [ %.pn133.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %.pn133.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ] ; 2 uses
  %.363 = phi i1 [ true, %bb.ag ], [ %.262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %.262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ] ; 2 uses
  %i.ca = load ptr, ptr %13, align 8, !tbaa !17   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.af
  %.pn133.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.af ], [ %.pn133.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %.pn133.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ] ; 2 uses
  %.464 = phi i1 [ true, %bb.af ], [ %.363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %.363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ] ; 2 uses
  %i.cf = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.ae
  %.pn133.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.ae ], [ %.pn133.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %.pn133.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ] ; 4 uses
  %.565 = phi i1 [ true, %bb.ae ], [ %.464, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %.464, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ] ; 2 uses
  %i.ck = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !16
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  %i.cp = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.thread: ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %16, align 8, !tbaa !17   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.thread259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.thread
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #24
  br label %.sink.split401

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.thread259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.thread
  %41 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !15
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  br label %.sink.split401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.cy = load i64, ptr %i.cq, align 8, !tbaa !16
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br i1 %.565, label %.sink.split406, label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br i1 %.565, label %.sink.split406, label %bb.cb

.sink.split401:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.thread259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.thread
  %.pn133.pn.pn.pn.pn.pn.pn252.ph = phi { ptr, i32 } [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.thread ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.thread259 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %.sink.split406

bb.ak:                                            ; preds = %bb.s
  %i.da = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) ; 2 uses
  %.not112 = icmp eq i32 %i.da, 3
  br i1 %.not112, label %bb.bc, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.10)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.thread

bb.an:                                            ; preds = %bb.am
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.4)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.dc = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 3)
          to label %bb.ap unwind label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef %i.dc)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.5)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.dd = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.da)
          to label %bb.as unwind label %bb.az

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %i.dd)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %bb.as
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.6)
          to label %bb.au unwind label %bb.ba

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.db, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.cc unwind label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread: ; preds = %bb.al
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split402

bb.aw:                                            ; preds = %bb.an
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

bb.ax:                                            ; preds = %bb.ap, %bb.ao
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

bb.ay:                                            ; preds = %bb.aq
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

bb.az:                                            ; preds = %bb.as, %bb.ar
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

bb.ba:                                            ; preds = %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

bb.bb:                                            ; preds = %bb.av, %bb.au
  %.052 = phi i1 [ false, %bb.av ], [ true, %bb.au ] ; 2 uses
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.bb
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !16
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %bb.ba
  %.pn125 = phi { ptr, i32 } [ %i.dj, %bb.ba ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %i.dk, %bb.bb ] ; 2 uses
  %.153 = phi i1 [ true, %bb.ba ], [ %.052, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %.052, %bb.bb ] ; 2 uses
  %i.dq = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !16
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %bb.az
  %.pn125.pn = phi { ptr, i32 } [ %i.di, %bb.az ], [ %.pn125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ] ; 2 uses
  %.254 = phi i1 [ true, %bb.az ], [ %.153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ], [ %.153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ] ; 2 uses
  %i.dv = load ptr, ptr %20, align 8, !tbaa !17   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !16
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %bb.ay
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.ay ], [ %.pn125.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ %.pn125.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ] ; 2 uses
  %.355 = phi i1 [ true, %bb.ay ], [ %.254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ %.254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ] ; 2 uses
  %i.ea = load ptr, ptr %21, align 8, !tbaa !17   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !16
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.ax
  %.pn125.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.ax ], [ %.pn125.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %.pn125.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ] ; 2 uses
  %.456 = phi i1 [ true, %bb.ax ], [ %.355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %.355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ] ; 2 uses
  %i.ef = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !16
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201, %bb.aw
  %.pn125.pn.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.aw ], [ %.pn125.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201 ], [ %.pn125.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ] ; 4 uses
  %.557 = phi i1 [ true, %bb.aw ], [ %.456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201 ], [ %.456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ] ; 2 uses
  %i.ek = load ptr, ptr %23, align 8, !tbaa !17   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.en = load i64, ptr %i.el, align 8, !tbaa !16
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  %i.ep = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.thread: ; preds = %bb.am
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %24, align 8, !tbaa !17   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.thread
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !16
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #24
  br label %.sink.split402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread271: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.thread
  %44 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %45 = load i64, ptr %44, align 8, !tbaa !15
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %.sink.split402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %i.ey = load i64, ptr %i.eq, align 8, !tbaa !16
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.ez) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br i1 %.557, label %.sink.split406, label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br i1 %.557, label %.sink.split406, label %bb.cb

.sink.split402:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.thread
  %.pn125.pn.pn.pn.pn.pn.pn264.ph = phi { ptr, i32 } [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.thread ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread271 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br label %.sink.split406

bb.bc:                                            ; preds = %bb.ak
  %i.fa = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -3) ; 2 uses
  %i.fb = fptrunc nsz double %i.fa to float       ; 2 uses
  %i.fc = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -2) ; 2 uses
  %i.fd = fptrunc nsz double %i.fc to float       ; 2 uses
  %i.fe = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -1) ; 2 uses
  %i.ff = fptrunc nsz double %i.fe to float       ; 2 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -4)
  %i.fg = fcmp uno double %i.fa, 0.000000e+00
  %i.fh = tail call float @llvm.fabs.f32(float %i.fb)
  %i.fi = fcmp oeq float %i.fh, +inf
  %or.cond = or i1 %i.fg, %i.fi
  br i1 %or.cond, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.fj = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.7)
          to label %bb.bf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.8)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.cc unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread: ; preds = %bb.bd
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split403

bb.bi:                                            ; preds = %bb.bf
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %.048 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = load ptr, ptr %26, align 8, !tbaa !17   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.bj
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !16
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.bi
  %.pn120 = phi { ptr, i32 } [ %i.fl, %bb.bi ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %i.fm, %bb.bj ] ; 4 uses
  %.149 = phi i1 [ true, %bb.bi ], [ %.048, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %.048, %bb.bj ] ; 2 uses
  %i.fs = load ptr, ptr %27, align 8, !tbaa !17   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !16
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  %i.fx = load ptr, ptr %28, align 8, !tbaa !17   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread: ; preds = %bb.be
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %28, align 8, !tbaa !17   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !16
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #24
  br label %.sink.split403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.thread
  %47 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !15
  %49 = icmp ult i64 %48, 16
  call void @llvm.assume(i1 %49)
  br label %.sink.split403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.gg = load i64, ptr %i.fy, align 8, !tbaa !16
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  br i1 %.149, label %.sink.split406, label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  br i1 %.149, label %.sink.split406, label %bb.cb

.sink.split403:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.thread
  %.pn120.pn.pn276.ph = phi { ptr, i32 } [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.thread ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread283 ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  br label %.sink.split406

bb.bk:                                            ; preds = %bb.bc
  %i.gi = fcmp uno double %i.fc, 0.000000e+00
  %i.gj = tail call float @llvm.fabs.f32(float %i.fd)
  %i.gk = fcmp oeq float %i.gj, +inf
  %or.cond324 = or i1 %i.gi, %i.gk
  br i1 %or.cond324, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.gl = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.bm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.7)
          to label %bb.bn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.thread

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.9)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  invoke void @__cxa_throw(ptr nonnull %i.gl, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.cc unwind label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread: ; preds = %bb.bl
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split404

bb.bq:                                            ; preds = %bb.bn
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %.044 = phi i1 [ false, %bb.bp ], [ true, %bb.bo ] ; 2 uses
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %30, align 8, !tbaa !17   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.br
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !16
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %bb.bq
  %.pn116 = phi { ptr, i32 } [ %i.gn, %bb.bq ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %i.go, %bb.br ] ; 4 uses
  %.145 = phi i1 [ true, %bb.bq ], [ %.044, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %.044, %bb.br ] ; 2 uses
  %i.gu = load ptr, ptr %31, align 8, !tbaa !17   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !16
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  %i.gz = load ptr, ptr %32, align 8, !tbaa !17   ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.thread: ; preds = %bb.bm
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %32, align 8, !tbaa !17   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.thread
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !16
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #24
  br label %.sink.split404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.thread
  %50 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %51 = load i64, ptr %50, align 8, !tbaa !15
  %52 = icmp ult i64 %51, 16
  call void @llvm.assume(i1 %52)
  br label %.sink.split404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.hi = load i64, ptr %i.ha, align 8, !tbaa !16
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hj) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #8
  br i1 %.145, label %.sink.split406, label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #8
  br i1 %.145, label %.sink.split406, label %bb.cb

.sink.split404:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.thread
  %.pn116.pn.pn288.ph = phi { ptr, i32 } [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.thread ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread295 ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #8
  br label %.sink.split406

bb.bs:                                            ; preds = %bb.bk
  %i.hk = fcmp uno double %i.fe, 0.000000e+00
  %i.hl = tail call float @llvm.fabs.f32(float %i.ff)
  %i.hm = fcmp oeq float %i.hl, +inf
  %or.cond326 = or i1 %i.hk, %i.hm
  br i1 %or.cond326, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.hn = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.bu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.7)
          to label %bb.bv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.11)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hn, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_throw(ptr nonnull %i.hn, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.cc unwind label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread: ; preds = %bb.bt
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split405

bb.by:                                            ; preds = %bb.bv
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.bz:                                            ; preds = %bb.bx, %bb.bw
  %.040 = phi i1 [ false, %bb.bx ], [ true, %bb.bw ] ; 2 uses
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hr = load ptr, ptr %34, align 8, !tbaa !17   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.bz
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !16
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.by
  %.pn = phi { ptr, i32 } [ %i.hp, %bb.by ], [ %i.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %i.hq, %bb.bz ] ; 4 uses
  %.141 = phi i1 [ true, %bb.by ], [ %.040, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %.040, %bb.bz ] ; 2 uses
  %i.hw = load ptr, ptr %35, align 8, !tbaa !17   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !16
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  %i.ib = load ptr, ptr %36, align 8, !tbaa !17   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread: ; preds = %bb.bu
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %36, align 8, !tbaa !17   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !16
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #24
  br label %.sink.split405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread
  %53 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !15
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  br label %.sink.split405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %i.ik = load i64, ptr %i.ic, align 8, !tbaa !16
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.il) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #8
  br i1 %.141, label %.sink.split406, label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #8
  br i1 %.141, label %.sink.split406, label %bb.cb

.sink.split405:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread
  %.pn.pn.pn300.ph = phi { ptr, i32 } [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread307 ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #8
  br label %.sink.split406

bb.ca:                                            ; preds = %bb.bs
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.fb, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.fd, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ff, 1
  ret { <2 x float>, float } %.fca.1.insert

.sink.split406:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %.sink.split405, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %.sink.split404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %.sink.split403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %.sink.split402, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %.sink.split401, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165, %.sink.split
  %.sink = phi ptr [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %i.b, %.sink.split ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %i.bb, %.sink.split401 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %i.db, %.sink.split402 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %i.fj, %.sink.split403 ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %i.gl, %.sink.split404 ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %i.hn, %.sink.split405 ], [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ]
  %.pn141.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.pn133.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %.pn141.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %.pn141.pn.pn.pn.pn.pn.pn240.ph, %.sink.split ], [ %.pn141.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %.pn133.pn.pn.pn.pn.pn.pn252.ph, %.sink.split401 ], [ %.pn133.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %.pn125.pn.pn.pn.pn.pn.pn264.ph, %.sink.split402 ], [ %.pn125.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %.pn120.pn.pn276.ph, %.sink.split403 ], [ %.pn120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %.pn116.pn.pn288.ph, %.sink.split404 ], [ %.pn116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %.pn.pn.pn300.ph, %.sink.split405 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ]
  call void @__cxa_free_exception(ptr %.sink) #8
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %.pn141.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn141.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %.pn133.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %.pn141.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %.pn133.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %.pn125.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %.pn116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.ph, %.sink.split406 ]
  resume { ptr, i32 } %.pn141.pn.pn.pn.pn.pn.pn.pn

bb.cc:                                            ; preds = %bb.bx, %bb.bp, %bb.bh, %bb.av, %bb.ad, %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11read_v3_auxP9lua_Statei(ptr noundef %0, i32 noundef %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.a, 5
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.22)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.c = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 5)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.c)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.d = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.a)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.d)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.v unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.o:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.q:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.j, %bb.q ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.r ] ; 2 uses
  %.1 = phi i1 [ true, %bb.q ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.r ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.p ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.o ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ] ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.n ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.m ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ] ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.an = load i64, ptr %i.al, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.ap = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !15
  %12 = icmp ult i64 %11, 16
  call void @llvm.assume(i1 %12)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.az) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.5, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.5, label %bb.s, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread
  %.pn.pn.pn.pn.pn.pn.pn56.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread63 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn.pn.pn.pn.pn.pn56 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn.pn.pn.pn.pn.pn.pn56.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #8
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn.pn.pn.pn.pn.pn55 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn56, %bb.s ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn55

bb.u:                                             ; preds = %bb.a
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef %1)
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 7)
  tail call void @lua_insert(ptr noundef %0, i32 noundef -2)
  tail call void @lua_call(ptr noundef %0, i32 noundef 1, i32 noundef 3)
  ret void

bb.v:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_ARGB8P9lua_StateN5video6SColorE(ptr noundef %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 4)
  %i.a = lshr i32 %1, 24
  %i.b = zext nneg i32 %i.a to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.12)
  %i.c = lshr i32 %1, 16
  %i.d = and i32 %i.c, 255
  %i.e = zext nneg i32 %i.d to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.e)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.13)
  %i.f = lshr i32 %1, 8
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.h)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.14)
  %i.i = and i32 %1, 255
  %i.j = zext nneg i32 %i.i to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.j)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.15)
  ret void
}

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12pushFloatPosP9lua_StateN4core8vector3dIfEE(ptr noundef %0, <2 x float> %1, float %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fdiv nsz float %.sroa.0.0.vec.extract, 1.000000e+01
  %i.b = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.c = insertelement <2 x float> %i.b, float %2, i64 1
  %i.d = fdiv nsz <2 x float> %i.c, splat (float 1.000000e+01)
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 8)
  %i.e = fpext nsz float %i.a to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.e)
  %i.f = fpext nsz <2 x float> %i.d to <2 x double> ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.g)
  %i.h = extractelement <2 x double> %i.f, i64 1
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.h)
  tail call void @lua_call(ptr noundef %0, i32 noundef 3, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_Z13checkFloatPosP9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { <2 x float>, float } @_Z9check_v3fP9lua_Statei(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.fca.0.extract3 = extractvalue { <2 x float>, float } %i.a, 0
  %.fca.1.extract4 = extractvalue { <2 x float>, float } %i.a, 1
  %i.b = fmul nsz <2 x float> %.fca.0.extract3, splat (float 1.000000e+01)
  %i.c = fmul nsz float %.fca.1.extract4, 1.000000e+01
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.b, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.c, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %1) local_unnamed_addr #3 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i48 %1 to i64
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = zext nneg i48 %.sroa.2.0.extract.shift to i64
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 8)
  %sext = shl i64 %.sroa.0.0.extract.trunc, 48
  %i.a = ashr exact i64 %sext, 48
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.a)
  %sext5 = shl i64 %.sroa.2.0.extract.trunc, 48
  %i.b = ashr exact i64 %sext5, 48
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b)
  %i.c = ashr i48 %1, 32
  %i.d = sext i48 %i.c to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.d)
  tail call void @lua_call(ptr noundef %0, i32 noundef 3, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.core::vector3d.3", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call fastcc void @_ZL8read_v3dP9lua_Statei(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, i32 noundef %1)
  %.sroa.02.0.copyload = load double, ptr %2, align 8, !tbaa !22 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.a = fcmp nsz ogt double %.sroa.02.0.copyload, 0.000000e+00
  %i.b = select nsz i1 %i.a, double 5.000000e-01, double -5.000000e-01
  %i.c = fadd nsz double %.sroa.02.0.copyload, %i.b
  %i.d = fptosi double %i.c to i16
  %i.e = load <2 x double>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !22 ; 2 uses
  %i.f = fcmp nsz ogt <2 x double> %i.e, zeroinitializer
  %i.g = select <2 x i1> %i.f, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double -5.000000e-01)
  %i.h = fadd nsz <2 x double> %i.e, %i.g
  %i.i = fptosi <2 x double> %i.h to <2 x i16>
  %i.j = zext <2 x i16> %i.i to <2 x i48>
  %i.k = shl nuw <2 x i48> %i.j, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.k)
  %.sroa.0.0.insert.ext.i = zext i16 %i.d to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i48 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local i48 @_Z11check_v3s16P9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::allocator", align 1   ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::allocator", align 1   ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::allocator", align 1   ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::allocator", align 1   ; 5 uses
  tail call fastcc void @_ZL11read_v3_auxP9lua_Statei(ptr noundef %0, i32 noundef %1), !noalias !86
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef -3), !noalias !86 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 3
  br i1 %.not.i, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #8, !noalias !86 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8, !noalias !86
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread.i, !noalias !86

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.thread.i, !noalias !86

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_Z11check_v3s16P9lua_Statei:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i
  %i.ib = load i64, ptr %i.ht, align 8, !tbaa !16, !noalias !86
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.ic) #24, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #8, !noalias !86
  br i1 %.1.i, label %.sink.split406.i, label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #8, !noalias !86
  br i1 %.1.i, label %.sink.split406.i, label %bb.ca

.sink.split405.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread.i
  %.pn.pn.pn299.ph.i = phi { ptr, i32 } [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread.i ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread.i ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #8, !noalias !86
  br label %.sink.split406.i

.sink.split406.i:                                 ; preds = %.sink.split405.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i, %.sink.split404.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i, %.sink.split403.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i, %.sink.split402.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i, %.sink.split401.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i, %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i
  %.sink.i = phi ptr [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ], [ %i.b, %.sink.split.i ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i ], [ %i.bb, %.sink.split401.i ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i ], [ %i.db, %.sink.split402.i ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i ], [ %i.fe, %.sink.split403.i ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i ], [ %i.ge, %.sink.split404.i ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i ], [ %i.he, %.sink.split405.i ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i ], [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i ]
  %.pn141.pn.pn.pn.pn.pn.pn.pn.ph.i = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %.pn120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i ], [ %.pn116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i ], [ %.pn133.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i ], [ %.pn141.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ], [ %.pn141.pn.pn.pn.pn.pn.pn239.ph.i, %.sink.split.i ], [ %.pn141.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i ], [ %.pn133.pn.pn.pn.pn.pn.pn251.ph.i, %.sink.split401.i ], [ %.pn133.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i ], [ %.pn125.pn.pn.pn.pn.pn.pn263.ph.i, %.sink.split402.i ], [ %.pn125.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i ], [ %.pn120.pn.pn275.ph.i, %.sink.split403.i ], [ %.pn120.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i ], [ %.pn116.pn.pn287.ph.i, %.sink.split404.i ], [ %.pn116.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i ], [ %.pn.pn.pn299.ph.i, %.sink.split405.i ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #8, !noalias !86
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split406.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i
  %.pn141.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %.pn141.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ], [ %.pn133.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i ], [ %.pn141.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i ], [ %.pn133.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i ], [ %.pn125.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i ], [ %.pn116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i ], [ %.pn120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i ], [ %.pn120.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i ], [ %.pn116.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i ], [ %.pn141.pn.pn.pn.pn.pn.pn.pn.ph.i, %.sink.split406.i ]
  resume { ptr, i32 } %.pn141.pn.pn.pn.pn.pn.pn.pn.i

bb.cb:                                            ; preds = %bb.bx, %bb.bp, %bb.bh, %bb.av, %bb.ad, %bb.l
  unreachable

_ZL9check_v3dP9lua_Statei.exit:                   ; preds = %bb.bs
  %i.id = fcmp nsz ogt double %i.fa, 0.000000e+00
  %i.ie = select nsz i1 %i.id, double 5.000000e-01, double -5.000000e-01
  %i.if = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.fb, i64 1 ; 2 uses
  %i.ih = fcmp nsz ogt <2 x double> %i.ig, zeroinitializer
  %i.ii = fadd nsz double %i.fa, %i.ie
  %i.ij = fptosi double %i.ii to i16
  %i.ik = select <2 x i1> %i.ih, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double -5.000000e-01)
  %i.il = fadd nsz <2 x double> %i.ig, %i.ik
  %i.im = fptosi <2 x double> %i.il to <2 x i16>
  %i.in = zext <2 x i16> %i.im to <2 x i48>
  %i.io = shl nuw <2 x i48> %i.in, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.io)
  %.sroa.0.0.insert.ext.i = zext i16 %i.ij to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i48 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z10read_colorP9lua_StateiPN5video6SColorE(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.video::SColor", align 4     ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call i32 @lua_type(ptr noundef %0, i32 noundef %1)
  %i.c = icmp eq i32 %i.b, 5
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_Z10read_ARGB8P9lua_Statei(ptr noundef %0, i32 noundef %1)
  store i32 %i.d, ptr %2, align 4, !tbaa !87
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @lua_isnumber(ptr noundef %0, i32 noundef %1)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef %1)
  %i.g = fptoui double %i.f to i32
  store i32 %i.g, ptr %2, align 4, !tbaa !89
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @lua_isstring(ptr noundef %0, i32 noundef %1)
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.i = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef %1, ptr noundef null) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !12
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %.noexc, label %bb.g

.noexc:                                           ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #23
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.l, ptr %i.a, align 8, !tbaa !18
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !17
  %i.o = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.o, ptr %i.j, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.j, %bb.g ] ; 2 uses
  switch i64 %i.l, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !16
  store i8 %i.q, ptr %i.p, align 1, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.i, i64 %i.l, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !15
  %i.t = load ptr, ptr %4, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.v = invoke noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext true, i8 noundef zeroext -1)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.y = load i64, ptr %i.j, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br i1 %i.v, label %.thread, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.l
  %i.ad = load i64, ptr %i.j, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  resume { ptr, i32 } %i.aa

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load i32, ptr %3, align 4, !tbaa !87
  store i32 %i.af, ptr %2, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.d, %.thread, %bb.m, %bb.e
  %.1 = phi i1 [ false, %bb.e ], [ false, %bb.m ], [ true, %.thread ], [ true, %bb.d ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_Z10read_ARGB8P9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.a, 5
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.16)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.c = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 5)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.c)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.d = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.a)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.d)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.bb unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.o:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.q:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.l, %bb.k
  %.052 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.153 = phi i1 [ true, %bb.q ], [ %.052, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.052, %bb.r ] ; 2 uses
  %.pn76 = phi { ptr, i32 } [ %i.j, %bb.q ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.r ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.p
  %.254 = phi i1 [ true, %bb.p ], [ %.153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pn76.pn = phi { ptr, i32 } [ %i.i, %bb.p ], [ %.pn76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.o
  %.355 = phi i1 [ true, %bb.o ], [ %.254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %.pn76.pn.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %.pn76.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn76.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.n
  %.456 = phi i1 [ true, %bb.n ], [ %.355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn76.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn76.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.m
  %.557 = phi i1 [ true, %bb.m ], [ %.456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %.pn76.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn76.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn76.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 4 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.an = load i64, ptr %i.al, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  %i.ap = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread: ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread
  %19 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !15
  %21 = icmp ult i64 %20, 16
  call void @llvm.assume(i1 %21)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.az) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.557, label %bb.s, label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.557, label %bb.s, label %bb.ba

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread
  %.pn76.pn.pn.pn.pn.pn.pn217.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread224 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn76.pn.pn.pn.pn.pn.pn217 = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn76.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn76.pn.pn.pn.pn.pn.pn217.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #8
  br label %bb.ba

bb.t:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.12)
  %i.ba = tail call i32 @lua_isnumber(ptr noundef %0, i32 noundef -1)
  %.not61 = icmp eq i32 %i.ba, 0
  br i1 %.not61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -1)
  %i.bc = tail call nsz double @llvm.minnum.f64(double %i.bb, double 2.550000e+02)
  %i.bd = tail call nsz double @llvm.maxnum.f64(double %i.bc, double 0.000000e+00)
  %i.be = fptoui double %i.bd to i32
  %i.bf = shl i32 %i.be, 24
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.bg = phi i32 [ %i.bf, %bb.u ], [ -16777216, %bb.t ]
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.13)
  %i.bh = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1)
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bj, ptr %12, align 8, !tbaa !12
  store i64 2334106421097295433, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 8, ptr %i.bk, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !16
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.17, i64 noundef 17)
          to label %.noexc105 unwind label %bb.ac ; 6 uses

.noexc105:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.bn, ptr %11, align 8, !tbaa !12, !alias.scope !102
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !17 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

bb.w:                                             ; preds = %.noexc105
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !15 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %.noexc105
  store ptr %i.bo, ptr %11, align 8, !tbaa !17, !alias.scope !102
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !16
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !16, !alias.scope !102
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.w
  %i.bw = phi i64 [ %i.bs, %bb.w ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !15, !alias.scope !102
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !17
  store i64 0, ptr %i.bx, align 8, !tbaa !15
  store i8 0, ptr %i.bp, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !15, !noalias !103
  %i.ca = and i64 %i.bz, -16
  %i.cb = icmp eq i64 %i.ca, 4611686018427387888
  br i1 %i.cb, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i106

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc110 unwind label %bb.ad

.noexc110:                                        ; preds = %bb.y
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i106: ; preds = %bb.x
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.2, i64 noundef 16)
          to label %.noexc111 unwind label %bb.ad ; 6 uses

.noexc111:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i106
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.cd, ptr %10, align 8, !tbaa !12, !alias.scope !103
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !17 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

bb.z:                                             ; preds = %.noexc111
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !15 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %.noexc111
  store ptr %i.ce, ptr %10, align 8, !tbaa !17, !alias.scope !103
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !16
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !16, !alias.scope !103
  %.phi.trans.insert.i108 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre.i109 = load i64, ptr %.phi.trans.insert.i108, align 8, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.z
  %i.cm = phi i64 [ %i.ci, %bb.z ], [ %.pre.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !15, !alias.scope !103
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !17
  store i64 0, ptr %i.cn, align 8, !tbaa !15
  store i8 0, ptr %i.cf, align 8, !tbaa !16
  %i.cp = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bn
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.aa
  %i.cr = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  %i.ct = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bj
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.cv = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.cx = load ptr, ptr %10, align 8, !tbaa !17
  %i.cy = load i64, ptr %i.co, align 8, !tbaa !15
  invoke void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 %i.cy, ptr %i.cx, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.cz = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cd
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.ab
  %i.db = load i64, ptr %i.cd, align 8, !tbaa !16
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.af

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i106, %bb.y
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bn
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.ad
  %i.dh = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.ac ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %i.de, %bb.ad ]
  %i.dj = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bj
end_hunk_2
