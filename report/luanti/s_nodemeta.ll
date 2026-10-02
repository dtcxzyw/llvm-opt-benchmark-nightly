Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/s_nodemeta?download=true
inline.NumInlined: 179
inline.NumDeleted: 64
begin_hunk_0_@_ZN17ScriptApiNodemeta28nodemeta_inventory_AllowMoveERK10MoveActioniP18ServerActiveObject:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cg = load i16, ptr %i.cf, align 8, !tbaa !46
  %i.ch = sext i16 %i.cg to i64
  %i.ci = add nsw i64 %i.ch, 1
  invoke void @lua_pushinteger(ptr noundef %i.x, i64 noundef %i.ci)
          to label %bb.z unwind label %bb.t

bb.z:                                             ; preds = %bb.y
  %i.cj = sext i32 %2 to i64
  invoke void @lua_pushinteger(ptr noundef %i.x, i64 noundef %i.cj)
          to label %bb.aa unwind label %bb.t

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %0, align 8, !tbaa !11
  %i.cl = getelementptr i8, ptr %i.ck, i64 -24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds i8, ptr %0, i64 %i.cm
  invoke void @_ZN13ScriptApiBase20objectrefGetOrCreateEP9lua_StateP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(129) %i.cn, ptr noundef %i.x, ptr noundef %3)
          to label %bb.ab unwind label %bb.t

bb.ab:                                            ; preds = %bb.aa
  %i.co = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 7, i32 noundef 1, i32 noundef %i.aa)
          to label %bb.ac unwind label %bb.ae     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = load ptr, ptr %0, align 8, !tbaa !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %i.cr
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.cs, i32 noundef %i.co, ptr noundef nonnull @__FUNCTION__._ZN17ScriptApiNodemeta28nodemeta_inventory_AllowMoveERK10MoveActioniP18ServerActiveObject)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.cu = invoke i32 @lua_isnumber(ptr noundef %i.x, i32 noundef -1)
          to label %bb.ag unwind label %bb.t

bb.ag:                                            ; preds = %bb.af
  %.not50 = icmp eq i32 %i.cu, 0
  br i1 %.not50, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 40) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #15
          to label %bb.av unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ah
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi i1 [ false, %bb.aj ], [ true, %bb.ai ] ; 2 uses
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cy = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !47
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %.0, label %bb.al, label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %.0, label %bb.al, label %bb.as

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn67 = phi { ptr, i32 } [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.cv) #14
  br label %bb.as

bb.am:                                            ; preds = %bb.ag
  %i.dd = invoke i64 @luaL_checkinteger(ptr noundef %i.x, i32 noundef -1)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef -3)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.de = trunc i64 %i.dd to i32
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao, %bb.s, %bb.j
  %.139 = phi i32 [ 0, %bb.j ], [ %i.de, %bb.ao ], [ %2, %bb.s ]
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  tail call void @__clang_call_terminate(ptr %i.dh) #18
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.di = load i32, ptr %i.k, align 4, !tbaa !12
  %i.dj = add nsw i32 %i.di, -1
  store i32 %i.dj, ptr %i.k, align 4, !tbaa !12
  %i.dk = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #14 ; 0 uses
  ret i32 %.139

bb.as:                                            ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.al, %bb.ap, %bb.ae, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n, %bb.m
  %.pn52.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %i.bc, %bb.n ], [ %i.bd, %bb.o ], [ %i.df, %bb.ap ], [ %.pn67, %bb.al ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bw, %bb.t ], [ %i.ct, %bb.ae ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #14
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.l
  %.pn52.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn, %bb.as ], [ %i.ba, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.k
  %.pn52.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn, %bb.at ], [ %i.az, %bb.k ]
  %i.dl = load i32, ptr %i.k, align 4, !tbaa !12
  %i.dm = add nsw i32 %i.dl, -1
  store i32 %i.dm, ptr %i.k, align 4, !tbaa !12
  %i.dn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #14 ; 0 uses
  resume { ptr, i32 } %.pn52.pn.pn.pn.pn.pn

bb.av:                                            ; preds = %bb.aj
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129)) local_unnamed_addr #2

declare void @lua_rawgeti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129)) local_unnamed_addr #2

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef, i48) local_unnamed_addr #2

declare void @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN13ScriptApiBase20objectrefGetOrCreateEP9lua_StateP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @lua_isnumber(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !48, !alias.scope !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !39, !alias.scope !78
  store i8 0, ptr %i.e, align 8, !tbaa !47, !alias.scope !78
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !39, !alias.scope !78
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !39, !alias.scope !78
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #15
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !78 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !47, !alias.scope !78
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #17
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !48
  %i.d = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.f, ptr %i.a, align 8, !tbaa !14
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.d ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !40
  %i.i = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.i, ptr %i.c, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !47
  store i8 %i.k, ptr %i.j, align 1, !tbaa !47
  br label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

_ZN8ModErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV8LuaError, i64 16), ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !47
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31
  invoke void @lua_settop(ptr noundef %i.a, i32 noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN17ScriptApiNodemeta27nodemeta_inventory_AllowPutERK10MoveActionRK9ItemStackP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(170) %1, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.StackUnroller, align 8       ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #15
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !11
  %i.h = getelementptr i8, ptr %i.g, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.o = tail call i64 @pthread_self() #16
  store i64 %i.o, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %i.x, ptr %4, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = invoke noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129) %i.ae)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
