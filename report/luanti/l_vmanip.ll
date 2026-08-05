inline.NumInlined: 290
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #21
  unreachable

_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !47
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV8LuaError, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !44
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare i48 @_Z11check_v3s16P9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN8MMVManip13initialEmergeEN4core8vector3dIsEES2_b(ptr noundef nonnull align 8 dereferenceable(88), i48, i48, i1 noundef zeroext) local_unnamed_addr #2

declare void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef, i48) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13LuaVoxelManip12l_initializeEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.1", align 1  ; 5 uses
  %3 = alloca %class.VoxelArea, align 8           ; 7 uses
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN13LuaVoxelManip9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str) ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit

_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 10 uses
  %i.g = load i8, ptr %i.b, align 8, !tbaa !19, !range !20, !noundef !21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit

bb.c:                                             ; preds = %_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit
  %i.i = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #23
          to label %bb.m unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.032 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8, !tbaa !44
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.032, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.032, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn91 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #20
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn90 = phi { ptr, i32 } [ %.pn91, %bb.g ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn90

_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit: ; preds = %_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.r = tail call i48 @_Z11check_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 2) ; 4 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %i.r, 16
  %i.s = ashr i48 %i.r, 32
  %i.t = trunc nsw i48 %i.s to i32                ; 2 uses
  %i.u = add nsw i32 %i.t, -15
  %i.v = icmp slt i48 %i.r, 0
  %i.w = select i1 %i.v, i32 %i.u, i32 %i.t
  %i.x = sdiv i32 %i.w, 16                        ; 2 uses
  %i.y = tail call i48 @_Z11check_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 3) ; 4 uses
  %.sroa.2.0.extract.shift.i.i36 = lshr i48 %i.y, 16
  %i.z = ashr i48 %i.y, 32
  %i.aa = trunc nsw i48 %i.z to i32               ; 2 uses
  %i.ab = add nsw i32 %i.aa, -15
  %i.ac = icmp slt i48 %i.y, 0
  %i.ad = select i1 %i.ac, i32 %i.ab, i32 %i.aa
  %i.ae = sdiv i32 %i.ad, 16                      ; 2 uses
  %.sroa.9.095 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %i.ae)
  %.sroa.9.0 = trunc nsw i32 %.sroa.9.095 to i16
  %.sroa.986.0.v = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %i.ae)
  %.sroa.986.0 = trunc nsw i32 %.sroa.986.0.v to i16
  %i.af = shl nsw i16 %.sroa.986.0, 4             ; 2 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.af to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %i.ag = shl nsw i16 %.sroa.9.0, 4               ; 2 uses
  %i.ah = or disjoint i16 %i.ag, 15
  %.sroa.3.0.insert.ext.i60 = zext i16 %i.ah to i48
  %.sroa.3.0.insert.shift.i61 = shl nuw i48 %.sroa.3.0.insert.ext.i60, 32
  %i.ai = sext i16 %i.af to i32
  %i.aj = sext i16 %i.ag to i32
  %i.ak = add nsw i32 %i.aj, 16
  %i.al = sub nsw i32 %i.ak, %i.ai
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %i.r to i16
  %i.am = insertelement <2 x i16> poison, i16 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.an = insertelement <2 x i16> %i.am, i16 %.sroa.2.0.extract.trunc.i.i, i64 1 ; 2 uses
  %i.ao = sext <2 x i16> %i.an to <2 x i32>       ; 2 uses
  %i.ap = add nsw <2 x i32> %i.ao, splat (i32 -15)
  %i.aq = icmp slt <2 x i16> %i.an, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i32> %i.ap, <2 x i32> %i.ao
  %i.as = sdiv <2 x i32> %i.ar, splat (i32 16)    ; 2 uses
  %i.at = trunc i48 %i.y to i16
  %i.au = insertelement <2 x i16> poison, i16 %i.at, i64 0
  %i.av = trunc i48 %.sroa.2.0.extract.shift.i.i36 to i16
  %i.aw = insertelement <2 x i16> %i.au, i16 %i.av, i64 1 ; 2 uses
  %i.ax = sext <2 x i16> %i.aw to <2 x i32>       ; 2 uses
  %i.ay = add nsw <2 x i32> %i.ax, splat (i32 -15)
  %i.az = icmp slt <2 x i16> %i.aw, zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x i32> %i.ay, <2 x i32> %i.ax
  %i.bb = sdiv <2 x i32> %i.ba, splat (i32 16)    ; 2 uses
  %i.bc = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.as, <2 x i32> %i.bb)
  %i.bd = trunc <2 x i32> %i.bc to <2 x i16>
  %i.be = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.as, <2 x i32> %i.bb)
  %i.bf = trunc <2 x i32> %i.be to <2 x i16>
  %i.bg = shl nsw <2 x i16> %i.bf, splat (i16 4)  ; 3 uses
  %i.bh = extractelement <2 x i16> %i.bg, i64 1
  %.sroa.2.0.insert.ext.i = zext i16 %i.bh to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %i.bi = extractelement <2 x i16> %i.bg, i64 0
  %.sroa.0.0.insert.ext.i = zext i16 %i.bi to i48
  %i.bj = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.bj, %.sroa.2.0.insert.shift.i
  %i.bk = shl nsw <2 x i16> %i.bd, splat (i16 4)  ; 2 uses
  %4 = or disjoint <2 x i16> %i.bk, splat (i16 15) ; 2 uses
  %i.bl = extractelement <2 x i16> %4, i64 1
  %.sroa.2.0.insert.ext.i62 = zext i16 %i.bl to i48
  %.sroa.2.0.insert.shift.i63 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i62, 16
  %5 = extractelement <2 x i16> %4, i64 0
  %.sroa.0.0.insert.ext.i65 = zext i16 %5 to i48
  %i.bm = or disjoint i48 %.sroa.3.0.insert.shift.i61, %.sroa.0.0.insert.ext.i65
  %.sroa.0.0.insert.insert.i66 = or disjoint i48 %i.bm, %.sroa.2.0.insert.shift.i63
  %i.bn = sext <2 x i16> %i.bg to <2 x i32>
  %i.bo = sext <2 x i16> %i.bk to <2 x i32>
  %i.bp = add nsw <2 x i32> %i.bo, splat (i32 16)
  %i.bq = sub nsw <2 x i32> %i.bp, %i.bn
  store i48 %.sroa.0.0.insert.insert.i, ptr %3, align 8
  store i48 %.sroa.0.0.insert.insert.i66, ptr %i.q, align 2
  store <2 x i32> %i.bq, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !48
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.al, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !48
  tail call void @_ZN16VoxelManipulator5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 4 dereferenceable(24) %3)
  %i.br = call i32 @lua_type(ptr noundef %0, i32 noundef 4)
  %i.bs = icmp eq i32 %i.br, 5
  br i1 %i.bs, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit
  %i.bt = call i32 @_Z8readnodeP9lua_Statei(ptr noundef %0, i32 noundef 4) ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !50
  %i.bz = mul i32 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51
  %i.cc = mul i32 %i.bz, %i.cb                    ; 3 uses
  %.not98 = icmp eq i32 %i.cc, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 5 uses
  %i.ce = zext i32 %i.cc to i64                   ; 2 uses
  %xtraiter = and i64 %i.ce, 3                    ; 3 uses
  %i.cf = icmp ult i32 %i.cc, 4
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ce, 4294967292
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.epil
  store i32 %i.bt, ptr %i.ch, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.j, !llvm.loop !53

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.j, %bb.i
  call void @_ZN16VoxelManipulator10clearFlagsERK9VoxelAreah(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 4 dereferenceable(24) %i.bu, i8 noundef zeroext 1)
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.k ]
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !52
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv
  store i32 %i.bt, ptr %i.cj, align 4
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !52
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 %i.bt, ptr %i.cm, align 4
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !52
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %i.bt, ptr %i.cp, align 4
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !52
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %i.bt, ptr %i.cs, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !55

