Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DfgRegularize?download=true
inline.NumInlined: 961
inline.NumDeleted: 537
begin_hunk_0_@_ZNSt10_HashtableIPK12DfgVertexVarS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !149
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPK12DfgVertexVarS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIPK12DfgVertexVarS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIPK12DfgVertexVarS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !150 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !149
  store ptr %i.p, ptr %.02530, align 8, !tbaa !150
  store ptr %.02530, ptr %i.g, align 8, !tbaa !149
  store ptr %i.g, ptr %i.n, align 8, !tbaa !208
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !150
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !208
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !150
  store ptr %i.s, ptr %.02530, align 8, !tbaa !150
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !208
  store ptr %.02530, ptr %i.t, align 8, !tbaa !150
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !295

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPK12DfgVertexVarS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPK12DfgVertexVarS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !152
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #20
  br label %_ZNSt10_HashtableIPK12DfgVertexVarS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPK12DfgVertexVarS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !152
  store ptr %.0.i, ptr %0, align 8, !tbaa !151
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvR9DfgVertexEZN13DfgRegularize13eliminateVarsEvEUlS1_E_E9_M_invokeERKSt9_Any_dataS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload.i2.i.i.i.i.i = load i16, ptr %i.a, align 8, !tbaa !48 ; 2 uses
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i2.i.i.i.i.i, 0
  br i1 %i.b, label %_ZSt10__invoke_rIvRZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_JS2_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %.sroa.0.0.copyload.i2.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i = icmp ne i16 %i.c, 60
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp ne ptr %i.e, null
  %or.cond.i.i.i = select i1 %spec.select.i.i.i.i.i, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZSt10__invoke_rIvRZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_JS2_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !298, !nonnull !41, !align !42 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !133  ; 2 uses
  %.not.i.i5.i.i.i = icmp eq i32 %i.i, %i.k
  br i1 %.not.i.i5.i.i.i, label %_ZN10DfgUserMapIP9DfgVertexLb1EEixERKS0_.exit.i.i.i.i, label %_ZN10DfgUserMapIP9DfgVertexLb1EEixERKS0_.exit.thread.i.i.i.i

_ZN10DfgUserMapIP9DfgVertexLb1EEixERKS0_.exit.thread.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !44
  store i32 %i.k, ptr %i.h, align 4, !tbaa !132
  br label %bb.d

_ZN10DfgUserMapIP9DfgVertexLb1EEixERKS0_.exit.i.i.i.i: ; preds = %bb.c
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !44
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZSt10__invoke_rIvRZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_JS2_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit

bb.d:                                             ; preds = %_ZN10DfgUserMapIP9DfgVertexLb1EEixERKS0_.exit.i.i.i.i, %_ZN10DfgUserMapIP9DfgVertexLb1EEixERKS0_.exit.thread.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113
  store ptr %i.m, ptr %i.g, align 8, !tbaa !44
  store ptr %1, ptr %i.l, align 8, !tbaa !113
  br label %_ZSt10__invoke_rIvRZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_JS2_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit

_ZSt10__invoke_rIvRZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_JS2_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit: ; preds = %bb.a, %bb.b, %_ZN10DfgUserMapIP9DfgVertexLb1EEixERKS0_.exit.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvR9DfgVertexEZN13DfgRegularize13eliminateVarsEvEUlS1_E_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_, ptr %0, align 8, !tbaa !210
  br label %_ZNSt14_Function_base13_Base_managerIZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !124
  br label %_ZNSt14_Function_base13_Base_managerIZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !115
  store i64 %i.a, ptr %0, align 8, !tbaa !115
  br label %_ZNSt14_Function_base13_Base_managerIZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN13DfgRegularize13eliminateVarsEvEUlR9DfgVertexE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN13DfgRegularize13eliminateVarsEvENKUlR9DfgVertexE1_clES1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !123    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.d, align 8, !tbaa !48 ; 2 uses
  br i1 %.not.i.i.not.i, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %.sroa.0.0.copyload.i.i.i.i.i, -2
  %spec.select.i.i.i.not.i = icmp eq i16 %i.e, 60
  br i1 %spec.select.i.i.i.not.i, label %bb.c, label %_ZN13DfgRegularize8isUnusedERK9DfgVertex.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load i32, ptr %i.h, align 8, !tbaa !220
  %i.j = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !62
  %i.k = icmp eq i32 %i.i, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = and i64 %i.m, 4294967232
  %i.o = icmp ne i64 %i.n, 0
  %i.p = select i1 %i.k, i1 %i.o, i1 false
  br i1 %i.p, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.10, i32 noundef 73) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.15)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = and i64 %i.m, 9
  %i.u = icmp ne i64 %i.t, 0
  %or.cond.i = select i1 %i.k, i1 %i.u, i1 false
  br i1 %or.cond.i, label %._crit_edge, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.i

