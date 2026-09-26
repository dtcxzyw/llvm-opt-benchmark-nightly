Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/s_node?download=true
inline.NumInlined: 141
inline.NumDeleted: 43
begin_hunk_0
@.str.2 = private unnamed_addr constant [7 x i8] c"liquid\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"flowingliquid\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"glasslike\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"allfaces\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"allfaces_optional\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"torchlike\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"signlike\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"plantlike\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"fencelike\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"raillike\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"nodebox\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"glasslike_framed\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"firelike\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"glasslike_framed_optional\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"plantlike_rooted\00", align 1
@_ZN13ScriptApiNode11es_DrawTypeE = dso_local local_unnamed_addr global [19 x %struct.EnumString] [%struct.EnumString { i32 0, ptr @.str }, %struct.EnumString { i32 1, ptr @.str.1 }, %struct.EnumString { i32 2, ptr @.str.2 }, %struct.EnumString { i32 3, ptr @.str.3 }, %struct.EnumString { i32 4, ptr @.str.4 }, %struct.EnumString { i32 5, ptr @.str.5 }, %struct.EnumString { i32 6, ptr @.str.6 }, %struct.EnumString { i32 7, ptr @.str.7 }, %struct.EnumString { i32 8, ptr @.str.8 }, %struct.EnumString { i32 9, ptr @.str.9 }, %struct.EnumString { i32 10, ptr @.str.10 }, %struct.EnumString { i32 11, ptr @.str.11 }, %struct.EnumString { i32 12, ptr @.str.12 }, %struct.EnumString { i32 13, ptr @.str.13 }, %struct.EnumString { i32 14, ptr @.str.14 }, %struct.EnumString { i32 15, ptr @.str.15 }, %struct.EnumString { i32 16, ptr @.str.16 }, %struct.EnumString { i32 17, ptr @.str.17 }, %struct.EnumString zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"facedir\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"wallmounted\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"leveled\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"degrotate\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"meshoptions\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"colorfacedir\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"colorwallmounted\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"glasslikeliquidlevel\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"colordegrotate\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"4dir\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"color4dir\00", align 1
@_ZN13ScriptApiNode20es_ContentParamType2E = dso_local local_unnamed_addr global [16 x %struct.EnumString] [%struct.EnumString { i32 0, ptr @.str.18 }, %struct.EnumString { i32 1, ptr @.str.19 }, %struct.EnumString { i32 2, ptr @.str.3 }, %struct.EnumString { i32 3, ptr @.str.20 }, %struct.EnumString { i32 4, ptr @.str.21 }, %struct.EnumString { i32 5, ptr @.str.22 }, %struct.EnumString { i32 6, ptr @.str.23 }, %struct.EnumString { i32 7, ptr @.str.24 }, %struct.EnumString { i32 8, ptr @.str.25 }, %struct.EnumString { i32 9, ptr @.str.26 }, %struct.EnumString { i32 10, ptr @.str.27 }, %struct.EnumString { i32 11, ptr @.str.28 }, %struct.EnumString { i32 12, ptr @.str.29 }, %struct.EnumString { i32 13, ptr @.str.30 }, %struct.EnumString { i32 14, ptr @.str.31 }, %struct.EnumString zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [8 x i8] c"flowing\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@_ZN13ScriptApiNode13es_LiquidTypeE = dso_local local_unnamed_addr global [4 x %struct.EnumString] [%struct.EnumString { i32 0, ptr @.str.18 }, %struct.EnumString { i32 1, ptr @.str.32 }, %struct.EnumString { i32 2, ptr @.str.33 }, %struct.EnumString zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@_ZN13ScriptApiNode19es_ContentParamTypeE = dso_local local_unnamed_addr global [3 x %struct.EnumString] [%struct.EnumString { i32 0, ptr @.str.18 }, %struct.EnumString { i32 1, ptr @.str.34 }, %struct.EnumString zeroinitializer], align 16
@.str.35 = private unnamed_addr constant [8 x i8] c"regular\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@_ZN13ScriptApiNode14es_NodeBoxTypeE = dso_local local_unnamed_addr global [6 x %struct.EnumString] [%struct.EnumString { i32 0, ptr @.str.35 }, %struct.EnumString { i32 1, ptr @.str.36 }, %struct.EnumString { i32 2, ptr @.str.21 }, %struct.EnumString { i32 3, ptr @.str.22 }, %struct.EnumString { i32 4, ptr @.str.37 }, %struct.EnumString zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@_ZN13ScriptApiNode19es_TextureAlphaModeE = dso_local local_unnamed_addr global [4 x %struct.EnumString] [%struct.EnumString { i32 2, ptr @.str.38 }, %struct.EnumString { i32 1, ptr @.str.39 }, %struct.EnumString { i32 0, ptr @.str.40 }, %struct.EnumString zeroinitializer], align 16
@.str.41 = private unnamed_addr constant [9 x i8] c"on_punch\00", align 1
@__FUNCTION__._ZN13ScriptApiNode13node_on_punchEN4core8vector3dIsEE7MapNodeP18ServerActiveObjectRK12PointedThing = private unnamed_addr constant [14 x i8] c"node_on_punch\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"on_dig\00", align 1
@__FUNCTION__._ZN13ScriptApiNode11node_on_digEN4core8vector3dIsEE7MapNodeP18ServerActiveObject = private unnamed_addr constant [12 x i8] c"node_on_dig\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"on_construct\00", align 1
@__FUNCTION__._ZN13ScriptApiNode17node_on_constructEN4core8vector3dIsEE7MapNode = private unnamed_addr constant [18 x i8] c"node_on_construct\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"on_destruct\00", align 1
@__FUNCTION__._ZN13ScriptApiNode16node_on_destructEN4core8vector3dIsEE7MapNode = private unnamed_addr constant [17 x i8] c"node_on_destruct\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"on_flood\00", align 1
@__FUNCTION__._ZN13ScriptApiNode13node_on_floodEN4core8vector3dIsEE7MapNodeS3_ = private unnamed_addr constant [14 x i8] c"node_on_flood\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"after_destruct\00", align 1
@__FUNCTION__._ZN13ScriptApiNode19node_after_destructEN4core8vector3dIsEE7MapNode = private unnamed_addr constant [20 x i8] c"node_after_destruct\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"on_timer\00", align 1
@__FUNCTION__._ZN13ScriptApiNode13node_on_timerEN4core8vector3dIsEE7MapNodeff = private unnamed_addr constant [14 x i8] c"node_on_timer\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"on_receive_fields\00", align 1
@__FUNCTION__._ZN13ScriptApiNode22node_on_receive_fieldsEN4core8vector3dIsEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS8_S8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_S8_EEEP18ServerActiveObject = private unnamed_addr constant [23 x i8] c"node_on_receive_fields\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN13ScriptApiNode13node_on_punchEN4core8vector3dIsEE7MapNodeP18ServerActiveObjectRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(8) %0, i48 %1, i32 %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.core::vector3d", align 8    ; 3 uses
  %6 = alloca %struct.MapNode, align 4            ; 2 uses
  %7 = alloca %class.StackUnroller, align 8       ; 6 uses
  store i48 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #10
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
  %i.o = tail call i64 @pthread_self() #11
  store i64 %i.o, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store ptr %i.x, ptr %7, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = invoke noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129) %i.ae)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.o, !inline_history !0 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.h
  %i.al = and i32 %2, 65535
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 2072
  %i.au = icmp ugt i64 %i.at, %i.am
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.av = getelementptr inbounds nuw [2072 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.j:                                             ; preds = %bb.i, %_ZN8IGameDef4ndefEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.j ], [ %i.av, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = invoke noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bc, ptr noundef nonnull @.str.41, ptr noundef nonnull %5)
          to label %bb.k unwind label %bb.o       ; 2 uses

