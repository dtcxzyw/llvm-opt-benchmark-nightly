Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/vm?download=true
inline.NumInlined: 28114
inline.NumDeleted: 15480
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8WasmEdge2VM2VM21unsafeLoadPlugInHostsEv:bb.a

bb.cw:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yx, ptr nonnull align 1 %i.yr, i64 %i.yt, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %._crit_edge.i.i
  %i.yz = load i64, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  store i64 %i.yz, ptr %i.wo, align 8, !tbaa !336
  %i.za = load ptr, ptr %37, align 8, !tbaa !318
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.yz
  store i8 0, ptr %i.zb, align 1, !tbaa !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %bb.cx
  %i.zc = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %0) #27
  switch i32 %i.zc, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i [
    i32 11, label %bb.cy
    i32 35, label %bb.cz
  ]

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #31
          to label %.noexc.i254 unwind label %.loopexit.split-lp652.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i254:                                      ; preds = %bb.cz
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i: ; preds = %bb.cy
  %i.zd = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_EN8WasmEdge4Hash4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.wp, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %_ZNK8WasmEdge9Configure18isForbiddenPluginsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp652.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp652.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i, %bb.cz
  %lpad.loopexit.split-lp1152 = landingpad { ptr, i32 }
          catch ptr null
  %i.ze = extractvalue { ptr, i32 } %lpad.loopexit.split-lp1152, 0
  call void @__clang_call_terminate(ptr %i.ze) #29
  unreachable

