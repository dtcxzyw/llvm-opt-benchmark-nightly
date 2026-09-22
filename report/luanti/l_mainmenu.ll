Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_mainmenu?download=true
inline.NumInlined: 1385
inline.NumDeleted: 468
begin_hunk_0_@_ZN14ModApiMainMenu7l_closeEP9lua_State:bb.a

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
          to label %.noexc39 unwind label %bb.q

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
          to label %.noexc40 unwind label %bb.q   ; 2 uses

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
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = invoke noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %0, i32 noundef 3)
          to label %bb.s unwind label %bb.r

bb.p:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %.noexc.i38, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.u, %bb.s, %bb.o, %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.r
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.al = load i64, ptr %i.r, align 8, !tbaa !26
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.o, %bb.n
  %.028 = phi i1 [ false, %bb.n ], [ %i.af, %bb.o ] ; 4 uses
  %i.an = invoke i32 @lua_type(ptr noundef %0, i32 noundef 4)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = invoke double @lua_tonumber(ptr noundef %0, i32 noundef 4)
          to label %bb.v unwind label %bb.r

bb.v:                                             ; preds = %bb.u
  %i.aq = fptoui double %i.ap to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0 = phi i32 [ 16, %bb.t ], [ %i.aq, %bb.v ]   ; 4 uses
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !25  ; 2 uses
  %i.as = icmp eq i64 %i.ar, 10
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.w
  %i.at = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.au = load i64, ptr %i.at, align 1
  %i.av = xor i64 %i.au, 8462108013361324386
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  %i.ax = load i16, ptr %i.aw, align 1
  %i.ay = zext i16 %i.ax to i64
  %i.az = xor i64 %i.ay, 25710
  %i.ba = or i64 %i.av, %i.az
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.be = invoke noundef zeroext i1 @_ZN9GUIEngine10setTextureE13texture_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(449) %i.c, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %.028, i32 noundef %.0)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge unwind label %bb.r

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.pr.pre = load i64, ptr %i.n, align 8, !tbaa !25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge, %bb.w
  %i.bf = phi i64 [ %i.ar, %bb.w ], [ %.pr.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge ] ; 2 uses
  %.027 = phi i1 [ false, %bb.w ], [ %i.be, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread-pre-split_crit_edge ] ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 7
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58
  %i.bh = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = xor i32 %i.bi, 1919252079
  %i.bk = getelementptr i8, ptr %i.bh, i64 3
  %i.bl = load i32, ptr %i.bk, align 1
  %i.bm = xor i32 %i.bl, 2036427890
  %i.bn = or i32 %i.bj, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
  %i.br = invoke noundef zeroext i1 @_ZN9GUIEngine10setTextureE13texture_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(449) %i.c, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %.028, i32 noundef %.0)
          to label %bb.x unwind label %bb.r

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread
  %3 = or i1 %.027, %i.br
  %.pre = load i64, ptr %i.n, align 8, !tbaa !25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58, %bb.x
  %i.bs = phi i64 [ %.pre, %bb.x ], [ %i.bf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58 ]
  %.1 = phi i1 [ %3, %bb.x ], [ %.027, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58 ] ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 6
  br i1 %i.bt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59
  %i.bu = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = xor i32 %i.bv, 1684104552
  %i.bx = getelementptr i8, ptr %i.bu, i64 4
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = zext i16 %i.by to i32
  %i.ca = xor i32 %i.bz, 29285
  %i.cb = or i32 %i.bw, %i.ca
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
  %i.cf = invoke noundef zeroext i1 @_ZN9GUIEngine10setTextureE13texture_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(449) %i.c, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %.028, i32 noundef %.0)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60 unwind label %bb.r

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread
  %4 = or i1 %.1, %i.cf                           ; 2 uses
  %.pr62.pre = load i64, ptr %i.n, align 8, !tbaa !25
  %i.cg = icmp eq i64 %.pr62.pre, 6
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60
  %.285 = phi i1 [ %4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60 ], [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45 ] ; 2 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = xor i32 %i.ci, 1953460070
  %i.ck = getelementptr i8, ptr %i.ch, i64 4
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = zext i16 %i.cl to i32
  %i.cn = xor i32 %i.cm, 29285
  %i.co = or i32 %i.cj, %i.cn
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
  %i.cs = invoke noundef zeroext i1 @_ZN9GUIEngine10setTextureE13texture_layerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbj(ptr noundef nonnull align 8 dereferenceable(449) %i.c, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %.028, i32 noundef %.0)
          to label %bb.y unwind label %bb.r

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread
  %5 = or i1 %.285, %i.cs
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60, %bb.y, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
  %.3 = phi i1 [ %5, %bb.y ], [ %.285, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47 ], [ %4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread60 ], [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread59 ], [ %.027, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ct = zext i1 %.3 to i32
  invoke void @lua_pushboolean(ptr noundef %0, i32 noundef %i.ct)
          to label %bb.z unwind label %bb.r

bb.z:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread63
  %i.cu = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.r
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.z
  %i.cw = load i64, ptr %i.r, align 8, !tbaa !26
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.cy = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.e
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.da = load i64, ptr %i.e, align 8, !tbaa !26
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i32 1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.ah, %bb.q ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.dc = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.e
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = load i64, ptr %i.e, align 8, !tbaa !26
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #29
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
  store i8 %i.c, ptr %i.d, align 8, !tbaa !228
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
end_hunk_0