bb.k:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  br i1 %i.bd, label %bb.p, label %bb.y

bb.l:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.m:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.o:                                             ; preds = %bb.h, %bb.x, %bb.s, %bb.r, %bb.q, %bb.p, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.p:                                             ; preds = %bb.k
  %.sroa.0.0.copyload = load i48, ptr %5, align 8
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %i.x, i48 %.sroa.0.0.copyload)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  invoke void @_Z8pushnodeP9lua_StateRK7MapNode(ptr noundef %i.x, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %0, align 8, !tbaa !11
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  invoke void @_ZN13ScriptApiBase20objectrefGetOrCreateEP9lua_StateP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(129) %i.bl, ptr noundef %i.x, ptr noundef %3)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN13ScriptApiItem16pushPointedThingERK12PointedThingb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(64) %4, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.bm = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 4, i32 noundef 0, i32 noundef %i.aa)
          to label %bb.u unwind label %bb.w       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = load ptr, ptr %0, align 8, !tbaa !11
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.bq, i32 noundef %i.bm, ptr noundef nonnull @__FUNCTION__._ZN13ScriptApiNode13node_on_punchEN4core8vector3dIsEE7MapNodeP18ServerActiveObjectRK12PointedThing)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.v, %bb.u
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef -2)
          to label %bb.y unwind label %bb.o