_ZNK8WasmEdge9Configure18isForbiddenPluginsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i
  %.not645 = icmp eq ptr %i.zd, null
  %i.zf = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %0) #27 ; 0 uses
  %i.zg = load ptr, ptr %37, align 8, !tbaa !318  ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.wn
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK8WasmEdge9Configure18isForbiddenPluginsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.zi = load i64, ptr %i.wn, align 8, !tbaa !319
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zg, i64 noundef %i.zj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK8WasmEdge9Configure18isForbiddenPluginsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br i1 %.not645, label %bb.da, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.zk = load ptr, ptr %i.yp, align 8, !tbaa !1465, !nonnull !165, !noundef !165
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !1469 ; 16 uses
  %i.zm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.zl) #27
  switch i64 %i.zm, label %.thread642 [
    i64 11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i255
    i64 12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i259
    i64 16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i263
    i64 19, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i267
    i64 23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i271
    i64 14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i275
    i64 24, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i279
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.da
  %i.zn = load i64, ptr %i.zl, align 1
  %i.zo = xor i64 %i.zn, 8751166287376507255
  %i.zp = getelementptr i8, ptr %i.zl, i64 3
  %i.zq = load i64, ptr %i.zp, align 1
  %i.zr = xor i64 %i.zq, 8031167702420905833
  %i.zs = or i64 %i.zo, %i.zr
  %i.zt = icmp ne i64 %i.zs, 0
  %i.zu = zext i1 %i.zt to i32
  %i.zv = icmp eq i32 %i.zu, 0
  br i1 %i.zv, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i255: ; preds = %bb.da
  %i.zw = load i32, ptr %i.zl, align 1
  %i.zx = xor i32 %i.zw, 1769169271
  %i.zy = getelementptr i8, ptr %i.zl, i64 3
  %i.zz = load i32, ptr %i.zy, align 1
  %i.aaa = xor i32 %i.zz, 1852727145
  %i.aab = or i32 %i.zx, %i.aaa
  %i.aac = icmp ne i32 %i.aab, 0
  %i.aad = zext i1 %i.aac to i32
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i259: ; preds = %bb.da
  %i.aaf = load i64, ptr %i.zl, align 1
  %i.aag = xor i64 %i.aaf, 7453295065368322423
  %i.aah = getelementptr i8, ptr %i.zl, i64 8
  %i.aai = load i32, ptr %i.aah, align 1
  %i.aaj = zext i32 %i.aai to i64
  %i.aak = xor i64 %i.aaj, 1735289191
  %i.aal = or i64 %i.aag, %i.aak
  %i.aam = icmp ne i64 %i.aal, 0
  %i.aan = zext i1 %i.aam to i32
  %i.aao = icmp eq i32 %i.aan, 0
  br i1 %i.aao, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i263: ; preds = %bb.da
  %i.aap = load i128, ptr %i.zl, align 1
  %i.aaq = icmp ne i128 %i.aap, 153460390055446072590500117507592118647
  %i.aar = zext i1 %i.aaq to i32
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i267: ; preds = %bb.da
  %i.aat = load i128, ptr %i.zl, align 1
  %i.aau = xor i128 %i.aat, 136175437904805086004045332427419378039
  %i.aav = getelementptr i8, ptr %i.zl, i64 3
  %i.aaw = load i128, ptr %i.aav, align 1
  %i.aax = xor i128 %i.aaw, 158756675066628152571896658885054063981
  %i.aay = or i128 %i.aau, %i.aax
  %i.aaz = icmp ne i128 %i.aay, 0
  %i.aba = zext i1 %i.aaz to i32
  %i.abb = icmp eq i32 %i.aba, 0
  br i1 %i.abb, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i271: ; preds = %bb.da
  %i.abc = load i128, ptr %i.zl, align 1
  %i.abd = xor i128 %i.abc, 136175437904805086004045332427419378039
  %i.abe = getelementptr i8, ptr %i.zl, i64 7
  %i.abf = load i128, ptr %i.abe, align 1
  %i.abg = xor i128 %i.abf, 134856472256479896974248294044059066213
  %i.abh = or i128 %i.abd, %i.abg
  %i.abi = icmp ne i128 %i.abh, 0
  %i.abj = zext i1 %i.abi to i32
  %i.abk = icmp eq i32 %i.abj, 0
  br i1 %i.abk, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i275: ; preds = %bb.da
  %i.abl = load i64, ptr %i.zl, align 1
  %i.abm = xor i64 %i.abl, 7306919307222671735
  %i.abn = getelementptr i8, ptr %i.zl, i64 6
  %i.abo = load i64, ptr %i.abn, align 1
  %i.abp = xor i64 %i.abo, 7306916042979108199
  %i.abq = or i64 %i.abm, %i.abp
  %i.abr = icmp ne i64 %i.abq, 0
  %i.abs = zext i1 %i.abr to i32
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i279: ; preds = %bb.da
  %i.abu = load i128, ptr %i.zl, align 1
  %i.abv = xor i128 %i.abu, 133449419855961551838812061597131039095
  %i.abw = getelementptr i8, ptr %i.zl, i64 16
  %i.abx = load i64, ptr %i.abw, align 1
  %i.aby = zext i64 %i.abx to i128
  %i.abz = xor i128 %i.aby, 7957695011198756457
  %i.aca = or i128 %i.abv, %i.abz
  %i.acb = icmp ne i128 %i.aca, 0
  %i.acc = zext i1 %i.acb to i32
  %i.acd = icmp eq i32 %i.acc, 0
  br i1 %i.acd, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

.thread642:                                       ; preds = %bb.da, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i255, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i259, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i263, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i267, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i271, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i275, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i279
  %i.ace = getelementptr inbounds nuw i8, ptr %.099678, i64 64
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !1470 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.099678, i64 72
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !1471 ; 2 uses
  %.not100671 = icmp eq ptr %i.acf, %i.ach
  br i1 %.not100671, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290, %.thread642
  %i.aci = getelementptr inbounds nuw i8, ptr %.099678, i64 88
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !1472 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.099678, i64 96
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !1473 ; 2 uses
  %.not101673 = icmp eq ptr %i.acj, %i.acl
  br i1 %.not101673, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.lr.ph676

.lr.ph:                                           ; preds = %.thread642, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290
  %.095672 = phi ptr [ %i.aea, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290 ], [ %i.acf, %.thread642 ] ; 2 uses
  %i.acm = load ptr, ptr %.095672, align 8, !tbaa !1353, !noalias !1474, !nonnull !165, !noundef !165 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !1356, !noalias !1474
  %i.acp = call noundef ptr %i.aco(ptr noundef nonnull %i.acm) #27, !noalias !1474, !inline_history !1330 ; 5 uses
  %i.acq = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.acr = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i285 = icmp eq ptr %i.acq, %i.acr
  br i1 %.not.i.i285, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph
  %i.acs = ptrtoint ptr %i.acp to i64
  store i64 %i.acs, ptr %i.acq, align 8, !tbaa !189
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  store ptr %i.act, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290

bb.dc:                                            ; preds = %.lr.ph
  %i.acu = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.acv = ptrtoint ptr %i.acq to i64             ; 2 uses
  %i.acw = ptrtoint ptr %i.acu to i64             ; 2 uses
  %i.acx = sub i64 %i.acv, %i.acw                 ; 4 uses
  %i.acy = icmp eq i64 %i.acx, 9223372036854775800
  br i1 %i.acy, label %bb.dd, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i533

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc551 unwind label %.loopexit.split-lp647.loopexit.split-lp

.noexc551:                                        ; preds = %bb.dd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i533: ; preds = %bb.dc
  %i.acz = ashr exact i64 %i.acx, 3               ; 3 uses
  %.sroa.speculated.i.i534 = call i64 @llvm.umax.i64(i64 %i.acz, i64 1)
  %i.ada = add nsw i64 %.sroa.speculated.i.i534, %i.acz ; 2 uses
  %i.adb = icmp ult i64 %i.ada, %i.acz
  %i.adc = call i64 @llvm.umin.i64(i64 %i.ada, i64 1152921504606846975)
  %i.add = select i1 %i.adb, i64 1152921504606846975, i64 %i.adc ; 3 uses
  %.not.i.i535 = icmp ne i64 %i.add, 0
  call void @llvm.assume(i1 %.not.i.i535)
  %i.ade = shl nuw nsw i64 %i.add, 3
  %i.adf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ade) #28
          to label %.noexc552 unwind label %.loopexit.split-lp647.loopexit.split-lp ; 10 uses

