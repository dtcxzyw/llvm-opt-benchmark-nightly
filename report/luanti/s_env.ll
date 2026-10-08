Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/s_env?download=true
inline.NumInlined: 470
inline.NumDeleted: 196
begin_hunk_0_@_ZN12ScriptApiEnv21on_liquid_transformedERKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS6_EE:bb.a
  %.sroa.035.044 = phi ptr [ %i.be, %bb.w ], [ %i.au, %bb.p ] ; 3 uses
  %i.bb = uitofp nsz nneg i32 %.03045 to double   ; 2 uses
  invoke void @lua_pushnumber(ptr noundef %i.x, double noundef %i.bb)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload = load i48, ptr %.sroa.035.044, align 4, !tbaa !78
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %i.x, i48 %.sroa.0.0.copyload)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  invoke void @lua_rawset(ptr noundef %i.x, i32 noundef -4)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bc = add nuw nsw i32 %.03045, 1
  invoke void @lua_pushnumber(ptr noundef %i.x, double noundef %i.bb)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.035.044, i64 8
  invoke void @_Z8pushnodeP9lua_StateRK7MapNode(ptr noundef %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.bd)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @lua_rawset(ptr noundef %i.x, i32 noundef -3)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.035.044, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.av
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.lr.ph
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %._crit_edge, %bb.j
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #27
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bi = load i32, ptr %i.k, align 4, !tbaa !12
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.k, align 4, !tbaa !12
  %i.bk = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #24 ; 0 uses
  ret void

bb.aa:                                            ; preds = %bb.q, %bb.x, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.bf, %bb.x ], [ %i.ba, %bb.q ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.ad, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ab ], [ %i.ac, %bb.k ]
  %i.bl = load i32, ptr %i.k, align 4, !tbaa !12
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.k, align 4, !tbaa !12
  %i.bn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #24 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @lua_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @lua_objlen(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_rawset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z8pushnodeP9lua_StateRK7MapNode(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12ScriptApiEnv20on_mapblocks_changedERKSt13unordered_setIN4core8vector3dIsEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.StackUnroller, align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #25
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
  %i.o = tail call i64 @pthread_self() #26
  store i64 %i.o, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.x, ptr %2, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.n       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_getfield(ptr noundef %i.x, i32 noundef -10002, ptr noundef nonnull @.str)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  invoke void @lua_getfield(ptr noundef %i.x, i32 noundef -1, ptr noundef nonnull @.str.22)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke void @luaL_checktype(ptr noundef %i.x, i32 noundef -1, i32 noundef 5)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  invoke void @lua_remove(ptr noundef %i.x, i32 noundef -2)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !85
  %i.ac = trunc i64 %i.ab to i32
  invoke void @lua_createtable(ptr noundef %i.x, i32 noundef 0, i32 noundef %i.ac)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.r, %bb.j
  %.sroa.025.0.in = phi ptr [ %i.ad, %bb.j ], [ %.sroa.025.0, %bb.r ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8, !tbaa !86 ; 3 uses
  %.not = icmp eq ptr %.sroa.025.0, null
  br i1 %.not, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !85
  invoke void @lua_pushinteger(ptr noundef %i.x, i64 noundef %i.ae)
          to label %bb.t unwind label %bb.o

bb.m:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.o:                                             ; preds = %bb.t, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.p:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %.sroa.0.0.copyload = load i48, ptr %i.ai, align 2, !tbaa !78 ; 3 uses
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.0.0.copyload to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %3 = ashr i48 %.sroa.0.0.copyload, 32
  %narrow.i = add nsw i48 %3, 32768
  %4 = zext nneg i48 %narrow.i to i64
  %5 = shl nuw nsw i64 %4, 32
  %sext1.i.a = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.aj = ashr exact i64 %sext1.i.a, 32
  %i.ak = add nsw i64 %i.aj, 2147483648
  %sext2.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.al = ashr exact i64 %sext2.i, 48
  %i.am = add nsw i64 %i.al, 32768
  %i.an = or i64 %i.am, %5
  %i.ao = or i64 %i.an, %i.ak
  %i.ap = uitofp nneg i64 %i.ao to double
  invoke void @lua_pushnumber(ptr noundef %i.x, double noundef %i.ap)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @lua_pushboolean(ptr noundef %i.x, i32 noundef 1)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @lua_rawset(ptr noundef %i.x, i32 noundef -3)
          to label %bb.k unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %0, align 8, !tbaa !11
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at
  invoke void @_ZN13ScriptApiBase15runCallbacksRawEi16RunCallbacksModePKc(ptr noundef nonnull align 8 dereferenceable(129) %i.au, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @__FUNCTION__._ZN12ScriptApiEnv20on_mapblocks_changedERKSt13unordered_setIN4core8vector3dIsEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE)
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %bb.t
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #27
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !12
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.k, align 4, !tbaa !12
  %i.az = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #24 ; 0 uses
  ret void

bb.w:                                             ; preds = %bb.s, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.ah, %bb.o ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %i.ag, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.af, %bb.m ]
  %i.ba = load i32, ptr %i.k, align 4, !tbaa !12
  %i.bb = add nsw i32 %i.ba, -1
  store i32 %i.bb, ptr %i.k, align 4, !tbaa !12
  %i.bc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #24 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12ScriptApiEnv24has_on_mapblocks_changedEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.StackUnroller, align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #25
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
  %i.o = tail call i64 @pthread_self() #26
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %i.x, ptr %1, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_getfield(ptr noundef %i.x, i32 noundef -10002, ptr noundef nonnull @.str)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @lua_getfield(ptr noundef %i.x, i32 noundef -1, ptr noundef nonnull @.str.22)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  invoke void @luaL_checktype(ptr noundef %i.x, i32 noundef -1, i32 noundef 5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.aa = invoke i64 @lua_objlen(ptr noundef %i.x, i32 noundef -1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.i
  %i.ad = icmp ne i64 %i.aa, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !12
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.k, align 4, !tbaa !12
  %i.ag = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #24 ; 0 uses
  ret i1 %i.ad

bb.k:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ai, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.ah, %bb.k ]
  %i.ak = load i32, ptr %i.k, align 4, !tbaa !12
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.k, align 4, !tbaa !12
  %i.am = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #24 ; 0 uses
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12ScriptApiEnv10triggerABMEiN4core8vector3dIsEE7MapNodejj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i48 %2, i32 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.MapNode, align 4            ; 2 uses
  %7 = alloca %class.StackUnroller, align 8       ; 6 uses
  store i32 %3, ptr %6, align 4
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b
end_hunk_0
