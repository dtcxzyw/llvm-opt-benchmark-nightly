inline.NumInlined: 663
inline.NumDeleted: 233
begin_hunk_0_@_ZL11read_v3_auxP9lua_Statei:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.m ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ] ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.an = load i64, ptr %i.al, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.ap = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
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

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread
  %.pn.pn.pn.pn.pn.pn.pn56.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread ]
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
  %i.f = fpext <2 x float> %i.d to <2 x double>   ; 2 uses
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
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc = zext nneg i48 %.sroa.3.0.extract.shift to i64
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10000, i32 noundef 8)
  %sext = shl i64 %.sroa.0.0.extract.trunc, 48
  %i.a = ashr exact i64 %sext, 48
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.a)
  %sext5 = shl i64 %.sroa.2.0.extract.trunc, 48
  %i.b = ashr exact i64 %sext5, 48
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b)
  %sext6 = shl nuw i64 %.sroa.3.0.extract.trunc, 48
  %i.c = ashr exact i64 %sext6, 48
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.c)
  tail call void @lua_call(ptr noundef %0, i32 noundef 3, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.core::vector3d.3", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call fastcc void @_ZL8read_v3dP9lua_Statei(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, i32 noundef %1)
  %.sroa.02.0.copyload = load double, ptr %2, align 8, !tbaa !33 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.a = fcmp nsz ogt double %.sroa.02.0.copyload, 0.000000e+00
  %i.b = select nsz i1 %i.a, double 5.000000e-01, double -5.000000e-01
  %i.c = fadd nsz double %.sroa.02.0.copyload, %i.b
  %i.d = fptosi double %i.c to i16
  %i.e = load <2 x double>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !33 ; 2 uses
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
  tail call fastcc void @_ZL11read_v3_auxP9lua_Statei(ptr noundef %0, i32 noundef %1), !noalias !57
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef -3), !noalias !57 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 3
  br i1 %.not.i, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #8, !noalias !57 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8, !noalias !57
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread.i, !noalias !57

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.thread.i, !noalias !57

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4)
          to label %bb.e unwind label %bb.m, !noalias !57

bb.e:                                             ; preds = %bb.d
  %i.c = invoke ptr @lua_typename(ptr noundef %0, i32 noundef 3)
          to label %bb.f unwind label %bb.n, !noalias !57

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.c)
          to label %bb.g unwind label %bb.n, !noalias !57

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5)
          to label %bb.h unwind label %bb.o, !noalias !57

bb.h:                                             ; preds = %bb.g
  %i.d = invoke ptr @lua_typename(ptr noundef %0, i32 noundef %i.a)
          to label %bb.i unwind label %bb.p, !noalias !57

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.d)
          to label %bb.j unwind label %bb.p, !noalias !57

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.q, !noalias !57

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.r, !noalias !57

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.cb unwind label %bb.r, !noalias !57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.thread.i: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.i

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i

bb.o:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i