.noexc552:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i533
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.acx
  %i.adh = ptrtoint ptr %i.acp to i64
  store i64 %i.adh, ptr %i.adg, align 8, !tbaa !189
  %.not10.i.i.i.i536 = icmp eq ptr %i.acu, %i.acq
  br i1 %.not10.i.i.i.i536, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548, label %.lr.ph.i.i.i.i537.preheader

.lr.ph.i.i.i.i537.preheader:                      ; preds = %.noexc552
  %i.adi = add i64 %i.acv, -8
  %i.adj = sub i64 %i.adi, %i.acw                 ; 3 uses
  %i.adk = lshr i64 %i.adj, 3
  %i.adl = add nuw nsw i64 %i.adk, 1              ; 2 uses
  %min.iters.check1132 = icmp ult i64 %i.adj, 56
  br i1 %min.iters.check1132, label %.lr.ph.i.i.i.i537.preheader1147, label %vector.memcheck1123

vector.memcheck1123:                              ; preds = %.lr.ph.i.i.i.i537.preheader
  %i.adm = and i64 %i.adj, -8
  %39 = add i64 %i.adm, 8                         ; 2 uses
  %scevgep1126 = getelementptr i8, ptr %i.adf, i64 %39
  %scevgep1127 = getelementptr i8, ptr %i.acu, i64 %39
  %bound01128 = icmp ult ptr %i.adf, %scevgep1127
  %bound11129 = icmp ult ptr %i.acu, %scevgep1126
  %found.conflict1130 = and i1 %bound01128, %bound11129
  br i1 %found.conflict1130, label %.lr.ph.i.i.i.i537.preheader1147, label %vector.ph1133

vector.ph1133:                                    ; preds = %vector.memcheck1123
  %n.vec1134 = and i64 %i.adl, 4611686018427387900 ; 3 uses
  %i.adn = shl i64 %n.vec1134, 3                  ; 2 uses
  %i.ado = getelementptr i8, ptr %i.adf, i64 %i.adn ; 2 uses
  %i.adp = getelementptr i8, ptr %i.acu, i64 %i.adn
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %vector.ph1133
  %index1136 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1141, %vector.body1135 ] ; 2 uses
  %i.adq = shl i64 %index1136, 3                  ; 2 uses
  %next.gep1137 = getelementptr i8, ptr %i.adf, i64 %i.adq ; 2 uses
  %next.gep1138 = getelementptr i8, ptr %i.acu, i64 %i.adq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  %i.adr = getelementptr i8, ptr %next.gep1138, i64 16
  %wide.load1139 = load <2 x i64>, ptr %next.gep1138, align 8, !tbaa !189, !alias.scope !1477
  %wide.load1140 = load <2 x i64>, ptr %i.adr, align 8, !tbaa !189, !alias.scope !1477
  %i.ads = getelementptr i8, ptr %next.gep1137, i64 16
  store <2 x i64> %wide.load1139, ptr %next.gep1137, align 8, !tbaa !189, !alias.scope !1478, !noalias !1479
  store <2 x i64> %wide.load1140, ptr %i.ads, align 8, !tbaa !189, !alias.scope !1478, !noalias !1479
  %i.adt = getelementptr i8, ptr %next.gep1138, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1138, align 8, !tbaa !189, !alias.scope !1477
  store <2 x ptr> splat (ptr null), ptr %i.adt, align 8, !tbaa !189, !alias.scope !1477
  %index.next1141 = add nuw i64 %index1136, 4     ; 2 uses
  %i.adu = icmp eq i64 %index.next1141, %n.vec1134
  br i1 %i.adu, label %middle.block1142, label %vector.body1135, !llvm.loop !1337

