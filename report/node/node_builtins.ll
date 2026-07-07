inline.NumInlined: 4126
inline.NumDeleted: 1869
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4node8builtins13BuiltinLoader34CompileAllBuiltinsAndCopyCodeCacheEN2v85LocalINS2_7ContextEEERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPS6_INS0_13CodeCacheInfoESaISH_EE:bb.a

bb.t:                                             ; preds = %bb.s
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.s
  %i.de = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #26 ; 2 uses
  store ptr %i.de, ptr %7, align 8
  store i64 %i.cz, ptr %i.av, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.p
  %i.df = phi ptr [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.av, %bb.p ] ; 3 uses
  switch i64 %i.cz, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.dg = load i8, ptr %i.cx, align 1
  store i8 %i.dg, ptr %i.df, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.v:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.cx, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.u, %bb.v
  store i64 %i.cz, ptr %i.aw, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cz
  store i8 0, ptr %i.dh, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.051.069, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.051.069, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = load <2 x ptr>, ptr %i.di, align 8
  store <2 x ptr> %i.dl, ptr %i.ay, align 8
  %.not.i.i.i.i47 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i47, label %_ZN4node8builtins20BuiltinCodeCacheDataC2ERKS1_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = load i32, ptr %i.dm, align 4
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4
  br label %_ZN4node8builtins20BuiltinCodeCacheDataC2ERKS1_.exit

bb.y:                                             ; preds = %bb.w
  %i.dq = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4node8builtins20BuiltinCodeCacheDataC2ERKS1_.exit

_ZN4node8builtins20BuiltinCodeCacheDataC2ERKS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.x, %bb.y
  %i.dr = load ptr, ptr %i.ba, align 8            ; 9 uses
  %i.ds = load ptr, ptr %i.bb, align 8
  %.not.i.i48 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i.i48, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZN4node8builtins20BuiltinCodeCacheDataC2ERKS1_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 3 uses
  store ptr %i.dt, ptr %i.dr, align 8
  %i.du = load ptr, ptr %7, align 8               ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.av
  br i1 %i.dv, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dw = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 16
  call void @llvm.assume(i1 %i.dx)
  %i.dy = add nuw nsw i64 %i.dw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dt, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.dy, i1 false)
  br label %_ZSt12construct_atIN4node8builtins13CodeCacheInfoEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  store ptr %i.du, ptr %i.dr, align 8
  %i.dz = load i64, ptr %i.av, align 8
  store i64 %i.dz, ptr %i.dt, align 8
  %.pre = load i64, ptr %i.aw, align 8
  br label %_ZSt12construct_atIN4node8builtins13CodeCacheInfoEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i

_ZSt12construct_atIN4node8builtins13CodeCacheInfoEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.aa
  %i.ea = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dw, %bb.aa ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 %i.ea, ptr %i.eb, align 8
  store ptr %i.av, ptr %7, align 8
  store i64 0, ptr %i.aw, align 8
  store i8 0, ptr %i.av, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 16, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.ee = load ptr, ptr %i.ay, align 8
  store ptr %i.ee, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  store ptr null, ptr %i.ef, align 8
  %i.eg = load ptr, ptr %i.az, align 8
  store ptr null, ptr %i.az, align 8
  store ptr %i.eg, ptr %i.ef, align 8
  store ptr null, ptr %i.ay, align 8
  %i.eh = load ptr, ptr %i.ba, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  store ptr %i.ei, ptr %i.ba, align 8
  br label %_ZNSt6vectorIN4node8builtins13CodeCacheInfoESaIS2_EE9push_backEOS2_.exit