bb.q:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.r:                                             ; preds = %bb.l, %bb.k
  %.084.i = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !57
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24, !noalias !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.q
  %.185.i = phi i1 [ true, %bb.q ], [ %.084.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.084.i, %bb.r ] ; 2 uses
  %.pn141.i = phi { ptr, i32 } [ %i.j, %bb.q ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.k, %bb.r ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !57
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24, !noalias !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i, %bb.p
  %.286.i = phi i1 [ true, %bb.p ], [ %.185.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i ], [ %.185.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %.pn141.pn.i = phi { ptr, i32 } [ %i.i, %bb.p ], [ %.pn141.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i ], [ %.pn141.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16, !noalias !57
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24, !noalias !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i, %bb.o
  %.387.i = phi i1 [ true, %bb.o ], [ %.286.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i ], [ %.286.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i ] ; 2 uses
  %.pn141.pn.pn.i = phi { ptr, i32 } [ %i.h, %bb.o ], [ %.pn141.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i ], [ %.pn141.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i ] ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16, !noalias !57
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24, !noalias !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i, %bb.n
  %.488.i = phi i1 [ true, %bb.n ], [ %.387.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i ], [ %.387.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i ] ; 2 uses
  %.pn141.pn.pn.pn.i = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn141.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i ], [ %.pn141.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i ] ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16, !noalias !57
end_hunk_0
begin_hunk_1_@_Z11check_v3s16P9lua_Statei:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i, %bb.bq
  %.pn116.i = phi { ptr, i32 } [ %i.gg, %bb.bq ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i ], [ %i.gh, %bb.br ] ; 4 uses
  %.145.i = phi i1 [ true, %bb.bq ], [ %.044.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i ], [ %.044.i, %bb.br ] ; 2 uses
  %i.gn = load ptr, ptr %31, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !16, !noalias !57
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #24, !noalias !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i
  %i.gs = load ptr, ptr %32, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.thread.i: ; preds = %bb.bm
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %32, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %.sink.split404.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.thread.i
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !16, !noalias !57
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #24, !noalias !57
  br label %.sink.split404.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i
  %i.hb = load i64, ptr %i.gt, align 8, !tbaa !16, !noalias !57
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.hc) #24, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #8, !noalias !57
  br i1 %.145.i, label %.sink.split406.i, label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #8, !noalias !57
  br i1 %.145.i, label %.sink.split406.i, label %bb.ca

.sink.split404.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread.i
  %.pn116.pn.pn287.ph.i = phi { ptr, i32 } [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.thread.i ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread.i ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #8, !noalias !57
  br label %.sink.split406.i

bb.bs:                                            ; preds = %bb.bk
  %i.hd = tail call double @llvm.fabs.f64(double %i.fc)
  %or.cond325.i = fcmp ueq double %i.hd, +inf
  br i1 %or.cond325.i, label %bb.bt, label %_ZL9check_v3dP9lua_Statei.exit

bb.bt:                                            ; preds = %bb.bs
  %i.he = tail call ptr @__cxa_allocate_exception(i64 40) #8, !noalias !57 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #8, !noalias !57
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.bu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread.i, !noalias !57

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.23)
          to label %bb.bv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread.i, !noalias !57

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.11)
          to label %bb.bw unwind label %bb.by, !noalias !57

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.he, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.bx unwind label %bb.bz, !noalias !57

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_throw(ptr nonnull %i.he, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.cb unwind label %bb.bz, !noalias !57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread.i: ; preds = %bb.bt
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split405.i

bb.by:                                            ; preds = %bb.bv
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i

bb.bz:                                            ; preds = %bb.bx, %bb.bw
  %.0.i = phi i1 [ false, %bb.bx ], [ true, %bb.bw ] ; 2 uses
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %34, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i: ; preds = %bb.bz
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !16, !noalias !57
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #24, !noalias !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i, %bb.by
  %.pn.i = phi { ptr, i32 } [ %i.hg, %bb.by ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i ], [ %i.hh, %bb.bz ] ; 4 uses
  %.1.i = phi i1 [ true, %bb.by ], [ %.0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i ], [ %.0.i, %bb.bz ] ; 2 uses
  %i.hn = load ptr, ptr %35, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !16, !noalias !57
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #24, !noalias !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i
  %i.hs = load ptr, ptr %36, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread.i: ; preds = %bb.bu
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = load ptr, ptr %36, align 8, !tbaa !20, !noalias !57 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %.sink.split405.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread.i
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !16, !noalias !57
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #24, !noalias !57
  br label %.sink.split405.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i
  %i.ib = load i64, ptr %i.ht, align 8, !tbaa !16, !noalias !57
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.ic) #24, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #8, !noalias !57
  br i1 %.1.i, label %.sink.split406.i, label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #8, !noalias !57
  br i1 %.1.i, label %.sink.split406.i, label %bb.ca