bb.y:                                             ; preds = %bb.x, %bb.k
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #12
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.bu = load i32, ptr %i.k, align 4, !tbaa !12
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.k, align 4, !tbaa !12
  %i.bw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  ret i1 %i.bd

bb.aa:                                            ; preds = %bb.o, %bb.w, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %i.br, %bb.w ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %7) #9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ab ], [ %i.be, %bb.l ]
  %i.bx = load i32, ptr %i.k, align 4, !tbaa !12
  %i.by = add nsw i32 %i.bx, -1
  store i32 %i.by, ptr %i.k, align 4, !tbaa !12
  %i.bz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129)) local_unnamed_addr #2

declare void @lua_rawgeti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef, i48) local_unnamed_addr #2

declare void @_Z8pushnodeP9lua_StateRK7MapNode(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN13ScriptApiBase20objectrefGetOrCreateEP9lua_StateP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN13ScriptApiItem16pushPointedThingERK12PointedThingb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(64), i1 noundef zeroext) local_unnamed_addr #2

declare i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @__clang_call_terminate(ptr %i.e) #12
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN13ScriptApiNode11node_on_digEN4core8vector3dIsEE7MapNodeP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(8) %0, i48 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.core::vector3d", align 8    ; 3 uses
  %5 = alloca %struct.MapNode, align 4            ; 2 uses
  %6 = alloca %class.StackUnroller, align 8       ; 6 uses
  store i48 %1, ptr %4, align 8
  store i32 %2, ptr %5, align 4
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #10
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
  %i.o = tail call i64 @pthread_self() #11
  store i64 %i.o, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr %i.x, ptr %6, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = invoke noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129) %i.ae)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.o, !inline_history !0 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.h
  %i.al = and i32 %2, 65535
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 2072
  %i.au = icmp ugt i64 %i.at, %i.am
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.av = getelementptr inbounds nuw [2072 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.j:                                             ; preds = %bb.i, %_ZN8IGameDef4ndefEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.j ], [ %i.av, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = invoke noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bc, ptr noundef nonnull @.str.42, ptr noundef nonnull %4)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  br i1 %i.bd, label %bb.p, label %bb.ac

bb.l:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.m:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.o:                                             ; preds = %bb.h, %bb.r, %bb.q, %bb.p, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.p:                                             ; preds = %bb.k
  %.sroa.0.0.copyload = load i48, ptr %4, align 8
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %i.x, i48 %.sroa.0.0.copyload)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  invoke void @_Z8pushnodeP9lua_StateRK7MapNode(ptr noundef %i.x, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %0, align 8, !tbaa !11
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  invoke void @_ZN13ScriptApiBase20objectrefGetOrCreateEP9lua_StateP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(129) %i.bl, ptr noundef %i.x, ptr noundef %3)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.r
  %i.bm = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 3, i32 noundef 1, i32 noundef %i.aa)
          to label %bb.t unwind label %bb.v       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %0, align 8, !tbaa !11
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.bq, i32 noundef %i.bm, ptr noundef nonnull @__FUNCTION__._ZN13ScriptApiNode11node_on_digEN4core8vector3dIsEE7MapNodeP18ServerActiveObject)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.bs = invoke i32 @lua_type(ptr noundef %i.x, i32 noundef -1)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = invoke i32 @lua_toboolean(ptr noundef %i.x, i32 noundef -1)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bv = icmp ne i32 %i.bu, 0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.bw = phi i1 [ true, %bb.x ], [ %i.bv, %bb.z ]
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef -3)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.w
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa, %bb.k
  %.0 = phi i1 [ false, %bb.k ], [ %i.bw, %bb.aa ]
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #12
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.ca = load i32, ptr %i.k, align 4, !tbaa !12
  %i.cb = add nsw i32 %i.ca, -1
  store i32 %i.cb, ptr %i.k, align 4, !tbaa !12
  %i.cc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  ret i1 %.0

