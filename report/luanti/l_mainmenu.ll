Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_mainmenu?download=true
inline.NumInlined: 1388
inline.NumDeleted: 469
begin_hunk_0_@_ZN14ModApiMainMenu7l_closeEP9lua_State:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236, !nonnull !93, !align !237
  store volatile i32 1, ptr %i.c, align 4, !tbaa !96
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14ModApiMainMenu16l_set_backgroundEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = tail call noundef ptr @_ZN10ModApiBase12getGuiEngineEP9lua_State(ptr noundef %0) ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN14ModApiMainMenu16l_set_backgroundEP9lua_State) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.d = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !24
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.138) #27
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.g, ptr %i.b, align 8, !tbaa !27
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !23
  %i.j = load i64, ptr %i.b, align 8, !tbaa !27
  store i64 %i.j, ptr %i.e, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.e, %bb.d ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.d, align 1, !tbaa !26
  store i8 %i.l, ptr %i.k, align 1, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.d, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !25
  %i.o = load ptr, ptr %1, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.q = invoke ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef null)
          to label %bb.h unwind label %bb.p       ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !24
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.138) #27
          to label %.noexc39 unwind label %bb.p

.noexc39:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.t, ptr %i.a, align 8, !tbaa !27
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i38, label %._crit_edge.i.i37

.noexc.i38:                                       ; preds = %bb.j
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc40 unwind label %bb.p   ; 2 uses

.noexc40:                                         ; preds = %.noexc.i38
  store ptr %i.v, ptr %2, align 8, !tbaa !23
  %i.w = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.w, ptr %i.r, align 8, !tbaa !26
  br label %._crit_edge.i.i37