.sink.split405.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread.i
  %.pn.pn.pn299.ph.i = phi { ptr, i32 } [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.thread.i ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.thread.i ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #8, !noalias !57
  br label %.sink.split406.i

.sink.split406.i:                                 ; preds = %.sink.split405.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i, %.sink.split404.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i, %.sink.split403.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i, %.sink.split402.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i, %.sink.split401.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i, %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i
  %.sink.i = phi ptr [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ], [ %i.b, %.sink.split.i ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i ], [ %i.bb, %.sink.split401.i ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i ], [ %i.db, %.sink.split402.i ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i ], [ %i.fe, %.sink.split403.i ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i ], [ %i.ge, %.sink.split404.i ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i ], [ %i.he, %.sink.split405.i ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i ], [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i ]
  %.pn141.pn.pn.pn.pn.pn.pn.pn.ph.i = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i ], [ %.pn120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i ], [ %.pn116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i ], [ %.pn133.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188.i ], [ %.pn141.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ], [ %.pn141.pn.pn.pn.pn.pn.pn239.ph.i, %.sink.split.i ], [ %.pn141.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i ], [ %.pn133.pn.pn.pn.pn.pn.pn251.ph.i, %.sink.split401.i ], [ %.pn133.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i ], [ %.pn125.pn.pn.pn.pn.pn.pn263.ph.i, %.sink.split402.i ], [ %.pn125.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i ], [ %.pn120.pn.pn275.ph.i, %.sink.split403.i ], [ %.pn120.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i ], [ %.pn116.pn.pn287.ph.i, %.sink.split404.i ], [ %.pn116.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i ], [ %.pn.pn.pn299.ph.i, %.sink.split405.i ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #8, !noalias !57
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
  store i32 %i.d, ptr %2, align 4, !tbaa !60
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @lua_isnumber(ptr noundef %0, i32 noundef %1)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef %1)
  %i.g = fptoui double %i.f to i32
  store i32 %i.g, ptr %2, align 4, !tbaa !61
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @lua_isstring(ptr noundef %0, i32 noundef %1)
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.i = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef %1, ptr noundef null) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !9
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %.noexc, label %bb.g

.noexc:                                           ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #23
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.l, ptr %i.a, align 8, !tbaa !30
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !20
  %i.o = load i64, ptr %i.a, align 8, !tbaa !30
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
  %i.r = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !13
  %i.t = load ptr, ptr %4, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.v = invoke noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext true, i8 noundef zeroext -1)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
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
  %i.ab = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
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
  %i.af = load i32, ptr %3, align 4, !tbaa !60
  store i32 %i.af, ptr %2, align 4, !tbaa !60
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
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
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

end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !9
  %i.s = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !20
  %i.z = load i64, ptr %i.t, align 8, !tbaa !16
  store i64 %i.z, ptr %i.r, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !13
  store ptr %i.t, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %i.ab, align 8, !tbaa !13
  store i8 0, ptr %i.t, align 8, !tbaa !16
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !9, !alias.scope !193, !noalias !196
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !196, !noalias !193 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13, !alias.scope !196, !noalias !193 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !198
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !20, !alias.scope !193, !noalias !196
  %i.al = load i64, ptr %i.af, align 8, !tbaa !16, !alias.scope !196, !noalias !193
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !16, !alias.scope !193, !noalias !196
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !13, !alias.scope !196, !noalias !193
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !13, !alias.scope !193, !noalias !196
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !196, !noalias !193
  store i64 0, ptr %i.an, align 8, !tbaa !13, !alias.scope !196, !noalias !193
  store i8 0, ptr %i.af, align 8, !tbaa !16, !alias.scope !196, !noalias !193
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !199

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !9, !alias.scope !200, !noalias !203
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !20, !alias.scope !203, !noalias !200 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !13, !alias.scope !203, !noalias !200 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !205
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !20, !alias.scope !200, !noalias !203
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !16, !alias.scope !203, !noalias !200
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !16, !alias.scope !200, !noalias !203
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !13, !alias.scope !203, !noalias !200
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !13, !alias.scope !200, !noalias !203
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !20, !alias.scope !203, !noalias !200
  store i64 0, ptr %i.bc, align 8, !tbaa !13, !alias.scope !203, !noalias !200
  store i8 0, ptr %i.au, align 8, !tbaa !16, !alias.scope !203, !noalias !200
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !199

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !109
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !192
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !109
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #16

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

declare i64 @lua_tointeger(ptr noundef, i32 noundef) local_unnamed_addr #2