bb.ae:                                            ; preds = %bb.o, %bb.v, %bb.ab, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bx, %bb.ab ], [ %i.br, %bb.v ], [ %i.bh, %bb.o ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.af ], [ %i.be, %bb.l ]
  %i.cd = load i32, ptr %i.k, align 4, !tbaa !12
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.k, align 4, !tbaa !12
  %i.cf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13ScriptApiNode17node_on_constructEN4core8vector3dIsEE7MapNode(ptr noundef nonnull align 8 dereferenceable(8) %0, i48 %1, i32 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.core::vector3d", align 8    ; 3 uses
  %4 = alloca %class.StackUnroller, align 8       ; 6 uses
  store i48 %1, ptr %3, align 8
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #10
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
  %i.o = tail call i64 @pthread_self() #11
  store i64 %i.o, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.x, ptr %4, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = invoke noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129) %i.ae)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.o, !inline_history !0 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.h
  %i.al = and i32 %2, 65535
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 2072
  %i.au = icmp ugt i64 %i.at, %i.am
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.av = getelementptr inbounds nuw [2072 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.j:                                             ; preds = %bb.i, %_ZN8IGameDef4ndefEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.j ], [ %i.av, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = invoke noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bc, ptr noundef nonnull @.str.43, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  br i1 %i.bd, label %bb.p, label %bb.v

bb.l:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.m:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.o:                                             ; preds = %bb.h, %bb.u, %bb.p, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.p:                                             ; preds = %bb.k
  %.sroa.0.0.copyload = load i48, ptr %3, align 8
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %i.x, i48 %.sroa.0.0.copyload)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.bi = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 1, i32 noundef 0, i32 noundef %i.aa)
          to label %bb.r unwind label %bb.t       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %0, align 8, !tbaa !11
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.bm, i32 noundef %i.bi, ptr noundef nonnull @__FUNCTION__._ZN13ScriptApiNode17node_on_constructEN4core8vector3dIsEE7MapNode)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.s, %bb.r
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef -2)
          to label %bb.v unwind label %bb.o

bb.v:                                             ; preds = %bb.u, %bb.k
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #12
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.bq = load i32, ptr %i.k, align 4, !tbaa !12
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.k, align 4, !tbaa !12
  %i.bs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  ret void

bb.x:                                             ; preds = %bb.o, %bb.t, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %i.bn, %bb.t ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.y ], [ %i.be, %bb.l ]
  %i.bt = load i32, ptr %i.k, align 4, !tbaa !12
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.k, align 4, !tbaa !12
  %i.bv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13ScriptApiNode16node_on_destructEN4core8vector3dIsEE7MapNode(ptr noundef nonnull align 8 dereferenceable(8) %0, i48 %1, i32 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.core::vector3d", align 8    ; 3 uses
  %4 = alloca %class.StackUnroller, align 8       ; 6 uses
  store i48 %1, ptr %3, align 8
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #10
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
  %i.o = tail call i64 @pthread_self() #11
  store i64 %i.o, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.x, ptr %4, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = invoke noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129) %i.ae)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.o, !inline_history !0 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.h
  %i.al = and i32 %2, 65535
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 2072
  %i.au = icmp ugt i64 %i.at, %i.am
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.av = getelementptr inbounds nuw [2072 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.j:                                             ; preds = %bb.i, %_ZN8IGameDef4ndefEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.j ], [ %i.av, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = invoke noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bc, ptr noundef nonnull @.str.44, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  br i1 %i.bd, label %bb.p, label %bb.v

bb.l:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.m:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.o:                                             ; preds = %bb.h, %bb.u, %bb.p, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.p:                                             ; preds = %bb.k
  %.sroa.0.0.copyload = load i48, ptr %3, align 8
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %i.x, i48 %.sroa.0.0.copyload)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.bi = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 1, i32 noundef 0, i32 noundef %i.aa)
          to label %bb.r unwind label %bb.t       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %0, align 8, !tbaa !11
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.bm, i32 noundef %i.bi, ptr noundef nonnull @__FUNCTION__._ZN13ScriptApiNode16node_on_destructEN4core8vector3dIsEE7MapNode)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.s, %bb.r
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef -2)
          to label %bb.v unwind label %bb.o