_ZNK12DfgVertexVar10hasExtRefsEv.exit.i:          ; preds = %bb.e
  %i.v = and i64 %i.m, 2
  %i.w = icmp ne i64 %i.v, 0
  %i.x = select i1 %i.k, i1 %i.w, i1 false
  br i1 %i.x, label %._crit_edge, label %_ZN13DfgRegularize8isUnusedERK9DfgVertex.exit

_ZN13DfgRegularize8isUnusedERK9DfgVertex.exit:    ; preds = %_ZNK12DfgVertexVar10hasExtRefsEv.exit.i, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !180, !nonnull !41, !align !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !183
  %i.ac = fadd double %i.ab, 1.000000e+00
  store double %i.ac, ptr %i.aa, align 8, !tbaa !183
  br label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread.sink.split

._crit_edge:                                      ; preds = %bb.a, %bb.e, %_ZNK12DfgVertexVar10hasExtRefsEv.exit.i
  %i.ad = and i16 %.sroa.0.0.copyload.i.i.i.i.i, -2
  %spec.select.i.i.i.not = icmp eq i16 %i.ad, 60
  br i1 %spec.select.i.i.i.not, label %bb.f, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread

bb.f:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 4 uses
  %.not10 = icmp eq ptr %i.ah, null
  br i1 %.not10, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !213 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !220
  %i.am = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !62
  %i.an = icmp eq i32 %i.al, %i.am                ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.ap = load i64, ptr %i.ao, align 8            ; 4 uses
  %i.aq = trunc i64 %i.ap to i1
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit

_ZNK12DfgVertexVar10hasExtRefsEv.exit:            ; preds = %bb.g
  %i.as = and i64 %i.ap, 2
  %i.at = icmp ne i64 %i.as, 0
  %i.au = select i1 %i.an, i1 %i.at, i1 false
  br i1 %i.au, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK12DfgVertexVar10hasExtRefsEv.exit
  %i.av = and i64 %i.ap, 8
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = select i1 %i.an, i1 %i.aw, i1 false
  br i1 %i.ax, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = and i64 %i.ap, 4294967232
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = select i1 %i.an, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.j, label %bb.k, !prof !63