bb.ab:                                            ; preds = %_ZN4node8builtins20BuiltinCodeCacheDataC2ERKS1_.exit
  call void @_ZNSt6vectorIN4node8builtins13CodeCacheInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.dr, ptr noundef nonnull align 8 dereferenceable(64) %7)
  br label %_ZNSt6vectorIN4node8builtins13CodeCacheInfoESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4node8builtins13CodeCacheInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZSt12construct_atIN4node8builtins13CodeCacheInfoEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i, %bb.ab
  %i.ej = load ptr, ptr %i.az, align 8            ; 8 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i49, label %_ZN4node8builtins20BuiltinCodeCacheDataD2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN4node8builtins13CodeCacheInfoESaIS2_EE9push_backEOS2_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ek, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 0, ptr %i.eo, align 4
  %i.ep = load ptr, ptr %i.ej, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #25, !inline_history !105
  %i.es = load ptr, ptr %i.ej, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #25, !inline_history !105
  br label %_ZN4node8builtins20BuiltinCodeCacheDataD2Ev.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.ev = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i50 = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i.i.i50, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = add nsw i32 %i.en, -1
  store i32 %i.ew, ptr %i.ek, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ex = atomicrmw volatile add ptr %i.ek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i = phi i32 [ %i.en, %bb.af ], [ %i.ex, %bb.ag ]
  %i.ey = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ey, label %bb.ah, label %_ZN4node8builtins20BuiltinCodeCacheDataD2Ev.exit.i, !prof !5

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #25
  br label %_ZN4node8builtins20BuiltinCodeCacheDataD2Ev.exit.i

_ZN4node8builtins20BuiltinCodeCacheDataD2Ev.exit.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ad, %_ZNSt6vectorIN4node8builtins13CodeCacheInfoESaIS2_EE9push_backEOS2_.exit
  %i.ez = load ptr, ptr %7, align 8               ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.av
  br i1 %i.fa, label %_ZN4node8builtins13CodeCacheInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4node8builtins20BuiltinCodeCacheDataD2Ev.exit.i
  %i.fb = load i64, ptr %i.av, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #28
  br label %_ZN4node8builtins13CodeCacheInfoD2Ev.exit

_ZN4node8builtins13CodeCacheInfoD2Ev.exit:        ; preds = %_ZN4node8builtins20BuiltinCodeCacheDataD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.sroa.051.0 = load ptr, ptr %.sroa.051.069, align 8 ; 2 uses
  %i.fd = icmp eq ptr %.sroa.051.0, null
  br i1 %i.fd, label %._crit_edge72, label %bb.p
}

declare void @_ZN2v88TryCatchC1EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v88TryCatch9HasCaughtEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #5

declare void @_ZN4node20PrintCaughtExceptionEPN2v87IsolateENS0_5LocalINS0_7ContextEEERKNS0_8TryCatchE(ptr noundef, ptr, ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2v88TryCatchD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node8builtins13BuiltinLoader16RefreshCodeCacheERKSt6vectorINS0_13CodeCacheInfoESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @uv_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #25
  %i.c = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %1, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %2 = ashr exact i64 %i.i, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %3 = uitofp i64 %2 to double
  %4 = load float, ptr %i.j, align 8
  %5 = fpext float %4 to double                   ; 2 uses
  %6 = fdiv double %3, %5
  %7 = tail call double @llvm.ceil.f64(double %6)
  %8 = fptoui double %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %12 = load i64, ptr %11, align 8
  %13 = add i64 %12, 1
  %14 = uitofp i64 %13 to double
  %15 = fdiv double %14, %5
  %i.k = tail call double @llvm.ceil.f64(double %15)
  %i.l = fptoui double %i.k to i64
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %8, i64 %i.l)
  %i.m = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %.sroa.speculated.i.i.i) #25 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.o = load i64, ptr %i.n, align 8
  %.not.i.i.i = icmp eq i64 %i.m, %i.o
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4node8builtins20BuiltinCodeCacheDataEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef %i.m)
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node8builtins20BuiltinCodeCacheDataESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7reserveEm.exit