bb.v:                                             ; preds = %bb.u, %bb.k
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #12
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.bq = load i32, ptr %i.k, align 4, !tbaa !12
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.k, align 4, !tbaa !12
  %i.bs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  ret void

bb.x:                                             ; preds = %bb.o, %bb.t, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %i.bn, %bb.t ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.y ], [ %i.be, %bb.l ]
  %i.bt = load i32, ptr %i.k, align 4, !tbaa !12
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.k, align 4, !tbaa !12
  %i.bv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN13ScriptApiNode13node_on_floodEN4core8vector3dIsEE7MapNodeS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, i48 %1, i32 %2, i32 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.core::vector3d", align 8    ; 3 uses
  %5 = alloca %struct.MapNode, align 4            ; 2 uses
  %6 = alloca %struct.MapNode, align 4            ; 2 uses
  %7 = alloca %class.StackUnroller, align 8       ; 6 uses
  store i48 %1, ptr %4, align 8
  store i32 %2, ptr %5, align 4
  store i32 %3, ptr %6, align 4
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #10
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
  %i.o = tail call i64 @pthread_self() #11
  store i64 %i.o, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store ptr %i.x, ptr %7, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.n       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = invoke noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129) %i.ae)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.o, !inline_history !0 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.h
  %i.al = and i32 %2, 65535
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 2072
  %i.au = icmp ugt i64 %i.at, %i.am
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.av = getelementptr inbounds nuw [2072 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.j:                                             ; preds = %bb.i, %_ZN8IGameDef4ndefEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.j ], [ %i.av, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = invoke noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bc, ptr noundef nonnull @.str.45, ptr noundef nonnull %4)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  br i1 %i.bd, label %bb.p, label %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit

bb.l:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.m:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.o:                                             ; preds = %bb.h, %bb.w, %bb.r, %bb.q, %bb.p, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.p:                                             ; preds = %bb.k
  %.sroa.0.0.copyload = load i48, ptr %4, align 8
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %i.x, i48 %.sroa.0.0.copyload)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  invoke void @_Z8pushnodeP9lua_StateRK7MapNode(ptr noundef %i.x, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  invoke void @_Z8pushnodeP9lua_StateRK7MapNode(ptr noundef %i.x, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.r
  %i.bi = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 3, i32 noundef 1, i32 noundef %i.aa)
          to label %bb.t unwind label %bb.v       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load ptr, ptr %0, align 8, !tbaa !11
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.bm, i32 noundef %i.bi, ptr noundef nonnull @__FUNCTION__._ZN13ScriptApiNode13node_on_floodEN4core8vector3dIsEE7MapNodeS3_)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.u, %bb.t
  invoke void @lua_remove(ptr noundef %i.x, i32 noundef %i.aa)
          to label %bb.x unwind label %bb.o

bb.x:                                             ; preds = %bb.w
  %i.bo = invoke i32 @lua_type(ptr noundef %i.x, i32 noundef -1)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.x
  %i.bp = icmp slt i32 %i.bo, 1
  br i1 %i.bp, label %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit, label %bb.y

