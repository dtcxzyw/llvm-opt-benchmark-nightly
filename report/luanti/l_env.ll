Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_env?download=true
inline.NumInlined: 1766
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9ModApiEnv22l_compare_block_statusEP9lua_State:bb.a

bb.n:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.am, %bb.j ]
  %i.av = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.f
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.n
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !90
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.1 = phi i32 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.b ]
  ret i32 %.1
}

declare noundef i32 @_ZN17ServerEnvironment14getBlockStatusEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(3560), i48) local_unnamed_addr #2

declare noundef zeroext i1 @_Z14string_to_enumPK10EnumStringRiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ModApiEnv22l_forceload_free_blockEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::vector3d", align 8    ; 4 uses
  %i.a = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 55, ptr nonnull @.str.11, i32 noundef 1, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.b = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 1)
  store i48 %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3104
  %i.d = call noundef i64 @_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 2 dereferenceable(6) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ModApiEnv23l_get_translated_stringEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string.727", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string.727", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.c = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !111
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.86) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.f, ptr %i.b, align 8, !tbaa !112
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !89
  %i.i = load i64, ptr %i.b, align 8, !tbaa !112
  store i64 %i.i, ptr %i.d, align 8, !tbaa !90
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !90
  store i8 %i.k, ptr %i.j, align 1, !tbaa !90
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !110
  %i.n = load ptr, ptr %1, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.p = invoke ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef null)
          to label %bb.f unwind label %bb.w       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !111
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.86) #30
          to label %.noexc24 unwind label %bb.x

.noexc24:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.s, ptr %i.a, align 8, !tbaa !112
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i23, label %._crit_edge.i.i22

.noexc.i23:                                       ; preds = %bb.h
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc25 unwind label %bb.x   ; 2 uses

.noexc25:                                         ; preds = %.noexc.i23
  store ptr %i.u, ptr %2, align 8, !tbaa !89
  %i.v = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.v, ptr %i.q, align 8, !tbaa !90
  br label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %.noexc25, %bb.h
  %i.w = phi ptr [ %i.u, %.noexc25 ], [ %i.q, %bb.h ] ; 2 uses
  switch i64 %i.s, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i22
  %i.x = load i8, ptr %i.p, align 1, !tbaa !90
  store i8 %i.x, ptr %i.w, align 1, !tbaa !90
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.p, i64 %i.s, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i22
  %i.y = load i64, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = load ptr, ptr %2, align 8, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ac = invoke noundef ptr @_ZN10ModApiBase9getServerEP9lua_State(ptr noundef %0)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.ad = invoke noundef ptr @_ZN6Server22getTranslationLanguageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1880) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ae = load ptr, ptr %2, align 8, !tbaa !89
  %i.af = load i64, ptr %i.z, align 8, !tbaa !110
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.727") align 8 %5, i64 %i.af, ptr %i.ae)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %5, align 8, !tbaa !478
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !479
  invoke void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEEP12Translations(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.727") align 8 %4, i64 %i.ai, ptr %i.ag, ptr noundef %i.ad)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %4, align 8, !tbaa !478
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !479
  invoke void @_Z12wide_to_utf8B5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %i.al, ptr %i.aj)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %2, align 8, !tbaa !89    ; 6 uses
  %6 = icmp eq ptr %i.am, %i.q
  %i.an = load ptr, ptr %3, align 8, !tbaa !89    ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ap = icmp eq ptr %i.an, %i.ao                ; 2 uses
  br i1 %6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.p
  br i1 %i.ap, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.p
  br i1 %i.ap, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !110 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  switch i64 %i.ar, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.at = load i8, ptr %i.an, align 1, !tbaa !90
  store i8 %i.at, ptr %i.am, align 1, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.an, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !110 ; 2 uses
  store i64 %i.au, ptr %i.z, align 8, !tbaa !110
  %i.av = load ptr, ptr %2, align 8, !tbaa !89
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1, !tbaa !90
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.an, ptr %2, align 8, !tbaa !89
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load <2 x i64>, ptr %i.ax, align 8, !tbaa !90
  store <2 x i64> %i.ay, ptr %i.z, align 8, !tbaa !90
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.az = load i64, ptr %i.q, align 8, !tbaa !90
  store ptr %i.an, ptr %2, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load <2 x i64>, ptr %i.ba, align 8, !tbaa !90
  store <2 x i64> %i.bb, ptr %i.z, align 8, !tbaa !90
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.am, ptr %3, align 8, !tbaa !89
  store i64 %i.az, ptr %i.ao, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ao, ptr %3, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.bc = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.am, %bb.t ], [ %i.ao, %bb.u ]
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !110
  store i8 0, ptr %i.bc, align 1, !tbaa !90
  %i.be = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !90
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bj = load ptr, ptr %4, align 8, !tbaa !478   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !90
  %i.bn = shl i64 %i.bm, 2
  %i.bo = add i64 %i.bn, 4
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bo) #28
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.bp = load ptr, ptr %5, align 8, !tbaa !478   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !90
  %i.bt = shl i64 %i.bs, 2
  %i.bu = add i64 %i.bt, 4
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bu) #28
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bv = load ptr, ptr %2, align 8, !tbaa !89
  invoke void @lua_pushstring(ptr noundef %0, ptr noundef %i.bv)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit33
  %i.bw = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.q
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.v
  %i.by = load i64, ptr %i.q, align 8, !tbaa !90
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ca = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.d
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !90
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i32 1

bb.w:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.x:                                             ; preds = %.noexc.i23, %bb.g
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit33, %bb.l, %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit45

bb.aa:                                            ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit42

bb.ab:                                            ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %4, align 8, !tbaa !478   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i40: ; preds = %bb.ab
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !90
  %i.co = shl i64 %i.cn, 2
  %i.cp = add i64 %i.co, 4
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cp) #28
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit42: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i40, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.aa ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i40 ], [ %i.cj, %bb.ab ] ; 2 uses
  %i.cq = load ptr, ptr %5, align 8, !tbaa !478   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit42
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !90
  %i.cu = shl i64 %i.ct, 2
  %i.cv = add i64 %i.cu, 4
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cv) #28
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i43, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.z ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i43 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit45, %bb.y
  %.pn17 = phi { ptr, i32 } [ %i.cg, %bb.y ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit45 ] ; 2 uses
  %i.cw = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.q
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ac
  %i.cy = load i64, ptr %i.q, align 8, !tbaa !90
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.x, %bb.w
  %.pn17.pn = phi { ptr, i32 } [ %i.ce, %bb.w ], [ %i.cf, %bb.x ], [ %.pn17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn17, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.da = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.d
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.dc = load i64, ptr %i.d, align 8, !tbaa !90
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn17.pn
}

declare noundef ptr @_ZN6Server22getTranslationLanguageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1880), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_Z12wide_to_utf8B5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #2

declare void @_Z16translate_stringB5cxx11St17basic_string_viewIwSt11char_traitsIwEEP12Translations(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.727") align 8, i64, ptr, ptr noundef) local_unnamed_addr #2

declare void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string.727") align 8, i64, ptr) local_unnamed_addr #2

end_hunk_0