middle.block1142:                                 ; preds = %vector.body1135
  %cmp.n1143 = icmp eq i64 %i.adl, %n.vec1134
  br i1 %cmp.n1143, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548, label %.lr.ph.i.i.i.i537.preheader1147

.lr.ph.i.i.i.i537.preheader1147:                  ; preds = %vector.memcheck1123, %.lr.ph.i.i.i.i537.preheader, %middle.block1142
  %.012.i.i.i.i538.ph = phi ptr [ %i.adf, %vector.memcheck1123 ], [ %i.adf, %.lr.ph.i.i.i.i537.preheader ], [ %i.ado, %middle.block1142 ]
  %.0911.i.i.i.i539.ph = phi ptr [ %i.acu, %vector.memcheck1123 ], [ %i.acu, %.lr.ph.i.i.i.i537.preheader ], [ %i.adp, %middle.block1142 ]
  br label %.lr.ph.i.i.i.i537

.lr.ph.i.i.i.i537:                                ; preds = %.lr.ph.i.i.i.i537.preheader1147, %.lr.ph.i.i.i.i537
  %.012.i.i.i.i538 = phi ptr [ %i.adx, %.lr.ph.i.i.i.i537 ], [ %.012.i.i.i.i538.ph, %.lr.ph.i.i.i.i537.preheader1147 ] ; 2 uses
  %.0911.i.i.i.i539 = phi ptr [ %i.adw, %.lr.ph.i.i.i.i537 ], [ %.0911.i.i.i.i539.ph, %.lr.ph.i.i.i.i537.preheader1147 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  %i.adv = load i64, ptr %.0911.i.i.i.i539, align 8, !tbaa !189, !alias.scope !1476
  store i64 %i.adv, ptr %.012.i.i.i.i538, align 8, !tbaa !189, !alias.scope !1475
  store ptr null, ptr %.0911.i.i.i.i539, align 8, !tbaa !189, !alias.scope !1476
  %i.adw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i539, i64 8 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i538, i64 8 ; 2 uses
  %.not.i.i.i.i540 = icmp eq ptr %i.adw, %i.acq
  br i1 %.not.i.i.i.i540, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548, label %.lr.ph.i.i.i.i537, !llvm.loop !1338

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548: ; preds = %.lr.ph.i.i.i.i537, %middle.block1142, %.noexc552
  %.0.lcssa.i.i.i.i542 = phi ptr [ %i.adf, %.noexc552 ], [ %i.ado, %middle.block1142 ], [ %i.adx, %.lr.ph.i.i.i.i537 ]
  %i.ady = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i542, i64 8
  %.not.i23.i550 = icmp eq ptr %i.acu, null
  br i1 %.not.i23.i550, label %.noexc286, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548
  call void @_ZdlPvm(ptr noundef nonnull %i.acu, i64 noundef %i.acx) #30
  br label %.noexc286

.noexc286:                                        ; preds = %bb.de, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548
  store ptr %i.adf, ptr %i.b, align 8, !tbaa !308
  store ptr %i.ady, ptr %i.d, align 8, !tbaa !309
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.add
  store ptr %i.adz, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290: ; preds = %bb.db, %.noexc286
  %i.aea = getelementptr inbounds nuw i8, ptr %.095672, i64 8 ; 2 uses
  %.not100 = icmp eq ptr %i.aea, %i.ach
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.loopexit.split-lp647.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i533, %bb.dd
  %lpad.loopexit.split-lp1149 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i291 = icmp eq ptr %i.acp, null
  br i1 %.not.i291, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i292

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i292: ; preds = %.loopexit.split-lp647.loopexit.split-lp
  %i.aeb = load ptr, ptr %i.acp, align 8, !tbaa !191
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aed = load ptr, ptr %i.aec, align 8
  call void %i.aed(ptr noundef nonnull align 8 dereferenceable(952) %i.acp) #27, !inline_history !0
  br label %common.resume

.lr.ph676:                                        ; preds = %._crit_edge, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit
  %.0674 = phi ptr [ %i.afr, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit ], [ %i.acj, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.aee = load ptr, ptr %.0674, align 8, !tbaa !1482, !noalias !1480, !nonnull !165, !noundef !165 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !1484, !noalias !1480
  %i.aeh = call noundef ptr %i.aeg(ptr noundef nonnull %i.aee) #27, !noalias !1480, !inline_history !1341 ; 2 uses
  store ptr %i.aeh, ptr %38, align 8, !tbaa !304, !alias.scope !1480
  %i.aei = load ptr, ptr %i.wr, align 8, !tbaa !306 ; 6 uses
  %i.aej = load ptr, ptr %i.ws, align 8, !tbaa !307
  %.not.i.i294 = icmp eq ptr %i.aei, %i.aej
  %i.aek = ptrtoint ptr %i.aeh to i64             ; 2 uses
  br i1 %.not.i.i294, label %bb.df, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %.lr.ph676
  store i64 %i.aek, ptr %i.aei, align 8, !tbaa !304
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  store ptr %i.ael, ptr %i.wr, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit

bb.df:                                            ; preds = %.lr.ph676
  %i.aem = load ptr, ptr %i.wq, align 8, !tbaa !305 ; 10 uses
  %i.aen = ptrtoint ptr %i.aei to i64             ; 2 uses
  %i.aeo = ptrtoint ptr %i.aem to i64             ; 2 uses
  %i.aep = sub i64 %i.aen, %i.aeo                 ; 4 uses
  %i.aeq = icmp eq i64 %i.aep, 9223372036854775800
  br i1 %i.aeq, label %bb.dg, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc569 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc569:                                        ; preds = %bb.dg
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.df
  %i.aer = ashr exact i64 %i.aep, 3               ; 3 uses
  %.sroa.speculated.i.i554 = call i64 @llvm.umax.i64(i64 %i.aer, i64 1)
  %i.aes = add nsw i64 %.sroa.speculated.i.i554, %i.aer ; 2 uses
  %i.aet = icmp ult i64 %i.aes, %i.aer
  %i.aeu = call i64 @llvm.umin.i64(i64 %i.aes, i64 1152921504606846975)
  %i.aev = select i1 %i.aet, i64 1152921504606846975, i64 %i.aeu ; 3 uses
  %.not.i.i555 = icmp ne i64 %i.aev, 0
  call void @llvm.assume(i1 %.not.i.i555)
  %i.aew = shl nuw nsw i64 %i.aev, 3
  %i.aex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aew) #28
          to label %.noexc570 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc570:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 %i.aep
  store i64 %i.aek, ptr %i.aey, align 8, !tbaa !304
  %.not10.i.i.i.i556 = icmp eq ptr %i.aem, %i.aei
  br i1 %.not10.i.i.i.i556, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i557.preheader

.lr.ph.i.i.i.i557.preheader:                      ; preds = %.noexc570
  %i.aez = add i64 %i.aen, -8
  %i.afa = sub i64 %i.aez, %i.aeo                 ; 3 uses
  %i.afb = lshr i64 %i.afa, 3
  %i.afc = add nuw nsw i64 %i.afb, 1              ; 2 uses
  %min.iters.check1109 = icmp ult i64 %i.afa, 56
  br i1 %min.iters.check1109, label %.lr.ph.i.i.i.i557.preheader1146, label %vector.memcheck1101

vector.memcheck1101:                              ; preds = %.lr.ph.i.i.i.i557.preheader
  %i.afd = and i64 %i.afa, -8
  %40 = add i64 %i.afd, 8                         ; 2 uses
  %scevgep1103 = getelementptr i8, ptr %i.aex, i64 %40
  %scevgep1104 = getelementptr i8, ptr %i.aem, i64 %40
  %bound01105 = icmp ult ptr %i.aex, %scevgep1104
  %bound11106 = icmp ult ptr %i.aem, %scevgep1103
  %found.conflict1107 = and i1 %bound01105, %bound11106
  br i1 %found.conflict1107, label %.lr.ph.i.i.i.i557.preheader1146, label %vector.ph1110

vector.ph1110:                                    ; preds = %vector.memcheck1101
  %n.vec1111 = and i64 %i.afc, 4611686018427387900 ; 3 uses
  %i.afe = shl i64 %n.vec1111, 3                  ; 2 uses
  %i.aff = getelementptr i8, ptr %i.aex, i64 %i.afe ; 2 uses
  %i.afg = getelementptr i8, ptr %i.aem, i64 %i.afe
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %vector.ph1110
  %index1113 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1118, %vector.body1112 ] ; 2 uses
  %i.afh = shl i64 %index1113, 3                  ; 2 uses
  %next.gep1114 = getelementptr i8, ptr %i.aex, i64 %i.afh ; 2 uses
  %next.gep1115 = getelementptr i8, ptr %i.aem, i64 %i.afh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.afi = getelementptr i8, ptr %next.gep1115, i64 16
  %wide.load1116 = load <2 x i64>, ptr %next.gep1115, align 8, !tbaa !304, !alias.scope !1487
  %wide.load1117 = load <2 x i64>, ptr %i.afi, align 8, !tbaa !304, !alias.scope !1487
  %i.afj = getelementptr i8, ptr %next.gep1114, i64 16
  store <2 x i64> %wide.load1116, ptr %next.gep1114, align 8, !tbaa !304, !alias.scope !1488, !noalias !1489
  store <2 x i64> %wide.load1117, ptr %i.afj, align 8, !tbaa !304, !alias.scope !1488, !noalias !1489
  %i.afk = getelementptr i8, ptr %next.gep1115, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1115, align 8, !tbaa !304, !alias.scope !1487
  store <2 x ptr> splat (ptr null), ptr %i.afk, align 8, !tbaa !304, !alias.scope !1487
  %index.next1118 = add nuw i64 %index1113, 4     ; 2 uses
  %i.afl = icmp eq i64 %index.next1118, %n.vec1111
  br i1 %i.afl, label %middle.block1119, label %vector.body1112, !llvm.loop !1348