bb.y:                                             ; preds = %.noexc
  %i.bq = invoke noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %i.x, i32 noundef -1)
          to label %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit: ; preds = %bb.y, %.noexc, %bb.k
  %.0 = phi i1 [ false, %bb.k ], [ false, %.noexc ], [ %i.bq, %bb.y ]
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #12
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.bu = load i32, ptr %i.k, align 4, !tbaa !12
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.k, align 4, !tbaa !12
  %i.bw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  ret i1 %.0

bb.ab:                                            ; preds = %bb.o, %bb.v, %bb.z, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.br, %bb.z ], [ %i.bh, %bb.o ], [ %i.bn, %bb.v ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %7) #9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ab ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ac ], [ %i.be, %bb.l ]
  %i.bx = load i32, ptr %i.k, align 4, !tbaa !12
  %i.by = add nsw i32 %i.bx, -1
  store i32 %i.by, ptr %i.k, align 4, !tbaa !12
  %i.bz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @lua_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13ScriptApiNode19node_after_destructEN4core8vector3dIsEE7MapNode(ptr noundef nonnull align 8 dereferenceable(8) %0, i48 %1, i32 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.core::vector3d", align 8    ; 3 uses
  %4 = alloca %struct.MapNode, align 4            ; 2 uses
  %5 = alloca %class.StackUnroller, align 8       ; 6 uses
  store i48 %1, ptr %3, align 8
  store i32 %2, ptr %4, align 4
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #10
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
  %i.o = tail call i64 @pthread_self() #11
  store i64 %i.o, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %i.x, ptr %5, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = invoke noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129) %i.ae)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.o, !inline_history !0 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.h
  %i.al = and i32 %2, 65535
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 2072
  %i.au = icmp ugt i64 %i.at, %i.am
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.av = getelementptr inbounds nuw [2072 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.j:                                             ; preds = %bb.i, %_ZN8IGameDef4ndefEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.j ], [ %i.av, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = invoke noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bc, ptr noundef nonnull @.str.46, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  br i1 %i.bd, label %bb.p, label %bb.w

bb.l:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.m:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.o:                                             ; preds = %bb.h, %bb.v, %bb.q, %bb.p, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.p:                                             ; preds = %bb.k
  %.sroa.0.0.copyload = load i48, ptr %3, align 8
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %i.x, i48 %.sroa.0.0.copyload)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  invoke void @_Z8pushnodeP9lua_StateRK7MapNode(ptr noundef %i.x, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.bi = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 2, i32 noundef 0, i32 noundef %i.aa)
          to label %bb.s unwind label %bb.u       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %0, align 8, !tbaa !11
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.bm, i32 noundef %i.bi, ptr noundef nonnull @__FUNCTION__._ZN13ScriptApiNode19node_after_destructEN4core8vector3dIsEE7MapNode)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.s
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef -2)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v, %bb.k
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #12
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.bq = load i32, ptr %i.k, align 4, !tbaa !12
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.k, align 4, !tbaa !12
  %i.bs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  ret void