bb.c:                                             ; preds = %bb.a
  store i64 %10, ptr %9, align 8
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node8builtins20BuiltinCodeCacheDataESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7reserveEm.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node8builtins20BuiltinCodeCacheDataESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7reserveEm.exit: ; preds = %bb.b, %bb.c
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node8builtins20BuiltinCodeCacheDataESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7reserveEm.exit
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  store i8 1, ptr %i.u, align 8
  tail call void @uv_rwlock_wrunlock(ptr noundef nonnull %i.b) #25
  ret void

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node8builtins20BuiltinCodeCacheDataESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7reserveEm.exit, %.lr.ph
  %.sroa.08.012 = phi ptr [ %i.z, %.lr.ph ], [ %i.q, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4node8builtins20BuiltinCodeCacheDataESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE7reserveEm.exit ] ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 32
  %i.y = tail call { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4node8builtins20BuiltinCodeCacheDataEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS7_RKSA_EEES6_INSD_14_Node_iteratorISB_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.012, ptr noundef nonnull align 8 dereferenceable(32) %i.x) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 64 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.r
  br i1 %i.aa, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node8builtins13BuiltinLoader20GetBuiltinCategoriesEN2v85LocalINS2_4NameEEERKNS2_20PropertyCallbackInfoINS2_5ValueEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) #4 align 2 {
bb.a:
  %2 = alloca %"struct.node::builtins::BuiltinLoader::BuiltinCategories", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #25 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #25
  %i.f = icmp ult i32 %i.e, 40
  br i1 %i.f, label %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, !prof !5

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.c, align 8
  %i.h = add i64 %i.g, 47
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = add i64 %i.j, 327
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit, !prof !51

bb.c:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.p = add i64 %i.j, 271
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit

_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit: ; preds = %bb.a, %bb.b, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.s, %bb.c ], [ null, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i ], [ null, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 200
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3008
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.x, align 8 ; 4 uses
  %i.y = tail call ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef %i.u) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3016
  call void @_ZNK4node8builtins13BuiltinLoader20GetBuiltinCategoriesEv(ptr dead_on_unwind nonnull writable sret(%"struct.node::builtins::BuiltinLoader::BuiltinCategories") align 8 %2, ptr noundef nonnull align 8 dereferenceable(168) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2312
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 2
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %_ZN4node11Environment10GetCurrentIN2v85ValueEEEPS0_RKNS2_20PropertyCallbackInfoIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ad, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 1 dereferenceable(12) @.str.56, i64 12, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.af, align 4
  %i.ag = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11equal_rangeERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %i.ah, ptr %i.ai)
  %i.aj = load ptr, ptr %3, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ad
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.al = load i64, ptr %i.ad, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.ao, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 1 dereferenceable(12) @.str.56, i64 12, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 12, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.aq, align 4
  %i.ar = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 1      ; 5 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = extractvalue { ptr, ptr } %i.ar, 0
  %.not.i = icmp ne ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.av
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.aw) ; 2 uses
  %i.az = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %4, align 8
  %i.bd = call i32 @memcmp(ptr noundef %i.bc, ptr noundef %i.bb, i64 noundef %.sroa.speculated.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.e
  %i.be = sub i64 %i.aw, %i.ay
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.be, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.bd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.bf = icmp slt i32 %.0.i.i.i.i, 0
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.d
  %i.bg = phi i1 [ %i.bf, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.d ]
  %i.bh = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 3 uses
  store ptr %i.bj, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %4, align 8               ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ao
  br i1 %i.bl, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bm = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.bo, i1 false)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  store ptr %i.bk, ptr %i.bi, align 8
  %i.bp = load i64, ptr %i.ao, align 8
  store i64 %i.bp, ptr %i.bj, align 8
  %.pre.i.i.i = load i64, ptr %i.ap, align 8
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bq = phi i64 [ %i.bm, %bb.g ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i64 %i.bq, ptr %i.br, align 8
  store ptr %i.ao, ptr %4, align 8
  store i64 0, ptr %i.ap, align 8
  store i8 0, ptr %i.ao, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bg, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.au) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %i.bv = load ptr, ptr %4, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ao
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

end_hunk_0