bb.j:                                             ; preds = %bb.i
  %i.bb = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.10, i32 noundef 173) ; 0 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.15)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.bd) #23
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !300, !nonnull !41, !align !42 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !207
  %.not.not.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.not.i.i.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.bi, %bb.l ], [ %.sroa.06.0.i.i.i, %bb.n ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !206
  %i.bl = icmp eq ptr %1, %i.bk
  br i1 %i.bl, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread, label %bb.m, !llvm.loop !299

bb.o:                                             ; preds = %bb.k
  %i.bm = ptrtoint ptr %1 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !152 ; 2 uses
  %i.bp = urem i64 %i.bm, %i.bo                   ; 2 uses
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !151
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !150 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !206
  %i.bw = icmp eq ptr %1, %i.bv
  br i1 %i.bw, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread, label %.lr.ph.i.i.i.i.i

bb.q:                                             ; preds = %bb.r
  %i.bx = icmp eq ptr %1, %i.ca
  br i1 %i.bx, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i.i = phi ptr [ %i.by, %bb.q ], [ %i.bt, %bb.p ]
  %i.by = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !150 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !206 ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = urem i64 %i.cb, %i.bo
  %.not19.i.i.i.i.i = icmp eq i64 %i.cc, %i.bp
  br i1 %.not19.i.i.i.i.i, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.r
  br label %.loopexit, !llvm.loop !5

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.m, %..loopexit_crit_edge21.i.i.i.i.i, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !56
  %.not12 = icmp eq ptr %i.cf, null
  br i1 %.not12, label %bb.s, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread

bb.s:                                             ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.cg, align 8, !tbaa !48 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i, label %bb.t [
    i16 65, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread
    i16 64, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread
    i16 59, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread
  ]

bb.t:                                             ; preds = %bb.s
  %i.ch = and i16 %.sroa.0.0.copyload.i.i.i, -2
  %spec.select.i.i15 = icmp eq i16 %i.ch, 60
  br i1 %spec.select.i.i15, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = tail call noundef zeroext i1 @_ZN13DfgRegularize14needsTemporaryER9DfgVertexS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br i1 %i.ci, label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread, label %._crit_edge35

._crit_edge35:                                    ; preds = %bb.u
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !51
  %.pre36 = load ptr, ptr %.pre, align 8, !tbaa !53
  %.pre37 = load ptr, ptr %.pre36, align 8, !tbaa !56
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge35, %bb.t
  %i.cj = phi ptr [ %.pre37, %._crit_edge35 ], [ %i.ah, %bb.t ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !180, !nonnull !41, !align !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !183
  %i.co = fadd double %i.cn, 1.000000e+00
  store double %i.co, ptr %i.cm, align 8, !tbaa !183
  tail call void @_ZN9DfgVertex11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %i.cj)
  br label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread.sink.split

_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread.sink.split: ; preds = %_ZN13DfgRegularize8isUnusedERK9DfgVertex.exit, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !301, !nonnull !41, !align !42
  tail call void @_ZZN13DfgRegularize13eliminateVarsEvENKUlR9DfgVertexE0_clES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread

_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread:     ; preds = %bb.q, %bb.n, %_ZNK12DfgVertexVar10hasExtRefsEv.exit.thread.sink.split, %bb.p, %bb.s, %bb.s, %bb.s, %bb.g, %._crit_edge, %bb.u, %.loopexit, %bb.h, %_ZNK12DfgVertexVar10hasExtRefsEv.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN13DfgRegularize13eliminateVarsEvENKUlR9DfgVertexE0_clES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.137", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !303, !nonnull !41, !align !42
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = ptrtoint ptr %i.c to i64
  store i64 %i.g, ptr %2, align 8, !tbaa !115
  store ptr @_ZNSt17_Function_handlerIFbR9DfgVertexEZZN13DfgRegularize13eliminateVarsEvENKUlS1_E0_clES1_EUlS1_E_E9_M_invokeERKSt9_Any_dataS1_, ptr %i.e, align 8, !tbaa !305
  store ptr @_ZNSt17_Function_handlerIFbR9DfgVertexEZZN13DfgRegularize13eliminateVarsEvENKUlS1_E0_clES1_EUlS1_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.d, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !306  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !306  ; 3 uses
  %.not1719.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not1719.not.i, label %_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i.backedge
  %.sroa.013.020.i = phi ptr [ %.sroa.013.020.i.be, %.lr.ph.i.backedge ], [ %i.i, %bb.a ] ; 3 uses
  %i.l = load ptr, ptr %.sroa.013.020.i, align 8, !tbaa !53
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !34
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNKSt8functionIFbR9DfgVertexEEclES1_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt8functionIFbR9DfgVertexEEclES1_.exit.i:     ; preds = %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !305
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.m)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !302

.noexc7:                                          ; preds = %_ZNKSt8functionIFbR9DfgVertexEEclES1_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 8 ; 2 uses
  %.not17.not.i = icmp eq ptr %i.q, %i.k
  %or.cond = select i1 %i.p, i1 true, i1 %.not17.not.i
  br i1 %or.cond, label %_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit, label %.lr.ph.i.backedge

.critedge.i:                                      ; preds = %.lr.ph.i
  %.old = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 8 ; 2 uses
  %.not17.not.i.old = icmp eq ptr %.old, %i.k
  br i1 %.not17.not.i.old, label %_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %.critedge.i, %.noexc7
  %.sroa.013.020.i.be = phi ptr [ %i.q, %.noexc7 ], [ %.old, %.critedge.i ]
  br label %.lr.ph.i

_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit: ; preds = %.critedge.i, %.noexc7
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %.not.i8 = icmp eq ptr %.pre, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit.thread

_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit.thread: ; preds = %bb.a, %_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit
  %i.r = phi ptr [ %.pre, %_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit ], [ @_ZNSt17_Function_handlerIFbR9DfgVertexEZZN13DfgRegularize13eliminateVarsEvENKUlS1_E0_clES1_EUlS1_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, %bb.a ]
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit.thread
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit, %_ZN9DfgVertex13foreachSourceESt8functionIFbRS_EE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.v, align 8, !tbaa !48
  %i.w = and i16 %.sroa.0.0.copyload.i.i.i.i, -2
  %spec.select.i.i.i.not = icmp eq i16 %i.w, 60
  br i1 %spec.select.i.i.i.not, label %bb.e, label %_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !180, !nonnull !41, !align !42 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !213 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !307 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !308
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !307
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE9push_backEOS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !19  ; 4 uses
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.h, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #24 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 2 uses
  store ptr %i.ab, ptr %i.at, align 8, !tbaa !308
end_hunk_0