bb.y:                                             ; preds = %bb.o, %bb.u, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %i.bn, %bb.u ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.y ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.z ], [ %i.be, %bb.l ]
  %i.bt = load i32, ptr %i.k, align 4, !tbaa !12
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.k, align 4, !tbaa !12
  %i.bv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN13ScriptApiNode13node_on_timerEN4core8vector3dIsEE7MapNodeff(ptr noundef nonnull align 8 dereferenceable(8) %0, i48 %1, i32 %2, float noundef %3, float noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.core::vector3d", align 8    ; 3 uses
  %6 = alloca %struct.MapNode, align 4            ; 2 uses
  %7 = alloca %class.StackUnroller, align 8       ; 6 uses
  store i48 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #10
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
  %i.o = tail call i64 @pthread_self() #11
  store i64 %i.o, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store ptr %i.x, ptr %7, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !31
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = invoke noundef ptr @_ZN13ScriptApiBase9getServerEv(ptr noundef nonnull align 8 dereferenceable(129) %i.ae)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.o, !inline_history !0 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.h
  %i.al = and i32 %2, 65535
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 2072
  %i.au = icmp ugt i64 %i.at, %i.am
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.av = getelementptr inbounds nuw [2072 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.j:                                             ; preds = %bb.i, %_ZN8IGameDef4ndefEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.j ], [ %i.av, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = invoke noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bc, ptr noundef nonnull @.str.47, ptr noundef nonnull %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  br i1 %i.bd, label %bb.p, label %bb.ab

bb.l:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.o:                                             ; preds = %bb.h, %bb.s, %bb.r, %bb.q, %bb.p, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.p:                                             ; preds = %bb.k
  %.sroa.0.0.copyload = load i48, ptr %5, align 8
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %i.x, i48 %.sroa.0.0.copyload)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.bi = fpext nsz float %3 to double
  invoke void @lua_pushnumber(ptr noundef %i.x, double noundef %i.bi)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  invoke void @_Z8pushnodeP9lua_StateRK7MapNode(ptr noundef %i.x, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.r
  %i.bj = fpext nsz float %4 to double
  invoke void @lua_pushnumber(ptr noundef %i.x, double noundef %i.bj)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.bk = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 4, i32 noundef 1, i32 noundef %i.aa)
          to label %bb.u unwind label %bb.w       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %0, align 8, !tbaa !11
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.bo, i32 noundef %i.bk, ptr noundef nonnull @__FUNCTION__._ZN13ScriptApiNode13node_on_timerEN4core8vector3dIsEE7MapNodeff)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bq = invoke i32 @lua_type(ptr noundef %i.x, i32 noundef -1)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.x
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit, label %bb.y

bb.y:                                             ; preds = %.noexc
  %i.bs = invoke noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %i.x, i32 noundef -1)
          to label %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit unwind label %bb.z

_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit: ; preds = %.noexc, %bb.y
  %i.bt = phi i1 [ false, %.noexc ], [ %i.bs, %bb.y ]
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef -3)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ab:                                            ; preds = %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit, %bb.k
  %.0 = phi i1 [ false, %bb.k ], [ %i.bt, %_ZN9LuaHelper9readParamIbEET_P9lua_StateiRKS1_.exit ]
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #12
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.by = load i32, ptr %i.k, align 4, !tbaa !12
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.k, align 4, !tbaa !12
  %i.ca = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  ret i1 %.0

bb.ad:                                            ; preds = %bb.o, %bb.w, %bb.aa, %bb.z, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %i.bp, %bb.w ], [ %i.bv, %bb.aa ], [ %i.bu, %bb.z ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %7) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ad ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ae ], [ %i.be, %bb.l ]
  %i.cb = load i32, ptr %i.k, align 4, !tbaa !12
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.k, align 4, !tbaa !12
  %i.cd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13ScriptApiNode22node_on_receive_fieldsEN4core8vector3dIsEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS8_S8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_S8_EEEP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(8) %0, i48 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.core::vector3d", align 8    ; 3 uses
  %6 = alloca %class.StackUnroller, align 8       ; 6 uses
  store i48 %1, ptr %5, align 8
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #10
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
  %i.o = tail call i64 @pthread_self() #11
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr %i.x, ptr %6, align 8, !tbaa !30
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
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
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.n, !inline_history !0 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.h
  %i.al = load ptr, ptr %0, align 8, !tbaa !11
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(88) %i.aq)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.av = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.au, i48 %1, ptr noundef null)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aw = and i32 %i.av, 65535                    ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 127
  br i1 %i.ax, label %bb.aj, label %bb.p

bb.k:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.l:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.m:                                             ; preds = %bb.f, %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.n:                                             ; preds = %bb.h, %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.o:                                             ; preds = %bb.v, %bb.u, %bb.t, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.i, %_ZN8IGameDef4ndefEv.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.p:                                             ; preds = %bb.j
  %i.bd = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 2072
  %i.bl = icmp ugt i64 %i.bk, %i.bd
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw [2072 x i8], ptr %i.bg, i64 %i.bd ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.r, %bb.q
  %i.br = phi ptr [ %i.bq, %bb.r ], [ %i.bm, %bb.q ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !37
  %i.bu = invoke noundef zeroext i1 @_ZN13ScriptApiItem15getItemCallbackEPKcS1_PKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bt, ptr noundef nonnull @.str.48, ptr noundef nonnull %5)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  br i1 %i.bu, label %bb.t, label %bb.aj