._crit_edge.i.i37:                                ; preds = %.noexc40, %bb.j
  %i.x = phi ptr [ %i.v, %.noexc40 ], [ %i.r, %bb.j ] ; 2 uses
  switch i64 %i.t, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i37
  %i.y = load i8, ptr %i.q, align 1, !tbaa !26
  store i8 %i.y, ptr %i.x, align 1, !tbaa !26
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %i.q, i64 %i.t, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i37
  %i.z = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !25
  %i.ab = load ptr, ptr %2, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ad = invoke i32 @lua_type(ptr noundef %0, i32 noundef 3)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = invoke noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %0, i32 noundef 3)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.g, %.noexc.i38, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.t, %bb.r, %bb.o, %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.r
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !26
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.o, %bb.n
  %.028 = phi i1 [ false, %bb.n ], [ %i.af, %bb.o ] ; 4 uses
  %i.am = invoke i32 @lua_type(ptr noundef %0, i32 noundef 4)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = invoke double @lua_tonumber(ptr noundef %0, i32 noundef 4)
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %bb.t
  %i.ap = fptoui double %i.ao to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0 = phi i32 [ 16, %bb.s ], [ %i.ap, %bb.u ]   ; 4 uses
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !25  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 10
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.v
  %i.as = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.at = load i64, ptr %i.as, align 1
  %i.au = xor i64 %i.at, 8462108013361324386
  %i.av = getelementptr i8, ptr %i.as, i64 8
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = zext i16 %i.aw to i64
  %i.ay = xor i64 %i.ax, 25710
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bd = invoke noundef zeroext i1 @_ZN9GUIEngine10setTextureE13texture_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(449) %i.c, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %.028, i32 noundef %.0)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge unwind label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %3 = zext i1 %i.bd to i32
  %.pr.pre = load i64, ptr %i.n, align 8, !tbaa !25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge, %bb.v
  %i.be = phi i64 [ %i.aq, %bb.v ], [ %.pr.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge ] ; 2 uses
  %.027 = phi i32 [ 0, %bb.v ], [ %3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge ] ; 3 uses
  %i.bf = icmp eq i64 %i.be, 7
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58
  %i.bg = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = xor i32 %i.bh, 1919252079
  %i.bj = getelementptr i8, ptr %i.bg, i64 3
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = xor i32 %i.bk, 2036427890
  %i.bm = or i32 %i.bi, %i.bl
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
  %i.bq = invoke noundef zeroext i1 @_ZN9GUIEngine10setTextureE13texture_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(449) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %.028, i32 noundef %.0)
          to label %bb.w unwind label %bb.q

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread
  %4 = zext i1 %i.bq to i32
  %5 = or i32 %.027, %4
  %.pre = load i64, ptr %i.n, align 8, !tbaa !25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58, %bb.w
  %i.br = phi i64 [ %.pre, %bb.w ], [ %i.be, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58 ]
  %.1 = phi i32 [ %5, %bb.w ], [ %.027, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58 ] ; 3 uses
  %i.bs = icmp eq i64 %i.br, 6
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59
  %i.bt = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 1
  %i.bv = xor i32 %i.bu, 1684104552
  %i.bw = getelementptr i8, ptr %i.bt, i64 4
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i32
  %i.bz = xor i32 %i.by, 29285
  %i.ca = or i32 %i.bv, %i.bz
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
  %i.ce = invoke noundef zeroext i1 @_ZN9GUIEngine10setTextureE13texture_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(449) %i.c, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %.028, i32 noundef %.0)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60 unwind label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread
  %6 = zext i1 %i.ce to i32
  %7 = or i32 %.1, %6                             ; 2 uses
  %.pr62.pre = load i64, ptr %i.n, align 8, !tbaa !25
  %i.cf = icmp eq i64 %.pr62.pre, 6
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60
  %.285 = phi i32 [ %7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60 ], [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45 ] ; 2 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = xor i32 %i.ch, 1953460070
  %i.cj = getelementptr i8, ptr %i.cg, i64 4
  %i.ck = load i16, ptr %i.cj, align 1
  %i.cl = zext i16 %i.ck to i32
  %i.cm = xor i32 %i.cl, 29285
  %i.cn = or i32 %i.ci, %i.cm
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
  %i.cr = invoke noundef zeroext i1 @_ZN9GUIEngine10setTextureE13texture_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(449) %i.c, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %.028, i32 noundef %.0)
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread
  %8 = zext i1 %i.cr to i32
  %9 = or i32 %.285, %8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60, %bb.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
  %.3 = phi i32 [ %9, %bb.x ], [ %.285, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47 ], [ %7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60 ], [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59 ], [ %.027, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  invoke void @lua_pushboolean(ptr noundef %0, i32 noundef %.3)
          to label %bb.y unwind label %bb.q

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63
  %i.cs = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.r
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.y
  %i.cu = load i64, ptr %i.r, align 8, !tbaa !26
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.cw = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.e
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.cy = load i64, ptr %i.e, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i32 1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ag, %bb.p ], [ %i.ah, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.da = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.e
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dc = load i64, ptr %i.e, align 8, !tbaa !26
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn
}

declare double @lua_tonumber(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9GUIEngine10setTextureE13texture_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(449), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14ModApiMainMenu12l_set_cloudsEP9lua_State(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10ModApiBase12getGuiEngineEP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 213, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN14ModApiMainMenu12l_set_cloudsEP9lua_State) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store i8 %i.c, ptr %i.d, align 8, !tbaa !238
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14ModApiMainMenu18l_set_clouds_colorEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.video::SColor", align 4     ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef ptr @_ZN10ModApiBase12getGuiEngineEP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 227, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN14ModApiMainMenu18l_set_clouds_colorEP9lua_State) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i32 0, ptr %1, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_Statei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %0, i32 noundef 1)
  %i.b = invoke noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext false, i8 noundef zeroext -1)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !26
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !96
  call void @_ZN9GUIEngine18setMenuCloudsColorEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(449) %i.a, i32 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i32 0

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !26
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.h
}

declare noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_Statei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN9GUIEngine18setMenuCloudsColorEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(449), i32) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN14ModApiMainMenu15l_set_sky_colorEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.video::SColor", align 4     ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef ptr @_ZN10ModApiBase12getGuiEngineEP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 239, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN14ModApiMainMenu15l_set_sky_colorEP9lua_State) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i32 0, ptr %1, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_Statei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %0, i32 noundef 1)
  %i.b = invoke noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext false, i8 noundef zeroext -1)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !26
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !96
  call void @_ZN9GUIEngine15setMenuSkyColorEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(449) %i.a, i32 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i32 0

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !26
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.h
}
end_hunk_0