end_hunk_0
begin_hunk_1_@_ZN17ScriptApiNodemeta25nodemeta_inventory_OnTakeERK10MoveActionRK9ItemStackP18ServerActiveObject:bb.a
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ah ], [ %i.az, %bb.k ]
  %i.ct = load i32, ptr %i.k, align 4, !tbaa !12
  %i.cu = add nsw i32 %i.ct, -1
  store i32 %i.cu, ptr %i.k, align 4, !tbaa !12
  %i.cv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #14 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8LuaErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !47
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17, !inline_history !72
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #14, !inline_history !72
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !47
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17, !inline_history !72
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #14, !inline_history !72
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #17
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSSt22__recursive_mutex_base", !6, i64 0}
!16 = !{!"_ZTSSt15recursive_mutex", !15, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !13, i64 8, !6, i64 16}
!21 = !{!"_ZTSNSt6thread2idE", !13, i64 0}
!22 = !{!"p1 _ZTS9lua_State", !17, i64 0}
!23 = !{!"p1 _ZTS8IGameDef", !17, i64 0}
!24 = !{!"p1 _ZTS11Environment", !17, i64 0}
!25 = !{!"p1 _ZTS12EmergeThread", !17, i64 0}
!26 = !{!"_ZTS13ScriptingType", !6, i64 0}
!27 = !{!"_ZTS13ScriptApiBase", !16, i64 8, !20, i64 48, !7, i64 80, !21, i64 88, !22, i64 96, !23, i64 104, !24, i64 112, !25, i64 120, !26, i64 128}
!28 = !{!27, !22, i64 96}
!29 = !{!"_ZTS13StackUnroller", !22, i64 0, !7, i64 8}
!30 = !{!29, !22, i64 0}
!31 = !{!29, !7, i64 8}
!32 = !{!27, !24, i64 112}
!33 = !{!"short", !6, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTS15ContentFeatures", !17, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 8}
!38 = !{!36, !35, i64 0}
!39 = !{!20, !13, i64 8}
!40 = !{!20, !18, i64 0}
!41 = !{!"_ZTSN17InventoryLocation4TypeE", !6, i64 0}
!42 = !{!"_ZTSN4core8vector3dIsEE", !33, i64 0, !33, i64 2, !33, i64 4}
!43 = !{!"_ZTS17InventoryLocation", !41, i64 0, !20, i64 8, !42, i64 40}
!44 = !{!"_ZTS10MoveAction", !43, i64 0, !20, i64 48, !33, i64 80, !43, i64 88, !20, i64 136, !33, i64 168}
!45 = !{!44, !33, i64 80}
!46 = !{!44, !33, i64 168}
!47 = !{!6, !6, i64 0}
!48 = !{!19, !18, i64 0}
!49 = !{!"bool", !6, i64 0}
!50 = !{!"any p2 pointer", !17, i64 0}
!51 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !50, i64 0}
!52 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!53 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !52, i64 0}
!54 = !{!"float", !6, i64 0}
!55 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !54, i64 0, !13, i64 8}
!56 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !51, i64 0, !13, i64 8, !53, i64 16, !13, i64 24, !55, i64 32, !52, i64 48}
!57 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !56, i64 0}
!58 = !{!"_ZTS14SimpleMetadata", !49, i64 8, !57, i64 16}
!59 = !{!"_ZTSSt22_Optional_payload_baseI16ToolCapabilitiesE", !6, i64 0, !49, i64 112}
!60 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb1ELb0ELb0EE", !59, i64 0}
!61 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb0ELb0ELb0EE", !60, i64 0}
!62 = !{!"_ZTSSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EE", !61, i64 0}
!63 = !{!"_ZTSSt8optionalI16ToolCapabilitiesE", !62, i64 0}
!64 = !{!"_ZTSSt22_Optional_payload_baseI13WearBarParamsE", !6, i64 0, !49, i64 56}
!65 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb1ELb0ELb0EE", !64, i64 0}
!66 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EE", !65, i64 0}
!67 = !{!"_ZTSSt14_Optional_baseI13WearBarParamsLb0ELb0EE", !66, i64 0}
!68 = !{!"_ZTSSt8optionalI13WearBarParamsE", !67, i64 0}
!69 = !{!"_ZTS17ItemStackMetadata", !58, i64 0, !63, i64 72, !68, i64 192}
!70 = !{!"_ZTS9ItemStack", !20, i64 0, !33, i64 32, !33, i64 34, !69, i64 40}
!71 = !{!70, !33, i64 32}
!72 = !{ptr @_ZN13BaseExceptionD2Ev}
!76 = distinct !{!76, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!77 = distinct !{!77, !76, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!78 = !{!77}
end_hunk_1