bb.t:                                             ; preds = %bb.s
  %.sroa.05.0.copyload = load i48, ptr %5, align 8
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %i.x, i48 %.sroa.05.0.copyload)
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %bb.t
  %i.bv = load ptr, ptr %2, align 8, !tbaa !37
  invoke void @lua_pushstring(ptr noundef %i.x, ptr noundef %i.bv)
          to label %bb.v unwind label %bb.o

bb.v:                                             ; preds = %bb.u
  invoke void @lua_createtable(ptr noundef %i.x, i32 noundef 0, i32 noundef 0)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.w
  %.sroa.042.0.in = phi ptr [ %i.bw, %bb.w ], [ %.sroa.042.0, %bb.aa ]
  %.sroa.042.0 = load ptr, ptr %.sroa.042.0.in, align 8, !tbaa !42 ; 5 uses
  %.not53 = icmp eq ptr %.sroa.042.0, null
  br i1 %.not53, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !37
  invoke void @lua_pushstring(ptr noundef %i.x, ptr noundef %i.by)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !37
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !36
  invoke void @lua_pushlstring(ptr noundef %i.x, ptr noundef %i.ca, i64 noundef %i.cc)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @lua_settable(ptr noundef %i.x, i32 noundef -3)
          to label %bb.x unwind label %bb.ac, !llvm.loop !38

bb.ab:                                            ; preds = %bb.ai, %bb.ad
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ad:                                            ; preds = %bb.x
  %i.cf = load ptr, ptr %0, align 8, !tbaa !11
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %0, i64 %i.ch
  invoke void @_ZN13ScriptApiBase20objectrefGetOrCreateEP9lua_StateP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(129) %i.ci, ptr noundef %i.x, ptr noundef %4)
          to label %bb.ae unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ad
  %i.cj = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 4, i32 noundef 0, i32 noundef %i.aa)
          to label %bb.af unwind label %bb.ah     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = load ptr, ptr %0, align 8, !tbaa !11
  %i.cl = getelementptr i8, ptr %i.ck, i64 -24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds i8, ptr %0, i64 %i.cm
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.cn, i32 noundef %i.cj, ptr noundef nonnull @__FUNCTION__._ZN13ScriptApiNode22node_on_receive_fieldsEN4core8vector3dIsEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS8_S8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIS9_S8_EEEP18ServerActiveObject)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag, %bb.af
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef -2)
          to label %bb.aj unwind label %bb.ab

bb.aj:                                            ; preds = %bb.ai, %bb.s, %bb.j
  invoke void @lua_settop(ptr noundef %i.x, i32 noundef %i.y)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #12
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.cr = load i32, ptr %i.k, align 4, !tbaa !12
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.k, align 4, !tbaa !12
  %i.ct = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  ret void

bb.al:                                            ; preds = %bb.o, %bb.ah, %bb.ac, %bb.ab, %bb.n, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ], [ %i.ce, %bb.ac ], [ %i.cd, %bb.ab ], [ %i.co, %bb.ah ]
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.l
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.al ], [ %i.az, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.k
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.am ], [ %i.ay, %bb.k ]
  %i.cu = load i32, ptr %i.k, align 4, !tbaa !12
  %i.cv = add nsw i32 %i.cu, -1
  store i32 %i.cv, ptr %i.k, align 4, !tbaa !12
  %i.cw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #9 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #2

declare void @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lua_settable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn nounwind }

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
!32 = !{!"p1 _ZTS15ContentFeatures", !17, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!33, !32, i64 8}
!35 = !{!33, !32, i64 0}
!36 = !{!20, !13, i64 8}
!37 = !{!20, !18, i64 0}
!38 = distinct !{!38, !43}
!39 = !{!27, !24, i64 112}
!40 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!41 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !40, i64 0}
!42 = !{!41, !40, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
end_hunk_0