bb.l:                                             ; preds = %._crit_edge, %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.02.0.copyload = load i48, ptr %i.ct, align 8
  call void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.02.0.copyload)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %.sroa.0.0.copyload = load i48, ptr %i.cu, align 2
  call void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 2

bb.m:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN16VoxelManipulator5clearEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #2

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_Z8readnodeP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN16VoxelManipulator10clearFlagsERK9VoxelAreah(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(24), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13LuaVoxelManip10l_get_dataEP9lua_State(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @_ZN13LuaVoxelManip9classNameE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str) ; 0 uses
  br label %_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit

_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit: ; preds = %bb.a, %bb.b
  %i.f = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2)
  %i.g = icmp eq i32 %i.f, 5
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !12   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
  %i.m = mul i32 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51
  %i.p = mul i32 %i.m, %i.o                       ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 2)
  br label %bb.e

bb.d:                                             ; preds = %_ZN13LuaVoxelManip16checkObjectValidEP9lua_Statei.exit
  tail call void @lua_createtable(ptr noundef %0, i32 noundef %i.p, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not19 = icmp eq i32 %i.p, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = zext i32 %i.p to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.h, %bb.e
  ret i32 1

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !44
  %i.w = and i8 %i.v, 1
  %.not18 = icmp eq i8 %i.w, 0
  br i1 %.not18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i16, ptr %i.y, align 4, !tbaa !58
  %i.aa = zext i16 %i.z to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ab = phi i64 [ %i.aa, %bb.g ], [ 127, %bb.f ]
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ab)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = trunc nuw i64 %indvars.iv.next to i32
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.ac)
  %.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !60
}

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lua_rawseti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13LuaVoxelManip10l_set_dataEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