declare extern_weak void @_ZTH11errorstream() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !7, i64 16}
!15 = !{!"long", !7, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!19 = distinct !{!19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!20 = !{!14, !11, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!23 = distinct !{!23, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!26 = distinct !{!26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!29 = distinct !{!29, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!30 = !{!15, !15, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"double", !7, i64 0}
!35 = !{!36, !34, i64 16}
!36 = !{!"_ZTSN4core8vector3dIdEE", !34, i64 0, !34, i64 8, !34, i64 16}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!39 = distinct !{!39, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!42 = distinct !{!42, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!45 = distinct !{!45, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!48 = distinct !{!48, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!51 = distinct !{!51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!54 = distinct !{!54, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!55 = !{!36, !34, i64 0}
!56 = !{!36, !34, i64 8}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZL9check_v3dP9lua_Statei: argument 0"}
!59 = distinct !{!59, !"_ZL9check_v3dP9lua_Statei"}
!60 = !{!6, !6, i64 0}
!61 = !{!62, !6, i64 0}
!62 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!65 = distinct !{!65, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!68 = distinct !{!68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!71 = distinct !{!71, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!74 = distinct !{!74, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!77 = distinct !{!77, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!80 = distinct !{!80, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!81 = !{!82, !82, i64 0}
!82 = !{!"float", !7, i64 0}
!83 = !{!84, !82, i64 0}
!84 = !{!"_ZTSN4core8aabbox3dIfEE", !85, i64 0, !85, i64 12}
!85 = !{!"_ZTSN4core8vector3dIfEE", !82, i64 0, !82, i64 4, !82, i64 8}
!86 = !{!84, !82, i64 4}
!87 = !{!84, !82, i64 8}
!88 = !{!84, !82, i64 12}
!89 = !{!84, !82, i64 16}
!90 = !{!84, !82, i64 20}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{i64 0, i64 4, !81, i64 4, i64 4, !81, i64 8, i64 4, !81, i64 12, i64 4, !81, i64 16, i64 4, !81, i64 20, i64 4, !81}
!94 = !{!95, !96, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!96 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !12, i64 0}
!97 = !{!95, !96, i64 8}
!98 = !{!95, !96, i64 16}
!99 = !{!100, !102}
!100 = distinct !{!100, !101, !"_ZSt19__relocate_object_aIN4core8aabbox3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!101 = distinct !{!101, !"_ZSt19__relocate_object_aIN4core8aabbox3dIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!102 = distinct !{!102, !101, !"_ZSt19__relocate_object_aIN4core8aabbox3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!103 = distinct !{!103, !92}
!104 = distinct !{!104, !92}
!105 = !{!96, !96, i64 0}
!106 = !{!107, !108, i64 8}
!107 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!108 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!109 = !{!107, !108, i64 16}
!110 = distinct !{!110, !92}
!111 = !{!"branch_weights", i32 1023, i32 1}
!112 = !{!113, !115, i64 0}
!113 = !{!"_ZTSSt15_Rb_tree_header", !114, i64 0, !15, i64 32}
!114 = !{!"_ZTSSt18_Rb_tree_node_base", !115, i64 0, !116, i64 8, !116, i64 16, !116, i64 24}
!115 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!116 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!117 = !{!113, !116, i64 8}
!118 = !{!113, !116, i64 16}
!119 = !{!113, !116, i64 24}
!120 = !{!113, !15, i64 32}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!123 = distinct !{!123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!126 = distinct !{!126, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!129 = distinct !{!129, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!132 = distinct !{!132, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!135 = distinct !{!135, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!138 = distinct !{!138, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!141 = distinct !{!141, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!142 = !{!116, !116, i64 0}
!143 = distinct !{!143, !92}
!144 = !{!145, !146, i64 0}
!145 = !{!"_ZTS9LogStream", !146, i64 0, !147, i64 8, !153, i64 368, !154, i64 432, !154, i64 704, !155, i64 976, !155, i64 984}
!146 = !{!"p1 _ZTS9LogTarget", !12, i64 0}
!147 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !148, i64 0, !151, i64 64, !6, i64 96, !7, i64 100}
!148 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !149, i64 56}
!149 = !{!"_ZTSSt6locale", !150, i64 0}
!150 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!151 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !152, i64 0, !12, i64 24}
!152 = !{!"_ZTSSt14_Function_base", !7, i64 0, !12, i64 16}
!153 = !{!"_ZTS17DummyStreamBuffer", !148, i64 0}
!154 = !{!"_ZTSSo"}
!155 = !{!"_ZTS11StreamProxy", !156, i64 0}
!156 = !{!"p1 _ZTSSo", !12, i64 0}
!157 = !{}
!158 = !{i64 8}
end_hunk_2