middle.block1119:                                 ; preds = %vector.body1112
  %cmp.n1120 = icmp eq i64 %i.afc, %n.vec1111
  br i1 %cmp.n1120, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i557.preheader1146

.lr.ph.i.i.i.i557.preheader1146:                  ; preds = %vector.memcheck1101, %.lr.ph.i.i.i.i557.preheader, %middle.block1119
  %.012.i.i.i.i558.ph = phi ptr [ %i.aex, %vector.memcheck1101 ], [ %i.aex, %.lr.ph.i.i.i.i557.preheader ], [ %i.aff, %middle.block1119 ]
  %.0911.i.i.i.i559.ph = phi ptr [ %i.aem, %vector.memcheck1101 ], [ %i.aem, %.lr.ph.i.i.i.i557.preheader ], [ %i.afg, %middle.block1119 ]
  br label %.lr.ph.i.i.i.i557

.lr.ph.i.i.i.i557:                                ; preds = %.lr.ph.i.i.i.i557.preheader1146, %.lr.ph.i.i.i.i557
  %.012.i.i.i.i558 = phi ptr [ %i.afo, %.lr.ph.i.i.i.i557 ], [ %.012.i.i.i.i558.ph, %.lr.ph.i.i.i.i557.preheader1146 ] ; 2 uses
  %.0911.i.i.i.i559 = phi ptr [ %i.afn, %.lr.ph.i.i.i.i557 ], [ %.0911.i.i.i.i559.ph, %.lr.ph.i.i.i.i557.preheader1146 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.afm = load i64, ptr %.0911.i.i.i.i559, align 8, !tbaa !304, !alias.scope !1486
  store i64 %i.afm, ptr %.012.i.i.i.i558, align 8, !tbaa !304, !alias.scope !1485
  store ptr null, ptr %.0911.i.i.i.i559, align 8, !tbaa !304, !alias.scope !1486
  %i.afn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i559, i64 8 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i558, i64 8 ; 2 uses
  %.not.i.i.i.i560 = icmp eq ptr %i.afn, %i.aei
  br i1 %.not.i.i.i.i560, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i557, !llvm.loop !1349

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i557, %middle.block1119, %.noexc570
  %.0.lcssa.i.i.i.i561 = phi ptr [ %i.aex, %.noexc570 ], [ %i.aff, %middle.block1119 ], [ %i.afo, %.lr.ph.i.i.i.i557 ]
  %i.afp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i561, i64 8
  %.not.i23.i568 = icmp eq ptr %i.aem, null
  br i1 %.not.i23.i568, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aem, i64 noundef %i.aep) #30
  br label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.dh
  store ptr %i.aex, ptr %i.wq, align 8, !tbaa !305
  store ptr %i.afp, ptr %i.wr, align 8, !tbaa !306
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.aex, i64 %i.aev
  store ptr %i.afq, ptr %i.ws, align 8, !tbaa !307
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.afr = getelementptr inbounds nuw i8, ptr %.0674, i64 8 ; 2 uses
  %.not101 = icmp eq ptr %i.afr, %i.acl
  br i1 %.not101, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.lr.ph676

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.dg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  br label %common.resume

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit, %._crit_edge, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i279, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i275, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i271, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i267, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i263, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i259, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i255, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.afs = getelementptr inbounds nuw i8, ptr %.099678, i64 224 ; 2 uses
  %.not = icmp eq ptr %i.afs, %i.wm
  br i1 %.not, label %._crit_edge680, label %bb.ct
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge2VM2VM26unsafeRegisterBuiltInHostsEv(ptr noundef nonnull align 8 dereferenceable(1960) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.cxx20::expected", align 4   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %.sroa.04.07 = load ptr, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  %.not8 = icmp eq ptr %.sroa.04.07, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1952
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.09 = phi ptr [ %.sroa.04.07, %.lr.ph ], [ %.sroa.04.0, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !300, !nonnull !165, !align !301
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN8WasmEdge8Executor8Executor14registerModuleERNS_7Runtime12StoreManagerERKNS2_8Instance14ModuleInstanceE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %1, ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(952) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %.sroa.04.0 = load ptr, ptr %.sroa.04.09, align 8, !tbaa !194 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge2VM2VM25unsafeRegisterPlugInHostsEv(ptr noundef nonnull align 8 dereferenceable(1960) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.cxx20::expected", align 4   ; 3 uses
  %2 = alloca %"class.cxx20::expected", align 4   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !302  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !302  ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1952
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !303  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !303  ; 2 uses
  %.not1417 = icmp eq ptr %i.h, %i.j
  br i1 %.not1417, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1952
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.011.016 = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !300, !nonnull !165, !align !301
  %i.n = load ptr, ptr %.sroa.011.016, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN8WasmEdge8Executor8Executor14registerModuleERNS_7Runtime12StoreManagerERKNS2_8Instance14ModuleInstanceE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %1, ptr noundef nonnull align 8 dereferenceable(328) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(952) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge21:                                    ; preds = %bb.c, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph20, %bb.c
  %.sroa.07.018 = phi ptr [ %i.h, %.lr.ph20 ], [ %i.r, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !300, !nonnull !165, !align !301
  %i.q = load ptr, ptr %.sroa.07.018, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN8WasmEdge8Executor8Executor17registerComponentERNS_7Runtime12StoreManagerERKNS2_8Instance17ComponentInstanceE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %2, ptr noundef nonnull align 8 dereferenceable(328) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(800) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.r, %i.j
  br i1 %.not14, label %._crit_edge21, label %bb.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare { ptr, i64 } @_ZN8WasmEdge6Plugin6Plugin7pluginsEv() local_unnamed_addr #4

declare void @_ZN8WasmEdge8Executor8Executor14registerModuleERNS_7Runtime12StoreManagerERKNS2_8Instance14ModuleInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(952)) local_unnamed_addr #5

declare void @_ZN8WasmEdge8Executor8Executor17registerComponentERNS_7Runtime12StoreManagerERKNS2_8Instance17ComponentInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(800)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge2VM2VM20unsafeRegisterModuleESt17basic_string_viewIcSt11char_traitsIcEERKNSt10filesystem7__cxx114pathE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1960) %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cxx20::expected.430", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !337
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.a, align 8, !tbaa !337
  br label %bb.c
end_hunk_0
