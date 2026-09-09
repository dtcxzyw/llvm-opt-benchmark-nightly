Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RINvMs3_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectINtB6_10CachedCellINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1P_4diag16SourceDiagnosticEEE11get_or_initNCNvMs0_B6_NtB6_10MultiChild11layout_full0NtNtB1N_7regions7RegionsEBa_:bb.a
  store i64 %.val1.i39, ptr %.sroa.5.0..sroa_idx.i57, align 8, !alias.scope !1640, !noalias !1644
  br label %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit62

bb.ka:                                            ; preds = %bb.jw, %bb.ju, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluNtNvNtB2N_7locator1__12___ComemoCalluuEINtNtB4_6result6ResultNtNtNtB1V_6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.anh = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.body33:                                          ; preds = %.body58.thread.i.i, %bb.ma, %bb.ka
  %eh.lpad-body34 = phi { ptr, i32 } [ %i.anh, %bb.ka ], [ %.pn.i.i27, %.body58.thread.i.i ], [ %lpad.thr_comm.i, %bb.ma ] ; 2 uses
  %i.ani = cmpxchg ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !1624
  %.sroa.18.0.in.i.i.i.i35 = extractvalue { i64, i1 } %i.ani, 1
  br i1 %.sroa.18.0.in.i.i.i.i35, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtB3C_6engine1__12___ComemoCallNtNvB5p_s_1__12___ComemoCallNtNvB5p_s0_1__12___ComemoCalluNtNvNtB4u_7locator1__12___ComemoCalluuEINtNtB4_6result6ResultNtNtNtB3C_6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs7tN9tvpkfrg_12typst_layout.exit37, label %bb.kb, !prof !43

bb.kb:                                            ; preds = %.body33
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtB3C_6engine1__12___ComemoCallNtNvB5p_s_1__12___ComemoCallNtNvB5p_s0_1__12___ComemoCalluNtNvNtB4u_7locator1__12___ComemoCalluuEINtNtB4_6result6ResultNtNtNtB3C_6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs7tN9tvpkfrg_12typst_layout.exit37 unwind label %bb.me

_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit62: ; preds = %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library6layout8fragmentNtB5_8FragmentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i54, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  %i.anj = cmpxchg weak ptr %i.fw, i8 0, i8 1 acquire monotonic, align 1, !noalias !1652
  %i.ank = extractvalue { i8, i1 } %i.anj, 1
  br i1 %i.ank, label %.noexc.i24, label %bb.kc, !prof !43

bb.kc:                                            ; preds = %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit62
  %i.anl = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.fw, i64 undef, i32 noundef -1)
          to label %.noexc.i24 unwind label %bb.ma, !noalias !1653 ; 0 uses

.noexc.i24:                                       ; preds = %bb.kc, %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit62
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ct, i64 152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.co, ptr noundef nonnull align 8 dereferenceable(64) %i.anm, i64 64, i1 false), !noalias !1653
  store i64 0, ptr %i.anm, align 8, !noalias !1652
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !1652
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !1652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) @97, i64 32, i1 false), !noalias !1652
  store i64 0, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !1652
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ct, i64 216 ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.co, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ano, ptr noundef nonnull align 8 dereferenceable(24) %i.ann, i64 24, i1 false), !noalias !1653
  store i64 0, ptr %i.ann, align 8, !noalias !1652
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !1652
  store i64 0, ptr %.sroa.717.0..sroa_idx.i.i, align 8, !noalias !1652
  %i.anp = cmpxchg ptr %i.fw, i8 1, i8 0 release monotonic, align 1, !noalias !1652
  %i.anq = extractvalue { i8, i1 } %i.anp, 1
  br i1 %i.anq, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.kd, !prof !43

bb.kd:                                            ; preds = %.noexc.i24
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.fw, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.ma, !noalias !1653

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.kd, %.noexc.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !1653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 64, i1 false), !noalias !1653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !1653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.ano, i64 24, i1 false), !noalias !1653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.anr = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anr, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !1624
  %i.ans = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store i64 0, ptr %i.ans, align 8, !noalias !1653
  call void @llvm.experimental.noalias.scope.decl(metadata !1654), !noalias !1624
  call void @llvm.experimental.noalias.scope.decl(metadata !1655), !noalias !1624
  call void @llvm.experimental.noalias.scope.decl(metadata !1656), !noalias !1624
  %i.ant = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 112), align 8, !alias.scope !1656, !noalias !1657, !noundef !41
  %i.anu = icmp eq i64 %i.ant, 0
  br i1 %i.anu, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, label %bb.ke

bb.ke:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.anv = mul i64 %i.fy, -1065810590584100411
  %i.anw = add i64 %i.anv, %i.fz
  %i.anx = mul i64 %i.anw, -1065810590584100411   ; 2 uses
  %i.any = call noundef i64 @llvm.fshl.i64(i64 %i.anx, i64 %i.anx, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1658), !noalias !1624
  call void @llvm.experimental.noalias.scope.decl(metadata !1659), !noalias !1624
  %i.anz = lshr i64 %i.any, 57
  %i.aoa = trunc nuw nsw i64 %i.anz to i8
  %i.aob = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 96), align 8, !alias.scope !1660, !noalias !1661, !noundef !41 ; 2 uses
  %i.aoc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 88), align 8, !alias.scope !1660, !noalias !1661, !nonnull !41, !noundef !41 ; 2 uses
  %i.aod = insertelement <16 x i8> poison, i8 %i.aoa, i64 0
  %i.aoe = shufflevector <16 x i8> %i.aod, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kh, %bb.ke
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ke ], [ %i.aov, %bb.kh ]
  %.pn.i.i.i.i = phi i64 [ %i.any, %bb.ke ], [ %i.aow, %bb.kh ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.aob ; 3 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.aof, align 1, !noalias !1662 ; 2 uses
  %i.aog = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.aoe
  %i.aoh = bitcast <16 x i1> %i.aog to i16        ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.aoh, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i26

.lr.ph.i.i.i.i26:                                 ; preds = %bb.kf, %bb.kg
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.aou, %bb.kg ], [ %i.aoh, %bb.kf ] ; 3 uses
  %i.aoi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.aoj = zext nneg i16 %i.aoi to i64
  %i.aok = add i64 %.sroa.01.0.i.i.i.i.i, %i.aoj
  %i.aol = and i64 %i.aok, %i.aob
  %i.aom = sub nsw i64 0, %i.aol
  %i.aon = getelementptr inbounds [32 x i8], ptr %i.aoc, i64 %i.aom ; 2 uses
  %i.aoo = getelementptr inbounds i8, ptr %i.aon, i64 -32
  %.val2.i.i.i.i.i = load i128, ptr %i.aoo, align 16, !noalias !1663, !noundef !41
  %i.aop = icmp eq i128 %i.gd, %.val2.i.i.i.i.i
  br i1 %i.aop, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.kg, !prof !43

._crit_edge.i.i.i.i:                              ; preds = %bb.kg, %bb.kf
  %i.aoq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.aor = bitcast <16 x i1> %i.aoq to i16
  %i.aos = icmp eq i16 %i.aor, 0
  br i1 %i.aos, label %bb.kh, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, !prof !44

bb.kg:                                            ; preds = %.lr.ph.i.i.i.i26
  %i.aot = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.aou = and i16 %i.aot, %.sroa.06.0.i31.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.aou, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i26

bb.kh:                                            ; preds = %._crit_edge.i.i.i.i
  %i.aov = add i64 %.sroa.9.0.i.i.i.i.i, 16       ; 2 uses
  %i.aow = add i64 %.sroa.01.0.i.i.i.i.i, %i.aov
  br label %bb.kf

.body58.i.i:                                      ; preds = %bb.lu, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i63.i.i, %bb.lx
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i.i.i26
  %i.aox = getelementptr inbounds i8, ptr %i.aon, i64 -16
  %i.aoy = load i64, ptr %i.aox, align 8, !noalias !1657, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.8.0.i.i = phi i64 [ %i.aoy, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.sroa.010.0.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %._crit_edge.i.i.i.i ]
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.cp, i64 56 ; 3 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.apb = load i64, ptr %i.apa, align 8, !alias.scope !1654, !noalias !1664 ; 5 uses
  %i.apc = icmp ult i64 %i.apb, 82351536043346213
  %i.apd = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ape = load ptr, ptr %i.apd, align 8, !alias.scope !1654, !noalias !1664, !nonnull !41 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 18
  %i.apg = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  %i.aph = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.api = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.promoted.i.i = load i64, ptr %i.aoz, align 8, !alias.scope !1654, !noalias !1664 ; 2 uses
  br label %select.unfold31.i.i.outer

select.unfold31.i.i.outer:                        ; preds = %select.unfold31.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i
  %.lcssa4860.i.ph = phi i64 [ %.promoted.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.lcssa48.i, %select.unfold31.i.i.outer.backedge ]
  %.ph = phi i64 [ %.promoted.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.lcssa12.i, %select.unfold31.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ false, %select.unfold31.i.i.outer.backedge ]
  %.sroa.013.0.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ true, %select.unfold31.i.i.outer.backedge ]
  %.sroa.013.0.i.i.off01041.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ 1, %select.unfold31.i.i.outer.backedge ]
  %.sroa.10.0.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %i.ars, %select.unfold31.i.i.outer.backedge ]
  %.sroa.17.0.i.i.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.sroa.87.0.copyload.i.lcssa.i, %select.unfold31.i.i.outer.backedge ]
  %.sroa.8.1.i.i.ph = phi i64 [ %.sroa.8.0.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %i.ars, %select.unfold31.i.i.outer.backedge ]
  %.sroa.010.1.i.i.ph = phi i64 [ %.sroa.010.0.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ 1, %select.unfold31.i.i.outer.backedge ]
  br label %select.unfold31.i.i.outer1045

select.unfold31.i.i.outer1045.backedge:           ; preds = %bb.kn, %._crit_edge.i.i48.i.i
  br label %select.unfold31.i.i.outer1045

select.unfold31.i.i.outer1045:                    ; preds = %select.unfold31.i.i.outer1045.backedge, %select.unfold31.i.i.outer
  %.not27.i.i.ph1046 = phi i1 [ %.not27.i.i.ph, %select.unfold31.i.i.outer ], [ false, %select.unfold31.i.i.outer1045.backedge ]
  %.sroa.013.0.i.i.off0.ph1047 = phi i1 [ %.sroa.013.0.i.i.off0.ph, %select.unfold31.i.i.outer ], [ true, %select.unfold31.i.i.outer1045.backedge ]
  %.sroa.013.0.i.i.off01041.ph1048 = phi i64 [ %.sroa.013.0.i.i.off01041.ph, %select.unfold31.i.i.outer ], [ 1, %select.unfold31.i.i.outer1045.backedge ]
  %.sroa.10.0.i.i.ph1049 = phi i64 [ %.sroa.10.0.i.i.ph, %select.unfold31.i.i.outer ], [ %.sroa.8.1.i.i, %select.unfold31.i.i.outer1045.backedge ] ; 8 uses
  %.sroa.17.0.i.i.ph1050 = phi i128 [ %.sroa.17.0.i.i.ph, %select.unfold31.i.i.outer ], [ %i.apy, %select.unfold31.i.i.outer1045.backedge ] ; 2 uses
  %.sroa.8.1.i.i.ph1051 = phi i64 [ %.sroa.8.1.i.i.ph, %select.unfold31.i.i.outer ], [ %.sroa.8.1.i.i, %select.unfold31.i.i.outer1045.backedge ]
  %.sroa.010.1.i.i.ph1052 = phi i64 [ %.sroa.010.1.i.i.ph, %select.unfold31.i.i.outer ], [ 1, %select.unfold31.i.i.outer1045.backedge ]
  br label %select.unfold31.i.i

select.unfold31.i.i:                              ; preds = %select.unfold31.i.i.outer1045, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.not27.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.not27.i.i.ph1046, %select.unfold31.i.i.outer1045 ] ; 2 uses
  %.sroa.013.0.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.013.0.i.i.off0.ph1047, %select.unfold31.i.i.outer1045 ] ; 2 uses
  %.sroa.013.0.i.i.off01041 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.013.0.i.i.off01041.ph1048, %select.unfold31.i.i.outer1045 ] ; 2 uses
  %.sroa.8.1.i.i = phi i64 [ %i.arl, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.8.1.i.i.ph1051, %select.unfold31.i.i.outer1045 ] ; 7 uses
  %.sroa.010.1.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.010.1.i.i.ph1052, %select.unfold31.i.i.outer1045 ] ; 3 uses
  %i.apj = trunc nuw i64 %.sroa.010.1.i.i to i1
  %or.cond.i.i = select i1 %.not27.i.i, i1 %i.apj, i1 false
  br i1 %or.cond.i.i, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %select.unfold31.i.i
  call void @llvm.assume(i1 %i.apc), !noalias !1624
  %i.apk = icmp ult i64 %.ph, %i.apb
  br i1 %i.apk, label %.lr.ph.i.i.preheader.i, label %.loopexit.i.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.ki
  %i.apl = getelementptr inbounds nuw [112 x i8], ptr %i.ape, i64 %.ph ; 3 uses
  %.sroa.03.0.copyload.i50.i = load i16, ptr %i.apl, align 16, !noalias !1665 ; 2 uses
  %.sroa.87.0..sroa_idx.i51.i = getelementptr inbounds nuw i8, ptr %i.apl, i64 96
  %.sroa.87.0.copyload.i52.i = load i128, ptr %.sroa.87.0..sroa_idx.i51.i, align 16, !noalias !1665
  store i16 -1, ptr %i.apl, align 16, !noalias !1666
  %.not.i37.i53.i = icmp eq i16 %.sroa.03.0.copyload.i50.i, -1
  br i1 %.not.i37.i53.i, label %.lr.ph.i.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.preheader.i
  %i.apm = add nuw nsw i64 %.ph, 1                ; 2 uses
  %exitcond.not.i.i.i1026 = icmp eq i64 %i.apm, %i.apb
  br i1 %exitcond.not.i.i.i1026, label %.loopexit.i.loopexit.i, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.apn = phi i64 [ %i.app, %.lr.ph.i ], [ %i.apm, %.lr.ph.i.preheader ] ; 4 uses
  %i.apo = getelementptr inbounds nuw [112 x i8], ptr %i.ape, i64 %i.apn ; 3 uses
  %.sroa.03.0.copyload.i.i = load i16, ptr %i.apo, align 16, !noalias !1665 ; 2 uses
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.apo, i64 96
  %.sroa.87.0.copyload.i.i = load i128, ptr %.sroa.87.0..sroa_idx.i.i, align 16, !noalias !1665
  store i16 -1, ptr %i.apo, align 16, !noalias !1666
  %.not.i37.i.i = icmp eq i16 %.sroa.03.0.copyload.i.i, -1
  br i1 %.not.i37.i.i, label %.lr.ph.i, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i31
  %i.app = add nuw nsw i64 %i.apn, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.app, %i.apb
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.loopexit.i, label %.lr.ph.i.i.i31

bb.kj:                                            ; preds = %select.unfold31.i.i
  %i.apq = icmp sgt i64 %.sroa.8.1.i.i, -1
  br i1 %i.apq, label %bb.kk, label %.loopexit44.i.i

bb.kk:                                            ; preds = %bb.kj
  %.val36.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 24), align 8, !noalias !1657, !noundef !41
  %i.apr = icmp ult i64 %.sroa.8.1.i.i, %.val36.i.i
  br i1 %i.apr, label %bb.kl, label %.invoke.i.i, !prof !43

bb.kl:                                            ; preds = %bb.kk
  %.val35.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 16), align 8, !noalias !1657, !nonnull !41, !noundef !41
  %i.aps = getelementptr inbounds nuw [128 x i8], ptr %.val35.i.i, i64 %.sroa.8.1.i.i ; 2 uses
  %i.apt = load i64, ptr %i.aps, align 16, !range !52, !noalias !1667, !noundef !41
  %.not.i38.i.i = icmp eq i64 %i.apt, 2
  br i1 %.not.i38.i.i, label %.invoke.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i, !prof !44

.invoke.i.i:                                      ; preds = %bb.la, %bb.kz, %bb.kl, %bb.kk
  %i.apu = phi ptr [ @411, %bb.kl ], [ @411, %bb.kk ], [ @410, %bb.kz ], [ @410, %bb.la ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @392, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.apu) #53
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1657

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.kl
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aps, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !1657
  invoke fastcc void @_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE7extractCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.cm, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.apv)
          to label %bb.km unwind label %.loopexit43.i.i.loopexit, !noalias !1664

bb.km:                                            ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.apw = load i128, ptr %i.cm, align 16, !range !42, !noalias !1657, !noundef !41
  %i.apx = trunc nuw i128 %i.apw to i1
  br i1 %i.apx, label %bb.kn, label %bb.ks

bb.kn:                                            ; preds = %bb.km
  %i.apy = load i128, ptr %i.api, align 16, !noalias !1657, !noundef !41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !1657
  call void @llvm.experimental.noalias.scope.decl(metadata !1668), !noalias !1624
  %i.apz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 144), align 8, !alias.scope !1668, !noalias !1657, !noundef !41
  %i.aqa = icmp eq i64 %i.apz, 0
  br i1 %i.aqa, label %select.unfold31.i.i.outer1045.backedge, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.aqb = mul i64 %.sroa.8.1.i.i, -1065810590584100411
  %i.aqc = trunc i128 %i.apy to i64
  %i.aqd = add i64 %i.aqb, %i.aqc
  %i.aqe = mul i64 %i.aqd, -1065810590584100411
  %i.aqf = lshr i128 %i.apy, 64
  %i.aqg = trunc nuw i128 %i.aqf to i64
  %i.aqh = add i64 %i.aqe, %i.aqg
  %i.aqi = mul i64 %i.aqh, -1065810590584100411   ; 2 uses
  %i.aqj = call noundef i64 @llvm.fshl.i64(i64 %i.aqi, i64 %i.aqi, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1669), !noalias !1624
  call void @llvm.experimental.noalias.scope.decl(metadata !1670), !noalias !1624
  %i.aqk = lshr i64 %i.aqj, 57
  %i.aql = trunc nuw nsw i64 %i.aqk to i8
  %i.aqm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 128), align 8, !alias.scope !1671, !noalias !1672, !noundef !41 ; 2 uses
  %i.aqn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 120), align 8, !alias.scope !1671, !noalias !1672, !nonnull !41, !noundef !41 ; 2 uses
  %i.aqo = insertelement <16 x i8> poison, i8 %i.aql, i64 0
  %i.aqp = shufflevector <16 x i8> %i.aqo, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.kp

bb.kp:                                            ; preds = %bb.kr, %bb.ko
  %.sroa.9.0.i.i.i39.i.i = phi i64 [ 0, %bb.ko ], [ %i.ari, %bb.kr ]
  %.pn.i.i40.i.i = phi i64 [ %i.aqj, %bb.ko ], [ %i.arj, %bb.kr ]
  %.sroa.01.0.i.i.i41.i.i = and i64 %.pn.i.i40.i.i, %i.aqm ; 3 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqn, i64 %.sroa.01.0.i.i.i41.i.i
  %.sroa.0.0.copyload.i24.i.i42.i.i = load <16 x i8>, ptr %i.aqq, align 1, !noalias !1673 ; 2 uses
  %i.aqr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i, %i.aqp
  %i.aqs = bitcast <16 x i1> %i.aqr to i16        ; 2 uses
  %.not.i.not30.i.i43.i.i = icmp eq i16 %i.aqs, 0
  br i1 %.not.i.not30.i.i43.i.i, label %._crit_edge.i.i48.i.i, label %.lr.ph.i.i44.i.i

.lr.ph.i.i44.i.i:                                 ; preds = %bb.kp, %bb.kq
  %.sroa.06.0.i31.i.i45.i.i = phi i16 [ %i.arh, %bb.kq ], [ %i.aqs, %bb.kp ] ; 3 uses
  %i.aqt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i45.i.i, i1 true)
  %i.aqu = zext nneg i16 %i.aqt to i64
  %i.aqv = add i64 %.sroa.01.0.i.i.i41.i.i, %i.aqu
  %i.aqw = and i64 %i.aqv, %i.aqm
  %i.aqx = sub nsw i64 0, %i.aqw
  %i.aqy = getelementptr inbounds [48 x i8], ptr %i.aqn, i64 %i.aqx ; 3 uses
  %i.aqz = getelementptr inbounds i8, ptr %i.aqy, i64 -48
  %.val2.i.i.i46.i.i = load i64, ptr %i.aqz, align 8, !noalias !1674, !noundef !41
  %i.ara = getelementptr i8, ptr %i.aqy, i64 -32
  %.val3.i.i.i.i.i = load i128, ptr %i.ara, align 16, !noalias !1674
  %i.arb = icmp eq i64 %.sroa.8.1.i.i, %.val2.i.i.i46.i.i
  %i.arc = icmp eq i128 %i.apy, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.arb, i1 %i.arc, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.kq, !prof !43

._crit_edge.i.i48.i.i:                            ; preds = %bb.kq, %bb.kp
  %i.ard = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i, splat (i8 -1)
  %i.are = bitcast <16 x i1> %i.ard to i16
  %i.arf = icmp eq i16 %i.are, 0
  br i1 %i.arf, label %bb.kr, label %select.unfold31.i.i.outer1045.backedge, !prof !44

bb.kq:                                            ; preds = %.lr.ph.i.i44.i.i
  %i.arg = add i16 %.sroa.06.0.i31.i.i45.i.i, -1
  %i.arh = and i16 %i.arg, %.sroa.06.0.i31.i.i45.i.i ; 2 uses
  %.not.i.not.i.i47.i.i = icmp eq i16 %i.arh, 0
  br i1 %.not.i.not.i.i47.i.i, label %._crit_edge.i.i48.i.i, label %.lr.ph.i.i44.i.i

bb.kr:                                            ; preds = %._crit_edge.i.i48.i.i
  %i.ari = add i64 %.sroa.9.0.i.i.i39.i.i, 16     ; 2 uses
  %i.arj = add i64 %.sroa.01.0.i.i.i41.i.i, %i.ari
  br label %bb.kp

bb.ks:                                            ; preds = %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !1657
  br label %.loopexit44.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i44.i.i
  %i.ark = getelementptr inbounds i8, ptr %i.aqy, i64 -16
  %i.arl = load i64, ptr %i.ark, align 8, !noalias !1657, !noundef !41
  br label %select.unfold31.i.i

.loopexit44.i.i:                                  ; preds = %bb.kj, %.loopexit.i.i, %bb.ks
  call void @llvm.experimental.noalias.scope.decl(metadata !1675), !noalias !1624
  %i.arm = load i64, ptr %i.anr, align 8, !range !70, !alias.scope !1676, !noalias !1677, !noundef !41
  %.not.i.i.i.i = icmp eq i64 %i.arm, -1
  br i1 %.not.i.i.i.i, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %.loopexit44.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.anr)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.kv, !noalias !1677

bb.ku:                                            ; preds = %.loopexit44.i.i
  %i.arn = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.arn, align 8, !alias.scope !1676, !noalias !1677, !nonnull !41, !noundef !41
  %i.aro = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %.val1.i.i.i.i = load i64, ptr %i.aro, align 8, !alias.scope !1676, !noalias !1677
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val.i.i.i.i, i64 %.val1.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.kv, !noalias !1678

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %i.arp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB20_13introspection12introspector1__12___ComemoCallNtNvNtB20_6engine1__12___ComemoCallNtNvB3N_s_1__12___ComemoCallNtNvB3N_s0_1__12___ComemoCalluNtNvNtB2S_7locator1__12___ComemoCalluuEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.cn) #54
          to label %.body58.thread.i.i unwind label %bb.kw, !noalias !1677

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.ku, %bb.kt
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB20_13introspection12introspector1__12___ComemoCallNtNvNtB20_6engine1__12___ComemoCallNtNvB3N_s_1__12___ComemoCallNtNvB3N_s0_1__12___ComemoCalluNtNvNtB2S_7locator1__12___ComemoCalluuEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.cn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluNtNvNtB2N_7locator1__12___ComemoCalluuEINtNtB4_6result6ResultNtNtNtB1V_6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.ly, !noalias !1677

bb.kw:                                            ; preds = %bb.kv
  %i.arq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !1678
  unreachable

_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i.i31, %.lr.ph.i.i.preheader.i
  %.lcssa48.i = phi i64 [ %.lcssa4860.i.ph, %.lr.ph.i.i.preheader.i ], [ %i.apn, %.lr.ph.i.i.i31 ] ; 2 uses
  %.lcssa12.i = phi i64 [ %.ph, %.lr.ph.i.i.preheader.i ], [ %i.apn, %.lr.ph.i.i.i31 ] ; 2 uses
  %.sroa.03.0.copyload.i.lcssa.i = phi i16 [ %.sroa.03.0.copyload.i50.i, %.lr.ph.i.i.preheader.i ], [ %.sroa.03.0.copyload.i.i, %.lr.ph.i.i.i31 ]
  %.sroa.87.0.copyload.i.lcssa.i = phi i128 [ %.sroa.87.0.copyload.i52.i, %.lr.ph.i.i.preheader.i ], [ %.sroa.87.0.copyload.i.i, %.lr.ph.i.i.i31 ]
  %i.arr = getelementptr inbounds nuw [112 x i8], ptr %i.ape, i64 %.lcssa12.i
  store i64 %.lcssa48.i, ptr %i.aoz, align 8, !noalias !1653
  %.sroa.8.0..sroa_idx.le.i.i = getelementptr inbounds nuw i8, ptr %i.arr, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !1657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(94) %.sroa.49.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(94) %.sroa.8.0..sroa_idx.le.i.i, i64 94, i1 false), !noalias !1657
  store i16 %.sroa.03.0.copyload.i.lcssa.i, ptr %i.apf, align 16, !noalias !1657
  store i64 0, ptr %i.apg, align 16, !noalias !1657
  store i64 %.sroa.013.0.i.i.off01041, ptr %i.cl, align 16, !noalias !1657
  store i64 %.sroa.10.0.i.i.ph1049, ptr %i.aph, align 8, !noalias !1657
  %i.ars = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 40), align 8, !noalias !1657, !noundef !41 ; 5 uses
  invoke fastcc void @_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEE9insert_atCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 8), i64 noundef %i.ars, ptr noalias nofree noundef align 16 captures(address) dereferenceable(128) %i.cl)
          to label %bb.kx unwind label %.loopexit43.i.i.loopexit.split-lp, !noalias !1657

.loopexit.i.loopexit.i:                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  store i64 %i.apb, ptr %i.aoz, align 8, !noalias !1653
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ki, %.loopexit.i.loopexit.i
  %i.art = icmp eq i64 %.sroa.010.1.i.i, 1        ; 2 uses
  %or.cond32.i.i = and i1 %.not27.i.i, %i.art
  br i1 %or.cond32.i.i, label %.loopexit44.i.i, label %bb.lb

bb.kx:                                            ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !1657
  %.not.i.i28 = icmp eq i64 %.sroa.010.1.i.i, 1
  br i1 %.not.i.i28, label %.noexc54.i.i, label %bb.ky

.noexc54.i.i:                                     ; preds = %bb.ky, %bb.kx
  br i1 %.sroa.013.0.i.i.off0, label %bb.kz, label %select.unfold31.i.i.outer.backedge

bb.ky:                                            ; preds = %bb.kx
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 88), i128 noundef %i.gd, i64 noundef %i.ars)
          to label %.noexc54.i.i unwind label %.loopexit43.i.i.loopexit.split-lp

bb.kz:                                            ; preds = %.noexc54.i.i
  %.val1.i.i.i29 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 24), align 8, !noalias !1679, !noundef !41
  %i.aru = icmp ult i64 %.sroa.10.0.i.i.ph1049, %.val1.i.i.i29
  br i1 %i.aru, label %bb.la, label %.invoke.i.i, !prof !43

bb.la:                                            ; preds = %bb.kz
  %.val.i.i.i30 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect17layout_multi_impl7___CACHE, i64 16), align 8, !noalias !1679, !nonnull !41, !noundef !41
end_hunk_0
begin_hunk_1_@_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTINtNtB4_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1p_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1p_7LibraryEIB11_DNtNtNtB1p_13introspection12introspector12IntrospectorEL_NtNvB3A_1__12___ComemoCallEIB11_NtNtB1p_6engine6TracedNtNvB50_1__12___ComemoCallEINtB13_10TrackedMutNtB50_4SinkNtNvB50_s_1__12___ComemoCallEIB11_NtB50_5RouteNtNvB50_s0_1__12___ComemoCallERNtNtNtB1p_11foundations7content7ContentIB11_NtNtB3C_7locator7LocatorNtNvB8e_1__12___ComemoCallENtNtB7y_6styles10StyleChainNtNtNtB1p_6layout7regions7RegionsINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZerojEINtNtB9w_3rel3RelNtNtB9w_3abs3AbsEEEINtNtBa6_6result6ResultNtNtB9w_8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEENCNvNtCs7tN9tvpkfrg_12typst_layout4flow20layout_fragment_impl0EBdk_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rg, ptr noundef nonnull align 8 dereferenceable(24) %i.rf, i64 24, i1 false), !noalias !10198
  store i64 0, ptr %i.rf, align 8, !noalias !10197
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 224
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !10197
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !10197
  %i.rh = cmpxchg ptr %i.jf, i8 1, i8 0 release monotonic, align 1, !noalias !10197
  %i.ri = extractvalue { i8, i1 } %i.rh, 1
  br i1 %i.ri, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.cs, !prof !43

bb.cs:                                            ; preds = %.noexc.i
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.jf, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.fo, !noalias !10198

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.cs, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !10198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.rg, i64 24, i1 false), !noalias !10198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.rj = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 0, ptr %i.rk, align 8, !noalias !10198
  call void @llvm.experimental.noalias.scope.decl(metadata !10199)
  call void @llvm.experimental.noalias.scope.decl(metadata !10200)
  call void @llvm.experimental.noalias.scope.decl(metadata !10201)
  %i.rl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout4flow20layout_fragment_impl7___CACHE, i64 112), align 8, !alias.scope !10201, !noalias !10202, !noundef !41
  %i.rm = icmp eq i64 %i.rl, 0
  br i1 %i.rm, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, label %bb.ct

bb.ct:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.rn = mul i64 %i.ee, -1065810590584100411
  %i.ro = add i64 %i.rn, %i.ef
  %i.rp = mul i64 %i.ro, -1065810590584100411     ; 2 uses
  %i.rq = call noundef i64 @llvm.fshl.i64(i64 %i.rp, i64 %i.rp, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10203)
  call void @llvm.experimental.noalias.scope.decl(metadata !10204)
  %i.rr = lshr i64 %i.rq, 57
  %i.rs = trunc nuw nsw i64 %i.rr to i8
  %i.rt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout4flow20layout_fragment_impl7___CACHE, i64 96), align 8, !alias.scope !10205, !noalias !10206, !noundef !41 ; 2 uses
  %i.ru = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout4flow20layout_fragment_impl7___CACHE, i64 88), align 8, !alias.scope !10205, !noalias !10206, !nonnull !41, !noundef !41 ; 2 uses
  %i.rv = insertelement <16 x i8> poison, i8 %i.rs, i64 0
  %i.rw = shufflevector <16 x i8> %i.rv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cw, %bb.ct
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ct ], [ %i.sn, %bb.cw ]
  %.pn.i.i.i.i = phi i64 [ %i.rq, %bb.ct ], [ %i.so, %bb.cw ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.rt ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.rx, align 1, !noalias !10207 ; 2 uses
  %i.ry = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.rw
  %i.rz = bitcast <16 x i1> %i.ry to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.rz, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i63

.lr.ph.i.i.i.i63:                                 ; preds = %bb.cu, %bb.cv
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.sm, %bb.cv ], [ %i.rz, %bb.cu ] ; 3 uses
  %i.sa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.sb = zext nneg i16 %i.sa to i64
  %i.sc = add i64 %.sroa.01.0.i.i.i.i.i, %i.sb
  %i.sd = and i64 %i.sc, %i.rt
  %i.se = sub nsw i64 0, %i.sd
  %i.sf = getelementptr inbounds [32 x i8], ptr %i.ru, i64 %i.se ; 2 uses
  %i.sg = getelementptr inbounds i8, ptr %i.sf, i64 -32
  %.val2.i.i.i.i.i = load i128, ptr %i.sg, align 16, !noalias !10208, !noundef !41
  %i.sh = icmp eq i128 %i.ej, %.val2.i.i.i.i.i
  br i1 %i.sh, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.cv, !prof !43

._crit_edge.i.i.i.i:                              ; preds = %bb.cv, %bb.cu
  %i.si = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.sj = bitcast <16 x i1> %i.si to i16
  %i.sk = icmp eq i16 %i.sj, 0
  br i1 %i.sk, label %bb.cw, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, !prof !44

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i63
  %i.sl = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.sm = and i16 %i.sl, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.sm, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i63

bb.cw:                                            ; preds = %._crit_edge.i.i.i.i
  %i.sn = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.so = add i64 %.sroa.01.0.i.i.i.i.i, %i.sn
  br label %bb.cu

.body58.thread32.loopexit.i.i.loopexit:           ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i, %.sink.split.i.i.i.i.i.i.i, %bb.dk
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread32.loopexit.i.i

.body58.thread32.loopexit.i.i.loopexit.split-lp:  ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.em
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread32.loopexit.i.i

.body58.thread32.loopexit.i.i:                    ; preds = %.body58.thread32.loopexit.i.i.loopexit.split-lp, %.body58.thread32.loopexit.i.i.loopexit
  %.lcssa7490.i = phi i64 [ %.lcssa7486.i.ph, %.body58.thread32.loopexit.i.i.loopexit ], [ %.lcssa74.i, %.body58.thread32.loopexit.i.i.loopexit.split-lp ]
  %lpad.phi94 = phi { ptr, i32 } [ %lpad.loopexit93, %.body58.thread32.loopexit.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.body58.thread32.loopexit.i.i.loopexit.split-lp ]
  store i64 %.lcssa7490.i, ptr %i.sr, align 8, !noalias !10198
  br label %.body58.thread.i.i

.body58.thread32.loopexit.split-lp.i.i:           ; preds = %.invoke.i.i, %bb.dg
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread.i.i

.body58.i.i:                                      ; preds = %bb.fi, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i74.i.i, %bb.fl
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread29.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i.i.i63
  %i.sp = getelementptr inbounds i8, ptr %i.sf, i64 -16
  %i.sq = load i64, ptr %i.sp, align 8, !noalias !10202, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.8.0.i.i = phi i64 [ %i.sq, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.sroa.010.0.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %._crit_edge.i.i.i.i ]
  %i.sr = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 9 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.st = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %i.sv = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.sw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.sx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.sy = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.sz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ta = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.tb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.promoted.i.i = load i64, ptr %i.sr, align 8, !alias.scope !10199, !noalias !10209 ; 2 uses
  %i.te = load i64, ptr %i.ss, align 8, !noalias !10198 ; 8 uses
  %i.tf = icmp ult i64 %i.te, 82351536043346213
  %i.tg = load ptr, ptr %i.st, align 8, !noalias !10198, !nonnull !41 ; 4 uses
  %i.th = load i64, ptr %i.sx, align 8
  %i.ti = icmp eq i64 %i.th, 0
  %i.tj = load i64, ptr %i.sz, align 8            ; 2 uses
  %i.tk = load ptr, ptr %i.sy, align 8, !nonnull !41 ; 2 uses
  br label %select.unfold40.i.i.outer

select.unfold40.i.i.outer:                        ; preds = %select.unfold40.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i
  %.lcssa7486.i.ph = phi i64 [ %.promoted.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.lcssa74.i, %select.unfold40.i.i.outer.backedge ] ; 7 uses
  %.ph = phi i64 [ %.promoted.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.lcssa13.i, %select.unfold40.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ false, %select.unfold40.i.i.outer.backedge ]
  %.sroa.015.0.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ true, %select.unfold40.i.i.outer.backedge ]
  %.sroa.015.0.i.i.off090.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ 1, %select.unfold40.i.i.outer.backedge ]
  %.sroa.10.0.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %i.xh, %select.unfold40.i.i.outer.backedge ]
  %.sroa.17.0.i.i.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.sroa.88.0.copyload.i.lcssa.i, %select.unfold40.i.i.outer.backedge ]
  %.sroa.8.1.i.i.ph = phi i64 [ %.sroa.8.0.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %i.xh, %select.unfold40.i.i.outer.backedge ]
  %.sroa.010.1.i.i.ph = phi i64 [ %.sroa.010.0.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ 1, %select.unfold40.i.i.outer.backedge ]
  br label %select.unfold40.i.i.outer95

select.unfold40.i.i.outer95.backedge:             ; preds = %bb.dl, %._crit_edge.i.i52.i.i
  br label %select.unfold40.i.i.outer95

select.unfold40.i.i.outer95:                      ; preds = %select.unfold40.i.i.outer95.backedge, %select.unfold40.i.i.outer
  %.not27.i.i.ph96 = phi i1 [ %.not27.i.i.ph, %select.unfold40.i.i.outer ], [ false, %select.unfold40.i.i.outer95.backedge ]
  %.sroa.015.0.i.i.off0.ph97 = phi i1 [ %.sroa.015.0.i.i.off0.ph, %select.unfold40.i.i.outer ], [ true, %select.unfold40.i.i.outer95.backedge ]
  %.sroa.015.0.i.i.off090.ph98 = phi i64 [ %.sroa.015.0.i.i.off090.ph, %select.unfold40.i.i.outer ], [ 1, %select.unfold40.i.i.outer95.backedge ]
  %.sroa.10.0.i.i.ph99 = phi i64 [ %.sroa.10.0.i.i.ph, %select.unfold40.i.i.outer ], [ %.sroa.8.1.i.i, %select.unfold40.i.i.outer95.backedge ] ; 8 uses
  %.sroa.17.0.i.i.ph100 = phi i128 [ %.sroa.17.0.i.i.ph, %select.unfold40.i.i.outer ], [ %i.vi, %select.unfold40.i.i.outer95.backedge ] ; 2 uses
  %.sroa.8.1.i.i.ph101 = phi i64 [ %.sroa.8.1.i.i.ph, %select.unfold40.i.i.outer ], [ %.sroa.8.1.i.i, %select.unfold40.i.i.outer95.backedge ]
  %.sroa.010.1.i.i.ph102 = phi i64 [ %.sroa.010.1.i.i.ph, %select.unfold40.i.i.outer ], [ 1, %select.unfold40.i.i.outer95.backedge ]
  br label %select.unfold40.i.i

select.unfold40.i.i:                              ; preds = %select.unfold40.i.i.outer95, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.not27.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.not27.i.i.ph96, %select.unfold40.i.i.outer95 ] ; 2 uses
  %.sroa.015.0.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.015.0.i.i.off0.ph97, %select.unfold40.i.i.outer95 ] ; 2 uses
  %.sroa.015.0.i.i.off090 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.015.0.i.i.off090.ph98, %select.unfold40.i.i.outer95 ] ; 2 uses
  %.sroa.8.1.i.i = phi i64 [ %i.xa, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.8.1.i.i.ph101, %select.unfold40.i.i.outer95 ] ; 7 uses
  %.sroa.010.1.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.010.1.i.i.ph102, %select.unfold40.i.i.outer95 ] ; 3 uses
  %i.tl = trunc nuw i64 %.sroa.010.1.i.i to i1
  %or.cond.i.i = select i1 %.not27.i.i, i1 %i.tl, i1 false
  br i1 %or.cond.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %select.unfold40.i.i
  call void @llvm.assume(i1 %i.tf)
  %i.tm = icmp ult i64 %.ph, %i.te
  br i1 %i.tm, label %.lr.ph.i.i.i65, label %.loopexit51.i.i

.lr.ph.i.i.i65:                                   ; preds = %bb.cx
  %i.tn = getelementptr inbounds nuw [112 x i8], ptr %i.tg, i64 %.ph ; 3 uses
  %.sroa.04.0.copyload.i76.i = load i16, ptr %i.tn, align 16, !noalias !10210 ; 2 uses
  %.sroa.88.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 96
  %.sroa.88.0.copyload.i78.i = load i128, ptr %.sroa.88.0..sroa_idx.i77.i, align 16, !noalias !10210
  store i16 -1, ptr %i.tn, align 16, !noalias !10211
  %.not.i37.i79.i = icmp eq i16 %.sroa.04.0.copyload.i76.i, -1
  br i1 %.not.i37.i79.i, label %.lr.ph.i68.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i

.lr.ph.i68.preheader:                             ; preds = %.lr.ph.i.i.i65
  %i.to = add nuw nsw i64 %.ph, 1                 ; 2 uses
  %exitcond.not.i.i.i79 = icmp eq i64 %i.to, %i.te
  br i1 %exitcond.not.i.i.i79, label %.loopexit51.i.i, label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph.i68.preheader, %.lr.ph.i68
  %i.tp = phi i64 [ %i.tr, %.lr.ph.i68 ], [ %i.to, %.lr.ph.i68.preheader ] ; 4 uses
  %i.tq = getelementptr inbounds nuw [112 x i8], ptr %i.tg, i64 %i.tp ; 3 uses
  %.sroa.04.0.copyload.i.i = load i16, ptr %i.tq, align 16, !noalias !10210 ; 2 uses
  %.sroa.88.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 96
  %.sroa.88.0.copyload.i.i = load i128, ptr %.sroa.88.0..sroa_idx.i.i, align 16, !noalias !10210
  store i16 -1, ptr %i.tq, align 16, !noalias !10211
  %.not.i37.i.i = icmp eq i16 %.sroa.04.0.copyload.i.i, -1
  br i1 %.not.i37.i.i, label %.lr.ph.i68, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i

.lr.ph.i68:                                       ; preds = %.lr.ph80
  %i.tr = add nuw nsw i64 %i.tp, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.tr, %i.te
  br i1 %exitcond.not.i.i.i, label %.loopexit51.i.i, label %.lr.ph80

bb.cy:                                            ; preds = %select.unfold40.i.i
  %i.ts = icmp sgt i64 %.sroa.8.1.i.i, -1
  br i1 %i.ts, label %bb.cz, label %.loopexit.i.sink.split.i

bb.cz:                                            ; preds = %bb.cy
  %.val36.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout4flow20layout_fragment_impl7___CACHE, i64 24), align 8, !noalias !10202, !noundef !41
  %i.tt = icmp ult i64 %.sroa.8.1.i.i, %.val36.i.i
  br i1 %i.tt, label %bb.da, label %.invoke.i.i, !prof !43

bb.da:                                            ; preds = %bb.cz
  %.val35.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout4flow20layout_fragment_impl7___CACHE, i64 16), align 8, !noalias !10202, !nonnull !41, !noundef !41
  %i.tu = getelementptr inbounds nuw [128 x i8], ptr %.val35.i.i, i64 %.sroa.8.1.i.i ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 16, !range !52, !noalias !10212, !noundef !41
  %.not.i38.i.i = icmp eq i64 %i.tv, 2
  br i1 %.not.i38.i.i, label %.invoke.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i, !prof !44

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.da
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !10213)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10214
  store i64 8317987319222330741, ptr %i.f, align 8, !noalias !10214
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !10214
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !10214
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !10214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i.i, i8 0, i64 40, i1 false), !noalias !10214
  invoke fastcc void @_RINvXs3_NvNtCsloFShupyl5J_6comemo5inputsa_1__INtB6_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB11_13introspection12introspector1__12___ComemoCallNtNvNtB11_6engine1__12___ComemoCallNtNvB2O_s_1__12___ComemoCallNtNvB2O_s0_1__12___ComemoCalluNtNvNtB1T_7locator1__12___ComemoCalluuuuENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.tw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f) #59
          to label %.noexc39.i.i unwind label %.body58.thread32.loopexit.i.i.loopexit, !noalias !10202

.noexc39.i.i:                                     ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.tx = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f) #59, !noalias !10214 ; 2 uses
  %i.ty = extractvalue { i64, i64 } %i.tx, 0      ; 2 uses
  %i.tz = extractvalue { i64, i64 } %i.tx, 1      ; 2 uses
  %i.ua = zext i64 %i.ty to i128
  %i.ub = zext i64 %i.tz to i128
  %i.uc = shl nuw i128 %i.ub, 64
  %i.ud = or disjoint i128 %i.uc, %i.ua
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10214
  call void @llvm.experimental.noalias.scope.decl(metadata !10215)
  br i1 %i.ti, label %.loopexit.i.sink.split.i, label %bb.db

bb.db:                                            ; preds = %.noexc39.i.i
  %i.ue = mul i64 %i.ty, -1065810590584100411
  %i.uf = add i64 %i.ue, %i.tz
  %i.ug = mul i64 %i.uf, -1065810590584100411     ; 2 uses
  %i.uh = call noundef i64 @llvm.fshl.i64(i64 %i.ug, i64 %i.ug, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10216)
  call void @llvm.experimental.noalias.scope.decl(metadata !10217)
  %i.ui = lshr i64 %i.uh, 57
  %i.uj = trunc nuw nsw i64 %i.ui to i8
  %i.uk = insertelement <16 x i8> poison, i8 %i.uj, i64 0
  %i.ul = shufflevector <16 x i8> %i.uk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dc

bb.dc:                                            ; preds = %bb.de, %bb.db
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.db ], [ %i.vc, %bb.de ]
  %.pn.i.i.i.i.i = phi i64 [ %i.uh, %bb.db ], [ %i.vd, %bb.de ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.tj ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.tk, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.um, align 1, !noalias !10218 ; 2 uses
  %i.un = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.ul
  %i.uo = bitcast <16 x i1> %i.un to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.uo, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dc, %bb.dd
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.vb, %bb.dd ], [ %i.uo, %bb.dc ] ; 3 uses
  %i.up = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.uq = zext nneg i16 %i.up to i64
  %i.ur = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.uq
  %i.us = and i64 %i.ur, %i.tj
  %i.ut = sub nsw i64 0, %i.us
  %i.uu = getelementptr inbounds [32 x i8], ptr %i.tk, i64 %i.ut ; 2 uses
  %i.uv = getelementptr inbounds i8, ptr %i.uu, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.uv, align 16, !noalias !10219, !noundef !41
  %i.uw = icmp eq i128 %i.ud, %.val2.i.i.i.i.i.i
  br i1 %i.uw, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.dd, !prof !43

._crit_edge.i.i.i.i.i:                            ; preds = %bb.dd, %bb.dc
  %i.ux = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.uy = bitcast <16 x i1> %i.ux to i16
  %i.uz = icmp eq i16 %i.uy, 0
  br i1 %i.uz, label %bb.de, label %.loopexit.i.sink.split.i, !prof !44

bb.dd:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.va = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.vb = and i16 %i.va, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.vb, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.de:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.vc = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.vd = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.vc
  br label %bb.dc

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ve = getelementptr inbounds i8, ptr %i.uu, i64 -16
  %i.vf = load i64, ptr %i.ve, align 8, !noalias !10220, !noundef !41 ; 3 uses
  %i.vg = icmp ult i64 %i.vf, %i.te
  br i1 %i.vg, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.vh = getelementptr inbounds nuw [112 x i8], ptr %i.tg, i64 %i.vf ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load i16, ptr %i.vh, align 16, !noalias !10220 ; 3 uses
  store i16 -1, ptr %i.vh, align 16, !noalias !10220
  %.not10.i.i.i = icmp eq i16 %.sroa.03.0.copyload.i.i.i, -1
  br i1 %.not10.i.i.i, label %.loopexit.i.sink.split.i, label %bb.dh

bb.dg:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  store i64 %.lcssa7486.i.ph, ptr %i.sr, align 8, !noalias !10198
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.vf, i64 noundef %i.te, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #53
          to label %.noexc40.i.i unwind label %.body58.thread32.loopexit.split-lp.i.i, !noalias !10202

.noexc40.i.i:                                     ; preds = %bb.dg
  unreachable

bb.dh:                                            ; preds = %bb.df
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vh, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %.sroa.48.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(110) %.sroa.5.0..sroa_idx.i.i.i, i64 110, i1 false), !noalias !10220
  store i16 %.sroa.03.0.copyload.i.i.i, ptr %i.g, align 16, !noalias !10214
  %i.vi = load i128, ptr %i.ta, align 16, !noalias !10214, !noundef !41 ; 4 uses
  switch i16 %.sroa.03.0.copyload.i.i.i, label %bb.dl [
    i16 2, label %bb.di
    i16 4, label %bb.dk
  ]

bb.di:                                            ; preds = %bb.dh
  %i.vj = load i64, ptr %i.tc, align 16, !range !77, !alias.scope !10221, !noalias !10214, !noundef !41 ; 3 uses
  %i.vk = icmp ne i64 %i.vj, 16
  call void @llvm.assume(i1 %i.vk)
  %i.vl = add nsw i64 %i.vj, -11
  %i.vm = icmp samesign ugt i64 %i.vj, 10
  %i.vn = select i1 %i.vm, i64 %i.vl, i64 5
  switch i64 %i.vn, label %bb.dl [
    i64 0, label %bb.dj
    i64 1, label %bb.dj
    i64 2, label %bb.dj
    i64 5, label %.sink.split.i.i.i.i.i.i.i
  ]

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.dj, %bb.di
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.td, %bb.dj ], [ %i.tc, %bb.di ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(64) %.sink.i.i.i.i.i.i.i)
          to label %bb.dl unwind label %.body58.thread32.loopexit.i.i.loopexit, !noalias !10202

bb.dj:                                            ; preds = %bb.di, %bb.di, %bb.di
  br label %.sink.split.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dh
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.tb)
          to label %bb.dl unwind label %.body58.thread32.loopexit.i.i.loopexit, !noalias !10202

bb.dl:                                            ; preds = %bb.dk, %.sink.split.i.i.i.i.i.i.i, %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10214
  call void @llvm.experimental.noalias.scope.decl(metadata !10222)
  %i.vo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout4flow20layout_fragment_impl7___CACHE, i64 144), align 8, !alias.scope !10222, !noalias !10202, !noundef !41
  %i.vp = icmp eq i64 %i.vo, 0
  br i1 %i.vp, label %select.unfold40.i.i.outer95.backedge, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.vq = mul i64 %.sroa.8.1.i.i, -1065810590584100411
  %i.vr = trunc i128 %i.vi to i64
  %i.vs = add i64 %i.vq, %i.vr
  %i.vt = mul i64 %i.vs, -1065810590584100411
  %i.vu = lshr i128 %i.vi, 64
  %i.vv = trunc nuw i128 %i.vu to i64
  %i.vw = add i64 %i.vt, %i.vv
  %i.vx = mul i64 %i.vw, -1065810590584100411     ; 2 uses
  %i.vy = call noundef i64 @llvm.fshl.i64(i64 %i.vx, i64 %i.vx, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10223)
  call void @llvm.experimental.noalias.scope.decl(metadata !10224)
  %i.vz = lshr i64 %i.vy, 57
  %i.wa = trunc nuw nsw i64 %i.vz to i8
  %i.wb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout4flow20layout_fragment_impl7___CACHE, i64 128), align 8, !alias.scope !10225, !noalias !10226, !noundef !41 ; 2 uses
  %i.wc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout4flow20layout_fragment_impl7___CACHE, i64 120), align 8, !alias.scope !10225, !noalias !10226, !nonnull !41, !noundef !41 ; 2 uses
  %i.wd = insertelement <16 x i8> poison, i8 %i.wa, i64 0
  %i.we = shufflevector <16 x i8> %i.wd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %bb.dm
  %.sroa.9.0.i.i.i43.i.i = phi i64 [ 0, %bb.dm ], [ %i.wx, %bb.dp ]
  %.pn.i.i44.i.i = phi i64 [ %i.vy, %bb.dm ], [ %i.wy, %bb.dp ]
  %.sroa.01.0.i.i.i45.i.i = and i64 %.pn.i.i44.i.i, %i.wb ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.sroa.01.0.i.i.i45.i.i
  %.sroa.0.0.copyload.i24.i.i46.i.i = load <16 x i8>, ptr %i.wf, align 1, !noalias !10227 ; 2 uses
  %i.wg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i46.i.i, %i.we
  %i.wh = bitcast <16 x i1> %i.wg to i16          ; 2 uses
  %.not.i.not30.i.i47.i.i = icmp eq i16 %i.wh, 0
  br i1 %.not.i.not30.i.i47.i.i, label %._crit_edge.i.i52.i.i, label %.lr.ph.i.i48.i.i

.lr.ph.i.i48.i.i:                                 ; preds = %bb.dn, %bb.do
  %.sroa.06.0.i31.i.i49.i.i = phi i16 [ %i.ww, %bb.do ], [ %i.wh, %bb.dn ] ; 3 uses
  %i.wi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i49.i.i, i1 true)
  %i.wj = zext nneg i16 %i.wi to i64
  %i.wk = add i64 %.sroa.01.0.i.i.i45.i.i, %i.wj
  %i.wl = and i64 %i.wk, %i.wb
  %i.wm = sub nsw i64 0, %i.wl
end_hunk_1
begin_hunk_2_@_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTINtNtB4_5track7TrackedDNtCsdaEETE4DqmE_13typst_library5WorldEL_NtNvB1p_1__12___ComemoCallERINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB1p_7LibraryEIB11_DNtNtNtB1p_13introspection12introspector12IntrospectorEL_NtNvB3A_1__12___ComemoCallEIB11_NtNtB1p_6engine6TracedNtNvB50_1__12___ComemoCallEINtB13_10TrackedMutNtB50_4SinkNtNvB50_s_1__12___ComemoCallEIB11_NtB50_5RouteNtNvB50_s0_1__12___ComemoCallERSTRNtNtNtB1p_11foundations7content7ContentNtNtB7B_6styles10StyleChainEIB11_NtNtB3C_7locator7LocatorNtNvB8J_1__12___ComemoCallEB8a_EEINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEENCNvBaN_20layout_page_run_impl0EBaR_:bb.a
  br label %.body

.body:                                            ; preds = %.body58.thread.i.i, %bb.qx, %bb.oq
  %eh.lpad-body = phi { ptr, i32 } [ %i.awy, %bb.oq ], [ %.pn.i.i, %.body58.thread.i.i ], [ %lpad.thr_comm.i61, %bb.qx ] ; 2 uses
  %i.awz = cmpxchg ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.awz, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtB3C_6engine1__12___ComemoCallNtNvB5p_s_1__12___ComemoCallNtNvB5p_s0_1__12___ComemoCalluNtNvNtB4u_7locator1__12___ComemoCalluEINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEEB8r_.exit, label %bb.or, !prof !43

bb.or:                                            ; preds = %.body
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtB3C_6engine1__12___ComemoCallNtNvB5p_s_1__12___ComemoCallNtNvB5p_s0_1__12___ComemoCalluNtNvNtB4u_7locator1__12___ComemoCalluEINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEEB8r_.exit unwind label %bb.rb

bb.os:                                            ; preds = %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.axa = cmpxchg weak ptr %i.ko, i8 0, i8 1 acquire monotonic, align 1, !noalias !11624
  %i.axb = extractvalue { i8, i1 } %i.axa, 1
  br i1 %i.axb, label %.noexc.i62, label %bb.ot, !prof !43

bb.ot:                                            ; preds = %bb.os
  %i.axc = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.ko, i64 undef, i32 noundef -1)
          to label %.noexc.i62 unwind label %bb.qx, !noalias !11625 ; 0 uses

.noexc.i62:                                       ; preds = %bb.ot, %bb.os
  %i.axd = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.axd, i64 64, i1 false), !noalias !11625
  store i64 0, ptr %i.axd, align 8, !noalias !11624
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11624
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 0, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !11624
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) @97, i64 32, i1 false), !noalias !11624
  %.sroa.5.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i63, align 8, !noalias !11624
  %i.axe = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axf, ptr noundef nonnull align 8 dereferenceable(24) %i.axe, i64 24, i1 false), !noalias !11625
  store i64 0, ptr %i.axe, align 8, !noalias !11624
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 224
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !11624
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !11624
  %i.axg = cmpxchg ptr %i.ko, i8 1, i8 0 release monotonic, align 1, !noalias !11624
  %i.axh = extractvalue { i8, i1 } %i.axg, 1
  br i1 %i.axh, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.ou, !prof !43

bb.ou:                                            ; preds = %.noexc.i62
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.ko, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.qx, !noalias !11625

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.ou, %.noexc.i62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !11625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.axf, i64 24, i1 false), !noalias !11625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.axi = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axi, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  %i.axj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.axj, align 8, !noalias !11625
  call void @llvm.experimental.noalias.scope.decl(metadata !11626)
  call void @llvm.experimental.noalias.scope.decl(metadata !11627)
  call void @llvm.experimental.noalias.scope.decl(metadata !11628)
  %i.axk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i64 112), align 8, !alias.scope !11628, !noalias !11629, !noundef !41
  %i.axl = icmp eq i64 %i.axk, 0
  br i1 %i.axl, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, label %bb.ov

bb.ov:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.axm = mul i64 %i.fo, -1065810590584100411
  %i.axn = add i64 %i.axm, %i.fp
  %i.axo = mul i64 %i.axn, -1065810590584100411   ; 2 uses
  %i.axp = call noundef i64 @llvm.fshl.i64(i64 %i.axo, i64 %i.axo, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11630)
  call void @llvm.experimental.noalias.scope.decl(metadata !11631)
  %i.axq = lshr i64 %i.axp, 57
  %i.axr = trunc nuw nsw i64 %i.axq to i8
  %i.axs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i64 96), align 8, !alias.scope !11632, !noalias !11633, !noundef !41 ; 2 uses
  %i.axt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i64 88), align 8, !alias.scope !11632, !noalias !11633, !nonnull !41, !noundef !41 ; 2 uses
  %i.axu = insertelement <16 x i8> poison, i8 %i.axr, i64 0
  %i.axv = shufflevector <16 x i8> %i.axu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ow

bb.ow:                                            ; preds = %bb.oy, %bb.ov
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ov ], [ %i.aym, %bb.oy ]
  %.pn.i.i.i.i = phi i64 [ %i.axp, %bb.ov ], [ %i.ayn, %bb.oy ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.axs ; 3 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axt, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.axw, align 1, !noalias !11634 ; 2 uses
  %i.axx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.axv
  %i.axy = bitcast <16 x i1> %i.axx to i16        ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.axy, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %bb.ow, %bb.ox
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.ayl, %bb.ox ], [ %i.axy, %bb.ow ] ; 3 uses
  %i.axz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.aya = zext nneg i16 %i.axz to i64
  %i.ayb = add i64 %.sroa.01.0.i.i.i.i.i, %i.aya
  %i.ayc = and i64 %i.ayb, %i.axs
  %i.ayd = sub nsw i64 0, %i.ayc
  %i.aye = getelementptr inbounds [32 x i8], ptr %i.axt, i64 %i.ayd ; 2 uses
  %i.ayf = getelementptr inbounds i8, ptr %i.aye, i64 -32
  %.val2.i.i.i.i.i = load i128, ptr %i.ayf, align 16, !noalias !11635, !noundef !41
  %i.ayg = icmp eq i128 %i.ft, %.val2.i.i.i.i.i
  br i1 %i.ayg, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.ox, !prof !43

._crit_edge.i.i.i.i:                              ; preds = %bb.ox, %bb.ow
  %i.ayh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ayi = bitcast <16 x i1> %i.ayh to i16
  %i.ayj = icmp eq i16 %i.ayi, 0
  br i1 %i.ayj, label %bb.oy, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, !prof !44

bb.ox:                                            ; preds = %.lr.ph.i.i.i.i64
  %i.ayk = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.ayl = and i16 %i.ayk, %.sroa.06.0.i31.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ayl, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i64

bb.oy:                                            ; preds = %._crit_edge.i.i.i.i
  %i.aym = add i64 %.sroa.9.0.i.i.i.i.i, 16       ; 2 uses
  %i.ayn = add i64 %.sroa.01.0.i.i.i.i.i, %i.aym
  br label %bb.ow

.body58.i.i:                                      ; preds = %bb.qr, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i63.i.i, %bb.qu
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i.i.i64
  %i.ayo = getelementptr inbounds i8, ptr %i.aye, i64 -16
  %i.ayp = load i64, ptr %i.ayo, align 8, !noalias !11629, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.8.0.i.i = phi i64 [ %i.ayp, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.sroa.010.0.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %._crit_edge.i.i.i.i ]
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ays = load i64, ptr %i.ayr, align 8, !alias.scope !11626, !noalias !11636 ; 5 uses
  %i.ayt = icmp ult i64 %i.ays, 82351536043346213
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ayv = load ptr, ptr %i.ayu, align 8, !alias.scope !11626, !noalias !11636, !nonnull !41 ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.promoted.i.i = load i64, ptr %i.ayq, align 8, !alias.scope !11626, !noalias !11636 ; 2 uses
  br label %select.unfold31.i.i.outer

select.unfold31.i.i.outer:                        ; preds = %select.unfold31.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i
  %.lcssa4961.i.ph = phi i64 [ %.promoted.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.lcssa49.i, %select.unfold31.i.i.outer.backedge ]
  %.ph = phi i64 [ %.promoted.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.lcssa13.i, %select.unfold31.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ false, %select.unfold31.i.i.outer.backedge ]
  %.sroa.013.0.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ true, %select.unfold31.i.i.outer.backedge ]
  %.sroa.013.0.i.i.off0177.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ 1, %select.unfold31.i.i.outer.backedge ]
  %.sroa.10.0.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %i.bbz, %select.unfold31.i.i.outer.backedge ]
  %.sroa.17.0.i.i.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.sroa.87.0.copyload.i.lcssa.i, %select.unfold31.i.i.outer.backedge ]
  %.sroa.8.1.i.i.ph = phi i64 [ %.sroa.8.0.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %i.bbz, %select.unfold31.i.i.outer.backedge ]
  %.sroa.010.1.i.i.ph = phi i64 [ %.sroa.010.0.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ 1, %select.unfold31.i.i.outer.backedge ]
  br label %select.unfold31.i.i.outer182

select.unfold31.i.i.outer182.backedge:            ; preds = %bb.pe, %._crit_edge.i.i48.i.i
  br label %select.unfold31.i.i.outer182

select.unfold31.i.i.outer182:                     ; preds = %select.unfold31.i.i.outer182.backedge, %select.unfold31.i.i.outer
  %.not27.i.i.ph183 = phi i1 [ %.not27.i.i.ph, %select.unfold31.i.i.outer ], [ false, %select.unfold31.i.i.outer182.backedge ]
  %.sroa.013.0.i.i.off0.ph184 = phi i1 [ %.sroa.013.0.i.i.off0.ph, %select.unfold31.i.i.outer ], [ true, %select.unfold31.i.i.outer182.backedge ]
  %.sroa.013.0.i.i.off0177.ph185 = phi i64 [ %.sroa.013.0.i.i.off0177.ph, %select.unfold31.i.i.outer ], [ 1, %select.unfold31.i.i.outer182.backedge ]
  %.sroa.10.0.i.i.ph186 = phi i64 [ %.sroa.10.0.i.i.ph, %select.unfold31.i.i.outer ], [ %.sroa.8.1.i.i, %select.unfold31.i.i.outer182.backedge ] ; 8 uses
  %.sroa.17.0.i.i.ph187 = phi i128 [ %.sroa.17.0.i.i.ph, %select.unfold31.i.i.outer ], [ %i.azp, %select.unfold31.i.i.outer182.backedge ] ; 2 uses
  %.sroa.8.1.i.i.ph188 = phi i64 [ %.sroa.8.1.i.i.ph, %select.unfold31.i.i.outer ], [ %.sroa.8.1.i.i, %select.unfold31.i.i.outer182.backedge ]
  %.sroa.010.1.i.i.ph189 = phi i64 [ %.sroa.010.1.i.i.ph, %select.unfold31.i.i.outer ], [ 1, %select.unfold31.i.i.outer182.backedge ]
  br label %select.unfold31.i.i

select.unfold31.i.i:                              ; preds = %select.unfold31.i.i.outer182, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.not27.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.not27.i.i.ph183, %select.unfold31.i.i.outer182 ] ; 2 uses
  %.sroa.013.0.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.013.0.i.i.off0.ph184, %select.unfold31.i.i.outer182 ] ; 2 uses
  %.sroa.013.0.i.i.off0177 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.013.0.i.i.off0177.ph185, %select.unfold31.i.i.outer182 ] ; 2 uses
  %.sroa.8.1.i.i = phi i64 [ %i.bbc, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.8.1.i.i.ph188, %select.unfold31.i.i.outer182 ] ; 7 uses
  %.sroa.010.1.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.010.1.i.i.ph189, %select.unfold31.i.i.outer182 ] ; 3 uses
  %i.aza = trunc nuw i64 %.sroa.010.1.i.i to i1
  %or.cond.i.i65 = select i1 %.not27.i.i, i1 %i.aza, i1 false
  br i1 %or.cond.i.i65, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %select.unfold31.i.i
  call void @llvm.assume(i1 %i.ayt)
  %i.azb = icmp ult i64 %.ph, %i.ays
  br i1 %i.azb, label %.lr.ph.i.i.preheader.i, label %.loopexit.i.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.oz
  %i.azc = getelementptr inbounds nuw [112 x i8], ptr %i.ayv, i64 %.ph ; 3 uses
  %.sroa.03.0.copyload.i51.i = load i16, ptr %i.azc, align 16, !noalias !11637 ; 2 uses
  %.sroa.87.0..sroa_idx.i52.i = getelementptr inbounds nuw i8, ptr %i.azc, i64 96
  %.sroa.87.0.copyload.i53.i = load i128, ptr %.sroa.87.0..sroa_idx.i52.i, align 16, !noalias !11637
  store i16 -1, ptr %i.azc, align 16, !noalias !11638
  %.not.i37.i54.i = icmp eq i16 %.sroa.03.0.copyload.i51.i, -1
  br i1 %.not.i37.i54.i, label %.lr.ph.i77.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i

.lr.ph.i77.preheader:                             ; preds = %.lr.ph.i.i.preheader.i
  %i.azd = add nuw nsw i64 %.ph, 1                ; 2 uses
  %exitcond.not.i.i.i160 = icmp eq i64 %i.azd, %i.ays
  br i1 %exitcond.not.i.i.i160, label %.loopexit.i.loopexit.i, label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i77.preheader, %.lr.ph.i77
  %i.aze = phi i64 [ %i.azg, %.lr.ph.i77 ], [ %i.azd, %.lr.ph.i77.preheader ] ; 4 uses
  %i.azf = getelementptr inbounds nuw [112 x i8], ptr %i.ayv, i64 %i.aze ; 3 uses
  %.sroa.03.0.copyload.i.i = load i16, ptr %i.azf, align 16, !noalias !11637 ; 2 uses
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.azf, i64 96
  %.sroa.87.0.copyload.i.i = load i128, ptr %.sroa.87.0..sroa_idx.i.i, align 16, !noalias !11637
  store i16 -1, ptr %i.azf, align 16, !noalias !11638
  %.not.i37.i.i = icmp eq i16 %.sroa.03.0.copyload.i.i, -1
  br i1 %.not.i37.i.i, label %.lr.ph.i77, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i

.lr.ph.i77:                                       ; preds = %.lr.ph.i.i.i78
  %i.azg = add nuw nsw i64 %i.aze, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.azg, %i.ays
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.loopexit.i, label %.lr.ph.i.i.i78

bb.pa:                                            ; preds = %select.unfold31.i.i
  %i.azh = icmp sgt i64 %.sroa.8.1.i.i, -1
  br i1 %i.azh, label %bb.pb, label %.loopexit44.i.i

bb.pb:                                            ; preds = %bb.pa
  %.val36.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i64 24), align 8, !noalias !11629, !noundef !41
  %i.azi = icmp ult i64 %.sroa.8.1.i.i, %.val36.i.i
  br i1 %i.azi, label %bb.pc, label %.invoke.i.i, !prof !43

bb.pc:                                            ; preds = %bb.pb
  %.val35.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i64 16), align 8, !noalias !11629, !nonnull !41, !noundef !41
  %i.azj = getelementptr inbounds nuw [128 x i8], ptr %.val35.i.i, i64 %.sroa.8.1.i.i ; 2 uses
  %i.azk = load i64, ptr %i.azj, align 16, !range !52, !noalias !11639, !noundef !41
  %.not.i38.i.i = icmp eq i64 %i.azk, 2
  br i1 %.not.i38.i.i, label %.invoke.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i, !prof !44

.invoke.i.i:                                      ; preds = %bb.px, %bb.pw, %bb.pc, %bb.pb
  %i.azl = phi ptr [ @411, %bb.pc ], [ @411, %bb.pb ], [ @410, %bb.pw ], [ @410, %bb.px ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @392, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.azl) #53
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !11629

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.pc
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11629
  invoke fastcc void @_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluEE7extractCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.azm)
          to label %bb.pd unwind label %.loopexit43.i.i.loopexit, !noalias !11636

bb.pd:                                            ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.azn = load i128, ptr %i.c, align 16, !range !42, !noalias !11629, !noundef !41
  %i.azo = trunc nuw i128 %i.azn to i1
  br i1 %i.azo, label %bb.pe, label %bb.pj

bb.pe:                                            ; preds = %bb.pd
  %i.azp = load i128, ptr %i.ayz, align 16, !noalias !11629, !noundef !41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11629
  call void @llvm.experimental.noalias.scope.decl(metadata !11640)
  %i.azq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i64 144), align 8, !alias.scope !11640, !noalias !11629, !noundef !41
  %i.azr = icmp eq i64 %i.azq, 0
  br i1 %i.azr, label %select.unfold31.i.i.outer182.backedge, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.azs = mul i64 %.sroa.8.1.i.i, -1065810590584100411
  %i.azt = trunc i128 %i.azp to i64
  %i.azu = add i64 %i.azs, %i.azt
  %i.azv = mul i64 %i.azu, -1065810590584100411
  %i.azw = lshr i128 %i.azp, 64
  %i.azx = trunc nuw i128 %i.azw to i64
  %i.azy = add i64 %i.azv, %i.azx
  %i.azz = mul i64 %i.azy, -1065810590584100411   ; 2 uses
  %i.baa = call noundef i64 @llvm.fshl.i64(i64 %i.azz, i64 %i.azz, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11641)
  call void @llvm.experimental.noalias.scope.decl(metadata !11642)
  %i.bab = lshr i64 %i.baa, 57
  %i.bac = trunc nuw nsw i64 %i.bab to i8
  %i.bad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i64 128), align 8, !alias.scope !11643, !noalias !11644, !noundef !41 ; 2 uses
  %i.bae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout5pages3run20layout_page_run_impl7___CACHE, i64 120), align 8, !alias.scope !11643, !noalias !11644, !nonnull !41, !noundef !41 ; 2 uses
  %i.baf = insertelement <16 x i8> poison, i8 %i.bac, i64 0
  %i.bag = shufflevector <16 x i8> %i.baf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.pg

bb.pg:                                            ; preds = %bb.pi, %bb.pf
  %.sroa.9.0.i.i.i39.i.i = phi i64 [ 0, %bb.pf ], [ %i.baz, %bb.pi ]
  %.pn.i.i40.i.i = phi i64 [ %i.baa, %bb.pf ], [ %i.bba, %bb.pi ]
  %.sroa.01.0.i.i.i41.i.i = and i64 %.pn.i.i40.i.i, %i.bad ; 3 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bae, i64 %.sroa.01.0.i.i.i41.i.i
  %.sroa.0.0.copyload.i24.i.i42.i.i = load <16 x i8>, ptr %i.bah, align 1, !noalias !11645 ; 2 uses
  %i.bai = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i, %i.bag
  %i.baj = bitcast <16 x i1> %i.bai to i16        ; 2 uses
  %.not.i.not30.i.i43.i.i = icmp eq i16 %i.baj, 0
  br i1 %.not.i.not30.i.i43.i.i, label %._crit_edge.i.i48.i.i, label %.lr.ph.i.i44.i.i

.lr.ph.i.i44.i.i:                                 ; preds = %bb.pg, %bb.ph
  %.sroa.06.0.i31.i.i45.i.i = phi i16 [ %i.bay, %bb.ph ], [ %i.baj, %bb.pg ] ; 3 uses
  %i.bak = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i45.i.i, i1 true)
  %i.bal = zext nneg i16 %i.bak to i64
  %i.bam = add i64 %.sroa.01.0.i.i.i41.i.i, %i.bal
  %i.ban = and i64 %i.bam, %i.bad
  %i.bao = sub nsw i64 0, %i.ban
  %i.bap = getelementptr inbounds [48 x i8], ptr %i.bae, i64 %i.bao ; 3 uses
  %i.baq = getelementptr inbounds i8, ptr %i.bap, i64 -48
  %.val2.i.i.i46.i.i = load i64, ptr %i.baq, align 8, !noalias !11646, !noundef !41
  %i.bar = getelementptr i8, ptr %i.bap, i64 -32
  %.val3.i.i.i.i.i79 = load i128, ptr %i.bar, align 16, !noalias !11646
  %i.bas = icmp eq i64 %.sroa.8.1.i.i, %.val2.i.i.i46.i.i
  %i.bat = icmp eq i128 %i.azp, %.val3.i.i.i.i.i79
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.bas, i1 %i.bat, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.ph, !prof !43

._crit_edge.i.i48.i.i:                            ; preds = %bb.ph, %bb.pg
  %i.bau = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i, splat (i8 -1)
  %i.bav = bitcast <16 x i1> %i.bau to i16
  %i.baw = icmp eq i16 %i.bav, 0
  br i1 %i.baw, label %bb.pi, label %select.unfold31.i.i.outer182.backedge, !prof !44

bb.ph:                                            ; preds = %.lr.ph.i.i44.i.i
  %i.bax = add i16 %.sroa.06.0.i31.i.i45.i.i, -1
  %i.bay = and i16 %i.bax, %.sroa.06.0.i31.i.i45.i.i ; 2 uses
  %.not.i.not.i.i47.i.i = icmp eq i16 %i.bay, 0
  br i1 %.not.i.not.i.i47.i.i, label %._crit_edge.i.i48.i.i, label %.lr.ph.i.i44.i.i

bb.pi:                                            ; preds = %._crit_edge.i.i48.i.i
  %i.baz = add i64 %.sroa.9.0.i.i.i39.i.i, 16     ; 2 uses
  %i.bba = add i64 %.sroa.01.0.i.i.i41.i.i, %i.baz
  br label %bb.pg

bb.pj:                                            ; preds = %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11629
  br label %.loopexit44.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i44.i.i
  %i.bbb = getelementptr inbounds i8, ptr %i.bap, i64 -16
  %i.bbc = load i64, ptr %i.bbb, align 8, !noalias !11629, !noundef !41
  br label %select.unfold31.i.i

.loopexit44.i.i:                                  ; preds = %bb.pa, %.loopexit.i.i, %bb.pj
  call void @llvm.experimental.noalias.scope.decl(metadata !11647)
  %i.bbd = load i64, ptr %i.axi, align 8, !range !70, !alias.scope !11648, !noalias !11649, !noundef !41 ; 5 uses
  %.not.i.i.i.i68 = icmp eq i64 %i.bbd, -1
  br i1 %.not.i.i.i.i68, label %bb.pr, label %bb.pk

bb.pk:                                            ; preds = %.loopexit44.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11650)
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i.i69 = load ptr, ptr %i.bbe, align 8, !alias.scope !11650, !noalias !11649, !nonnull !41, !noundef !41 ; 4 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val1.i.i70 = load i64, ptr %i.bbf, align 8, !alias.scope !11650, !noalias !11649, !noundef !41 ; 4 uses
  %i.bbg = icmp eq i64 %.val1.i.i70, 0
  br i1 %i.bbg, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i.i74, label %.lr.ph172

bb.pl:                                            ; preds = %.lr.ph172
  %i.bbh = icmp eq i64 %i.bbj, %.val1.i.i70
  br i1 %i.bbh, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i.i74, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.pk, %bb.pl
  %.sroa.0.0.i.i.i.i71170 = phi i64 [ %i.bbj, %bb.pl ], [ 0, %bb.pk ] ; 2 uses
  %i.bbi = getelementptr inbounds nuw [400 x i8], ptr %.val.i.i69, i64 %.sroa.0.0.i.i.i.i71170
  %i.bbj = add nuw nsw i64 %.sroa.0.0.i.i.i.i71170, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEBH_(ptr noalias nofree noundef align 8 dereferenceable(400) %i.bbi)
          to label %bb.pl unwind label %bb.pn, !noalias !11651

bb.pm:                                            ; preds = %.lr.ph175
  %i.bbk = add i64 %.sroa.0.1.i.i.i.i72173, 1     ; 2 uses
  %i.bbl = icmp eq i64 %i.bbk, %.val1.i.i70
  br i1 %i.bbl, label %.body.i.i73, label %.lr.ph175

bb.pn:                                            ; preds = %.lr.ph172
  %i.bbm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbn = icmp eq i64 %i.bbj, %.val1.i.i70
  br i1 %i.bbn, label %.body.i.i73, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.pn, %bb.pm
  %.sroa.0.1.i.i.i.i72173 = phi i64 [ %i.bbk, %bb.pm ], [ %i.bbj, %bb.pn ] ; 2 uses
  %i.bbo = getelementptr inbounds nuw [400 x i8], ptr %.val.i.i69, i64 %.sroa.0.1.i.i.i.i72173
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEBH_(ptr noalias nofree noundef align 8 dereferenceable(400) %i.bbo) #54
          to label %bb.pm unwind label %bb.po, !noalias !11651

bb.po:                                            ; preds = %.lr.ph175
  %i.bbp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !11651
  unreachable

.body.i.i73:                                      ; preds = %bb.pm, %bb.pn
  %i.bbq = icmp eq i64 %i.bbd, 0
  br i1 %i.bbq, label %.body5.i, label %bb.pp

bb.pp:                                            ; preds = %.body.i.i73
  %i.bbr = mul nuw i64 %i.bbd, 400
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i69, i64 noundef %i.bbr, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !11651
  br label %.body5.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i.i74: ; preds = %bb.pl, %bb.pk
  %i.bbs = icmp eq i64 %i.bbd, 0
  br i1 %i.bbs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1A_.exit.i.i.i, label %bb.pq

bb.pq:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i.i74
  %i.bbt = mul nuw i64 %i.bbd, 400
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i69, i64 noundef %i.bbt, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !11651
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1A_.exit.i.i.i

bb.pr:                                            ; preds = %.loopexit44.i.i
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.bbu, align 8, !alias.scope !11648, !noalias !11649, !nonnull !41, !noundef !41
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val1.i.i.i.i = load i64, ptr %i.bbv, align 8, !alias.scope !11648, !noalias !11649
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val.i.i.i.i, i64 %.val1.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB1A_.exit.i.i.i unwind label %bb.ps, !noalias !11652

bb.ps:                                            ; preds = %bb.pr
  %i.bbw = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i

end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBW_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout:bb.a
  %.sroa.0.016.i.i = phi i64 [ %i.bd, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i.preheader ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.016.i.i, -1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.an, i64 %i.ay ; 2 uses
  %i.bb = load double, ptr %i.az, align 8, !alias.scope !12603, !noalias !12604, !noundef !41
  %i.bc = load i64, ptr %i.ba, align 8, !alias.scope !12605, !noalias !12606
  store i64 %i.bc, ptr %i.az, align 8, !alias.scope !12603, !noalias !12604
  store double %i.bb, ptr %i.ba, align 8, !alias.scope !12605, !noalias !12606
  %i.bd = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.am
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, !llvm.loop !12583

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ak, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit ], [ %i.ai, %bb.p ], [ %i.ag, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bn, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ] ; 4 uses
  %i.bn = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !41
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !41 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 8 uses
  %i.bv = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 4 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx ; 6 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.170 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.170
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ca, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 1152921504606846976) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #58, !inline_history !12584
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #58, !inline_history !12584
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12607)
  %i.cq = icmp eq i64 %i.bu, 0
  %i.cr = icmp eq i64 %i.bv, 0
  %or.cond.i = or i1 %i.cr, %i.cq
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 range(i64 0, -9223372036854775808) %i.bu) ; 2 uses
  %i.cs = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cs, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bu ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bu, %i.bv  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ct, ptr %i.by
  %i.cu = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cu, i1 false), !alias.scope !12608
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dd, %.noexc.i ], [ %i.ct, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.df, %.noexc.i ], [ %i.cv, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cz, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %i.cy = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cw)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -8 ; 2 uses
  %i.da = icmp sgt i8 %i.cy, -1                   ; 2 uses
  %..i17.i = select i1 %i.da, ptr %i.cx, ptr %i.cw
  %i.db = load i64, ptr %..i17.i, align 8, !alias.scope !12608, !noalias !12609
  store i64 %i.db, ptr %i.cz, align 8, !alias.scope !12610, !noalias !12611
  %i.dc = zext i1 %i.da to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dc ; 3 uses
  %.lobit.i.i = lshr i8 %i.cy, 7
  %i.de = zext nneg i8 %.lobit.i.i to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de ; 3 uses
  %i.dg = icmp eq ptr %i.dd, %i.by
  %i.dh = icmp eq ptr %i.df, %2
  %or.cond.i.i = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.noexc21.i ], [ %i.by, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dm, %.noexc21.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.do, %.noexc21.i ], [ %i.ct, %.critedge.i ] ; 3 uses
  %i.di = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i34)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.dj = icmp sgt i8 %i.di, -1                   ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.dj, ptr %.sroa.0.0.i34, ptr %.sroa.0.02.i.i
  %i.dk = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !12608, !noalias !12612
  store i64 %i.dk, ptr %.sroa.13.1.i, align 8, !alias.scope !12610, !noalias !12613
  %i.dl = zext i1 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.dl ; 3 uses
  %.lobit.i19.i = lshr i8 %i.di, 7
  %i.dn = zext nneg i8 %.lobit.i19.i to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dq = icmp ne ptr %i.dm, %i.cv
  %i.dr = icmp ne ptr %i.do, %i.m
  %or.cond.i20.i = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dd, %.noexc.i ], [ %i.dp, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.df, %.noexc.i ], [ %i.cv, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dm, %.noexc21.i ] ; 2 uses
  %i.ds = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.3.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.du, i1 false), !alias.scope !12608, !noalias !12614
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cv, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dv = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dw = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dx, i1 false), !alias.scope !12608, !noalias !12615
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.dy = shl nuw nsw i64 %i.bw, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ], [ %i.ce, %bb.u ] ; 2 uses
  %i.ea = icmp ugt i64 %i.bn, 1
  br i1 %i.ea, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.eb = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ec = lshr i64 %.sroa.018.0, 1
  %i.ed = add nuw i64 %i.ec, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ee = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ee, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ef = or i64 %1, 1
  %i.eg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #58, !inline_history !12584
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB13_11foundations7content6packed6PackedNtNtNtB13_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyBX_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB48_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = icmp samesign ult i64 %1, 2
  br i1 %i.m, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = udiv i64 4611686018427387904, %1
  %i.o = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.n, %i.p         ; 2 uses
  %i.q = icmp samesign ult i64 %1, 4097
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %1, 1
  %i.t = sub nuw nsw i64 %1, %i.s
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.r, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not5.i110 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i115 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.ab ] ; 3 uses
  %i.u = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.v = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.v, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.x = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12651)
  %.not.i31 = icmp ult i64 %i.x, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread113, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.z = icmp samesign ult i64 %i.x, 2
  br i1 %i.z, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.val10.i = load double, ptr %i.aa, align 8, !alias.scope !12651, !noalias !12652, !noundef !41 ; 3 uses
  %.val11.i = load double, ptr %i.y, align 8, !alias.scope !12651, !noalias !12652, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12653
  store double %.val10.i, ptr %i.b, align 8, !noalias !12653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12653
  store double %.val11.i, ptr %i.a, align 8, !noalias !12653
  %i.ab = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !12653
  %i.ac = icmp slt i8 %i.ab, 0                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12653
  %.not79 = icmp eq i64 %i.x, 2                   ; 2 uses
  br i1 %i.ac, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread113, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.val9.i = phi double [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader47 ]
  %.sroa.01.0.i.i62 = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader47 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.01.0.i.i62
  %.val8.i = load double, ptr %i.ad, align 8, !alias.scope !12651, !noalias !12652, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12653
  store double %.val8.i, ptr %i.d, align 8, !noalias !12653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12653
  store double %.val9.i, ptr %i.c, align 8, !noalias !12653
  %i.ae = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !12653
  %i.af = icmp slt i8 %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12653
  br i1 %i.af, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ag = add nuw i64 %.sroa.01.0.i.i62, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.x
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi double [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i65 = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.01.1.i.i65
  %.val.i = load double, ptr %i.ah, align 8, !alias.scope !12651, !noalias !12652, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12653
  store double %.val.i, ptr %i.f, align 8, !noalias !12653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12653
  store double %.val7.i, ptr %i.e, align 8, !noalias !12653
  %i.ai = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !noalias !12653
  %i.aj = icmp slt i8 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12653
  br i1 %i.aj, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ak = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ak, %i.x
  br i1 %exitcond92.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i, label %.lr.ph66

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.x, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.x, %bb.l ] ; 6 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.x
  call void @llvm.assume(i1 %i.al)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread113: ; preds = %.preheader
  br i1 %.not5.i115, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i110, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.x, i64 %.sroa.01.0)
  %i.am = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.x, i64 32) ; 2 uses
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1c_11foundations7content6packed6PackedNtNtNtB1c_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4j_(ptr noalias nofree noundef nonnull align 8 %i.y, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12620
  %i.an = shl nuw nsw i64 %..i36, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.x, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread ], [ %.sroa.0.0.i.i111118122, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ]
  %i.ap = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit

bb.q:                                             ; preds = %bb.n
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB13_11foundations7content6packed6PackedNtNtNtB13_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyBX_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB48_:bb.a
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bn, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit ] ; 4 uses
  %i.bn = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !41
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.u, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !41 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 8 uses
  %i.bv = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 4 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bx ; 6 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.170 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.170
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ca, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cf = or i64 %i.bu, 1
  %i.cg = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1c_11foundations7content6packed6PackedNtNtNtB1c_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4j_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 288230376151711744) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12635
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1c_11foundations7content6packed6PackedNtNtNtB1c_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4j_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 288230376151711744) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12635
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !12662)
  call void @llvm.experimental.noalias.scope.decl(metadata !12663)
  %i.cq = icmp eq i64 %i.bu, 0
  %i.cr = icmp eq i64 %i.bv, 0
  %or.cond.i = or i1 %i.cr, %i.cq
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 range(i64 0, -9223372036854775808) %i.bu) ; 2 uses
  %i.cs = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cs, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.bu ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bu, %i.bv  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ct, ptr %i.by
  %i.cu = shl nuw nsw i64 %..i.i, 5               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cu, i1 false), !alias.scope !12664
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dc, %.noexc.i ], [ %i.ct, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.de, %.noexc.i ], [ %i.cv, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cz, %.noexc.i ], [ %i.w, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -32 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -32 ; 3 uses
  %.val.i.i = load double, ptr %i.cx, align 8, !alias.scope !12663, !noalias !12665, !noundef !41
  %.val12.i.i = load double, ptr %i.cw, align 8, !alias.scope !12662, !noalias !12666, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12667
  store double %.val.i.i, ptr %i.j, align 8, !noalias !12667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12667
  store double %.val12.i.i, ptr %i.i, align 8, !noalias !12667
  %i.cy = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !12664 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -32 ; 2 uses
  %i.da = icmp sgt i8 %i.cy, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12667
  %..i17.i = select i1 %i.da, ptr %i.cx, ptr %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %..i17.i, i64 32, i1 false), !alias.scope !12664, !noalias !12668
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.db ; 3 uses
  %.lobit.i.i = lshr i8 %i.cy, 7
  %i.dd = zext nneg i8 %.lobit.i.i to i64
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %i.dd ; 3 uses
  %i.df = icmp eq ptr %i.dc, %i.by
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1h_11foundations7content6packed6PackedNtNtNtB1h_5model3par13ParLineMarkerEEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4B_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.dn, %.noexc22.i ], [ %i.by, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dk, %.noexc22.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dm, %.noexc22.i ], [ %i.ct, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load double, ptr %.sroa.0.02.i.i, align 8, !alias.scope !12662, !noalias !12669, !noundef !41
  %.val.i19.i = load double, ptr %.sroa.0.0.i34, align 8, !alias.scope !12663, !noalias !12670, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12671
  store double %.sroa.0.0.val.i.i, ptr %i.h, align 8, !noalias !12671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12671
  store double %.val.i19.i, ptr %i.g, align 8, !noalias !12671
  %i.dh = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !12664 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.di = icmp sgt i8 %i.dh, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12671
  %.sroa.05.0.i.i = select i1 %i.di, ptr %.sroa.0.0.i34, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !12664, !noalias !12672
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i34, i64 %i.dj ; 3 uses
  %.lobit.i20.i = lshr i8 %i.dh, 7
  %i.dl = zext nneg i8 %.lobit.i20.i to i64
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 32 ; 2 uses
  %i.do = icmp ne ptr %i.dk, %i.cv
  %i.dp = icmp ne ptr %i.dm, %i.w
  %or.cond.i21.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1h_11foundations7content6packed6PackedNtNtNtB1h_5model3par13ParLineMarkerEEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4B_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1h_11foundations7content6packed6PackedNtNtNtB1h_5model3par13ParLineMarkerEEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4B_.exit.i: ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dc, %.noexc.i ], [ %i.dn, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.de, %.noexc.i ], [ %i.cv, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dk, %.noexc22.i ] ; 2 uses
  %i.dq = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dr = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ds = sub nuw i64 %i.dq, %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ds, i1 false), !alias.scope !12664, !noalias !12673
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cv, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dt = ptrtoint ptr %.sroa.7.1.i to i64
  %i.du = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dv = sub nuw i64 %i.dt, %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.dv, i1 false), !alias.scope !12664, !noalias !12674
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1h_11foundations7content6packed6PackedNtNtNtB1h_5model3par13ParLineMarkerEEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4B_.exit.i
  %i.dw = shl nuw nsw i64 %i.bw, 1
  %i.dx = or disjoint i64 %i.dw, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit
  %.sroa.0.0.i = phi i64 [ %i.dx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit ], [ %i.ce, %bb.u ] ; 2 uses
  %i.dy = icmp ugt i64 %i.bn, 1
  br i1 %i.dy, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dz = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ea = lshr i64 %.sroa.018.0, 1
  %i.eb = add nuw i64 %i.ea, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ec = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ec, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = or i64 %1, 1
  %i.ee = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ed, i1 true)
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 1
  %i.eh = xor i32 %i.eg, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1c_11foundations7content6packed6PackedNtNtNtB1c_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4j_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12635
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB11_5point5PointNtNtB11_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyTBX_B1L_ENCNvMs_NtB1P_8layouterNtB4y_12GridLayouter20render_fills_strokesse_0E0EB1R_(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 44343134792571038) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = icmp samesign ult i64 %1, 2
  br i1 %i.m, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = udiv i64 4611686018427387904, %1
  %i.o = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.n, %i.p         ; 2 uses
  %i.q = icmp samesign ult i64 %1, 4097
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %1, 1
  %i.t = sub nuw nsw i64 %1, %i.s
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.r, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gx, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gv, %bb.ab ] ; 3 uses
  %i.ae = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit
  %.sroa.021.0 = phi i8 [ %i.dy, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.af = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.af, label %.lr.ph75, label %._crit_edge

.lr.ph75:                                         ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.ah = sub nuw nsw i64 %1, %.sroa.09.0         ; 11 uses
  %i.ai = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12754)
  %.not.i31 = icmp ult i64 %i.ah, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp samesign ult i64 %i.ah, 2
  br i1 %i.aj, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE7reverseB1p_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  %.val14.i = load double, ptr %i.ak, align 16, !alias.scope !12754, !noalias !12755, !noundef !41 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 232
  %.val15.i = load i8, ptr %i.al, align 8, !range !48, !alias.scope !12754, !noalias !12755, !noundef !41 ; 4 uses
  %.val16.i = load double, ptr %i.ai, align 16, !alias.scope !12754, !noalias !12755, !noundef !41
  %i.am = getelementptr i8, ptr %i.ai, i64 24
  %.val17.i = load i8, ptr %i.am, align 8, !range !48, !alias.scope !12754, !noalias !12755, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12756
  store double %.val14.i, ptr %i.b, align 8, !noalias !12756
  store i8 %.val15.i, ptr %i.u, align 8, !noalias !12756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12756
  store double %.val16.i, ptr %i.a, align 8, !noalias !12756
  store i8 %.val17.i, ptr %i.v, align 8, !noalias !12756
  %i.an = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !12756 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 0
  %i.ap = icmp slt i8 %i.an, 0
  %i.aq = icmp samesign ult i8 %.val15.i, %.val17.i
  %.sroa.0.0.i.i40 = select i1 %i.ao, i1 %i.aq, i1 %i.ap ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12756
  %.not82 = icmp eq i64 %i.ah, 2                  ; 2 uses
  br i1 %.sroa.0.0.i.i40, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not82, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not82, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread121, label %.lr.ph69

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val13.i = phi i8 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader50 ] ; 2 uses
  %.val12.i = phi double [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader50 ]
  %.sroa.01.0.i.i65 = phi i64 [ %i.ax, %bb.l ], [ 2, %.preheader50 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [208 x i8], ptr %i.ai, i64 %.sroa.01.0.i.i65 ; 2 uses
  %.val10.i = load double, ptr %i.ar, align 16, !alias.scope !12754, !noalias !12755, !noundef !41 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  %.val11.i = load i8, ptr %i.as, align 8, !range !48, !alias.scope !12754, !noalias !12755, !noundef !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12756
  store double %.val10.i, ptr %i.d, align 8, !noalias !12756
  store i8 %.val11.i, ptr %i.w, align 8, !noalias !12756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12756
  store double %.val12.i, ptr %i.c, align 8, !noalias !12756
  store i8 %.val13.i, ptr %i.x, align 8, !noalias !12756
  %i.at = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !12756 ; 2 uses
  %i.au = icmp eq i8 %i.at, 0
  %i.av = icmp slt i8 %i.at, 0
  %i.aw = icmp samesign ult i8 %.val11.i, %.val13.i
  %.sroa.0.0.i.i39 = select i1 %i.au, i1 %i.aw, i1 %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12756
  br i1 %.sroa.0.0.i.i39, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ax = add nuw i64 %.sroa.01.0.i.i65, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.ah
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i, label %.lr.ph

.lr.ph69:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i8 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi double [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i68 = phi i64 [ %i.be, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [208 x i8], ptr %i.ai, i64 %.sroa.01.1.i.i68 ; 2 uses
  %.val.i = load double, ptr %i.ay, align 16, !alias.scope !12754, !noalias !12755, !noundef !41 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  %.val7.i = load i8, ptr %i.az, align 8, !range !48, !alias.scope !12754, !noalias !12755, !noundef !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12756
  store double %.val.i, ptr %i.f, align 8, !noalias !12756
  store i8 %.val7.i, ptr %i.y, align 8, !noalias !12756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12756
  store double %.val8.i, ptr %i.e, align 8, !noalias !12756
  store i8 %.val9.i, ptr %i.z, align 8, !noalias !12756
  %i.ba = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !noalias !12756 ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 0
  %i.bc = icmp slt i8 %i.ba, 0
  %i.bd = icmp samesign ult i8 %.val7.i, %.val9.i
  %.sroa.0.0.i.i38 = select i1 %i.bb, i1 %i.bd, i1 %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12756
  br i1 %.sroa.0.0.i.i38, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i

bb.m:                                             ; preds = %.lr.ph69
  %i.be = add nuw i64 %.sroa.01.1.i.i68, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.be, %i.ah
  br i1 %exitcond96.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i, label %.lr.ph69

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph69
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB11_5point5PointNtNtB11_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyTBX_B1L_ENCNvMs_NtB1P_8layouterNtB4y_12GridLayouter20render_fills_strokesse_0E0EB1R_:bb.a
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.173, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.174, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ed, align 1
  br i1 %i.ae, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dz
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !41 ; 3 uses
  %i.eg = lshr i64 %i.ef, 1                       ; 8 uses
  %i.eh = lshr i64 %.sroa.023.173, 1              ; 6 uses
  %i.ei = add nuw i64 %i.eg, %i.eh                ; 4 uses
  %i.ej = sub i64 %.sroa.09.0, %i.ei
  %i.ek = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %i.ej ; 6 uses
  %i.el = icmp samesign ugt i64 %i.ei, %3
  %i.em = trunc i64 %.sroa.023.173 to i1
  %i.en = or i64 %i.ef, %.sroa.023.173
  %i.eo = trunc i64 %i.en to i1
  %or.cond3.i = or i1 %i.el, %i.eo
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ep = trunc i64 %i.ef to i1
  br i1 %i.ep, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.eq = shl nuw nsw i64 %i.ei, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.em, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.er = or i64 %i.eg, 1
  %i.es = call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = xor i32 %i.eu, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1a_5point5PointNtNtB1a_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyTB16_B1U_ENCNvMs_NtB1Y_8layouterNtB4J_12GridLayouter20render_fills_strokesse_0E0EB20_(ptr noalias nofree noundef nonnull align 16 %i.ek, i64 noundef range(i64 0, 44343134792571038) %i.eg, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 44343134792571038) %3, i32 noundef %i.ev, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(208) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12738
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw [208 x i8], ptr %i.ek, i64 %i.eg
  %i.ex = or i64 %i.eh, 1
  %i.ey = call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ex, i1 true)
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %i.fb = xor i32 %i.fa, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1a_5point5PointNtNtB1a_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyTB16_B1U_ENCNvMs_NtB1Y_8layouterNtB4J_12GridLayouter20render_fills_strokesse_0E0EB20_(ptr noalias nofree noundef nonnull align 16 %i.ew, i64 noundef range(i64 0, 44343134792571038) %i.eh, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 44343134792571038) %3, i32 noundef %i.fb, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(208) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12738
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !12787)
  call void @llvm.experimental.noalias.scope.decl(metadata !12788)
  %i.fc = icmp eq i64 %i.eg, 0
  %i.fd = icmp eq i64 %i.eh, 0
  %or.cond.i = or i1 %i.fd, %i.fc
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = call i64 @llvm.umin.i64(i64 %i.eh, i64 range(i64 0, -9223372036854775808) %i.eg) ; 2 uses
  %i.fe = icmp samesign ult i64 %3, %..i.i
  br i1 %i.fe, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.ff = getelementptr inbounds nuw [208 x i8], ptr %i.ek, i64 %i.eg ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.eg, %i.eh  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ff, ptr %i.ek
  %i.fg = mul nuw nsw i64 %..i.i, 208             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %spec.select.i, i64 %i.fg, i1 false), !alias.scope !12789
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg ; 4 uses
  br i1 %.not.i33, label %.preheader83, label %.lr.ph.i.i

.preheader83:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.ft, %.noexc.i ], [ %i.ff, %.critedge.i ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.fv, %.noexc.i ], [ %i.fh, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.fn, %.noexc.i ], [ %i.ag, %.critedge.i ]
  %i.fi = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -208 ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -208 ; 3 uses
  %.val.i.i = load double, ptr %i.fj, align 16, !alias.scope !12788, !noalias !12790, !noundef !41
  %i.fk = getelementptr i8, ptr %.sroa.7.0.i, i64 -184
  %.val12.i.i = load i8, ptr %i.fk, align 8, !range !48, !alias.scope !12788, !noalias !12790, !noundef !41 ; 2 uses
  %.val13.i.i = load double, ptr %i.fi, align 16, !alias.scope !12787, !noalias !12791, !noundef !41
  %i.fl = getelementptr i8, ptr %.sroa.13.0.i, i64 -184
  %.val14.i.i = load i8, ptr %i.fl, align 8, !range !48, !alias.scope !12787, !noalias !12791, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12792
  store double %.val.i.i, ptr %i.j, align 8, !noalias !12792
  store i8 %.val12.i.i, ptr %i.ac, align 8, !noalias !12792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12792
  store double %.val13.i.i, ptr %i.i, align 8, !noalias !12792
  store i8 %.val14.i.i, ptr %i.ad, align 8, !noalias !12792
  %i.fm = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !12789 ; 2 uses

.noexc.i:                                         ; preds = %.preheader83
  %i.fn = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -208 ; 2 uses
  %i.fo = icmp eq i8 %i.fm, 0
  %i.fp = icmp slt i8 %i.fm, 0
  %i.fq = icmp samesign ult i8 %.val12.i.i, %.val14.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.fo, i1 %i.fq, i1 %i.fp ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12792
  %..i17.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.fi, ptr %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.fn, ptr noundef nonnull align 16 dereferenceable(208) %..i17.i, i64 208, i1 false), !alias.scope !12789, !noalias !12793
  %i.fr = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.fs = zext i1 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [208 x i8], ptr %i.fi, i64 %i.fs ; 3 uses
  %i.fu = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.fv = getelementptr inbounds nuw [208 x i8], ptr %i.fj, i64 %i.fu ; 3 uses
  %i.fw = icmp eq ptr %i.ft, %i.ek
  %i.fx = icmp eq ptr %i.fv, %2
  %or.cond.i.i = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1f_5point5PointNtNtB1f_5frame9FrameItemEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyTB1b_B1Z_ENCNvMs_NtB23_8layouterNtB51_12GridLayouter20render_fills_strokesse_0E0EB25_.exit.i, label %.preheader83

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.gj, %.noexc22.i ], [ %i.ek, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.gg, %.noexc22.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.gi, %.noexc22.i ], [ %i.ff, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load double, ptr %.sroa.0.02.i.i, align 16, !alias.scope !12787, !noalias !12794, !noundef !41
  %i.fy = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val6.i.i = load i8, ptr %i.fy, align 8, !range !48, !alias.scope !12787, !noalias !12794, !noundef !41 ; 2 uses
  %.val.i19.i = load double, ptr %.sroa.0.0.i34, align 16, !alias.scope !12788, !noalias !12795, !noundef !41
  %i.fz = getelementptr i8, ptr %.sroa.0.0.i34, i64 24
  %.val7.i.i = load i8, ptr %i.fz, align 8, !range !48, !alias.scope !12788, !noalias !12795, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12796
  store double %.sroa.0.0.val.i.i, ptr %i.h, align 8, !noalias !12796
  store i8 %.sroa.0.0.val6.i.i, ptr %i.aa, align 8, !noalias !12796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12796
  store double %.val.i19.i, ptr %i.g, align 8, !noalias !12796
  store i8 %.val7.i.i, ptr %i.ab, align 8, !noalias !12796
  %i.ga = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !12789 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.gb = icmp eq i8 %i.ga, 0
  %i.gc = icmp slt i8 %i.ga, 0
  %i.gd = icmp samesign ult i8 %.sroa.0.0.val6.i.i, %.val7.i.i
  %.sroa.0.0.i.i.i20.i = select i1 %i.gb, i1 %i.gd, i1 %i.gc ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12796
  %i.ge = xor i1 %.sroa.0.0.i.i.i20.i, true
  %.sroa.05.0.i.i = select i1 %.sroa.0.0.i.i.i20.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %.sroa.13.1.i, ptr noundef nonnull align 16 dereferenceable(208) %.sroa.05.0.i.i, i64 208, i1 false), !alias.scope !12789, !noalias !12797
  %i.gf = zext i1 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0.0.i34, i64 %i.gf ; 3 uses
  %i.gh = zext i1 %.sroa.0.0.i.i.i20.i to i64
  %i.gi = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0.02.i.i, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 208 ; 2 uses
  %i.gk = icmp ne ptr %i.gg, %i.fh
  %i.gl = icmp ne ptr %i.gi, %i.ag
  %or.cond.i21.i = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1f_5point5PointNtNtB1f_5frame9FrameItemEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyTB1b_B1Z_ENCNvMs_NtB23_8layouterNtB51_12GridLayouter20render_fills_strokesse_0E0EB25_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1f_5point5PointNtNtB1f_5frame9FrameItemEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyTB1b_B1Z_ENCNvMs_NtB23_8layouterNtB51_12GridLayouter20render_fills_strokesse_0E0EB25_.exit.i: ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ft, %.noexc.i ], [ %i.gj, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.fv, %.noexc.i ], [ %i.fh, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.gg, %.noexc22.i ] ; 2 uses
  %i.gm = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gn = ptrtoint ptr %.sroa.0.3.i to i64
  %i.go = sub nuw i64 %i.gm, %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.13.4.i, ptr align 16 %.sroa.0.3.i, i64 %i.go, i1 false), !alias.scope !12789, !noalias !12798
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit

.loopexit.i:                                      ; preds = %.preheader83
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.fh, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gp = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gq = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gr = sub nuw i64 %i.gp, %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.13.3.i, ptr nonnull align 16 %.sroa.0.2.i, i64 %i.gr, i1 false), !alias.scope !12789, !noalias !12799
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1f_5point5PointNtNtB1f_5frame9FrameItemEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyTB1b_B1Z_ENCNvMs_NtB23_8layouterNtB51_12GridLayouter20render_fills_strokesse_0E0EB25_.exit.i
  %i.gs = shl nuw nsw i64 %i.ei, 1
  %i.gt = or disjoint i64 %i.gs, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit
  %.sroa.0.0.i = phi i64 [ %i.gt, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit ], [ %i.eq, %bb.u ] ; 2 uses
  %i.gu = icmp ugt i64 %i.dz, 1
  br i1 %i.gu, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.gv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gw = lshr i64 %.sroa.018.0, 1
  %i.gx = add nuw i64 %i.gw, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.gy = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gy, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gz = or i64 %1, 1
  %i.ha = call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.gz, i1 true)
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %i.hc = shl nuw nsw i32 %i.hb, 1
  %i.hd = xor i32 %i.hc, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1a_5point5PointNtNtB1a_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyTB16_B1U_ENCNvMs_NtB1Y_8layouterNtB4J_12GridLayouter20render_fills_strokesse_0E0EB20_(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 44343134792571038) %3, i32 noundef %i.hd, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(208) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12738
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB12_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3q_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i158 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i163 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.av, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.av ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.jw, %bb.av ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ju, %bb.av ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit
  %.sroa.021.0 = phi i8 [ %i.az, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12884)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val12.i = load ptr, ptr %5, align 8, !alias.scope !12884, !noalias !12885, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  %.val13.i = load ptr, ptr %i.q, align 8, !alias.scope !12883, !noalias !12886, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !12883, !noalias !12886
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainE11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0B2p_(ptr nonnull %.val12.i, ptr nonnull %.val13.i, ptr %.val14.i) #59, !noalias !12887, !inline_history !12804 ; 2 uses
  %.not115 = icmp eq i64 %i.n, 2                  ; 2 uses
  br i1 %i.r, label %.preheader82, label %.preheader83

.preheader83:                                     ; preds = %bb.k
  br i1 %.not115, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread, label %.lr.ph

.preheader82:                                     ; preds = %bb.k
  br i1 %.not115, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161, label %.lr.ph102

.lr.ph:                                           ; preds = %.preheader83, %bb.l
  %.val11.i = phi ptr [ %.val10.i, %bb.l ], [ %.val13.i, %.preheader83 ]
  %.sroa.01.0.i.i98 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader83 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i98
  %.val10.i = load ptr, ptr %i.s, align 8, !alias.scope !12883, !noalias !12886, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainE11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0B2p_(ptr nonnull %.val12.i, ptr nonnull %.val10.i, ptr nonnull %.val11.i) #59, !noalias !12887, !inline_history !12804
  br i1 %i.t, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i98, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i, label %.lr.ph

.lr.ph102:                                        ; preds = %.preheader82, %bb.m
  %.val8.i = phi ptr [ %.val7.i, %bb.m ], [ %.val13.i, %.preheader82 ]
  %.sroa.01.1.i.i101 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader82 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i101
  %.val7.i = load ptr, ptr %i.v, align 8, !alias.scope !12883, !noalias !12886, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainE11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0B2p_(ptr nonnull %.val12.i, ptr nonnull %.val7.i, ptr nonnull %.val8.i) #59, !noalias !12887, !inline_history !12804
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i

bb.m:                                             ; preds = %.lr.ph102
  %i.x = add nuw i64 %.sroa.01.1.i.i101, 1        ; 2 uses
  %exitcond132.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond132.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i, label %.lr.ph102

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph102
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i101, %.lr.ph102 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i98, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161: ; preds = %.preheader82
  br i1 %.not5.i163, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread: ; preds = %.preheader83
  br i1 %.not5.i158, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1b_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3A_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12804
  %i.aa = shl nuw nsw i64 %..i36, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i7376 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread ], [ %.sroa.0.0.i.i159166170, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i7376, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12888), !noalias !12886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12889), !noalias !12886
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161 ]
  %.sroa.0.0.i.i159166170 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i159166170
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.aq, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.aj = getelementptr [32 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !12890, !noalias !12891
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !12892, !noalias !12893
  store <2 x i64> %i.al, ptr %i.ai, align 8, !alias.scope !12890, !noalias !12891
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !alias.scope !12892, !noalias !12893
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !12894, !noalias !12891
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !12895, !noalias !12893
  store <2 x i64> %i.ap, ptr %i.am, align 8, !alias.scope !12894, !noalias !12891
  store <2 x i64> %i.ao, ptr %i.an, align 8, !alias.scope !12895, !noalias !12893
  %i.aq = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aq, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB12_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3q_:bb.a
  %i.gh = trunc i128 %i.gd to i64
  %i.gi = mul i64 %i.gh, -1065810590584100411
  %i.gj = lshr i128 %i.gd, 64
  %i.gk = trunc nuw i128 %i.gj to i64
  %i.gl = add i64 %i.gi, %i.gk
  %i.gm = mul i64 %i.gl, -1065810590584100411     ; 2 uses
  %i.gn = tail call noundef i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12919), !noalias !12898
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12920), !noalias !12898
  %i.go = lshr i64 %i.gn, 57
  %i.gp = trunc nuw nsw i64 %i.go to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !12921, !noalias !12922, !noundef !41 ; 2 uses
  %i.gs = load ptr, ptr %.val2.i, align 8, !alias.scope !12921, !noalias !12922, !nonnull !41, !noundef !41 ; 2 uses
  %i.gt = insertelement <16 x i8> poison, i8 %i.gp, i64 0
  %i.gu = shufflevector <16 x i8> %i.gt, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.al ], [ %i.hl, %bb.ao ]
  %.pn.i.i.i.i = phi i64 [ %i.gn, %bb.al ], [ %i.hm, %bb.ao ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.gr ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.gv, align 1, !noalias !12923 ; 2 uses
  %i.gw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.gu
  %i.gx = bitcast <16 x i1> %i.gw to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.gx, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.am, %bb.an
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.hk, %bb.an ], [ %i.gx, %bb.am ] ; 3 uses
  %i.gy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.gz = zext nneg i16 %i.gy to i64
  %i.ha = add i64 %.sroa.01.0.i.i.i.i.i, %i.gz
  %i.hb = and i64 %i.ha, %i.gr
  %i.hc = sub nsw i64 0, %i.hb
  %i.hd = getelementptr inbounds [16 x i8], ptr %i.gs, i64 %i.hc
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -16
  %.val2.i.i.i.i.i = load i128, ptr %i.he, align 16, !noalias !12924, !noundef !41
  %i.hf = icmp eq i128 %i.gd, %.val2.i.i.i.i.i
  br i1 %i.hf, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i, label %bb.an, !prof !43

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %bb.am
  %i.hg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.hh = bitcast <16 x i1> %i.hg to i16
  %i.hi = icmp eq i16 %i.hh, 0
  br i1 %i.hi, label %bb.ao, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i, !prof !44

bb.an:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hj = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.hk = and i16 %i.hj, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.hk, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hl = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.hm = add i64 %.sroa.01.0.i.i.i.i.i, %i.hl
  br label %bb.am

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i, %.noexc, %.lr.ph.i.i
  %.sroa.0.0.i.i38 = phi i32 [ 0, %.lr.ph.i.i ], [ -1, %.lr.ph.i.i.i.i ], [ 1, %.noexc ], [ 1, %._crit_edge.i.i.i.i ]
  %.val.i39 = load ptr, ptr %.val, align 8, !noalias !12898 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ], !noalias !12898
  %i.hn = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !12898, !nonnull !41, !align !46, !noundef !41
  %i.hp = icmp eq ptr %i.ho, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library13introspection3tag1__NtB9_7TagElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.hp, label %bb.ap, label %.noexc21.i

bb.ap:                                            ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i39) ], !noalias !12898
  %i.hq = load ptr, ptr %.val6.i.i, align 8, !noalias !12898, !nonnull !41, !noundef !41
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 96
  %i.hs = invoke noundef i128 @_RNvMNtNtCsdaEETE4DqmE_13typst_library13introspection3tagNtB2_3Tag8location(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.hr)
          to label %.noexc40 unwind label %.loopexit.split-lp.i ; 3 uses

.noexc40:                                         ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12925), !noalias !12898
  %i.ht = getelementptr inbounds nuw i8, ptr %.val.i39, i64 24
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !12925, !noalias !12898, !noundef !41
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %.noexc21.i, label %bb.aq

bb.aq:                                            ; preds = %.noexc40
  %i.hw = trunc i128 %i.hs to i64
  %i.hx = mul i64 %i.hw, -1065810590584100411
  %i.hy = lshr i128 %i.hs, 64
  %i.hz = trunc nuw i128 %i.hy to i64
  %i.ia = add i64 %i.hx, %i.hz
  %i.ib = mul i64 %i.ia, -1065810590584100411     ; 2 uses
  %i.ic = tail call noundef i64 @llvm.fshl.i64(i64 %i.ib, i64 %i.ib, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12926), !noalias !12898
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12927), !noalias !12898
  %i.id = lshr i64 %i.ic, 57
  %i.ie = trunc nuw nsw i64 %i.id to i8
  %i.if = getelementptr inbounds nuw i8, ptr %.val.i39, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !12928, !noalias !12929, !noundef !41 ; 2 uses
  %i.ih = load ptr, ptr %.val.i39, align 8, !alias.scope !12928, !noalias !12929, !nonnull !41, !noundef !41 ; 2 uses
  %i.ii = insertelement <16 x i8> poison, i8 %i.ie, i64 0
  %i.ij = shufflevector <16 x i8> %i.ii, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %bb.aq
  %.sroa.9.0.i.i.i.i5.i = phi i64 [ 0, %bb.aq ], [ %i.ja, %bb.at ]
  %.pn.i.i.i6.i = phi i64 [ %i.ic, %bb.aq ], [ %i.jb, %bb.at ]
  %.sroa.01.0.i.i.i.i7.i = and i64 %.pn.i.i.i6.i, %i.ig ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.01.0.i.i.i.i7.i
  %.sroa.0.0.copyload.i24.i.i.i8.i = load <16 x i8>, ptr %i.ik, align 1, !noalias !12930 ; 2 uses
  %i.il = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i8.i, %i.ij
  %i.im = bitcast <16 x i1> %i.il to i16          ; 2 uses
  %.not.i.not30.i.i.i9.i = icmp eq i16 %i.im, 0
  br i1 %.not.i.not30.i.i.i9.i, label %._crit_edge.i.i.i14.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.ar, %bb.as
  %.sroa.06.0.i31.i.i.i11.i = phi i16 [ %i.iz, %bb.as ], [ %i.im, %bb.ar ] ; 3 uses
  %i.in = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i11.i, i1 true)
  %i.io = zext nneg i16 %i.in to i64
  %i.ip = add i64 %.sroa.01.0.i.i.i.i7.i, %i.io
  %i.iq = and i64 %i.ip, %i.ig
  %i.ir = sub nsw i64 0, %i.iq
  %i.is = getelementptr inbounds [16 x i8], ptr %i.ih, i64 %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -16
  %.val2.i.i.i.i12.i = load i128, ptr %i.it, align 16, !noalias !12931, !noundef !41
  %i.iu = icmp eq i128 %i.hs, %.val2.i.i.i.i12.i
  br i1 %i.iu, label %.noexc21.i, label %bb.as, !prof !43

._crit_edge.i.i.i14.i:                            ; preds = %bb.as, %bb.ar
  %i.iv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i8.i, splat (i8 -1)
  %i.iw = bitcast <16 x i1> %i.iv to i16
  %i.ix = icmp eq i16 %i.iw, 0
  br i1 %i.ix, label %bb.at, label %.noexc21.i, !prof !44

bb.as:                                            ; preds = %.lr.ph.i.i.i10.i
  %i.iy = add i16 %.sroa.06.0.i31.i.i.i11.i, -1
  %i.iz = and i16 %i.iy, %.sroa.06.0.i31.i.i.i11.i ; 2 uses
  %.not.i.not.i.i.i13.i = icmp eq i16 %i.iz, 0
  br i1 %.not.i.not.i.i.i13.i, label %._crit_edge.i.i.i14.i, label %.lr.ph.i.i.i10.i

bb.at:                                            ; preds = %._crit_edge.i.i.i14.i
  %i.ja = add i64 %.sroa.9.0.i.i.i.i5.i, 16       ; 2 uses
  %i.jb = add i64 %.sroa.01.0.i.i.i.i7.i, %i.ja
  br label %bb.ar

.noexc21.i:                                       ; preds = %._crit_edge.i.i.i14.i, %.lr.ph.i.i.i10.i, %.noexc40, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i
  %.sroa.0.0.i4.i = phi i32 [ 0, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i ], [ -1, %.lr.ph.i.i.i10.i ], [ 1, %.noexc40 ], [ 1, %._crit_edge.i.i.i14.i ]
  %i.jc = icmp slt i32 %.sroa.0.0.i.i38, %.sroa.0.0.i4.i ; 3 uses
  %i.jd = xor i1 %i.jc, true
  %.sroa.05.0.i.i = select i1 %i.jc, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !12898, !noalias !12932
  %i.je = zext i1 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i34, i64 %i.je ; 3 uses
  %i.jg = zext i1 %i.jc to i64
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 32 ; 2 uses
  %i.jj = icmp ne ptr %i.jf, %i.ci
  %i.jk = icmp ne ptr %i.jh, %i.m
  %or.cond.i20.i = select i1 %i.jj, i1 %i.jk, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1g_6styles10StyleChainEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3S_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1g_6styles10StyleChainEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3S_.exit.i: ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ft, %.noexc.i ], [ %i.ji, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.fv, %.noexc.i ], [ %i.ci, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.jf, %.noexc21.i ] ; 2 uses
  %i.jl = ptrtoint ptr %.sroa.7.2.i to i64
  %i.jm = ptrtoint ptr %.sroa.0.3.i to i64
  %i.jn = sub nuw i64 %i.jl, %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.jn, i1 false), !alias.scope !12898, !noalias !12933
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3r_.exit

.loopexit.i:                                      ; preds = %bb.af, %bb.aa
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp.i:                             ; preds = %bb.ap, %bb.ak
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ci, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.jo = ptrtoint ptr %.sroa.7.1.i to i64
  %i.jp = ptrtoint ptr %.sroa.0.2.i to i64
  %i.jq = sub nuw i64 %i.jo, %i.jp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.jq, i1 false), !alias.scope !12898, !noalias !12934
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3r_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1g_6styles10StyleChainEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3S_.exit.i
  %i.jr = shl nuw nsw i64 %i.bj, 1
  %i.js = or disjoint i64 %i.jr, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1c_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3B_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1c_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3B_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3r_.exit
  %.sroa.0.0.i = phi i64 [ %i.js, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3r_.exit ], [ %i.br, %bb.u ] ; 2 uses
  %i.jt = icmp ugt i64 %i.ba, 1
  br i1 %i.jt, label %bb.r, label %._crit_edge

bb.av:                                            ; preds = %._crit_edge
  %i.ju = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.jv = lshr i64 %.sroa.018.0, 1
  %i.jw = add nuw i64 %i.jv, %.sroa.09.0
  br label %bb.f

bb.aw:                                            ; preds = %._crit_edge
  %i.jx = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.jx, 0
  br i1 %.not30, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jy = or i64 %1, 1
  %i.jz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.jy, i1 true)
  %i.ka = trunc nuw nsw i64 %i.jz to i32
  %i.kb = shl nuw nsw i32 %i.ka, 1
  %i.kc = xor i32 %i.kb, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1b_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3A_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.kc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12819
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.az

bb.az:                                            ; preds = %bb.a, %bb.ay
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %5, ptr noalias nofree noundef nonnull readnone captures(none) %6) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph111 = phi ptr [ %i.ln, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph110 = phi i64 [ %i.ky, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph109 = phi i32 [ %i.fi, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph108 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph111 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph108, null
  %i.e = icmp eq i32 %.sroa.025.0.ph109, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph286

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit
  %i.f = icmp eq i32 %i.fi, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph286

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit, %bb.a
  %.sroa.0.0.ph.lcssa102 = phi ptr [ %.sroa.0.0.ph111, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit ], [ %0, %bb.a ], [ %i.ln, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit ], [ %1, %bb.a ], [ %i.ky, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12995)
  call void @llvm.experimental.noalias.scope.decl(metadata !12996)
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.i = icmp samesign ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB19_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa102, ptr noundef nonnull align 8 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa102, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB19_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa102, i64 8
  %i.r = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.ph.lcssa102) ; 2 uses
  %i.s = icmp sgt i8 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa102, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa102, i64 16
  %i.v = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
  %i.w = icmp slt i8 %i.v, 0                      ; 2 uses
  %.lobit.i.i = lshr i8 %i.r, 7
  %i.x = zext nneg i8 %.lobit.i.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa102, i64 %i.x ; 3 uses
  %i.z = zext i1 %i.s to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa102, i64 %i.z ; 4 uses
  %i.ab = select i1 %i.w, i64 3, i64 2
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa102, i64 %i.ab ; 4 uses
  %i.ad = select i1 %i.w, i64 2, i64 3
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa102, i64 %i.ad ; 3 uses
  %i.af = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  %i.ag = icmp slt i8 %i.af, 0                    ; 3 uses
  %i.ah = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  %i.ai = icmp slt i8 %i.ah, 0                    ; 3 uses
  %i.aj = select i1 %i.ag, ptr %i.ac, ptr %i.y, !unpredictable !41
  %i.ak = select i1 %i.ai, ptr %i.aa, ptr %i.ae, !unpredictable !41
  %i.al = select i1 %i.ai, ptr %i.ac, ptr %i.aa, !unpredictable !41
  %i.am = select i1 %i.ag, ptr %i.y, ptr %i.al, !unpredictable !41 ; 3 uses
  %i.an = select i1 %i.ag, ptr %i.aa, ptr %i.ac, !unpredictable !41
  %i.ao = select i1 %i.ai, ptr %i.ae, ptr %i.an, !unpredictable !41 ; 3 uses
  %i.ap = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
  %i.aq = icmp slt i8 %i.ap, 0                    ; 2 uses
  %i.ar = select i1 %i.aq, ptr %i.ao, ptr %i.am, !unpredictable !41
  %i.as = select i1 %i.aq, ptr %i.am, ptr %i.ao, !unpredictable !41
  %i.at = load i64, ptr %i.aj, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.at, ptr %2, align 8, !alias.scope !12996, !noalias !12995
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i64, ptr %i.ar, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.av, ptr %i.au, align 8, !alias.scope !12996, !noalias !12995
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load i64, ptr %i.as, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.ax, ptr %i.aw, align 8, !alias.scope !12996, !noalias !12995
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.az = load i64, ptr %i.ak, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.az, ptr %i.ay, align 8, !alias.scope !12996, !noalias !12995
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa102, i64 %i.j ; 8 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba) ; 2 uses
  %i.be = icmp sgt i8 %i.bd, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bh = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
  %i.bi = icmp slt i8 %i.bh, 0                    ; 2 uses
  %.lobit.i30.i = lshr i8 %i.bd, 7
  %i.bj = zext nneg i8 %.lobit.i30.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bj ; 3 uses
  %i.bl = zext i1 %i.be to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bl ; 4 uses
  %i.bn = select i1 %i.bi, i64 3, i64 2
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bn ; 4 uses
  %i.bp = select i1 %i.bi, i64 2, i64 3
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bp ; 3 uses
  %i.br = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bk)
  %i.bs = icmp slt i8 %i.br, 0                    ; 3 uses
  %i.bt = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bm)
  %i.bu = icmp slt i8 %i.bt, 0                    ; 3 uses
  %i.bv = select i1 %i.bs, ptr %i.bo, ptr %i.bk, !unpredictable !41
  %i.bw = select i1 %i.bu, ptr %i.bm, ptr %i.bq, !unpredictable !41
  %i.bx = select i1 %i.bu, ptr %i.bo, ptr %i.bm, !unpredictable !41
  %i.by = select i1 %i.bs, ptr %i.bk, ptr %i.bx, !unpredictable !41 ; 3 uses
  %i.bz = select i1 %i.bs, ptr %i.bm, ptr %i.bo, !unpredictable !41
  %i.ca = select i1 %i.bu, ptr %i.bq, ptr %i.bz, !unpredictable !41 ; 3 uses
  %i.cb = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.by)
  %i.cc = icmp slt i8 %i.cb, 0                    ; 2 uses
  %i.cd = select i1 %i.cc, ptr %i.ca, ptr %i.by, !unpredictable !41
  %i.ce = select i1 %i.cc, ptr %i.by, ptr %i.ca, !unpredictable !41
  %i.cf = load i64, ptr %i.bv, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.cf, ptr %i.bb, align 8, !alias.scope !12996, !noalias !12995
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ch = load i64, ptr %i.cd, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.ch, ptr %i.cg, align 8, !alias.scope !12996, !noalias !12995
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cj = load i64, ptr %i.ce, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.cj, ptr %i.ci, align 8, !alias.scope !12996, !noalias !12995
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.cl = load i64, ptr %i.bw, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.cl, ptr %i.ck, align 8, !alias.scope !12996, !noalias !12995
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.cm = load i64, ptr %.sroa.0.0.ph.lcssa102, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.cm, ptr %2, align 8, !alias.scope !12996, !noalias !12995
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa102, i64 %i.j
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.cp = load i64, ptr %i.cn, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.cp, ptr %i.co, align 8, !alias.scope !12996, !noalias !12995
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.cq = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.j ; 2 uses
  %i.cr = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.cr, label %.noexc35.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.j
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa102, i64 %i.j
  %i.ct = getelementptr [8 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.cu = icmp samesign ult i64 %.sroa.0.0.i, %i.cq
  br i1 %i.cu, label %.noexc35.1.i, label %.loopexit4.1.i

.noexc35.1.i:                                     ; preds = %.loopexit4.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.1.i
  %.sroa.05.010.1.i = phi i64 [ %i.dk, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.1.i ], [ %.sroa.0.0.i, %.loopexit4.i ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.sroa.05.010.1.i
  %.idx320 = shl nuw nsw i64 %.sroa.05.010.1.i, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx320 ; 5 uses
  %i.cx = load i64, ptr %i.cv, align 8, !alias.scope !12995, !noalias !12996
  store i64 %i.cx, ptr %i.cw, align 8, !alias.scope !12996, !noalias !12995
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -8 ; 3 uses
end_hunk_6
begin_hunk_7_@_RNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB2_13GlyphFragment3new:bb.a
bb.bw:                                            ; preds = %bb.bv
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ec, %bb.eb, %.body.i52.i.i, %bb.bw
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.oo, %bb.bw ], [ %.pn.i.i53.i.i, %.body.i52.i.i ], [ %i.wp, %bb.ec ], [ %i.wp, %bb.eb ] ; 2 uses
  %i.op = cmpxchg ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !23050
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.op, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph12PlannedGlyphEEEEB4X_.exit.i.i, label %bb.bx, !prof !43

bb.bx:                                            ; preds = %.body.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph12PlannedGlyphEEEEB4X_.exit.i.i unwind label %bb.eg, !noalias !23071

bb.by:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !23122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.oq = cmpxchg weak ptr %i.bv, i8 0, i8 1 acquire monotonic, align 1, !alias.scope !23049, !noalias !23123
  %i.or = extractvalue { i8, i1 } %i.oq, 1
  br i1 %i.or, label %.noexc.i.i.i, label %bb.bz, !prof !43

bb.bz:                                            ; preds = %bb.by
  %i.os = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.bv, i64 undef, i32 noundef -1)
          to label %.noexc.i.i.i unwind label %bb.eb, !noalias !23124 ; 0 uses

.noexc.i.i.i:                                     ; preds = %bb.bz, %bb.by
  %i.ot = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.ot, i64 64, i1 false), !noalias !23125
  store i64 0, ptr %i.ot, align 8, !alias.scope !23049, !noalias !23123
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !23049, !noalias !23123
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !23049, !noalias !23123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) @97, i64 32, i1 false), !noalias !23123
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !23049, !noalias !23123
  %i.ou = getelementptr inbounds nuw i8, ptr %i.bl, i64 96 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ao, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ov, ptr noundef nonnull align 8 dereferenceable(24) %i.ou, i64 24, i1 false), !noalias !23125
  store i64 0, ptr %i.ou, align 8, !alias.scope !23049, !noalias !23123
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !23049, !noalias !23123
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !23049, !noalias !23123
  %i.ow = cmpxchg ptr %i.bv, i8 1, i8 0 release monotonic, align 1, !alias.scope !23049, !noalias !23123
  %i.ox = extractvalue { i8, i1 } %i.ow, 1
  br i1 %i.ox, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.ca, !prof !43

bb.ca:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.bv, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.eb, !noalias !23124

.body.i52.i.i:                                    ; preds = %.loopexit57.i.i.i.i, %bb.dt, %.thread.i.i.i.i.i, %bb.dg, %bb.cs, %bb.cr, %.body61.i.i.i.i
  %.pn.i.i53.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %.loopexit57.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i, %.body61.i.i.i.i ], [ %i.uj, %bb.dg ], [ %i.uv, %.thread.i.i.i.i.i ], [ %i.vi, %bb.dt ], [ %i.sr, %bb.cr ], [ %i.sr, %bb.cs ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ap) #54, !noalias !23124
  br label %.body.i.i

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.ca, %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !23126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !noalias !23126
  %i.oy = getelementptr inbounds nuw i8, ptr %i.an, i64 336 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !23126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.oy, ptr noundef nonnull align 8 dereferenceable(24) %i.ov, i64 24, i1 false), !noalias !23126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.an, ptr noundef nonnull align 16 dereferenceable(336) %i.bh, i64 336, i1 false), !noalias !23050
  %i.oz = getelementptr inbounds nuw i8, ptr %i.an, i64 360
  store i64 0, ptr %i.oz, align 8, !noalias !23126
  call void @llvm.experimental.noalias.scope.decl(metadata !23127)
  call void @llvm.experimental.noalias.scope.decl(metadata !23128)
  call void @llvm.experimental.noalias.scope.decl(metadata !23129)
  %i.pa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 112), align 8, !alias.scope !23129, !noalias !23130, !noundef !41
  %i.pb = icmp eq i64 %i.pa, 0
  br i1 %i.pb, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.pc = mul i64 %i.fp, -1065810590584100411
  %i.pd = add i64 %i.pc, %i.fq
  %i.pe = mul i64 %i.pd, -1065810590584100411     ; 2 uses
  %i.pf = call noundef i64 @llvm.fshl.i64(i64 %i.pe, i64 %i.pe, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23131)
  call void @llvm.experimental.noalias.scope.decl(metadata !23132)
  %i.pg = lshr i64 %i.pf, 57
  %i.ph = trunc nuw nsw i64 %i.pg to i8
  %i.pi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 96), align 8, !alias.scope !23133, !noalias !23134, !noundef !41 ; 2 uses
  %i.pj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 88), align 8, !alias.scope !23133, !noalias !23134, !nonnull !41, !noundef !41 ; 2 uses
  %i.pk = insertelement <16 x i8> poison, i8 %i.ph, i64 0
  %i.pl = shufflevector <16 x i8> %i.pk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %bb.cb
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cb ], [ %i.qc, %bb.ce ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.pf, %bb.cb ], [ %i.qd, %bb.ce ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.pi ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.pm, align 1, !noalias !23135 ; 2 uses
  %i.pn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.pl
  %i.po = bitcast <16 x i1> %i.pn to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i = icmp eq i16 %i.po, 0
  br i1 %.not.i.not30.i.i.i.i.i.i, label %._crit_edge.i.i.i.i51.i.i, label %.lr.ph.i.i.i.i50.i.i

.lr.ph.i.i.i.i50.i.i:                             ; preds = %bb.cc, %bb.cd
  %.sroa.06.0.i31.i.i.i.i.i.i = phi i16 [ %i.qb, %bb.cd ], [ %i.po, %bb.cc ] ; 3 uses
  %i.pp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i, i1 true)
  %i.pq = zext nneg i16 %i.pp to i64
  %i.pr = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.pq
  %i.ps = and i64 %i.pr, %i.pi
  %i.pt = sub nsw i64 0, %i.ps
  %i.pu = getelementptr inbounds [32 x i8], ptr %i.pj, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 -32
  %.val2.i.i.i.i.i.i.i = load i128, ptr %i.pv, align 16, !noalias !23136, !noundef !41
  %i.pw = icmp eq i128 %i.fu, %.val2.i.i.i.i.i.i.i
  br i1 %i.pw, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.cd, !prof !43

._crit_edge.i.i.i.i51.i.i:                        ; preds = %bb.cd, %bb.cc
  %i.px = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.py = bitcast <16 x i1> %i.px to i16
  %i.pz = icmp eq i16 %i.py, 0
  br i1 %i.pz, label %bb.ce, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i, !prof !44

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i50.i.i
  %i.qa = add i16 %.sroa.06.0.i31.i.i.i.i.i.i, -1
  %i.qb = and i16 %i.qa, %.sroa.06.0.i31.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.qb, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i51.i.i, label %.lr.ph.i.i.i.i50.i.i

bb.ce:                                            ; preds = %._crit_edge.i.i.i.i51.i.i
  %i.qc = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.qd = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.qc
  br label %bb.cc

.body61.i.i.i.i:                                  ; preds = %bb.du, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i66.i.i.i.i, %bb.dx
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i52.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i50.i.i
  %i.qe = getelementptr inbounds i8, ptr %i.pu, i64 -16
  %i.qf = load i64, ptr %i.qe, align 8, !noalias !23137, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i: ; preds = %._crit_edge.i.i.i.i51.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.qf, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ undef, %._crit_edge.i.i.i.i51.i.i ]
  %.sroa.010.0.i.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ 0, %._crit_edge.i.i.i.i51.i.i ]
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.qi = load i64, ptr %i.qh, align 8, !alias.scope !23127, !noalias !23138 ; 5 uses
  %i.qj = icmp ult i64 %i.qi, 288230376151711744
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !alias.scope !23127, !noalias !23138, !nonnull !41 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.promoted.i.i.i.i = load i64, ptr %i.qg, align 8, !alias.scope !23127, !noalias !23138 ; 2 uses
  br label %select.unfold47.i.i.i.i.outer

select.unfold47.i.i.i.i.outer:                    ; preds = %select.unfold47.i.i.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i
  %.lcssa4558.i.i.i.ph = phi i64 [ %.promoted.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %.lcssa45.i.i.i, %select.unfold47.i.i.i.i.outer.backedge ]
  %.ph = phi i64 [ %.promoted.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %.lcssa9.i.i.i, %select.unfold47.i.i.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ false, %select.unfold47.i.i.i.i.outer.backedge ]
  %.sroa.026.0.i.i.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ true, %select.unfold47.i.i.i.i.outer.backedge ]
  %.sroa.026.0.i.i.i.i.off0989.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ 1, %select.unfold47.i.i.i.i.outer.backedge ]
  %.sroa.10.0.i.i.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %i.sy, %select.unfold47.i.i.i.i.outer.backedge ]
  %.sroa.17.0.i.i.i.i.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %.sroa.8.0.copyload.i.lcssa.i.i.i, %select.unfold47.i.i.i.i.outer.backedge ]
  %.sroa.8.1.i.i.i.i.ph = phi i64 [ %.sroa.8.0.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %i.sy, %select.unfold47.i.i.i.i.outer.backedge ]
  %.sroa.010.1.i.i.i.i.ph = phi i64 [ %.sroa.010.0.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ 1, %select.unfold47.i.i.i.i.outer.backedge ]
  br label %select.unfold47.i.i.i.i.outer1163

select.unfold47.i.i.i.i.outer1163.backedge:       ; preds = %bb.ck, %._crit_edge.i.i48.i.i.i.i
  br label %select.unfold47.i.i.i.i.outer1163

select.unfold47.i.i.i.i.outer1163:                ; preds = %select.unfold47.i.i.i.i.outer1163.backedge, %select.unfold47.i.i.i.i.outer
  %.not27.i.i.i.i.ph1164 = phi i1 [ %.not27.i.i.i.i.ph, %select.unfold47.i.i.i.i.outer ], [ false, %select.unfold47.i.i.i.i.outer1163.backedge ]
  %.sroa.026.0.i.i.i.i.off0.ph1165 = phi i1 [ %.sroa.026.0.i.i.i.i.off0.ph, %select.unfold47.i.i.i.i.outer ], [ true, %select.unfold47.i.i.i.i.outer1163.backedge ]
  %.sroa.026.0.i.i.i.i.off0989.ph1166 = phi i64 [ %.sroa.026.0.i.i.i.i.off0989.ph, %select.unfold47.i.i.i.i.outer ], [ 1, %select.unfold47.i.i.i.i.outer1163.backedge ]
  %.sroa.10.0.i.i.i.i.ph1167 = phi i64 [ %.sroa.10.0.i.i.i.i.ph, %select.unfold47.i.i.i.i.outer ], [ %.sroa.8.1.i.i.i.i, %select.unfold47.i.i.i.i.outer1163.backedge ] ; 9 uses
  %.sroa.17.0.i.i.i.i.ph1168 = phi i128 [ %.sroa.17.0.i.i.i.i.ph, %select.unfold47.i.i.i.i.outer ], [ %i.rb, %select.unfold47.i.i.i.i.outer1163.backedge ] ; 2 uses
  %.sroa.8.1.i.i.i.i.ph1169 = phi i64 [ %.sroa.8.1.i.i.i.i.ph, %select.unfold47.i.i.i.i.outer ], [ %.sroa.8.1.i.i.i.i, %select.unfold47.i.i.i.i.outer1163.backedge ]
  %.sroa.010.1.i.i.i.i.ph1170 = phi i64 [ %.sroa.010.1.i.i.i.i.ph, %select.unfold47.i.i.i.i.outer ], [ 1, %select.unfold47.i.i.i.i.outer1163.backedge ]
  br label %select.unfold47.i.i.i.i

select.unfold47.i.i.i.i:                          ; preds = %select.unfold47.i.i.i.i.outer1163, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.not27.i.i.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.not27.i.i.i.i.ph1164, %select.unfold47.i.i.i.i.outer1163 ] ; 2 uses
  %.sroa.026.0.i.i.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.026.0.i.i.i.i.off0.ph1165, %select.unfold47.i.i.i.i.outer1163 ] ; 2 uses
  %.sroa.026.0.i.i.i.i.off0989 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.026.0.i.i.i.i.off0989.ph1166, %select.unfold47.i.i.i.i.outer1163 ] ; 3 uses
  %.sroa.8.1.i.i.i.i = phi i64 [ %i.so, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.8.1.i.i.i.i.ph1169, %select.unfold47.i.i.i.i.outer1163 ] ; 7 uses
  %.sroa.010.1.i.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.010.1.i.i.i.i.ph1170, %select.unfold47.i.i.i.i.outer1163 ] ; 3 uses
  %i.qn = trunc nuw i64 %.sroa.010.1.i.i.i.i to i1
  %or.cond.i.i.i.i = select i1 %.not27.i.i.i.i, i1 %i.qn, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %select.unfold47.i.i.i.i
  call void @llvm.assume(i1 %i.qj)
  %i.qo = icmp ult i64 %.ph, %i.qi
  br i1 %i.qo, label %.lr.ph.i.i.preheader.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.cf
  %i.qp = getelementptr inbounds nuw [32 x i8], ptr %i.ql, i64 %.ph ; 3 uses
  %.sroa.5.0..sroa_idx.i447.i.i.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 12 ; 2 uses
  %.sroa.5.0.copyload.i48.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i447.i.i.i, align 4, !noalias !23139 ; 2 uses
  %.sroa.8.0..sroa_idx.i49.i.i.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %.sroa.8.0.copyload.i50.i.i.i = load i128, ptr %.sroa.8.0..sroa_idx.i49.i.i.i, align 16, !noalias !23139
  store i32 -2, ptr %.sroa.5.0..sroa_idx.i447.i.i.i, align 4, !noalias !23140
  %.not.i37.i51.i.i.i = icmp eq i32 %.sroa.5.0.copyload.i48.i.i.i, -2
  br i1 %.not.i37.i51.i.i.i, label %.lr.ph.i57.i.i.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

.lr.ph.i57.i.i.preheader:                         ; preds = %.lr.ph.i.i.preheader.i.i.i
  %i.qq = add nuw nsw i64 %.ph, 1                 ; 2 uses
  %exitcond.not.i.i.i.i.i922 = icmp eq i64 %i.qq, %i.qi
  br i1 %exitcond.not.i.i.i.i.i922, label %.loopexit.i.loopexit.i.i.i, label %.lr.ph.i.i.i58.i.i

.lr.ph.i.i.i58.i.i:                               ; preds = %.lr.ph.i57.i.i.preheader, %.lr.ph.i57.i.i
  %i.qr = phi i64 [ %i.qt, %.lr.ph.i57.i.i ], [ %i.qq, %.lr.ph.i57.i.i.preheader ] ; 4 uses
  %i.qs = getelementptr inbounds nuw [32 x i8], ptr %i.ql, i64 %i.qr ; 3 uses
  %.sroa.5.0..sroa_idx.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.qs, i64 12 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i4.i.i.i, align 4, !noalias !23139 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %.sroa.8.0.copyload.i.i.i.i = load i128, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 16, !noalias !23139
  store i32 -2, ptr %.sroa.5.0..sroa_idx.i4.i.i.i, align 4, !noalias !23140
  %.not.i37.i.i.i.i = icmp eq i32 %.sroa.5.0.copyload.i.i.i.i, -2
  br i1 %.not.i37.i.i.i.i, label %.lr.ph.i57.i.i, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

.lr.ph.i57.i.i:                                   ; preds = %.lr.ph.i.i.i58.i.i
  %i.qt = add nuw nsw i64 %i.qr, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.qt, %i.qi
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.i, label %.lr.ph.i.i.i58.i.i

bb.cg:                                            ; preds = %select.unfold47.i.i.i.i
  %i.qu = icmp sgt i64 %.sroa.8.1.i.i.i.i, -1
  br i1 %i.qu, label %bb.ch, label %.loopexit58.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %.val36.i.i59.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 24), align 8, !noalias !23130, !noundef !41
  %i.qv = icmp ult i64 %.sroa.8.1.i.i.i.i, %.val36.i.i59.i.i
  br i1 %i.qv, label %bb.ci, label %.invoke.i.i.i.i, !prof !43

bb.ci:                                            ; preds = %bb.ch
  %.val35.i.i60.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 16), align 8, !noalias !23130, !nonnull !41, !noundef !41
  %i.qw = getelementptr inbounds nuw [40 x i8], ptr %.val35.i.i60.i.i, i64 %.sroa.8.1.i.i.i.i ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !range !52, !noalias !23141, !noundef !41
  %.not.i38.i.i61.i.i = icmp eq i64 %i.qx, 2
  br i1 %.not.i38.i.i61.i.i, label %.invoke.i.i.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, !prof !44

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.ci
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !23130
  invoke fastcc void @_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE7extractCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qy)
          to label %bb.cj unwind label %.loopexit57.i.i.i.i.loopexit, !noalias !23142

bb.cj:                                            ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.qz = load i128, ptr %i.am, align 16, !range !42, !noalias !23130, !noundef !41
  %i.ra = trunc nuw i128 %i.qz to i1
  br i1 %i.ra, label %bb.ck, label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  %i.rb = load i128, ptr %i.qm, align 16, !noalias !23130, !noundef !41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !23130
  call void @llvm.experimental.noalias.scope.decl(metadata !23143)
  %i.rc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 144), align 8, !alias.scope !23143, !noalias !23130, !noundef !41
  %i.rd = icmp eq i64 %i.rc, 0
  br i1 %i.rd, label %select.unfold47.i.i.i.i.outer1163.backedge, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.re = mul i64 %.sroa.8.1.i.i.i.i, -1065810590584100411
  %i.rf = trunc i128 %i.rb to i64
  %i.rg = add i64 %i.re, %i.rf
  %i.rh = mul i64 %i.rg, -1065810590584100411
  %i.ri = lshr i128 %i.rb, 64
  %i.rj = trunc nuw i128 %i.ri to i64
  %i.rk = add i64 %i.rh, %i.rj
  %i.rl = mul i64 %i.rk, -1065810590584100411     ; 2 uses
  %i.rm = call noundef i64 @llvm.fshl.i64(i64 %i.rl, i64 %i.rl, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23144)
  call void @llvm.experimental.noalias.scope.decl(metadata !23145)
  %i.rn = lshr i64 %i.rm, 57
  %i.ro = trunc nuw nsw i64 %i.rn to i8
  %i.rp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 128), align 8, !alias.scope !23146, !noalias !23147, !noundef !41 ; 2 uses
  %i.rq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 120), align 8, !alias.scope !23146, !noalias !23147, !nonnull !41, !noundef !41 ; 2 uses
  %i.rr = insertelement <16 x i8> poison, i8 %i.ro, i64 0
  %i.rs = shufflevector <16 x i8> %i.rr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cm

bb.cm:                                            ; preds = %bb.co, %bb.cl
  %.sroa.9.0.i.i.i39.i.i.i.i = phi i64 [ 0, %bb.cl ], [ %i.sl, %bb.co ]
  %.pn.i.i40.i.i.i.i = phi i64 [ %i.rm, %bb.cl ], [ %i.sm, %bb.co ]
  %.sroa.01.0.i.i.i41.i.i.i.i = and i64 %.pn.i.i40.i.i.i.i, %i.rp ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.sroa.01.0.i.i.i41.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i42.i.i.i.i = load <16 x i8>, ptr %i.rt, align 1, !noalias !23148 ; 2 uses
  %i.ru = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i.i.i, %i.rs
  %i.rv = bitcast <16 x i1> %i.ru to i16          ; 2 uses
  %.not.i.not30.i.i43.i.i.i.i = icmp eq i16 %i.rv, 0
  br i1 %.not.i.not30.i.i43.i.i.i.i, label %._crit_edge.i.i48.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i

.lr.ph.i.i44.i.i.i.i:                             ; preds = %bb.cm, %bb.cn
  %.sroa.06.0.i31.i.i45.i.i.i.i = phi i16 [ %i.sk, %bb.cn ], [ %i.rv, %bb.cm ] ; 3 uses
  %i.rw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i45.i.i.i.i, i1 true)
  %i.rx = zext nneg i16 %i.rw to i64
  %i.ry = add i64 %.sroa.01.0.i.i.i41.i.i.i.i, %i.rx
  %i.rz = and i64 %i.ry, %i.rp
  %i.sa = sub nsw i64 0, %i.rz
  %i.sb = getelementptr inbounds [48 x i8], ptr %i.rq, i64 %i.sa ; 3 uses
  %i.sc = getelementptr inbounds i8, ptr %i.sb, i64 -48
  %.val2.i.i.i46.i.i.i.i = load i64, ptr %i.sc, align 8, !noalias !23149, !noundef !41
  %i.sd = getelementptr i8, ptr %i.sb, i64 -32
  %.val3.i.i.i.i.i.i.i = load i128, ptr %i.sd, align 16, !noalias !23149
  %i.se = icmp eq i64 %.sroa.8.1.i.i.i.i, %.val2.i.i.i46.i.i.i.i
  %i.sf = icmp eq i128 %i.rb, %.val3.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.se, i1 %i.sf, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.cn, !prof !43

._crit_edge.i.i48.i.i.i.i:                        ; preds = %bb.cn, %bb.cm
  %i.sg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i.i.i, splat (i8 -1)
  %i.sh = bitcast <16 x i1> %i.sg to i16
  %i.si = icmp eq i16 %i.sh, 0
  br i1 %i.si, label %bb.co, label %select.unfold47.i.i.i.i.outer1163.backedge, !prof !44

bb.cn:                                            ; preds = %.lr.ph.i.i44.i.i.i.i
  %i.sj = add i16 %.sroa.06.0.i31.i.i45.i.i.i.i, -1
  %i.sk = and i16 %i.sj, %.sroa.06.0.i31.i.i45.i.i.i.i ; 2 uses
  %.not.i.not.i.i47.i.i.i.i = icmp eq i16 %i.sk, 0
  br i1 %.not.i.not.i.i47.i.i.i.i, label %._crit_edge.i.i48.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i

bb.co:                                            ; preds = %._crit_edge.i.i48.i.i.i.i
  %i.sl = add i64 %.sroa.9.0.i.i.i39.i.i.i.i, 16  ; 2 uses
  %i.sm = add i64 %.sroa.01.0.i.i.i41.i.i.i.i, %i.sl
  br label %bb.cm

bb.cp:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !23130
  br label %.loopexit58.i.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.lr.ph.i.i44.i.i.i.i
  %i.sn = getelementptr inbounds i8, ptr %i.sb, i64 -16
  %i.so = load i64, ptr %i.sn, align 8, !noalias !23137, !noundef !41
  br label %select.unfold47.i.i.i.i

.loopexit58.i.i.i.i:                              ; preds = %bb.cg, %.loopexit.i.i.i.i, %bb.cp
  %i.sp = load i64, ptr %i.an, align 16, !range !52, !alias.scope !23150, !noalias !23151, !noundef !41
  %i.sq = icmp eq i64 %i.sp, 2
  br i1 %i.sq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph12PlannedGlyphEEB15_.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.loopexit58.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEBJ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(368) %i.an)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph12PlannedGlyphEEB15_.exit.i.i.i.i.i unwind label %bb.cr, !noalias !23152

bb.cr:                                            ; preds = %bb.cq
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.oy, align 16, !alias.scope !23153, !noalias !23151 ; 2 uses
  %i.ss = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ss, label %.body.i52.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.st = getelementptr inbounds nuw i8, ptr %i.an, i64 344
  %.val3.i.i.i.i.i = load ptr, ptr %i.st, align 8, !alias.scope !23153, !noalias !23151, !nonnull !41, !noundef !41
  %i.su = shl nuw i64 %.val2.i.i.i.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.su, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !23152
  br label %.body.i52.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph12PlannedGlyphEEB15_.exit.i.i.i.i.i: ; preds = %bb.cq, %.loopexit58.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.oy, align 16, !alias.scope !23153, !noalias !23151 ; 2 uses
  %i.sv = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.sv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph12PlannedGlyphEEEB3g_.exit.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph12PlannedGlyphEEB15_.exit.i.i.i.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %i.an, i64 344
  %.val1.i.i.i.i.i = load ptr, ptr %i.sw, align 8, !alias.scope !23153, !noalias !23151, !nonnull !41, !noundef !41
  %i.sx = shl nuw i64 %.val.i.i.i.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.sx, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !23152
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph12PlannedGlyphEEEB3g_.exit.i.i.i.i

_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i58.i.i, %.lr.ph.i.i.preheader.i.i.i
  %.lcssa45.i.i.i = phi i64 [ %.lcssa4558.i.i.i.ph, %.lr.ph.i.i.preheader.i.i.i ], [ %i.qr, %.lr.ph.i.i.i58.i.i ] ; 2 uses
  %.lcssa9.i.i.i = phi i64 [ %.ph, %.lr.ph.i.i.preheader.i.i.i ], [ %i.qr, %.lr.ph.i.i.i58.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.qp, %.lr.ph.i.i.preheader.i.i.i ], [ %i.qs, %.lr.ph.i.i.i58.i.i ]
  %.sroa.5.0.copyload.i.lcssa.i.i.i = phi i32 [ %.sroa.5.0.copyload.i48.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %.lr.ph.i.i.i58.i.i ] ; 2 uses
  %.sroa.8.0.copyload.i.lcssa.i.i.i = phi i128 [ %.sroa.8.0.copyload.i50.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.8.0.copyload.i.i.i.i, %.lr.ph.i.i.i58.i.i ]
  store i64 %.lcssa45.i.i.i, ptr %i.qg, align 8, !noalias !23126
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(12) %.lcssa.i.i.i, i64 12, i1 false), !noalias !23137
  %i.sy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 40), align 8, !noalias !23130, !noundef !41 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23154)
  %i.sz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 32), align 8, !alias.scope !23154, !noalias !23155, !noundef !41
  %i.ta = add i64 %i.sz, 1
  store i64 %i.ta, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 32), align 8, !alias.scope !23154, !noalias !23155
  %i.tb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 24), align 8, !alias.scope !23154, !noalias !23155, !noundef !41 ; 3 uses
  %i.tc = icmp ult i64 %i.tb, 230584300921369396
  call void @llvm.assume(i1 %i.tc)
  %i.td = icmp eq i64 %i.sy, %i.tb
  br i1 %i.td, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.te = icmp ult i64 %i.sy, %i.tb
  br i1 %i.te, label %bb.cx, label %.invoke.i.i.i.i, !prof !43

bb.cv:                                            ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23156)
  %i.tf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 8), align 8, !range !45, !alias.scope !23157, !noalias !23158, !noundef !41
  %i.tg = icmp eq i64 %i.sy, %i.tf
  br i1 %i.tg, label %bb.cw, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1j_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 8)) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i unwind label %.loopexit57.i.i.i.i.loopexit.split-lp, !noalias !23137

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %bb.cw, %bb.cv
  %i.th = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 16), align 8, !alias.scope !23157, !noalias !23158, !nonnull !41, !noundef !41
  %i.ti = getelementptr inbounds nuw [40 x i8], ptr %i.th, i64 %i.sy ; 5 uses
  store i64 %.sroa.026.0.i.i.i.i.off0989, ptr %i.ti, align 8, !noalias !23159
  %.sroa.513.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  store i64 %.sroa.10.0.i.i.i.i.ph1167, ptr %.sroa.513.0..sroa_idx14.i.i.i.i, align 8, !noalias !23159
  %.sroa.6.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i.i.i.i, i64 12, i1 false), !noalias !23159
  %.sroa.7.0..sroa_idx17.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ti, i64 28
  store i32 %.sroa.5.0.copyload.i.lcssa.i.i.i, ptr %.sroa.7.0..sroa_idx17.i.i.i.i, align 4, !noalias !23159
  %.sroa.819.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ti, i64 32
  store i64 0, ptr %.sroa.819.0..sroa_idx20.i.i.i.i, align 8, !noalias !23159
  %i.tj = add nuw nsw i64 %i.sy, 1                ; 2 uses
  store i64 %i.tj, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 24), align 8, !alias.scope !23157, !noalias !23158
  store i64 %i.tj, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 40), align 8, !alias.scope !23154, !noalias !23155
  br label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEE9insert_atCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.cx:                                            ; preds = %bb.cu
  %i.tk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment7planned7___CACHE, i64 16), align 8, !alias.scope !23154, !noalias !23155, !nonnull !41, !noundef !41
end_hunk_7
begin_hunk_8_@_RNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB2_13GlyphFragment4base:bb.a
bb.dq:                                            ; preds = %bb.dp
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.fw, %bb.fv, %.body.i54.i, %bb.dq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.sr, %bb.dq ], [ %.pn.i.i55.i, %.body.i54.i ], [ %i.aas, %bb.fw ], [ %i.aas, %bb.fv ] ; 2 uses
  %i.ss = cmpxchg ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !23592
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ss, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEEEEB4X_.exit.i, label %bb.dr, !prof !43

bb.dr:                                            ; preds = %.body.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEEEEB4X_.exit.i unwind label %bb.ga, !noalias !23610

bb.ds:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !23714)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.st = cmpxchg weak ptr %i.ay, i8 0, i8 1 acquire monotonic, align 1, !alias.scope !23591, !noalias !23715
  %i.su = extractvalue { i8, i1 } %i.st, 1
  br i1 %i.su, label %.noexc.i.i, label %bb.dt, !prof !43

bb.dt:                                            ; preds = %bb.ds
  %i.sv = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.ay, i64 undef, i32 noundef -1)
          to label %.noexc.i.i unwind label %bb.fv, !noalias !23716 ; 0 uses

.noexc.i.i:                                       ; preds = %bb.dt, %bb.ds
  %i.sw = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.sw, i64 64, i1 false), !noalias !23716
  store i64 0, ptr %i.sw, align 8, !alias.scope !23591, !noalias !23715
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !23591, !noalias !23715
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !23591, !noalias !23715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) @97, i64 32, i1 false), !noalias !23715
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !23591, !noalias !23715
  %i.sx = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sy, ptr noundef nonnull align 8 dereferenceable(24) %i.sx, i64 24, i1 false), !noalias !23716
  store i64 0, ptr %i.sx, align 8, !alias.scope !23591, !noalias !23715
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23591, !noalias !23715
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !23591, !noalias !23715
  %i.sz = cmpxchg ptr %i.ay, i8 1, i8 0 release monotonic, align 1, !alias.scope !23591, !noalias !23715
  %i.ta = extractvalue { i8, i1 } %i.sz, 1
  br i1 %i.ta, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.du, !prof !43

bb.du:                                            ; preds = %.noexc.i.i
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.ay, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.fv, !noalias !23716

.body.i54.i:                                      ; preds = %.loopexit57.i.i.i, %bb.fn, %.thread.i.i.i56.i, %bb.fa, %bb.em, %bb.el, %.body61.i.i.i
  %.pn.i.i55.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit57.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i, %.body61.i.i.i ], [ %i.ym, %bb.fa ], [ %i.yy, %.thread.i.i.i56.i ], [ %i.zl, %bb.fn ], [ %i.wu, %bb.el ], [ %i.wu, %bb.em ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f) #54, !noalias !23716
  br label %.body.i

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.du, %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !23717
  %i.tb = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.tb, ptr noundef nonnull align 8 dereferenceable(24) %i.sy, i64 24, i1 false), !noalias !23717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.d, ptr noundef nonnull align 16 dereferenceable(304) %i.as, i64 304, i1 false), !noalias !23592
  %i.tc = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  store i64 0, ptr %i.tc, align 8, !noalias !23717
  call void @llvm.experimental.noalias.scope.decl(metadata !23718)
  call void @llvm.experimental.noalias.scope.decl(metadata !23719)
  call void @llvm.experimental.noalias.scope.decl(metadata !23720)
  %i.td = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 112), align 8, !alias.scope !23720, !noalias !23721, !noundef !41
  %i.te = icmp eq i64 %i.td, 0
  br i1 %i.te, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.tf = mul i64 %i.eq, -1065810590584100411
  %i.tg = add i64 %i.tf, %i.er
  %i.th = mul i64 %i.tg, -1065810590584100411     ; 2 uses
  %i.ti = call noundef i64 @llvm.fshl.i64(i64 %i.th, i64 %i.th, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23722)
  call void @llvm.experimental.noalias.scope.decl(metadata !23723)
  %i.tj = lshr i64 %i.ti, 57
  %i.tk = trunc nuw nsw i64 %i.tj to i8
  %i.tl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 96), align 8, !alias.scope !23724, !noalias !23725, !noundef !41 ; 2 uses
  %i.tm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 88), align 8, !alias.scope !23724, !noalias !23725, !nonnull !41, !noundef !41 ; 2 uses
  %i.tn = insertelement <16 x i8> poison, i8 %i.tk, i64 0
  %i.to = shufflevector <16 x i8> %i.tn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dy, %bb.dv
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.dv ], [ %i.uf, %bb.dy ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ti, %bb.dv ], [ %i.ug, %bb.dy ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.tl ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.tp, align 1, !noalias !23726 ; 2 uses
  %i.tq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.to
  %i.tr = bitcast <16 x i1> %i.tq to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.tr, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i53.i

.lr.ph.i.i.i.i53.i:                               ; preds = %bb.dw, %bb.dx
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ue, %bb.dx ], [ %i.tr, %bb.dw ] ; 3 uses
  %i.ts = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.tt = zext nneg i16 %i.ts to i64
  %i.tu = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.tt
  %i.tv = and i64 %i.tu, %i.tl
  %i.tw = sub nsw i64 0, %i.tv
  %i.tx = getelementptr inbounds [32 x i8], ptr %i.tm, i64 %i.tw ; 2 uses
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.ty, align 16, !noalias !23727, !noundef !41
  %i.tz = icmp eq i128 %i.ev, %.val2.i.i.i.i.i.i
  br i1 %i.tz, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.dx, !prof !43

._crit_edge.i.i.i.i.i:                            ; preds = %bb.dx, %bb.dw
  %i.ua = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ub = bitcast <16 x i1> %i.ua to i16
  %i.uc = icmp eq i16 %i.ub, 0
  br i1 %i.uc, label %bb.dy, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, !prof !44

bb.dx:                                            ; preds = %.lr.ph.i.i.i.i53.i
  %i.ud = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ue = and i16 %i.ud, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ue, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i53.i

bb.dy:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.uf = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ug = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.uf
  br label %bb.dw

.body61.i.i.i:                                    ; preds = %bb.fo, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i66.i.i.i, %bb.fr
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i54.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i53.i
  %i.uh = getelementptr inbounds i8, ptr %i.tx, i64 -16
  %i.ui = load i64, ptr %i.uh, align 8, !noalias !23728, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.ui, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.010.0.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %._crit_edge.i.i.i.i.i ]
  %i.uj = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ul = load i64, ptr %i.uk, align 8, !alias.scope !23718, !noalias !23729 ; 5 uses
  %i.um = icmp ult i64 %i.ul, 288230376151711744
  %i.un = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !alias.scope !23718, !noalias !23729, !nonnull !41 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.promoted.i.i.i = load i64, ptr %i.uj, align 8, !alias.scope !23718, !noalias !23729 ; 2 uses
  br label %select.unfold47.i.i.i.outer

select.unfold47.i.i.i.outer:                      ; preds = %select.unfold47.i.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i
  %.lcssa4558.i.i.ph = phi i64 [ %.promoted.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %.lcssa45.i.i, %select.unfold47.i.i.i.outer.backedge ]
  %.ph = phi i64 [ %.promoted.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %.lcssa9.i.i, %select.unfold47.i.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ false, %select.unfold47.i.i.i.outer.backedge ]
  %.sroa.026.0.i.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ true, %select.unfold47.i.i.i.outer.backedge ]
  %.sroa.026.0.i.i.i.off0250.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ 1, %select.unfold47.i.i.i.outer.backedge ]
  %.sroa.10.0.i.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %i.xb, %select.unfold47.i.i.i.outer.backedge ]
  %.sroa.17.0.i.i.i.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %.sroa.8.0.copyload.i.lcssa.i.i, %select.unfold47.i.i.i.outer.backedge ]
  %.sroa.8.1.i.i.i.ph = phi i64 [ %.sroa.8.0.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %i.xb, %select.unfold47.i.i.i.outer.backedge ]
  %.sroa.010.1.i.i.i.ph = phi i64 [ %.sroa.010.0.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ 1, %select.unfold47.i.i.i.outer.backedge ]
  br label %select.unfold47.i.i.i.outer252

select.unfold47.i.i.i.outer252.backedge:          ; preds = %bb.ee, %._crit_edge.i.i48.i.i.i
  br label %select.unfold47.i.i.i.outer252

select.unfold47.i.i.i.outer252:                   ; preds = %select.unfold47.i.i.i.outer252.backedge, %select.unfold47.i.i.i.outer
  %.not27.i.i.i.ph253 = phi i1 [ %.not27.i.i.i.ph, %select.unfold47.i.i.i.outer ], [ false, %select.unfold47.i.i.i.outer252.backedge ]
  %.sroa.026.0.i.i.i.off0.ph254 = phi i1 [ %.sroa.026.0.i.i.i.off0.ph, %select.unfold47.i.i.i.outer ], [ true, %select.unfold47.i.i.i.outer252.backedge ]
  %.sroa.026.0.i.i.i.off0250.ph255 = phi i64 [ %.sroa.026.0.i.i.i.off0250.ph, %select.unfold47.i.i.i.outer ], [ 1, %select.unfold47.i.i.i.outer252.backedge ]
  %.sroa.10.0.i.i.i.ph256 = phi i64 [ %.sroa.10.0.i.i.i.ph, %select.unfold47.i.i.i.outer ], [ %.sroa.8.1.i.i.i, %select.unfold47.i.i.i.outer252.backedge ] ; 9 uses
  %.sroa.17.0.i.i.i.ph257 = phi i128 [ %.sroa.17.0.i.i.i.ph, %select.unfold47.i.i.i.outer ], [ %i.ve, %select.unfold47.i.i.i.outer252.backedge ] ; 2 uses
  %.sroa.8.1.i.i.i.ph258 = phi i64 [ %.sroa.8.1.i.i.i.ph, %select.unfold47.i.i.i.outer ], [ %.sroa.8.1.i.i.i, %select.unfold47.i.i.i.outer252.backedge ]
  %.sroa.010.1.i.i.i.ph259 = phi i64 [ %.sroa.010.1.i.i.i.ph, %select.unfold47.i.i.i.outer ], [ 1, %select.unfold47.i.i.i.outer252.backedge ]
  br label %select.unfold47.i.i.i

select.unfold47.i.i.i:                            ; preds = %select.unfold47.i.i.i.outer252, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.not27.i.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.not27.i.i.i.ph253, %select.unfold47.i.i.i.outer252 ] ; 2 uses
  %.sroa.026.0.i.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.026.0.i.i.i.off0.ph254, %select.unfold47.i.i.i.outer252 ] ; 2 uses
  %.sroa.026.0.i.i.i.off0250 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.026.0.i.i.i.off0250.ph255, %select.unfold47.i.i.i.outer252 ] ; 3 uses
  %.sroa.8.1.i.i.i = phi i64 [ %i.wr, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.8.1.i.i.i.ph258, %select.unfold47.i.i.i.outer252 ] ; 7 uses
  %.sroa.010.1.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.010.1.i.i.i.ph259, %select.unfold47.i.i.i.outer252 ] ; 3 uses
  %i.uq = trunc nuw i64 %.sroa.010.1.i.i.i to i1
  %or.cond.i.i.i = select i1 %.not27.i.i.i, i1 %i.uq, i1 false
  br i1 %or.cond.i.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %select.unfold47.i.i.i
  call void @llvm.assume(i1 %i.um)
  %i.ur = icmp ult i64 %.ph, %i.ul
  br i1 %i.ur, label %.lr.ph.i.i.preheader.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.dz
  %i.us = getelementptr inbounds nuw [32 x i8], ptr %i.uo, i64 %.ph ; 3 uses
  %.sroa.5.0..sroa_idx.i447.i.i = getelementptr inbounds nuw i8, ptr %i.us, i64 12 ; 2 uses
  %.sroa.5.0.copyload.i48.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i447.i.i, align 4, !noalias !23730 ; 2 uses
  %.sroa.8.0..sroa_idx.i49.i.i = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %.sroa.8.0.copyload.i50.i.i = load i128, ptr %.sroa.8.0..sroa_idx.i49.i.i, align 16, !noalias !23730
  store i32 -2, ptr %.sroa.5.0..sroa_idx.i447.i.i, align 4, !noalias !23731
  %.not.i37.i51.i.i = icmp eq i32 %.sroa.5.0.copyload.i48.i.i, -2
  br i1 %.not.i37.i51.i.i, label %.lr.ph.i65.i.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

.lr.ph.i65.i.preheader:                           ; preds = %.lr.ph.i.i.preheader.i.i
  %i.ut = add nuw nsw i64 %.ph, 1                 ; 2 uses
  %exitcond.not.i.i.i.i222 = icmp eq i64 %i.ut, %i.ul
  br i1 %exitcond.not.i.i.i.i222, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i66.i

.lr.ph.i.i.i66.i:                                 ; preds = %.lr.ph.i65.i.preheader, %.lr.ph.i65.i
  %i.uu = phi i64 [ %i.uw, %.lr.ph.i65.i ], [ %i.ut, %.lr.ph.i65.i.preheader ] ; 4 uses
  %i.uv = getelementptr inbounds nuw [32 x i8], ptr %i.uo, i64 %i.uu ; 3 uses
  %.sroa.5.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.uv, i64 12 ; 2 uses
  %.sroa.5.0.copyload.i.i67.i = load i32, ptr %.sroa.5.0..sroa_idx.i4.i.i, align 4, !noalias !23730 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i68.i = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %.sroa.8.0.copyload.i.i.i = load i128, ptr %.sroa.8.0..sroa_idx.i.i68.i, align 16, !noalias !23730
  store i32 -2, ptr %.sroa.5.0..sroa_idx.i4.i.i, align 4, !noalias !23731
  %.not.i37.i.i.i = icmp eq i32 %.sroa.5.0.copyload.i.i67.i, -2
  br i1 %.not.i37.i.i.i, label %.lr.ph.i65.i, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i.i.i66.i
  %i.uw = add nuw nsw i64 %i.uu, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.uw, %i.ul
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i66.i

bb.ea:                                            ; preds = %select.unfold47.i.i.i
  %i.ux = icmp sgt i64 %.sroa.8.1.i.i.i, -1
  br i1 %i.ux, label %bb.eb, label %.loopexit58.i.i.i

bb.eb:                                            ; preds = %bb.ea
  %.val36.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 24), align 8, !noalias !23721, !noundef !41
  %i.uy = icmp ult i64 %.sroa.8.1.i.i.i, %.val36.i.i.i
  br i1 %i.uy, label %bb.ec, label %.invoke.i.i59.i, !prof !43

bb.ec:                                            ; preds = %bb.eb
  %.val35.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 16), align 8, !noalias !23721, !nonnull !41, !noundef !41
  %i.uz = getelementptr inbounds nuw [40 x i8], ptr %.val35.i.i.i, i64 %.sroa.8.1.i.i.i ; 2 uses
  %i.va = load i64, ptr %i.uz, align 8, !range !52, !noalias !23732, !noundef !41
  %.not.i38.i.i.i = icmp eq i64 %i.va, 2
  br i1 %.not.i38.i.i.i, label %.invoke.i.i59.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !44

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.ec
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23721
  invoke fastcc void @_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE7extractCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.vb)
          to label %bb.ed unwind label %.loopexit57.i.i.i.loopexit, !noalias !23733

bb.ed:                                            ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.vc = load i128, ptr %i.c, align 16, !range !42, !noalias !23721, !noundef !41
  %i.vd = trunc nuw i128 %i.vc to i1
  br i1 %i.vd, label %bb.ee, label %bb.ej

bb.ee:                                            ; preds = %bb.ed
  %i.ve = load i128, ptr %i.up, align 16, !noalias !23721, !noundef !41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23721
  call void @llvm.experimental.noalias.scope.decl(metadata !23734)
  %i.vf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 144), align 8, !alias.scope !23734, !noalias !23721, !noundef !41
  %i.vg = icmp eq i64 %i.vf, 0
  br i1 %i.vg, label %select.unfold47.i.i.i.outer252.backedge, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vh = mul i64 %.sroa.8.1.i.i.i, -1065810590584100411
  %i.vi = trunc i128 %i.ve to i64
  %i.vj = add i64 %i.vh, %i.vi
  %i.vk = mul i64 %i.vj, -1065810590584100411
  %i.vl = lshr i128 %i.ve, 64
  %i.vm = trunc nuw i128 %i.vl to i64
  %i.vn = add i64 %i.vk, %i.vm
  %i.vo = mul i64 %i.vn, -1065810590584100411     ; 2 uses
  %i.vp = call noundef i64 @llvm.fshl.i64(i64 %i.vo, i64 %i.vo, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23735)
  call void @llvm.experimental.noalias.scope.decl(metadata !23736)
  %i.vq = lshr i64 %i.vp, 57
  %i.vr = trunc nuw nsw i64 %i.vq to i8
  %i.vs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 128), align 8, !alias.scope !23737, !noalias !23738, !noundef !41 ; 2 uses
  %i.vt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 120), align 8, !alias.scope !23737, !noalias !23738, !nonnull !41, !noundef !41 ; 2 uses
  %i.vu = insertelement <16 x i8> poison, i8 %i.vr, i64 0
  %i.vv = shufflevector <16 x i8> %i.vu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ei, %bb.ef
  %.sroa.9.0.i.i.i39.i.i.i = phi i64 [ 0, %bb.ef ], [ %i.wo, %bb.ei ]
  %.pn.i.i40.i.i.i = phi i64 [ %i.vp, %bb.ef ], [ %i.wp, %bb.ei ]
  %.sroa.01.0.i.i.i41.i.i.i = and i64 %.pn.i.i40.i.i.i, %i.vs ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 %.sroa.01.0.i.i.i41.i.i.i
  %.sroa.0.0.copyload.i24.i.i42.i.i.i = load <16 x i8>, ptr %i.vw, align 1, !noalias !23739 ; 2 uses
  %i.vx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i.i, %i.vv
  %i.vy = bitcast <16 x i1> %i.vx to i16          ; 2 uses
  %.not.i.not30.i.i43.i.i.i = icmp eq i16 %i.vy, 0
  br i1 %.not.i.not30.i.i43.i.i.i, label %._crit_edge.i.i48.i.i.i, label %.lr.ph.i.i44.i.i.i

.lr.ph.i.i44.i.i.i:                               ; preds = %bb.eg, %bb.eh
  %.sroa.06.0.i31.i.i45.i.i.i = phi i16 [ %i.wn, %bb.eh ], [ %i.vy, %bb.eg ] ; 3 uses
  %i.vz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i45.i.i.i, i1 true)
  %i.wa = zext nneg i16 %i.vz to i64
  %i.wb = add i64 %.sroa.01.0.i.i.i41.i.i.i, %i.wa
  %i.wc = and i64 %i.wb, %i.vs
  %i.wd = sub nsw i64 0, %i.wc
  %i.we = getelementptr inbounds [48 x i8], ptr %i.vt, i64 %i.wd ; 3 uses
  %i.wf = getelementptr inbounds i8, ptr %i.we, i64 -48
  %.val2.i.i.i46.i.i.i = load i64, ptr %i.wf, align 8, !noalias !23740, !noundef !41
  %i.wg = getelementptr i8, ptr %i.we, i64 -32
  %.val3.i.i.i.i.i.i = load i128, ptr %i.wg, align 16, !noalias !23740
  %i.wh = icmp eq i64 %.sroa.8.1.i.i.i, %.val2.i.i.i46.i.i.i
  %i.wi = icmp eq i128 %i.ve, %.val3.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.wh, i1 %i.wi, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.eh, !prof !43

._crit_edge.i.i48.i.i.i:                          ; preds = %bb.eh, %bb.eg
  %i.wj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i.i, splat (i8 -1)
  %i.wk = bitcast <16 x i1> %i.wj to i16
  %i.wl = icmp eq i16 %i.wk, 0
  br i1 %i.wl, label %bb.ei, label %select.unfold47.i.i.i.outer252.backedge, !prof !44

bb.eh:                                            ; preds = %.lr.ph.i.i44.i.i.i
  %i.wm = add i16 %.sroa.06.0.i31.i.i45.i.i.i, -1
  %i.wn = and i16 %i.wm, %.sroa.06.0.i31.i.i45.i.i.i ; 2 uses
  %.not.i.not.i.i47.i.i.i = icmp eq i16 %i.wn, 0
  br i1 %.not.i.not.i.i47.i.i.i, label %._crit_edge.i.i48.i.i.i, label %.lr.ph.i.i44.i.i.i

bb.ei:                                            ; preds = %._crit_edge.i.i48.i.i.i
  %i.wo = add i64 %.sroa.9.0.i.i.i39.i.i.i, 16    ; 2 uses
  %i.wp = add i64 %.sroa.01.0.i.i.i41.i.i.i, %i.wo
  br label %bb.eg

bb.ej:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23721
  br label %.loopexit58.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i44.i.i.i
  %i.wq = getelementptr inbounds i8, ptr %i.we, i64 -16
  %i.wr = load i64, ptr %i.wq, align 8, !noalias !23728, !noundef !41
  br label %select.unfold47.i.i.i

.loopexit58.i.i.i:                                ; preds = %bb.ea, %.loopexit.i.i.i, %bb.ej
  %i.ws = load i64, ptr %i.d, align 16, !range !52, !alias.scope !23741, !noalias !23742, !noundef !41
  %i.wt = icmp eq i64 %i.ws, 2
  br i1 %i.wt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEEB15_.exit.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %.loopexit58.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEBJ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEEB15_.exit.i.i.i.i unwind label %bb.el, !noalias !23743

bb.el:                                            ; preds = %bb.ek
  %i.wu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i57.i = load i64, ptr %i.tb, align 16, !alias.scope !23744, !noalias !23742 ; 2 uses
  %i.wv = icmp eq i64 %.val2.i.i.i57.i, 0
  br i1 %i.wv, label %.body.i54.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ww = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %.val3.i.i.i.i = load ptr, ptr %i.ww, align 8, !alias.scope !23744, !noalias !23742, !nonnull !41, !noundef !41
  %i.wx = shl nuw i64 %.val2.i.i.i57.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.wx, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !23743
  br label %.body.i54.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEEB15_.exit.i.i.i.i: ; preds = %bb.ek, %.loopexit58.i.i.i
  %.val.i.i.i58.i = load i64, ptr %i.tb, align 16, !alias.scope !23744, !noalias !23742 ; 2 uses
  %i.wy = icmp eq i64 %.val.i.i.i58.i, 0
  br i1 %i.wy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEEEB3g_.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEEB15_.exit.i.i.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %.val1.i.i.i.i = load ptr, ptr %i.wz, align 8, !alias.scope !23744, !noalias !23742, !nonnull !41, !noundef !41
  %i.xa = shl nuw i64 %.val.i.i.i58.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.xa, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !23743
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEINtNtB4_6option6OptionNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEEEB3g_.exit.i.i.i

_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i.i66.i, %.lr.ph.i.i.preheader.i.i
  %.lcssa45.i.i = phi i64 [ %.lcssa4558.i.i.ph, %.lr.ph.i.i.preheader.i.i ], [ %i.uu, %.lr.ph.i.i.i66.i ] ; 2 uses
  %.lcssa9.i.i = phi i64 [ %.ph, %.lr.ph.i.i.preheader.i.i ], [ %i.uu, %.lr.ph.i.i.i66.i ]
  %.lcssa.i.i = phi ptr [ %i.us, %.lr.ph.i.i.preheader.i.i ], [ %i.uv, %.lr.ph.i.i.i66.i ]
  %.sroa.5.0.copyload.i.lcssa.i.i = phi i32 [ %.sroa.5.0.copyload.i48.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.5.0.copyload.i.i67.i, %.lr.ph.i.i.i66.i ] ; 2 uses
  %.sroa.8.0.copyload.i.lcssa.i.i = phi i128 [ %.sroa.8.0.copyload.i50.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.i.i.i66.i ]
  store i64 %.lcssa45.i.i, ptr %i.uj, align 8, !noalias !23717
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i.i.i, ptr noundef nonnull align 16 dereferenceable(12) %.lcssa.i.i, i64 12, i1 false), !noalias !23728
  %i.xb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 40), align 8, !noalias !23721, !noundef !41 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23745)
  %i.xc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 32), align 8, !alias.scope !23745, !noalias !23746, !noundef !41
  %i.xd = add i64 %i.xc, 1
  store i64 %i.xd, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 32), align 8, !alias.scope !23745, !noalias !23746
  %i.xe = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 24), align 8, !alias.scope !23745, !noalias !23746, !noundef !41 ; 3 uses
  %i.xf = icmp ult i64 %i.xe, 230584300921369396
  call void @llvm.assume(i1 %i.xf)
  %i.xg = icmp eq i64 %i.xb, %i.xe
  br i1 %i.xg, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.xh = icmp ult i64 %i.xb, %i.xe
  br i1 %i.xh, label %bb.er, label %.invoke.i.i59.i, !prof !43

bb.ep:                                            ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23747)
  %i.xi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 8), align 8, !range !45, !alias.scope !23748, !noalias !23749, !noundef !41
  %i.xj = icmp eq i64 %i.xb, %i.xi
  br i1 %i.xj, label %bb.eq, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.eq:                                            ; preds = %bb.ep
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1j_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 8)) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i unwind label %.loopexit57.i.i.i.loopexit.split-lp, !noalias !23728

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtB1c_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEEE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.eq, %bb.ep
  %i.xk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 16), align 8, !alias.scope !23748, !noalias !23749, !nonnull !41, !noundef !41
  %i.xl = getelementptr inbounds nuw [40 x i8], ptr %i.xk, i64 %i.xb ; 5 uses
  store i64 %.sroa.026.0.i.i.i.off0250, ptr %i.xl, align 8, !noalias !23750
  %.sroa.513.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store i64 %.sroa.10.0.i.i.i.ph256, ptr %.sroa.513.0..sroa_idx14.i.i.i, align 8, !noalias !23750
  %.sroa.6.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx16.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i.i.i, i64 12, i1 false), !noalias !23750
  %.sroa.7.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.xl, i64 28
  store i32 %.sroa.5.0.copyload.i.lcssa.i.i, ptr %.sroa.7.0..sroa_idx17.i.i.i, align 4, !noalias !23750
  %.sroa.819.0..sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %i.xl, i64 32
  store i64 0, ptr %.sroa.819.0..sroa_idx20.i.i.i, align 8, !noalias !23750
  %i.xm = add nuw nsw i64 %i.xb, 1                ; 2 uses
  store i64 %i.xm, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 24), align 8, !alias.scope !23748, !noalias !23749
  store i64 %i.xm, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 40), align 8, !alias.scope !23745, !noalias !23746
  br label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluuuuuEEE9insert_atCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.er:                                            ; preds = %bb.eo
  %i.xn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB4_13GlyphFragment4base7___CACHE, i64 16), align 8, !alias.scope !23745, !noalias !23746, !nonnull !41, !noundef !41
end_hunk_8
begin_hunk_9_@_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5build:bb.a
    i64 2, label %.loopexit68.i.i.i.i.i.i.i.i.i
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
    i64 4, label %bb.kq
  ]

bb.kq:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  %i.anj = fcmp une double %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i130.i.i, %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i74.i.i.i.i.i
  %i.ank = fcmp une double %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i118.i.i, %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i102.i.i.i.i.i
  %or.cond.i.peel.i.i.i.i.i.i.i.i.i = select i1 %i.anj, i1 true, i1 %i.ank
  br i1 %or.cond.i.peel.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, label %bb.ks

bb.kr:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  store double %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26194, !noalias !26195
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i661.i = phi double [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i651.i, %bb.kq ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ] ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i649.i = phi double [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i639.i, %bb.kq ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ] ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i637.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i626.i, %bb.kq ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i624.i = phi double [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i613.i, %bb.kq ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ] ; 2 uses
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i141.i.i = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i143.i.i, %bb.kq ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ]
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i129.i.i = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i130.i.i, %bb.kq ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ]
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i117.i.i = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i118.i.i, %bb.kq ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ]
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i104.i.i = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i106.i.i, %bb.kq ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ]
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i99.i.i.i.i.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i102.i.i.i.i.i, %bb.kq ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i71.i.i.i.i.i = phi double [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i74.i.i.i.i.i, %bb.kq ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kr ] ; 2 uses
  %i.anl = icmp eq ptr %i.anc, %i.amp
  br i1 %i.anl, label %.loopexit.loopexit.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ks, %bb.kw
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i659.i = phi double [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i650.i, %bb.kw ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i661.i, %bb.ks ] ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i647.i = phi double [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i638.i, %bb.kw ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i649.i, %bb.ks ] ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i635.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i625.i, %bb.kw ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i637.i, %bb.ks ] ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i622.i = phi double [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i612.i, %bb.kw ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i624.i, %bb.ks ] ; 6 uses
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i140.i.i = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i134.i.i, %bb.kw ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i141.i.i, %bb.ks ] ; 5 uses
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i103.i.i = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i97.i.i, %bb.kw ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i104.i.i, %bb.ks ] ; 5 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i98.i.i.i.i.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i96.i.i.i.i.i, %bb.kw ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i99.i.i.i.i.i, %bb.ks ] ; 5 uses
  %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i70.i.i.i.i.i = phi double [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i68.i.i.i.i.i, %bb.kw ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i71.i.i.i.i.i, %bb.ks ] ; 5 uses
  %i.anm = phi double [ %i.anv, %bb.kw ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i71.i.i.i.i.i, %bb.ks ] ; 4 uses
  %.sink.i.i.sroa.phi.sroa.speculated121.i.i.i.i.i.i.i.i.i.i = phi double [ %.sink.i.i.sroa.phi.sroa.speculated122.i.i.i.i.i.i.i.i.i.i, %bb.kw ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i117.i.i, %bb.ks ] ; 6 uses
  %.sink4.i.i.sroa.phi.sroa.speculated118.i.i.i.i.i.i.i.i.i.i = phi double [ %.sink4.i.i.sroa.phi.sroa.speculated119.i.i.i.i.i.i.i.i.i.i, %bb.kw ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i129.i.i, %bb.ks ] ; 6 uses
  %.sink.i.i.sroa.phi.sroa.speculated115.i.i.i.i.i.i.i.i.i.i = phi double [ %.sink.i.i.sroa.phi.sroa.speculated116.i.i.i.i.i.i.i.i.i.i, %bb.kw ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i99.i.i.i.i.i, %bb.ks ] ; 4 uses
  %i.ann = phi ptr [ %i.ano, %bb.kw ], [ %i.anc, %bb.ks ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26196)
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 56 ; 6 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ann, align 8, !noalias !26197
  %.sroa.82.0..sroa_idx3.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  %i.anp = load <2 x double>, ptr %.sroa.82.0..sroa_idx3.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26197 ; 4 uses
  %i.anq = extractelement <2 x double> %i.anp, i64 1 ; 10 uses
  %i.anr = extractelement <2 x double> %i.anp, i64 0 ; 10 uses
  %.sroa.82.sroa.7.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ann, i64 24
  %i.ans = load <2 x double>, ptr %.sroa.82.sroa.7.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26197 ; 4 uses
  switch i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, label %default.unreachable.i.i.i.i.i.i.i.i.i.i [
    i64 -1, label %.loopexit.loopexit.i.i.i.i.i
    i64 0, label %bb.ku
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206
    i64 3, label %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i
    i64 4, label %bb.kv
  ]

default.unreachable.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.kn
  unreachable

bb.kt:                                            ; preds = %bb.kn
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @284, ptr noundef nonnull inttoptr (i64 73 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #53
          to label %.noexc.i.i129 unwind label %.loopexit.split-lp.i.i, !noalias !26198

.noexc.i.i129:                                    ; preds = %bb.kt
  unreachable

default.unreachable.i.i.i.i.i.i.i.i.i.i:          ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.ku:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  store <2 x double> %i.anp, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26194, !noalias !26195
  store <2 x double> %i.anp, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26194, !noalias !26195
  br label %bb.kw

bb.kv:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  %i.ant = fcmp une double %.sink4.i.i.sroa.phi.sroa.speculated118.i.i.i.i.i.i.i.i.i.i, %i.anm
  %i.anu = fcmp une double %.sink.i.i.sroa.phi.sroa.speculated121.i.i.i.i.i.i.i.i.i.i, %.sink.i.i.sroa.phi.sroa.speculated115.i.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i130 = select i1 %i.ant, i1 true, i1 %i.anu
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i130, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i650.i = phi double [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i659.i, %bb.kv ], [ %i.anq, %bb.ku ] ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i638.i = phi double [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i647.i, %bb.kv ], [ %i.anr, %bb.ku ] ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i625.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i635.i, %bb.kv ], [ %i.anq, %bb.ku ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i612.i = phi double [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i622.i, %bb.kv ], [ %i.anr, %bb.ku ] ; 2 uses
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i134.i.i = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i140.i.i, %bb.kv ], [ %i.anq, %bb.ku ]
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i97.i.i = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i103.i.i, %bb.kv ], [ %i.anr, %bb.ku ]
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i96.i.i.i.i.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i98.i.i.i.i.i, %bb.kv ], [ %i.anq, %bb.ku ]
  %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i68.i.i.i.i.i = phi double [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i70.i.i.i.i.i, %bb.kv ], [ %i.anr, %bb.ku ]
  %i.anv = phi double [ %i.anm, %bb.kv ], [ %i.anr, %bb.ku ]
  %.sink.i.i.sroa.phi.sroa.speculated122.i.i.i.i.i.i.i.i.i.i = phi double [ %.sink.i.i.sroa.phi.sroa.speculated121.i.i.i.i.i.i.i.i.i.i, %bb.kv ], [ %i.anq, %bb.ku ]
  %.sink4.i.i.sroa.phi.sroa.speculated119.i.i.i.i.i.i.i.i.i.i = phi double [ %.sink4.i.i.sroa.phi.sroa.speculated118.i.i.i.i.i.i.i.i.i.i, %bb.kv ], [ %i.anr, %bb.ku ]
  %.sink.i.i.sroa.phi.sroa.speculated116.i.i.i.i.i.i.i.i.i.i = phi double [ %.sink.i.i.sroa.phi.sroa.speculated115.i.i.i.i.i.i.i.i.i.i, %bb.kv ], [ %i.anq, %bb.ku ]
  %i.anw = icmp eq ptr %i.ano, %i.amp
  br i1 %i.anw, label %.loopexit.loopexit.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !25754

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

.loopexit68.i.i.i.i.i.i.i.i.i:                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  %i.anx = extractelement <2 x double> %i.and, i64 0
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

.loopexit121.loopexit.i.i.i.i.i.i.i.i.i:          ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.82.sroa.10.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ann, i64 48
  %.sroa.82.sroa.9.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ann, i64 40
  %.sroa.82.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.82.sroa.10.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26197
  %i.any = load <2 x double>, ptr %.sroa.82.sroa.9.0..sroa.82.0..sroa_idx3.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26197 ; 2 uses
  %i.anz = extractelement <2 x double> %i.any, i64 0
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %bb.ks, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph1138, %bb.kw, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i656.i = phi double [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i650.i, %bb.kw ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i659.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i652.i1127, %.lr.ph1138 ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i661.i, %bb.ks ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i652.i1127, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i644.i = phi double [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i638.i, %bb.kw ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i647.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i640.i1128, %.lr.ph1138 ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i649.i, %bb.ks ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i640.i1128, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i630.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i625.i, %bb.kw ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i635.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i631.i1129, %.lr.ph1138 ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i637.i, %bb.ks ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i631.i1129, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i617.i = phi double [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i612.i, %bb.kw ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i622.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i618.i1130, %.lr.ph1138 ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i624.i, %bb.ks ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i618.i1130, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !25954
  br label %bb.kf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  %i.aoa = extractelement <2 x double> %i.ans, i64 0
  %i.aob = extractelement <2 x double> %i.ans, i64 1
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %bb.kv, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i, %bb.kq, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i632.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i635.i, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i635.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i626.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i626.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i626.i, %bb.kq ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i626.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i635.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i635.i, %bb.kv ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i619.i = phi double [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i622.i, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i622.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i613.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i613.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i613.i, %bb.kq ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i613.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i622.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i622.i, %bb.kv ] ; 2 uses
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i142.i.i = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i140.i.i, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i140.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i143.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i143.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i143.i.i, %bb.kq ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i143.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i140.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i140.i.i, %bb.kv ] ; 2 uses
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i105.i.i = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i103.i.i, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i103.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i106.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i106.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i106.i.i, %bb.kq ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i106.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i103.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i103.i.i, %bb.kv ] ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i101.i.i.i.i.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i98.i.i.i.i.i, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i98.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i102.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i102.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i102.i.i.i.i.i, %bb.kq ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i102.i.i.i.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i98.i.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i98.i.i.i.i.i, %bb.kv ]
  %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i73.i.i.i.i.i = phi double [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i70.i.i.i.i.i, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i70.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i74.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i74.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i74.i.i.i.i.i, %bb.kq ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i74.i.i.i.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i70.i.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i70.i.i.i.i.i, %bb.kv ]
  %i.aoc = phi ptr [ %i.ano, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ano, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %i.anc, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.anc, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.anc, %bb.kq ], [ %i.anc, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %i.ano, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ano, %bb.kv ] ; 3 uses
  %i.aod = phi double [ %.sink.i.i.sroa.phi.sroa.speculated121.i.i.i.i.i.i.i.i.i.i, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sink.i.i.sroa.phi.sroa.speculated121.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i118.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i118.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i118.i.i, %bb.kq ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i118.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sink.i.i.sroa.phi.sroa.speculated121.i.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sink.i.i.sroa.phi.sroa.speculated121.i.i.i.i.i.i.i.i.i.i, %bb.kv ]
  %i.aoe = phi double [ %.sink4.i.i.sroa.phi.sroa.speculated118.i.i.i.i.i.i.i.i.i.i, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sink4.i.i.sroa.phi.sroa.speculated118.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i130.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i130.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i130.i.i, %bb.kq ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i130.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sink4.i.i.sroa.phi.sroa.speculated118.i.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sink4.i.i.sroa.phi.sroa.speculated118.i.i.i.i.i.i.i.i.i.i, %bb.kv ]
  %.lcssa.sink.i.i.i.i.i.i.i.i.i.i = phi double [ %i.anz, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.aoa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %i.ani, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i74.i.i.i.i.i, %bb.kq ], [ %i.anx, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %i.anm, %bb.kv ], [ %i.anr, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa251.sink.i.i.i.i.i.i.i.i.i.i = phi double [ %.sroa.82.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.aob, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.82.sroa.10.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i102.i.i.i.i.i, %bb.kq ], [ %.sroa.82.sroa.8.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sink.i.i.sroa.phi.sroa.speculated115.i.i.i.i.i.i.i.i.i.i, %bb.kv ], [ %i.anq, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.8.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi double [ %i.anq, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.anq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i102.i.i.i.i.i, %bb.kq ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %.sink.i.i.sroa.phi.sroa.speculated115.i.i.i.i.i.i.i.i.i.i, %bb.kv ], [ %i.anq, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.8.sroa.9.0.i.i.i.i.i.i.i.i.i.i = phi double [ %i.anr, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.anr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i74.i.i.i.i.i, %bb.kq ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ %i.anm, %bb.kv ], [ %i.anr, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i131 = phi i64 [ 2, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.kq ], [ 1, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.kv ]
  %i.aof = phi <2 x double> [ %i.ans, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ans, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %i.and, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ undef, %.loopexit.i.i.i.i.i.i.i.i.i ], [ undef, %bb.kq ], [ %i.and, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ undef, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.kv ]
  %i.aog = phi <2 x double> [ %i.any, %.loopexit121.loopexit.i.i.i.i.i.i.i.i.i ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.loopexit2206 ], [ %i.ane, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i ], [ undef, %.loopexit.i.i.i.i.i.i.i.i.i ], [ undef, %bb.kq ], [ undef, %.loopexit68.i.i.i.i.i.i.i.i.i ], [ undef, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.kv ]
  store ptr %i.aoc, ptr %.sroa.7180.sroa.5.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !26199, !noalias !26200
  store double %.lcssa.sink.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26194, !noalias !26195
  store double %.lcssa251.sink.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26194, !noalias !26195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26201
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i131, ptr %i.h, align 8, !noalias !26201
  store double %i.aoe, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26201
  store double %i.aod, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26201
  store double %.sroa.8.sroa.9.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.62.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26201
  store double %.sroa.8.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.73.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26201
  store <2 x double> %i.aof, ptr %.sroa.84.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26201
  store <2 x double> %i.aog, ptr %.sroa.106.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !26201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !26202
  invoke void @_RNvMsj_NtCsdqxqgV7ixUt_5kurbo7bezpathNtB5_7PathSeg14intersect_line(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ka, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g)
          to label %.noexc5.i.i unwind label %.loopexit.i.i, !noalias !26198

.noexc5.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jz, ptr noundef nonnull align 8 dereferenceable(56) %i.ka, i64 56, i1 false), !noalias !26203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !26186
  store i64 1, ptr %i.s, align 8, !alias.scope !26204, !noalias !26203
  %i.aoh = load i32, ptr %i.jz, align 8, !noalias !25954 ; 2 uses
  %i.aoi = icmp eq i32 %i.aoh, 0
  br i1 %i.aoi, label %.lr.ph1138, label %._crit_edge.loopexit

.loopexit.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  %lpad.loopexit.i.i132 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i125

.loopexit.split-lp.i.i:                           ; preds = %bb.kt
  %lpad.loopexit.split-lp.i.i128 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i125

._crit_edge.loopexit:                             ; preds = %.noexc5.i.i
  %i.aoj = zext i32 %i.aoh to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.kl
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i652.i.lcssa = phi double [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i653.i, %bb.kl ], [ %.lcssa251.sink.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit ]
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i640.i.lcssa = phi double [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i641.i, %bb.kl ], [ %.lcssa.sink.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit ]
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i631.i.lcssa = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i627.i, %bb.kl ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i632.i, %._crit_edge.loopexit ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i618.i.lcssa = phi double [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i614.i, %bb.kl ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i619.i, %._crit_edge.loopexit ]
  %.promoted91.i611.i.lcssa = phi i64 [ %.promoted91.i608.i, %bb.kl ], [ 0, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i145.i.i.lcssa = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i146.i.i, %bb.kl ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i142.i.i, %._crit_edge.loopexit ]
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i132.i.i.lcssa = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i133.i.i, %bb.kl ], [ %.lcssa.sink.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit ]
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i120.i.i.lcssa = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i121.i.i, %bb.kl ], [ %.lcssa251.sink.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit ]
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i108.i.i.lcssa = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i109.i.i, %bb.kl ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i105.i.i, %._crit_edge.loopexit ]
  %.lcssa570 = phi ptr [ %i.ams, %bb.kl ], [ %i.aoc, %._crit_edge.loopexit ]
  %.lcssa562 = phi i1 [ %i.amt, %bb.kl ], [ %i.anh, %._crit_edge.loopexit ]
  %.lcssa546 = phi i64 [ %i.amw, %bb.kl ], [ %i.aoj, %._crit_edge.loopexit ]
  %i.aok = add nuw nsw i64 %.promoted91.i611.i.lcssa, 1 ; 3 uses
  store i64 %i.aok, ptr %i.jy, align 8, !alias.scope !26205, !noalias !26206
  %i.aol = getelementptr inbounds nuw [16 x i8], ptr %.sink183.i.i.sroa.gep.i, i64 %.promoted91.i611.i.lcssa
  %.sroa.6.0.ph.i.i.i = load double, ptr %i.aol, align 8, !alias.scope !26204, !noalias !26203, !noundef !41
  %i.aom = load double, ptr %i.w, align 8, !noalias !26207, !noundef !41 ; 2 uses
  %i.aon = load double, ptr %i.jq, align 8, !noalias !26207, !noundef !41
  %i.aoo = fsub double %i.aon, %i.aom
  %i.aop = fmul double %.sroa.6.0.ph.i.i.i, %i.aoo
  %i.aoq = fadd double %i.aom, %i.aop             ; 2 uses
  %.inv.i.i.i.i = fcmp ord double %i.aoq, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %.inv.i.i.i.i, double %i.aoq, double 0.000000e+00
  %i.aor = icmp ult i64 %i.amr, 1152921504606846976
  call void @llvm.assume(i1 %i.aor)
  %i.aos = load i64, ptr %i.v, align 8, !range !45, !alias.scope !26179, !noalias !26208, !noundef !41
  %i.aot = icmp eq i64 %i.amr, %i.aos
  br i1 %i.aot, label %bb.kx, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.kx:                                            ; preds = %._crit_edge
  %i.aou = sub i64 %.lcssa546, %i.aok
  %i.aov = call i64 @llvm.uadd.sat.i64(i64 %i.aou, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.amr, i64 noundef %i.aov, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge.i unwind label %bb.ky, !noalias !26180

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge.i: ; preds = %bb.kx
  %.pre.i = load ptr, ptr %i.js, align 8, !alias.scope !26179, !noalias !26208
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge.i, %._crit_edge
  %i.aow = phi ptr [ %.pre.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i_crit_edge.i ], [ %i.amq, %._crit_edge ] ; 2 uses
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %i.amr
  store double %spec.store.select.i.i.i.i, ptr %i.aox, align 8, !noalias !26198
  %i.aoy = add nuw nsw i64 %i.amr, 1              ; 2 uses
  store i64 %i.aoy, ptr %i.jt, align 8, !alias.scope !26179, !noalias !26208
  br label %bb.kl

bb.ky:                                            ; preds = %bb.kx
  %i.aoz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i125

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.kg, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !25954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !25954
  %i.apa = icmp eq ptr %i.akr, %i.aki
  br i1 %i.apa, label %._crit_edge.i, label %bb.ka

bb.kz:                                            ; preds = %bb.mf
  %i.apb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body178

.body178:                                         ; preds = %bb.jf, %bb.jg, %bb.kz
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i: ; preds = %.loopexit.split-lp.i119.loopexit, %.loopexit.split-lp.i119.loopexit.split-lp, %bb.lm, %.loopexit.i121, %bb.lc, %bb.lb, %bb.ki, %.body.i125
  %.pn237.i = phi { ptr, i32 } [ %i.ape, %bb.lc ], [ %eh.lpad-body.i126, %.body.i125 ], [ %eh.lpad-body.i126, %bb.ki ], [ %i.ape, %bb.lb ], [ %lpad.loopexit.i122, %.loopexit.i121 ], [ %i.aqf, %bb.lm ], [ %lpad.loopexit472, %.loopexit.split-lp.i119.loopexit ], [ %lpad.loopexit.split-lp473, %.loopexit.split-lp.i119.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26209)
  %.val.i260.i = load i64, ptr %i.v, align 8, !range !45, !alias.scope !26209, !noalias !25954, !noundef !41 ; 2 uses
  %i.apc = icmp eq i64 %.val.i260.i, 0
  br i1 %i.apc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.la

bb.la:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i
  %.val1.i.i = load ptr, ptr %i.js, align 8, !alias.scope !26209, !noalias !25954, !nonnull !41, !noundef !41
  %i.apd = shl nuw i64 %.val.i260.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.apd, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !26209
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.lb:                                            ; preds = %bb.ka
  %i.ape = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26210)
  %.val.i261.i = load i64, ptr %i.u, align 8, !alias.scope !26210, !noalias !25954 ; 2 uses
  %i.apf = icmp eq i64 %.val.i261.i, 0
  br i1 %i.apf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %.val1.i262.i = load ptr, ptr %.sroa.4148.0..sroa_idx.i, align 8, !alias.scope !26210, !noalias !25954, !nonnull !41, !noundef !41
  %i.apg = mul nuw i64 %.val.i261.i, 56
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i262.i, i64 noundef %i.apg, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !26210
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

.loopexit.i121:                                   ; preds = %bb.me, %bb.mc
  %lpad.loopexit.i122 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

.loopexit.split-lp.i119.loopexit:                 ; preds = %.lr.ph.i163
  %lpad.loopexit472 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

.loopexit.split-lp.i119.loopexit.split-lp:        ; preds = %bb.kb, %bb.le, %bb.lh
  %lpad.loopexit.split-lp473 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

bb.ld:                                            ; preds = %._crit_edge663.i, %._crit_edge.i
  %spec.store.select26701.i = phi double [ %spec.store.select26702.i, %._crit_edge663.i ], [ %spec.store.select26.i, %._crit_edge.i ]
  %i.aph = phi i64 [ %i.ald, %._crit_edge663.i ], [ %i.ami, %._crit_edge.i ] ; 4 uses
  %i.api = phi i64 [ %.pre664.i, %._crit_edge663.i ], [ %.pre662.i, %._crit_edge.i ]
  %i.apj = load ptr, ptr %i.js, align 8, !alias.scope !26175, !noalias !25954, !nonnull !41, !noundef !41 ; 2 uses
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.apj, i64 %i.aph
  store double %spec.store.select26701.i, ptr %i.apk, align 8, !noalias !26175
  %i.apl = add i64 %i.aph, 1                      ; 3 uses
  store i64 %i.apl, ptr %i.jt, align 8, !alias.scope !26175, !noalias !25954
  %i.apm = fadd double %spec.store.select14.i, %spec.store.select19.i ; 2 uses
  %.inv233.i = fcmp ord double %i.apm, 0.000000e+00
  %spec.store.select27.i = select i1 %.inv233.i, double %i.apm, double 0.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !26176)
  %i.apn = icmp eq i64 %i.apl, %i.api
  br i1 %i.apn, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #58
          to label %._crit_edge665.i unwind label %.loopexit.split-lp.i119.loopexit.split-lp

._crit_edge665.i:                                 ; preds = %bb.le
  %.pre666.i = load ptr, ptr %i.js, align 8, !alias.scope !26176, !noalias !25954
  br label %bb.lf

bb.lf:                                            ; preds = %._crit_edge665.i, %bb.ld
  %i.apo = phi ptr [ %.pre666.i, %._crit_edge665.i ], [ %i.apj, %bb.ld ] ; 11 uses
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.apo, i64 %i.apl
  store double %spec.store.select27.i, ptr %i.app, align 8, !noalias !26176
  %i.apq = add i64 %i.aph, 2                      ; 4 uses
  %i.apr = icmp ugt i64 %i.aph, -3
  br i1 %i.apr, label %._crit_edge458.i, label %bb.lg, !prof !43

bb.lg:                                            ; preds = %bb.lf
  %i.aps = icmp samesign ult i64 %i.apq, 21
  br i1 %i.aps, label %bb.li, label %bb.lh, !prof !43

bb.lh:                                            ; preds = %bb.lg
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %i.apo, i64 noundef range(i64 0, 1152921504606846976) %i.apq, ptr noalias nofree noundef nonnull %i.a) #58
          to label %.lr.ph457.i unwind label %.loopexit.split-lp.i119.loopexit.split-lp

bb.li:                                            ; preds = %bb.lg
  call void @llvm.experimental.noalias.scope.decl(metadata !26211)
  %.idx.i162 = shl nuw nsw i64 %i.apq, 3
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apo, i64 %.idx.i162
  %.sroa.0.02.i = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  br label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.li
  %.sroa.0.05.i = phi ptr [ %.sroa.0.0.i164, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %.sroa.0.02.i, %bb.li ] ; 5 uses
  %.pn4.i = phi ptr [ %.sroa.0.05.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.apo, %bb.li ] ; 4 uses
  %i.apu = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.05.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.pn4.i)
          to label %.noexc169 unwind label %.loopexit.split-lp.i119.loopexit

.noexc169:                                        ; preds = %.lr.ph.i163
  %i.apv = icmp slt i8 %i.apu, 0
  br i1 %i.apv, label %bb.lj, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i

bb.lj:                                            ; preds = %.noexc169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26211
  %i.apw = load double, ptr %.sroa.0.05.i, align 8, !alias.scope !26211, !noundef !41 ; 2 uses
  store double %i.apw, ptr %i.f, align 8, !noalias !26211
  %i.apx = load i64, ptr %.pn4.i, align 8, !alias.scope !26211
  store i64 %i.apx, ptr %.sroa.0.05.i, align 8, !alias.scope !26211
  %i.apy = icmp eq ptr %.pn4.i, %i.apo
  br i1 %i.apy, label %._crit_edge2685, label %.lr.ph2684

bb.lk:                                            ; preds = %bb.ll
  %i.apz = load i64, ptr %i.aqb, align 8, !alias.scope !26211
  store i64 %i.apz, ptr %.sroa.0.0.i.i1682682, align 8, !alias.scope !26211
  %i.aqa = icmp eq ptr %i.aqb, %i.apo
  br i1 %i.aqa, label %._crit_edge2685, label %.lr.ph2684

.lr.ph2684:                                       ; preds = %bb.lj, %bb.lk
  %.sroa.0.0.i.i1682682 = phi ptr [ %i.aqb, %bb.lk ], [ %.pn4.i, %bb.lj ] ; 4 uses
  %i.aqb = getelementptr inbounds i8, ptr %.sroa.0.0.i.i1682682, i64 -8 ; 4 uses
  %i.aqc = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aqb)
          to label %bb.ll unwind label %bb.lm

bb.ll:                                            ; preds = %.lr.ph2684
  %i.aqd = icmp slt i8 %i.aqc, 0
  br i1 %i.aqd, label %bb.lk, label %._crit_edge2685

._crit_edge2685:                                  ; preds = %bb.lk, %bb.ll, %bb.lj
  %.sroa.0.0.i.lcssa.i = phi ptr [ %i.apo, %bb.lj ], [ %i.apo, %bb.lk ], [ %.sroa.0.0.i.i1682682, %bb.ll ]
  %i.aqe = load i64, ptr %i.f, align 8, !noalias !26212
  store i64 %i.aqe, ptr %.sroa.0.0.i.lcssa.i, align 8, !alias.scope !26211, !noalias !26213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26211
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i

bb.lm:                                            ; preds = %.lr.ph2684
  %i.aqf = landingpad { ptr, i32 }
          cleanup
  store double %i.apw, ptr %.sroa.0.0.i.i1682682, align 8, !alias.scope !26211, !noalias !26214
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %._crit_edge2685, %.noexc169
  %.sroa.0.0.i164 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i165 = icmp eq ptr %.sroa.0.0.i164, %i.apt
  br i1 %.not.i165, label %.lr.ph457.i, label %.lr.ph.i163

.lr.ph457.i:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB18_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.lh
  %i.aqg = trunc nuw i8 %.sroa.039.0.i to i1
  br label %bb.mc

end_hunk_9
begin_hunk_10_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB4_11SingleChild6layout:bb.a
  store i8 %i.adt, ptr %.sroa.8.0..sroa_idx.i67.i, align 8, !alias.scope !28662, !noalias !28666
  br label %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit73.i

_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit73.i: ; preds = %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB5_5FrameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i61.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i71.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.adu = cmpxchg weak ptr %i.ei, i8 0, i8 1 acquire monotonic, align 1, !alias.scope !28411, !noalias !28671
  %i.adv = extractvalue { i8, i1 } %i.adu, 1
  br i1 %i.adv, label %.noexc.i.i, label %bb.id, !prof !43

bb.ib:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluNtNvNtB2N_7locator1__12___ComemoCalluuEINtNtB4_6result6ResultNtNtNtB1V_6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.hy
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body58.thread.i.i.i, %bb.kd, %bb.ib
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.adw, %bb.ib ], [ %.pn.i.i.i, %.body58.thread.i.i.i ], [ %lpad.thr_comm.i.i, %bb.kd ] ; 2 uses
  %i.adx = cmpxchg ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !28444
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.adx, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtB3C_6engine1__12___ComemoCallNtNvB5p_s_1__12___ComemoCallNtNvB5p_s0_1__12___ComemoCalluNtNvNtB4u_7locator1__12___ComemoCalluuEINtNtB4_6result6ResultNtNtNtB3C_6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.ic, !prof !43

bb.ic:                                            ; preds = %.body.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtB3C_6engine1__12___ComemoCallNtNvB5p_s_1__12___ComemoCallNtNvB5p_s0_1__12___ComemoCalluNtNvNtB4u_7locator1__12___ComemoCalluuEINtNtB4_6result6ResultNtNtNtB3C_6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.kg, !noalias !28444, !inline_history !27961

bb.id:                                            ; preds = %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit73.i
  %i.ady = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.ei, i64 undef, i32 noundef -1)
          to label %.noexc.i.i unwind label %bb.kd, !noalias !28672, !inline_history !27961 ; 0 uses

.noexc.i.i:                                       ; preds = %bb.id, %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit73.i
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ci, i64 152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.br, ptr noundef nonnull align 8 dereferenceable(64) %i.adz, i64 64, i1 false), !noalias !28672
  store i64 0, ptr %i.adz, align 8, !alias.scope !28411, !noalias !28671
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !28411, !noalias !28671
  store i64 0, ptr %.sroa.3.0..sroa_idx.i53, align 8, !alias.scope !28411, !noalias !28671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) @97, i64 32, i1 false), !noalias !28671
  store i64 0, ptr %.sroa.515.0..sroa_idx.i, align 8, !alias.scope !28411, !noalias !28671
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ci, i64 216 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.br, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeb, ptr noundef nonnull align 8 dereferenceable(24) %i.aea, i64 24, i1 false), !noalias !28672
  store i64 0, ptr %i.aea, align 8, !alias.scope !28411, !noalias !28671
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.616.0..sroa_idx.i, align 8, !alias.scope !28411, !noalias !28671
  store i64 0, ptr %.sroa.717.0..sroa_idx.i, align 8, !alias.scope !28411, !noalias !28671
  %i.aec = cmpxchg ptr %i.ei, i8 1, i8 0 release monotonic, align 1, !alias.scope !28411, !noalias !28671
  %i.aed = extractvalue { i8, i1 } %i.aec, 1
  br i1 %i.aed, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.ie, !prof !43

bb.ie:                                            ; preds = %.noexc.i.i
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.ei, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.kd, !noalias !28672, !inline_history !27961

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.ie, %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !28673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 64, i1 false), !noalias !28673
  %i.aee = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !28673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aee, ptr noundef nonnull align 8 dereferenceable(24) %i.aeb, i64 24, i1 false), !noalias !28673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.ca, i64 48, i1 false), !noalias !28412
  %i.aef = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  store i64 0, ptr %i.aef, align 8, !noalias !28673
  call void @llvm.experimental.noalias.scope.decl(metadata !28674), !noalias !28414
  call void @llvm.experimental.noalias.scope.decl(metadata !28675), !noalias !28414
  call void @llvm.experimental.noalias.scope.decl(metadata !28676), !noalias !28414
  %i.aeg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 112), align 8, !alias.scope !28676, !noalias !28677, !noundef !41
  %i.aeh = icmp eq i64 %i.aeg, 0
  br i1 %i.aeh, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, label %bb.if

bb.if:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.aei = mul i64 %i.jm, -1065810590584100411
  %i.aej = add i64 %i.aei, %i.jn
  %i.aek = mul i64 %i.aej, -1065810590584100411   ; 2 uses
  %i.ael = call noundef i64 @llvm.fshl.i64(i64 %i.aek, i64 %i.aek, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28678), !noalias !28414
  call void @llvm.experimental.noalias.scope.decl(metadata !28679), !noalias !28414
  %i.aem = lshr i64 %i.ael, 57
  %i.aen = trunc nuw nsw i64 %i.aem to i8
  %i.aeo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 96), align 8, !alias.scope !28680, !noalias !28681, !noundef !41 ; 2 uses
  %i.aep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 88), align 8, !alias.scope !28680, !noalias !28681, !nonnull !41, !noundef !41 ; 2 uses
  %i.aeq = insertelement <16 x i8> poison, i8 %i.aen, i64 0
  %i.aer = shufflevector <16 x i8> %i.aeq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ii, %bb.if
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.if ], [ %i.afi, %bb.ii ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ael, %bb.if ], [ %i.afj, %bb.ii ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.aeo ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.aes, align 1, !noalias !28682 ; 2 uses
  %i.aet = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.aer
  %i.aeu = bitcast <16 x i1> %i.aet to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.aeu, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ig, %bb.ih
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.afh, %bb.ih ], [ %i.aeu, %bb.ig ] ; 3 uses
  %i.aev = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.aew = zext nneg i16 %i.aev to i64
  %i.aex = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aew
  %i.aey = and i64 %i.aex, %i.aeo
  %i.aez = sub nsw i64 0, %i.aey
  %i.afa = getelementptr inbounds [32 x i8], ptr %i.aep, i64 %i.aez ; 2 uses
  %i.afb = getelementptr inbounds i8, ptr %i.afa, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.afb, align 16, !noalias !28683, !noundef !41
  %i.afc = icmp eq i128 %i.jr, %.val2.i.i.i.i.i.i
  br i1 %i.afc, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.ih, !prof !43

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ih, %bb.ig
  %i.afd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.afe = bitcast <16 x i1> %i.afd to i16
  %i.aff = icmp eq i16 %i.afe, 0
  br i1 %i.aff, label %bb.ii, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, !prof !44

bb.ih:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.afg = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.afh = and i16 %i.afg, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.afh, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ii:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.afi = add i64 %.sroa.9.0.i.i.i.i.i.i, 16     ; 2 uses
  %i.afj = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.afi
  br label %bb.ig

.body58.i.i.i:                                    ; preds = %bb.jx, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i63.i.i.i, %bb.ka
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.afk = getelementptr inbounds i8, ptr %i.afa, i64 -16
  %i.afl = load i64, ptr %i.afk, align 8, !noalias !28684, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.afl, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.010.0.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %._crit_edge.i.i.i.i.i ]
  %i.afm = getelementptr inbounds nuw i8, ptr %i.bs, i64 56 ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.afo = load i64, ptr %i.afn, align 8, !alias.scope !28674, !noalias !28685 ; 5 uses
  %i.afp = icmp ult i64 %i.afo, 82351536043346213
  %i.afq = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.afr = load ptr, ptr %i.afq, align 8, !alias.scope !28674, !noalias !28685, !nonnull !41 ; 3 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  %i.aft = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %i.afu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.afv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.promoted.i.i.i = load i64, ptr %i.afm, align 8, !alias.scope !28674, !noalias !28685 ; 2 uses
  br label %select.unfold31.i.i.i.outer

select.unfold31.i.i.i.outer:                      ; preds = %select.unfold31.i.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i
  %.lcssa4860.i.i.ph = phi i64 [ %.promoted.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %.lcssa48.i.i, %select.unfold31.i.i.i.outer.backedge ]
  %.ph = phi i64 [ %.promoted.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %.lcssa12.i.i, %select.unfold31.i.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ false, %select.unfold31.i.i.i.outer.backedge ]
  %.sroa.013.0.i.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ true, %select.unfold31.i.i.i.outer.backedge ]
  %.sroa.013.0.i.i.i.off0471.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ 1, %select.unfold31.i.i.i.outer.backedge ]
  %.sroa.10.0.i.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %i.aij, %select.unfold31.i.i.i.outer.backedge ]
  %.sroa.17.0.i.i.i.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %.sroa.87.0.copyload.i.lcssa.i.i, %select.unfold31.i.i.i.outer.backedge ]
  %.sroa.8.1.i.i.i.ph = phi i64 [ %.sroa.8.0.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %i.aij, %select.unfold31.i.i.i.outer.backedge ]
  %.sroa.010.1.i.i.i.ph = phi i64 [ %.sroa.010.0.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ 1, %select.unfold31.i.i.i.outer.backedge ]
  br label %select.unfold31.i.i.i.outer475

select.unfold31.i.i.i.outer475.backedge:          ; preds = %bb.io, %._crit_edge.i.i48.i.i.i
  br label %select.unfold31.i.i.i.outer475

select.unfold31.i.i.i.outer475:                   ; preds = %select.unfold31.i.i.i.outer475.backedge, %select.unfold31.i.i.i.outer
  %.not27.i.i.i.ph476 = phi i1 [ %.not27.i.i.i.ph, %select.unfold31.i.i.i.outer ], [ false, %select.unfold31.i.i.i.outer475.backedge ]
  %.sroa.013.0.i.i.i.off0.ph477 = phi i1 [ %.sroa.013.0.i.i.i.off0.ph, %select.unfold31.i.i.i.outer ], [ true, %select.unfold31.i.i.i.outer475.backedge ]
  %.sroa.013.0.i.i.i.off0471.ph478 = phi i64 [ %.sroa.013.0.i.i.i.off0471.ph, %select.unfold31.i.i.i.outer ], [ 1, %select.unfold31.i.i.i.outer475.backedge ]
  %.sroa.10.0.i.i.i.ph479 = phi i64 [ %.sroa.10.0.i.i.i.ph, %select.unfold31.i.i.i.outer ], [ %.sroa.8.1.i.i.i, %select.unfold31.i.i.i.outer475.backedge ] ; 8 uses
  %.sroa.17.0.i.i.i.ph480 = phi i128 [ %.sroa.17.0.i.i.i.ph, %select.unfold31.i.i.i.outer ], [ %i.agl, %select.unfold31.i.i.i.outer475.backedge ] ; 2 uses
  %.sroa.8.1.i.i.i.ph481 = phi i64 [ %.sroa.8.1.i.i.i.ph, %select.unfold31.i.i.i.outer ], [ %.sroa.8.1.i.i.i, %select.unfold31.i.i.i.outer475.backedge ]
  %.sroa.010.1.i.i.i.ph482 = phi i64 [ %.sroa.010.1.i.i.i.ph, %select.unfold31.i.i.i.outer ], [ 1, %select.unfold31.i.i.i.outer475.backedge ]
  br label %select.unfold31.i.i.i

select.unfold31.i.i.i:                            ; preds = %select.unfold31.i.i.i.outer475, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.not27.i.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.not27.i.i.i.ph476, %select.unfold31.i.i.i.outer475 ] ; 2 uses
  %.sroa.013.0.i.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.013.0.i.i.i.off0.ph477, %select.unfold31.i.i.i.outer475 ] ; 2 uses
  %.sroa.013.0.i.i.i.off0471 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.013.0.i.i.i.off0471.ph478, %select.unfold31.i.i.i.outer475 ] ; 2 uses
  %.sroa.8.1.i.i.i = phi i64 [ %i.ahy, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.8.1.i.i.i.ph481, %select.unfold31.i.i.i.outer475 ] ; 7 uses
  %.sroa.010.1.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.010.1.i.i.i.ph482, %select.unfold31.i.i.i.outer475 ] ; 3 uses
  %i.afw = trunc nuw i64 %.sroa.010.1.i.i.i to i1
  %or.cond.i.i.i = select i1 %.not27.i.i.i, i1 %i.afw, i1 false
  br i1 %or.cond.i.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %select.unfold31.i.i.i
  call void @llvm.assume(i1 %i.afp), !noalias !28414
  %i.afx = icmp ult i64 %.ph, %i.afo
  br i1 %i.afx, label %.lr.ph.i.i.preheader.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.ij
  %i.afy = getelementptr inbounds nuw [112 x i8], ptr %i.afr, i64 %.ph ; 3 uses
  %.sroa.03.0.copyload.i50.i.i = load i16, ptr %i.afy, align 16, !noalias !28686 ; 2 uses
  %.sroa.87.0..sroa_idx.i51.i.i = getelementptr inbounds nuw i8, ptr %i.afy, i64 96
  %.sroa.87.0.copyload.i52.i.i = load i128, ptr %.sroa.87.0..sroa_idx.i51.i.i, align 16, !noalias !28686
  store i16 -1, ptr %i.afy, align 16, !noalias !28687
  %.not.i37.i53.i.i = icmp eq i16 %.sroa.03.0.copyload.i50.i.i, -1
  br i1 %.not.i37.i53.i.i, label %.lr.ph.i80.i.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

.lr.ph.i80.i.preheader:                           ; preds = %.lr.ph.i.i.preheader.i.i
  %i.afz = add nuw nsw i64 %.ph, 1                ; 2 uses
  %exitcond.not.i.i.i.i457 = icmp eq i64 %i.afz, %i.afo
  br i1 %exitcond.not.i.i.i.i457, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i81.i

.lr.ph.i.i.i81.i:                                 ; preds = %.lr.ph.i80.i.preheader, %.lr.ph.i80.i
  %i.aga = phi i64 [ %i.agc, %.lr.ph.i80.i ], [ %i.afz, %.lr.ph.i80.i.preheader ] ; 4 uses
  %i.agb = getelementptr inbounds nuw [112 x i8], ptr %i.afr, i64 %i.aga ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load i16, ptr %i.agb, align 16, !noalias !28686 ; 2 uses
  %.sroa.87.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.agb, i64 96
  %.sroa.87.0.copyload.i.i.i = load i128, ptr %.sroa.87.0..sroa_idx.i.i.i, align 16, !noalias !28686
  store i16 -1, ptr %i.agb, align 16, !noalias !28687
  %.not.i37.i.i.i = icmp eq i16 %.sroa.03.0.copyload.i.i.i, -1
  br i1 %.not.i37.i.i.i, label %.lr.ph.i80.i, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

.lr.ph.i80.i:                                     ; preds = %.lr.ph.i.i.i81.i
  %i.agc = add nuw nsw i64 %i.aga, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.agc, %i.afo
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i81.i

bb.ik:                                            ; preds = %select.unfold31.i.i.i
  %i.agd = icmp sgt i64 %.sroa.8.1.i.i.i, -1
  br i1 %i.agd, label %bb.il, label %.loopexit44.i.i.i

bb.il:                                            ; preds = %bb.ik
  %.val36.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 24), align 8, !noalias !28677, !noundef !41
  %i.age = icmp ult i64 %.sroa.8.1.i.i.i, %.val36.i.i.i
  br i1 %i.age, label %bb.im, label %.invoke.i.i.i, !prof !43

bb.im:                                            ; preds = %bb.il
  %.val35.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 16), align 8, !noalias !28677, !nonnull !41, !noundef !41
  %i.agf = getelementptr inbounds nuw [128 x i8], ptr %.val35.i.i.i, i64 %.sroa.8.1.i.i.i ; 2 uses
  %i.agg = load i64, ptr %i.agf, align 16, !range !52, !noalias !28688, !noundef !41
  %.not.i38.i.i.i = icmp eq i64 %i.agg, 2
  br i1 %.not.i38.i.i.i, label %.invoke.i.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !44

.invoke.i.i.i:                                    ; preds = %bb.jc, %bb.jb, %bb.im, %bb.il
  %i.agh = phi ptr [ @411, %bb.im ], [ @411, %bb.il ], [ @410, %bb.jb ], [ @410, %bb.jc ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @392, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agh) #53
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !28684, !inline_history !27961

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.im
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !28677
  invoke fastcc void @_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE7extractCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.agi)
          to label %bb.in unwind label %.loopexit43.i.i.i.loopexit, !noalias !28689, !inline_history !27961

bb.in:                                            ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.agj = load i128, ptr %i.bp, align 16, !range !42, !noalias !28677, !noundef !41
  %i.agk = trunc nuw i128 %i.agj to i1
  br i1 %i.agk, label %bb.io, label %bb.it

bb.io:                                            ; preds = %bb.in
  %i.agl = load i128, ptr %i.afv, align 16, !noalias !28677, !noundef !41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !28677
  call void @llvm.experimental.noalias.scope.decl(metadata !28690), !noalias !28414
  %i.agm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 144), align 8, !alias.scope !28690, !noalias !28677, !noundef !41
  %i.agn = icmp eq i64 %i.agm, 0
  br i1 %i.agn, label %select.unfold31.i.i.i.outer475.backedge, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.ago = mul i64 %.sroa.8.1.i.i.i, -1065810590584100411
  %i.agp = trunc i128 %i.agl to i64
  %i.agq = add i64 %i.ago, %i.agp
  %i.agr = mul i64 %i.agq, -1065810590584100411
  %i.ags = lshr i128 %i.agl, 64
  %i.agt = trunc nuw i128 %i.ags to i64
  %i.agu = add i64 %i.agr, %i.agt
  %i.agv = mul i64 %i.agu, -1065810590584100411   ; 2 uses
  %i.agw = call noundef i64 @llvm.fshl.i64(i64 %i.agv, i64 %i.agv, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28691), !noalias !28414
  call void @llvm.experimental.noalias.scope.decl(metadata !28692), !noalias !28414
  %i.agx = lshr i64 %i.agw, 57
  %i.agy = trunc nuw nsw i64 %i.agx to i8
  %i.agz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 128), align 8, !alias.scope !28693, !noalias !28694, !noundef !41 ; 2 uses
  %i.aha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 120), align 8, !alias.scope !28693, !noalias !28694, !nonnull !41, !noundef !41 ; 2 uses
  %i.ahb = insertelement <16 x i8> poison, i8 %i.agy, i64 0
  %i.ahc = shufflevector <16 x i8> %i.ahb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.iq

bb.iq:                                            ; preds = %bb.is, %bb.ip
  %.sroa.9.0.i.i.i39.i.i.i = phi i64 [ 0, %bb.ip ], [ %i.ahv, %bb.is ]
  %.pn.i.i40.i.i.i = phi i64 [ %i.agw, %bb.ip ], [ %i.ahw, %bb.is ]
  %.sroa.01.0.i.i.i41.i.i.i = and i64 %.pn.i.i40.i.i.i, %i.agz ; 3 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 %.sroa.01.0.i.i.i41.i.i.i
  %.sroa.0.0.copyload.i24.i.i42.i.i.i = load <16 x i8>, ptr %i.ahd, align 1, !noalias !28695 ; 2 uses
  %i.ahe = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i.i, %i.ahc
  %i.ahf = bitcast <16 x i1> %i.ahe to i16        ; 2 uses
  %.not.i.not30.i.i43.i.i.i = icmp eq i16 %i.ahf, 0
  br i1 %.not.i.not30.i.i43.i.i.i, label %._crit_edge.i.i48.i.i.i, label %.lr.ph.i.i44.i.i.i

.lr.ph.i.i44.i.i.i:                               ; preds = %bb.iq, %bb.ir
  %.sroa.06.0.i31.i.i45.i.i.i = phi i16 [ %i.ahu, %bb.ir ], [ %i.ahf, %bb.iq ] ; 3 uses
  %i.ahg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i45.i.i.i, i1 true)
  %i.ahh = zext nneg i16 %i.ahg to i64
  %i.ahi = add i64 %.sroa.01.0.i.i.i41.i.i.i, %i.ahh
  %i.ahj = and i64 %i.ahi, %i.agz
  %i.ahk = sub nsw i64 0, %i.ahj
  %i.ahl = getelementptr inbounds [48 x i8], ptr %i.aha, i64 %i.ahk ; 3 uses
  %i.ahm = getelementptr inbounds i8, ptr %i.ahl, i64 -48
  %.val2.i.i.i46.i.i.i = load i64, ptr %i.ahm, align 8, !noalias !28696, !noundef !41
  %i.ahn = getelementptr i8, ptr %i.ahl, i64 -32
  %.val3.i.i.i.i.i.i = load i128, ptr %i.ahn, align 16, !noalias !28696
  %i.aho = icmp eq i64 %.sroa.8.1.i.i.i, %.val2.i.i.i46.i.i.i
  %i.ahp = icmp eq i128 %i.agl, %.val3.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.aho, i1 %i.ahp, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.ir, !prof !43

._crit_edge.i.i48.i.i.i:                          ; preds = %bb.ir, %bb.iq
  %i.ahq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i.i, splat (i8 -1)
  %i.ahr = bitcast <16 x i1> %i.ahq to i16
  %i.ahs = icmp eq i16 %i.ahr, 0
  br i1 %i.ahs, label %bb.is, label %select.unfold31.i.i.i.outer475.backedge, !prof !44

bb.ir:                                            ; preds = %.lr.ph.i.i44.i.i.i
  %i.aht = add i16 %.sroa.06.0.i31.i.i45.i.i.i, -1
  %i.ahu = and i16 %i.aht, %.sroa.06.0.i31.i.i45.i.i.i ; 2 uses
  %.not.i.not.i.i47.i.i.i = icmp eq i16 %i.ahu, 0
  br i1 %.not.i.not.i.i47.i.i.i, label %._crit_edge.i.i48.i.i.i, label %.lr.ph.i.i44.i.i.i

bb.is:                                            ; preds = %._crit_edge.i.i48.i.i.i
  %i.ahv = add i64 %.sroa.9.0.i.i.i39.i.i.i, 16   ; 2 uses
  %i.ahw = add i64 %.sroa.01.0.i.i.i41.i.i.i, %i.ahv
  br label %bb.iq

bb.it:                                            ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !28677
  br label %.loopexit44.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i44.i.i.i
  %i.ahx = getelementptr inbounds i8, ptr %i.ahl, i64 -16
  %i.ahy = load i64, ptr %i.ahx, align 8, !noalias !28684, !noundef !41
  br label %select.unfold31.i.i.i

.loopexit44.i.i.i:                                ; preds = %bb.ik, %.loopexit.i.i.i, %bb.it
  call void @llvm.experimental.noalias.scope.decl(metadata !28697), !noalias !28414
  call void @llvm.experimental.noalias.scope.decl(metadata !28698), !noalias !28414
  %i.ahz = load i64, ptr %i.bq, align 8, !range !52, !alias.scope !28699, !noalias !28700, !noundef !41
  %.not.i.i.i.i76.i = icmp eq i64 %i.ahz, 2
  br i1 %.not.i.i.i.i76.i, label %bb.iw, label %bb.iu

bb.iu:                                            ; preds = %.loopexit44.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !28701), !noalias !28414
  %i.aia = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28702), !noalias !28414
  call void @llvm.experimental.noalias.scope.decl(metadata !28703), !noalias !28414
  %i.aib = load ptr, ptr %i.aia, align 8, !alias.scope !28704, !noalias !28700, !nonnull !41, !noundef !41
  %i.aic = atomicrmw sub ptr %i.aib, i64 1 release, align 8, !noalias !28705
  %i.aid = icmp eq i64 %i.aic, 1
  br i1 %i.aid, label %bb.iv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.iv:                                            ; preds = %bb.iu
  fence acquire, !noalias !28414
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aia) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i unwind label %bb.ix, !noalias !28706, !inline_history !27961

bb.iw:                                            ; preds = %.loopexit44.i.i.i
  %i.aie = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.aie, align 8, !alias.scope !28699, !noalias !28700, !nonnull !41, !noundef !41
  %i.aif = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.aif, align 8, !alias.scope !28699, !noalias !28700
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val.i.i.i.i.i, i64 %.val1.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i unwind label %bb.ix, !noalias !28707, !inline_history !27961

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %i.aig = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB20_13introspection12introspector1__12___ComemoCallNtNvNtB20_6engine1__12___ComemoCallNtNvB3N_s_1__12___ComemoCallNtNvB3N_s0_1__12___ComemoCalluNtNvNtB2S_7locator1__12___ComemoCalluuEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aee) #54
          to label %.body58.thread.i.i.i unwind label %bb.iy, !noalias !28706, !inline_history !27961

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.iw, %bb.iv, %bb.iu
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB20_13introspection12introspector1__12___ComemoCallNtNvNtB20_6engine1__12___ComemoCallNtNvB3N_s_1__12___ComemoCallNtNvB3N_s0_1__12___ComemoCalluNtNvNtB2S_7locator1__12___ComemoCalluuEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aee)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluNtNvNtB2N_7locator1__12___ComemoCalluuEINtNtB4_6result6ResultNtNtNtB1V_6layout5frame5FrameINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.kb, !noalias !28706, !inline_history !27961

bb.iy:                                            ; preds = %bb.ix
  %i.aih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !28706, !inline_history !27961
  unreachable

_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i.i81.i, %.lr.ph.i.i.preheader.i.i
  %.lcssa48.i.i = phi i64 [ %.lcssa4860.i.i.ph, %.lr.ph.i.i.preheader.i.i ], [ %i.aga, %.lr.ph.i.i.i81.i ] ; 2 uses
  %.lcssa12.i.i = phi i64 [ %.ph, %.lr.ph.i.i.preheader.i.i ], [ %i.aga, %.lr.ph.i.i.i81.i ] ; 2 uses
  %.sroa.03.0.copyload.i.lcssa.i.i = phi i16 [ %.sroa.03.0.copyload.i50.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.03.0.copyload.i.i.i, %.lr.ph.i.i.i81.i ]
  %.sroa.87.0.copyload.i.lcssa.i.i = phi i128 [ %.sroa.87.0.copyload.i52.i.i, %.lr.ph.i.i.preheader.i.i ], [ %.sroa.87.0.copyload.i.i.i, %.lr.ph.i.i.i81.i ]
  %i.aii = getelementptr inbounds nuw [112 x i8], ptr %i.afr, i64 %.lcssa12.i.i
  store i64 %.lcssa48.i.i, ptr %i.afm, align 8, !noalias !28673
  %.sroa.8.0..sroa_idx.le.i.i.i = getelementptr inbounds nuw i8, ptr %i.aii, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !28677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(94) %.sroa.49.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(94) %.sroa.8.0..sroa_idx.le.i.i.i, i64 94, i1 false), !noalias !28684
  store i16 %.sroa.03.0.copyload.i.lcssa.i.i, ptr %i.afs, align 16, !noalias !28677
  store i64 0, ptr %i.aft, align 16, !noalias !28677
  store i64 %.sroa.013.0.i.i.i.off0471, ptr %i.bo, align 16, !noalias !28677
  store i64 %.sroa.10.0.i.i.i.ph479, ptr %i.afu, align 8, !noalias !28677
  %i.aij = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 40), align 8, !noalias !28677, !noundef !41 ; 5 uses
  invoke fastcc void @_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluuEEE9insert_atCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl7___CACHE, i64 8), i64 noundef %i.aij, ptr noalias nofree noundef align 16 captures(address) dereferenceable(128) %i.bo)
          to label %bb.iz unwind label %.loopexit43.i.i.i.loopexit.split-lp, !noalias !28684, !inline_history !27961

.loopexit.i.loopexit.i.i:                         ; preds = %.lr.ph.i80.i.preheader, %.lr.ph.i80.i
  store i64 %i.afo, ptr %i.afm, align 8, !noalias !28673
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ij, %.loopexit.i.loopexit.i.i
  %i.aik = icmp eq i64 %.sroa.010.1.i.i.i, 1      ; 2 uses
  %or.cond32.i.i.i = and i1 %.not27.i.i.i, %i.aik
  br i1 %or.cond32.i.i.i, label %.loopexit44.i.i.i, label %bb.jd

bb.iz:                                            ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs8_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !28677
  %.not.i.i.i42 = icmp eq i64 %.sroa.010.1.i.i.i, 1
  br i1 %.not.i.i.i42, label %.noexc54.i.i.i, label %bb.ja

.noexc54.i.i.i:                                   ; preds = %bb.ja, %bb.iz
  br i1 %.sroa.013.0.i.i.i.off0, label %bb.jb, label %select.unfold31.i.i.i.outer.backedge
end_hunk_10
begin_hunk_11_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter13finish_region:bb.a
bb.g:                                             ; preds = %.lr.ph13.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29126)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29128)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !29129, !noalias !29116, !nonnull !41, !noundef !41
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !29130
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit9.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit9.i.i unwind label %bb.i, !noalias !29116

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit9.i.i: ; preds = %bb.h, %bb.g, %.lr.ph13.i.i
  %i.bc = icmp eq i64 %i.aw, %i.ag
  br i1 %i.bc, label %common.resume, label %.lr.ph13.i.i

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit9.i.i, %bb.dd, %bb.dc, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.f ], [ %.pn179240, %bb.dd ], [ %.pn179240, %bb.dc ], [ %i.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit9.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !29116
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowE8truncateBK_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit.i.i, %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !noundef !41
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.bf)
  store i64 %..i, ptr %i.be, align 8
  %i.bg = icmp eq i64 %i.z, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowE8truncateBK_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.bh, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowE8truncateBK_.exit.thread, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowE8truncateBK_.exit, %bb.j, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !41 ; 6 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.bj, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !41, !align !46, !noundef !41
  %i.bp = getelementptr i8, ptr %i.bo, i64 176
  %.val196 = load i8, ptr %i.bp, align 8, !range !54, !noundef !41
  %i.bq = trunc nuw i8 %.val196 to i1
  br i1 %i.bq, label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit, label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread

_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit: ; preds = %bb.l
  %i.br = getelementptr [64 x i8], ptr %i.bm, i64 %i.bl
  %i.bs = getelementptr i8, ptr %i.br, i64 -64    ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !52, !alias.scope !29131, !noundef !41
  %i.bu = icmp eq i64 %i.bt, 2
  %.sroa.01.0.in.v.i = select i1 %i.bu, i64 16, i64 48
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.01.0.in.v.i
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !alias.scope !29131, !noundef !41
  %i.bv = trunc i64 %.sroa.01.0.i to i1
  br i1 %i.bv, label %bb.m, label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread

_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread: ; preds = %bb.l, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit
  %.pre493 = phi i64 [ %i.bl, %bb.l ], [ %i.bl, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit ], [ 0, %bb.k ], [ %i.cn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 168
  %i.bz = load i8, ptr %i.by, align 8, !range !48, !noundef !41
  %i.ca = icmp eq i8 %i.bz, 1
  br i1 %i.ca, label %bb.p, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit

bb.m:                                             ; preds = %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.cb = add nsw i64 %i.bl, -1                   ; 3 uses
  store i64 %i.cb, ptr %i.bk, align 8
  %i.cc = load i64, ptr %i.bi, align 8, !range !45, !noundef !41
  %i.cd = icmp samesign ult i64 %i.cb, %i.cc
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp ult i64 %i.bl, 144115188075855873
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.bm, i64 %i.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.cf, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29132)
  %i.cg = load i64, ptr %i.v, align 8, !range !52, !alias.scope !29132, !noundef !41
  %.not.i = icmp eq i64 %i.cg, 2
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29133)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29135)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !29136, !nonnull !41, !noundef !41
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !29136
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ch) #58
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEBH_.exit: ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !41
  %i.cn = load i64, ptr %i.bk, align 8, !noundef !41 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 144115188075855872
  call void @llvm.assume(i1 %i.co)
  %..i199 = call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cm)
  store i64 %..i199, ptr %i.cl, align 8
  br label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread

bb.p:                                             ; preds = %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread
  %i.cp = icmp ult i64 %.pre493, 144115188075855872
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp eq i64 %.pre493, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cs = load i8, ptr %i.cr, align 8, !range !54
  %i.ct = trunc nuw i8 %i.cs to i1
  %or.cond186 = select i1 %i.cq, i1 %i.ct, i1 false
  br i1 %or.cond186, label %._crit_edge, label %bb.q

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit: ; preds = %.lr.ph617, %._crit_edge618, %._RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit_crit_edge.loopexit, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread
  %i.cu = phi i64 [ %.pre493, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread ], [ %.pre493, %._crit_edge618 ], [ %.pre.pre, %._RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit_crit_edge.loopexit ], [ %.pre493, %.lr.ph617 ] ; 2 uses
  %.sroa.4.1 = phi i64 [ undef, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread ], [ %i.db, %._crit_edge618 ], [ %i.db, %._RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit_crit_edge.loopexit ], [ undef, %.lr.ph617 ] ; 2 uses
  %.sroa.014.1 = phi i1 [ false, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter13finish_region0Ba_.exit.thread ], [ true, %._crit_edge618 ], [ true, %._RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit_crit_edge.loopexit ], [ false, %.lr.ph617 ] ; 2 uses
  %i.cv = load ptr, ptr %i.bj, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cu, 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx
  %i.cx = icmp eq i64 %i.cu, 0
  br i1 %i.cx, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  %i.cz = load ptr, ptr %i.bj, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %.idx619 = shl nuw nsw i64 %.pre493, 6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx619
  call void @llvm.experimental.noalias.scope.decl(metadata !29137)
  %i.db = load i64, ptr %i.cy, align 8, !alias.scope !29137, !noalias !29138 ; 6 uses
  %i.dc = icmp eq i64 %.pre493, 0
  br i1 %i.dc, label %._crit_edge618, label %.lr.ph617

bb.r:                                             ; preds = %.lr.ph617
  %i.dd = getelementptr inbounds nuw i8, ptr %i.df, i64 64 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.da
  br i1 %i.de, label %._crit_edge618, label %.lr.ph617

.lr.ph617:                                        ; preds = %bb.q, %bb.r
  %i.df = phi ptr [ %i.dd, %bb.r ], [ %i.cz, %bb.q ] ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !range !52, !alias.scope !29139, !noalias !29140, !noundef !41
  %i.dh = icmp eq i64 %i.dg, 2
  %.sroa.0.0.in.v.i.i = select i1 %i.dh, i64 16, i64 48
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !29139, !noalias !29140, !noundef !41
  %i.di = icmp ult i64 %.sroa.0.0.i.i, %i.db
  br i1 %i.di, label %bb.r, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit

._crit_edge618:                                   ; preds = %bb.r, %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !41 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, 192153584101141163
  call void @llvm.assume(i1 %i.dl)
  call void @llvm.experimental.noalias.scope.decl(metadata !29141)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dn = load double, ptr %i.dm, align 8, !alias.scope !29141, !noalias !29142, !noundef !41
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !alias.scope !29141, !noalias !29142, !noundef !41
  %i.dq = fadd double %i.dn, %i.dp                ; 2 uses
  %.inv.i = fcmp ord double %i.dq, 0.000000e+00
  %spec.store.select.i = select i1 %.inv.i, double %i.dq, double 0.000000e+00
  store double %spec.store.select.i, ptr %i.do, align 8, !alias.scope !29141, !noalias !29142
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !29143, !noundef !41 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 288230376151711744
  call void @llvm.assume(i1 %i.dt)
  %i.du = sub i64 %i.ds, %i.db
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !29141, !noalias !29142, !noundef !41
  %i.dx = add i64 %i.du, %i.dw
  store i64 %i.dx, ptr %i.dv, align 8, !alias.scope !29141, !noalias !29142
  %i.dy = icmp ult i64 %i.db, %i.ds
  br i1 %i.dy, label %.lr.ph.i383, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit

.lr.ph.i383:                                      ; preds = %._crit_edge618
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 209
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i
  %i.ea = add nuw nsw i64 %.sroa.010.021.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ea, %i.ds
  br i1 %exitcond.not.i, label %._RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit_crit_edge.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i383
  %.sroa.010.021.i = phi i64 [ %i.db, %.lr.ph.i383 ], [ %i.ea, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false), !noalias !29145
  store i64 0, ptr %i.dz, align 8, !alias.scope !29146, !noalias !29147
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !29146, !noalias !29147
  store i8 1, ptr %.sroa.62.0..sroa_idx.i, align 1, !alias.scope !29146, !noalias !29147
  %i.eb = call fastcc { ptr, i64 } @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter19layout_row_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, i64 noundef %.sroa.010.021.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1, i64 noundef range(i64 0, 192153584101141163) %i.dk), !noalias !29148, !inline_history !28989 ; 2 uses
  %i.ec = extractvalue { ptr, i64 } %i.eb, 0      ; 2 uses
  %.not.i.i384 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i384, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i: ; preds = %bb.t
  %i.ed = extractvalue { ptr, i64 } %i.eb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.loopexit408

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i: ; preds = %bb.t
  %.sroa.08.0.copyload.i = load i64, ptr %i.dz, align 8, !alias.scope !29141, !noalias !29145
  %.sroa.49.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !29141, !noalias !29145
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !29141, !noalias !29145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !29145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ee = icmp eq i64 %.sroa.08.0.copyload.i, 2
  br i1 %i.ee, label %.loopexit408, label %bb.s

._RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit_crit_edge.loopexit: ; preds = %bb.s
  %.pre.pre = load i64, ptr %i.bk, align 8
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit

.loopexit408:                                     ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i
  %.sroa.6.016.i = phi ptr [ %i.ec, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i ], [ %.sroa.49.0.copyload.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i ] ; 2 uses
  %.sroa.8.015.i = phi i64 [ %i.ed, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i ], [ %.sroa.510.0.copyload.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.016.i) ]
  br label %bb.bp

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit, %bb.w
  %.sroa.020.0304 = phi ptr [ %i.ef, %bb.w ], [ %i.cv, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ] ; 4 uses
  %.sroa.0109.0303 = phi double [ %.sroa.0109.1, %bb.w ], [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ] ; 2 uses
  %.sroa.0103.0302 = phi double [ %.sroa.0103.1, %bb.w ], [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.020.0304, i64 64 ; 2 uses
  %i.eg = load i64, ptr %.sroa.020.0304, align 8, !range !52, !noundef !41
  %i.eh = icmp eq i64 %i.eg, 2
  br i1 %i.eh, label %bb.u, label %bb.v

._crit_edge:                                      ; preds = %bb.w, %bb.p, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit
  %.sroa.014.1368 = phi i1 [ %.sroa.014.1, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ false, %bb.p ], [ %.sroa.014.1, %bb.w ]
  %.sroa.4.1367 = phi i64 [ %.sroa.4.1, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ undef, %bb.p ], [ %.sroa.4.1, %bb.w ] ; 2 uses
  %.sroa.0103.0.lcssa = phi double [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ 0.000000e+00, %bb.p ], [ %.sroa.0103.1, %bb.w ] ; 2 uses
  %.sroa.0109.0.lcssa = phi double [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ 0.000000e+00, %bb.p ], [ %.sroa.0109.1, %bb.w ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ej = load double, ptr %i.ei, align 8, !noundef !41 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.el = load double, ptr %i.ek, align 8, !noundef !41 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store double %i.ej, ptr %i.l, align 8
  store double %i.el, ptr %i.k, align 8
  %i.eo = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
  %i.ep = icmp slt i8 %i.eo, 0
  %..i.i = select i1 %i.ep, double %i.el, double %i.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store double %.sroa.0109.0.lcssa, ptr %i.j, align 8
  store double %i.en, ptr %i.i, align 8
  %i.eq = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
  %i.er = icmp slt i8 %i.eq, 0
  %..i2.i = select i1 %i.er, double %i.en, double %.sroa.0109.0.lcssa ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.es = fcmp ogt double %.sroa.0103.0.lcssa, 0.000000e+00
  br i1 %i.es, label %bb.y, label %bb.x

bb.u:                                             ; preds = %.lr.ph
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.020.0304, i64 8
  %i.eu = load double, ptr %i.et, align 8, !noundef !41
  %i.ev = fadd double %.sroa.0103.0302, %i.eu     ; 2 uses
  %.inv163 = fcmp ord double %i.ev, 0.000000e+00
  %spec.store.select = select i1 %.inv163, double %i.ev, double 0.000000e+00
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.020.0304, i64 32
  %i.ex = load double, ptr %i.ew, align 8, !noundef !41
  %i.ey = fadd double %.sroa.0109.0303, %i.ex     ; 2 uses
  %.inv = fcmp ord double %i.ey, 0.000000e+00
  %spec.store.select1 = select i1 %.inv, double %i.ey, double 0.000000e+00
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.0103.1 = phi double [ %spec.store.select, %bb.u ], [ %.sroa.0103.0302, %bb.v ] ; 2 uses
  %.sroa.0109.1 = phi double [ %.sroa.0109.0303, %bb.u ], [ %spec.store.select1, %bb.v ] ; 2 uses
  %i.ez = icmp eq ptr %i.ef, %i.cw
  br i1 %i.ez, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %bb.y, %bb.z, %._crit_edge
  %.sroa.2.0 = phi double [ %i.fs, %bb.z ], [ %..i2.i, %bb.y ], [ %..i2.i, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.u, double noundef %..i.i, double noundef %.sroa.2.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @420)
  store i64 0, ptr %i.n, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !noundef !41 ; 6 uses
  %i.fe = icmp ult i64 %i.fd, 192153584101141163
  call void @llvm.assume(i1 %i.fe)
  %i.ff = load ptr, ptr %i.bj, align 8, !nonnull !41, !noundef !41 ; 4 uses
  %i.fg = load i64, ptr %i.bi, align 8, !range !45, !noundef !41
  %i.fh = load i64, ptr %i.bk, align 8, !noundef !41 ; 3 uses
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  %i.fi = icmp ult i64 %i.fh, 144115188075855872
  call void @llvm.assume(i1 %i.fi)
  %.idx321 = shl nuw nsw i64 %i.fh, 6
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx321 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ff, ptr %i.t, align 8
  %.sroa.027.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.ff, ptr %.sroa.027.sroa.2.0..sroa_idx, align 8
  %.sroa.027.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.fg, ptr %.sroa.027.sroa.3.0..sroa_idx, align 8
  %.sroa.027.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.fj, ptr %.sroa.027.sroa.4.0..sroa_idx, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.228.0..sroa_idx, align 8
  %i.fk = icmp eq i64 %i.fh, 0
  br i1 %i.fk, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i._crit_edge, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph: ; preds = %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fm = fneg double %.sroa.0109.0.lcssa
  %i.fn = fcmp uno double %.sroa.0109.0.lcssa, 0.000000e+00
  %spec.store.select4 = select i1 %i.fn, double 0.000000e+00, double %i.fm
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.7128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.fr = add nuw nsw i64 %i.fd, 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.014.1368.not = xor i1 %.sroa.014.1368, true
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i

bb.y:                                             ; preds = %._crit_edge
  %i.fs = load double, ptr %i.em, align 8, !noundef !41 ; 2 uses
  %i.ft = call double @llvm.fabs.f64(double %i.fs)
  %i.fu = fcmp ueq double %i.ft, +inf
  br i1 %i.fu, label %bb.x, label %bb.z

bb.z:                                             ; preds = %bb.y
  br label %bb.x

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph, %bb.ce
  %i.fv = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %i.sn, %bb.ce ]
  %i.fw = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %i.fz, %bb.ce ] ; 4 uses
  %.sroa.624.0317 = phi double [ 0.000000e+00, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %spec.store.select7, %bb.ce ] ; 3 uses
  %.sroa.0129.0316 = phi double [ 0.000000e+00, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %.sroa.0129.1, %bb.ce ] ; 3 uses
  %i.fx = phi ptr [ %i.ff, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %i.fy, %bb.ce ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29149)
  call void @llvm.experimental.noalias.scope.decl(metadata !29150)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 3 uses
  store ptr %i.fy, ptr %.sroa.027.sroa.2.0..sroa_idx, align 8, !alias.scope !29151, !noalias !29152
  %.sroa.0.0.copyload1.i = load i64, ptr %i.fx, align 8, !noalias !29153 ; 3 uses
  %.not.i200 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i200, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i._crit_edge, label %bb.aa

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210: ; preds = %.loopexit272, %.loopexit.split-lp273, %.loopexit.split-lp, %bb.cw, %bb.ca
  %.pn176 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.thr_comm.split-lp247, %bb.ca ], [ %lpad.phi, %bb.cw ], [ %lpad.loopexit274, %.loopexit272 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp273 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEEEB2f_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #54
          to label %.thread236 unwind label %bb.cx

.loopexit272:                                     ; preds = %bb.bq, %bb.bt
  %lpad.loopexit274 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210

.loopexit.split-lp273:                            ; preds = %bb.cl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210

bb.aa:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
end_hunk_11
begin_hunk_12_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter6layout:bb.a
  %i.bso = getelementptr i8, ptr %i.bqv, i64 -12
  %.val22.i = load i8, ptr %i.bso, align 4, !range !54, !noalias !31488, !noundef !41
  %i.bsp = trunc nuw i8 %.val22.i to i1
  br i1 %i.bsp, label %bb.st, label %bb.ss

bb.ss:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31488
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_new_headers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqn, i64 noundef %i.bqu, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2)
          to label %.noexc165 unwind label %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc165:                                        ; preds = %bb.ss
  %i.bsq = load ptr, ptr %i.c, align 8, !noalias !31488, !noundef !41 ; 2 uses
  %.not19.i = icmp eq ptr %i.bsq, null
  br i1 %.not19.i, label %bb.sz, label %bb.sy

bb.st:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !31499)
  store i64 0, ptr %i.or, align 8, !alias.scope !31500, !noalias !31489
  call void @llvm.experimental.noalias.scope.decl(metadata !31501)
  %i.bsr = load i64, ptr %i.ot, align 8, !alias.scope !31502, !noalias !31489, !noundef !41 ; 2 uses
  %i.bss = icmp eq i64 %i.bsr, 0
  br i1 %i.bss, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit31.i, label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %bb.st
  %i.bst = load ptr, ptr %i.os, align 8, !alias.scope !31502, !noalias !31489, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %.idx.i.i27.i = shl nuw nsw i64 %i.bsr, 5
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 %.idx.i.i27.i
  br label %bb.su

bb.su:                                            ; preds = %bb.sv, %.lr.ph.i.i26.i
  %i.bsv = phi i64 [ %.sroa.4.0.i.i4962.i, %.lr.ph.i.i26.i ], [ %i.bta, %bb.sv ] ; 4 uses
  %.sroa.0.02.i.i28.i = phi ptr [ %i.bst, %.lr.ph.i.i26.i ], [ %i.bsw, %bb.sv ] ; 3 uses
  %i.bsw = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i28.i, i64 32 ; 2 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i28.i, i64 24
  %i.bsy = load i8, ptr %i.bsx, align 8, !range !54, !noalias !31503, !noundef !41
  %i.bsz = trunc nuw i8 %i.bsy to i1
  br i1 %i.bsz, label %bb.sw, label %bb.sv

._crit_edge.i.i29.i:                              ; preds = %bb.sv
  store ptr inttoptr (i64 8 to ptr), ptr %i.os, align 8, !alias.scope !31502, !noalias !31489, !captures !65
  store i64 0, ptr %i.ot, align 8, !alias.scope !31502, !noalias !31489
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit31.i

bb.sv:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i30.i, %bb.su
  %i.bta = phi i64 [ %i.btg, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i30.i ], [ %i.bsv, %bb.su ]
  %i.btb = icmp eq ptr %i.bsw, %i.bsu
  br i1 %i.btb, label %._crit_edge.i.i29.i, label %bb.su

bb.sw:                                            ; preds = %bb.su
  call void @llvm.experimental.noalias.scope.decl(metadata !31504)
  %i.btc = load i64, ptr %i.ou, align 8, !range !45, !alias.scope !31505, !noalias !31506, !noundef !41
  %i.btd = icmp eq i64 %i.bsv, %i.btc
  br i1 %i.btd, label %bb.sx, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i30.i

bb.sx:                                            ; preds = %bb.sw
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ou) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i30.i unwind label %.thread216.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i30.i: ; preds = %bb.sx, %bb.sw
  %i.bte = load ptr, ptr %i.ow, align 8, !alias.scope !31505, !noalias !31506, !nonnull !41, !noundef !41
  %i.btf = getelementptr inbounds nuw [8 x i8], ptr %i.bte, i64 %i.bsv
  store ptr %.sroa.0.02.i.i28.i, ptr %i.btf, align 8, !noalias !31507, !captures !65
  %i.btg = add i64 %i.bsv, 1                      ; 2 uses
  store i64 %i.btg, ptr %i.ov, align 8, !alias.scope !31505, !noalias !31506
  br label %bb.sv

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit31.i: ; preds = %._crit_edge.i.i29.i, %bb.st
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31488
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter18layout_new_headers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqn, i64 noundef %i.bqu, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2)
          to label %.noexc167 unwind label %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc167:                                        ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit31.i
  %i.bth = load ptr, ptr %i.d, align 8, !noalias !31488, !noundef !41 ; 2 uses
  %.not20.i = icmp eq ptr %i.bth, null
  br i1 %.not20.i, label %bb.tf, label %bb.te

bb.sy:                                            ; preds = %.noexc165
  %i.bti = load i64, ptr %i.pe, align 8, !noalias !31488, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31488
  br label %bb.tu

bb.sz:                                            ; preds = %.noexc165
  %i.btj = load i8, ptr %i.pe, align 8, !range !54, !noalias !31488, !noundef !41
  %i.btk = trunc nuw i8 %i.btj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31488
  store ptr %i.bqn, ptr %i.os, align 8, !alias.scope !31486, !noalias !31489, !captures !65
  store i64 %i.bqu, ptr %i.ot, align 8, !alias.scope !31486, !noalias !31489
  br i1 %i.btk, label %.outer, label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %bb.sz
  call void @llvm.experimental.noalias.scope.decl(metadata !31508)
  store i64 0, ptr %i.or, align 8, !alias.scope !31509, !noalias !31489
  call void @llvm.experimental.noalias.scope.decl(metadata !31510)
  %.idx.i.i33.i = shl nuw nsw i64 %i.bqu, 5
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bqn, i64 %.idx.i.i33.i
  br label %bb.ta

bb.ta:                                            ; preds = %bb.tb, %.lr.ph.i.i32.i
  %.sroa.0.02.i.i34.i = phi ptr [ %i.bqn, %.lr.ph.i.i32.i ], [ %i.btm, %bb.tb ] ; 3 uses
  %i.btm = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i34.i, i64 32 ; 2 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i34.i, i64 24
  %i.bto = load i8, ptr %i.btn, align 8, !range !54, !noalias !31511, !noundef !41
  %i.btp = trunc nuw i8 %i.bto to i1
  br i1 %i.btp, label %bb.tc, label %bb.tb

bb.tb:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i36.i, %bb.ta
  %i.btq = icmp eq ptr %i.btm, %i.btl
  br i1 %i.btq, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit37.i, label %bb.ta

bb.tc:                                            ; preds = %bb.ta
  call void @llvm.experimental.noalias.scope.decl(metadata !31512)
  %i.btr = load i64, ptr %i.ov, align 8, !alias.scope !31513, !noalias !31514, !noundef !41 ; 3 uses
  %i.bts = load i64, ptr %i.ou, align 8, !range !45, !alias.scope !31513, !noalias !31514, !noundef !41
  %i.btt = icmp eq i64 %i.btr, %i.bts
  br i1 %i.btt, label %bb.td, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i36.i

bb.td:                                            ; preds = %bb.tc
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ou) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i36.i unwind label %.thread216.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i36.i: ; preds = %bb.td, %bb.tc
  %i.btu = load ptr, ptr %i.ow, align 8, !alias.scope !31513, !noalias !31514, !nonnull !41, !noundef !41
  %i.btv = getelementptr inbounds nuw [8 x i8], ptr %i.btu, i64 %i.btr
  store ptr %.sroa.0.02.i.i34.i, ptr %i.btv, align 8, !noalias !31515, !captures !65
  %i.btw = add i64 %i.btr, 1
  store i64 %i.btw, ptr %i.ov, align 8, !alias.scope !31513, !noalias !31514
  br label %bb.tb

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit37.i: ; preds = %bb.tb
  store ptr inttoptr (i64 8 to ptr), ptr %i.os, align 8, !alias.scope !31516, !noalias !31489, !captures !65
  store i64 0, ptr %i.ot, align 8, !alias.scope !31516, !noalias !31489
  br label %.outer

bb.te:                                            ; preds = %.noexc167
  %i.btx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bty = load i64, ptr %i.btx, align 8, !noalias !31488, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31488
  br label %bb.tu

bb.tf:                                            ; preds = %.noexc167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31488
  br label %.outer

bb.tg:                                            ; preds = %bb.sm, %bb.th
  call void @llvm.experimental.noalias.scope.decl(metadata !31517)
  call void @llvm.experimental.noalias.scope.decl(metadata !31518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.oq, i64 24, i1 false), !noalias !31519
  store i64 0, ptr %i.oq, align 8, !alias.scope !31520, !noalias !31521
  store i8 0, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !31520, !noalias !31521
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !31520, !noalias !31521
  %i.btz = invoke fastcc { ptr, i64 } @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter19layout_row_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, i64 noundef range(i64 0, 288230376151711743) %.sroa.0.0916, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, i64 noundef 0)
          to label %.noexc172 unwind label %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ; 2 uses

.noexc172:                                        ; preds = %bb.tg
  %i.bua = extractvalue { ptr, i64 } %i.btz, 0    ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.bua, null
  br i1 %.not.i.i169, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i: ; preds = %.noexc172
  %i.bub = extractvalue { ptr, i64 } %i.btz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit265

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i: ; preds = %.noexc172
  %.sroa.0.0.copyload.i = load i64, ptr %i.oq, align 8, !alias.scope !31522, !noalias !31523
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !31522, !noalias !31523
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !31522, !noalias !31523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oq, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !31519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.buc = icmp eq i64 %.sroa.0.0.copyload.i, 2
  br i1 %i.buc, label %.loopexit265, label %bb.tp

bb.th:                                            ; preds = %bb.sm
  %i.bud = getelementptr inbounds nuw i8, ptr %i.py, i64 144
  %i.bue = load i64, ptr %i.bud, align 8, !noundef !41 ; 2 uses
  %.not71 = icmp ult i64 %.sroa.0.0916, %i.bue
  br i1 %.not71, label %bb.tg, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.buf = icmp eq i64 %.sroa.0.0916, %i.bue
  br i1 %i.buf, label %.lr.ph.i180, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit

.lr.ph.i180:                                      ; preds = %bb.ti
  %i.bug = load i64, ptr %i.ox, align 8, !noundef !41 ; 2 uses
  %i.buh = icmp ult i64 %i.bug, 192153584101141163
  call void @llvm.assume(i1 %i.buh)
  %i.bui = load double, ptr %i.oy, align 8, !alias.scope !31524, !noalias !31525, !noundef !41
  %i.buj = load double, ptr %i.oz, align 8, !alias.scope !31524, !noalias !31525, !noundef !41
  %i.buk = fadd double %i.bui, %i.buj             ; 2 uses
  %.inv.i173 = fcmp ord double %i.buk, 0.000000e+00
  %spec.store.select.i174 = select i1 %.inv.i173, double %i.buk, double 0.000000e+00
  store double %spec.store.select.i174, ptr %i.oz, align 8, !alias.scope !31524, !noalias !31525
  %i.bul = sub nsw i64 %i.px, %.sroa.0.0916
  %i.bum = load i64, ptr %i.pa, align 8, !alias.scope !31524, !noalias !31525, !noundef !41
  %i.bun = add i64 %i.bul, %i.bum
  store i64 %i.bun, ptr %i.pa, align 8, !alias.scope !31524, !noalias !31525
  br label %bb.tk

bb.tj:                                            ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i185
  %i.buo = add nuw nsw i64 %.sroa.010.021.i, 1    ; 2 uses
  %exitcond.not.i186 = icmp eq i64 %i.buo, %i.px
  br i1 %exitcond.not.i186, label %.loopexit261, label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %.lr.ph.i180
  %.sroa.010.021.i = phi i64 [ %.sroa.0.0916, %.lr.ph.i180 ], [ %i.buo, %bb.tj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31526)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.oq, i64 24, i1 false), !noalias !31527
  store i64 0, ptr %i.oq, align 8, !alias.scope !31528, !noalias !31529
  store i8 1, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !31528, !noalias !31529
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !31528, !noalias !31529
  %i.bup = invoke fastcc { ptr, i64 } @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter19layout_row_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, i64 noundef %.sroa.010.021.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, i64 noundef range(i64 0, 192153584101141163) %i.bug)
          to label %.noexc187 unwind label %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !31010 ; 2 uses

.noexc187:                                        ; preds = %bb.tk
  %i.buq = extractvalue { ptr, i64 } %i.bup, 0    ; 2 uses
  %.not.i.i183 = icmp eq ptr %i.buq, null
  br i1 %.not.i.i183, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i185, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i184

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i184: ; preds = %.noexc187
  %i.bur = extractvalue { ptr, i64 } %i.bup, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i185: ; preds = %.noexc187
  %.sroa.08.0.copyload.i = load i64, ptr %i.oq, align 8, !alias.scope !31524, !noalias !31527
  %.sroa.49.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !31524, !noalias !31527
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !31524, !noalias !31527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !31527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bus = icmp eq i64 %.sroa.08.0.copyload.i, 2
  br i1 %i.bus, label %.loopexit, label %bb.tj

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit: ; preds = %._crit_edge.i.i189, %.loopexit261, %bb.ti
  %i.but = getelementptr inbounds nuw i8, ptr %i.py, i64 152
  br label %.outer

.loopexit:                                        ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i185, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i184
  %.sroa.6.016.i = phi ptr [ %i.buq, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i184 ], [ %.sroa.49.0.copyload.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i185 ] ; 2 uses
  %.sroa.8.015.i = phi i64 [ %i.bur, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i184 ], [ %.sroa.510.0.copyload.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i185 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.016.i) ]
  %i.buu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.016.i, ptr %i.buu, align 8
  %i.buv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.015.i, ptr %i.buv, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cb

.loopexit261:                                     ; preds = %bb.tj
  call void @llvm.experimental.noalias.scope.decl(metadata !31530)
  store i64 0, ptr %i.or, align 8, !alias.scope !31530
  call void @llvm.experimental.noalias.scope.decl(metadata !31531)
  %i.buw = load i64, ptr %i.ot, align 8, !alias.scope !31532, !noundef !41 ; 2 uses
  %i.bux = icmp eq i64 %i.buw, 0
  br i1 %i.bux, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit, label %.lr.ph.i.i188

.lr.ph.i.i188:                                    ; preds = %.loopexit261
  %i.buy = load ptr, ptr %i.os, align 8, !alias.scope !31532, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.buw, 5
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 %.idx.i.i
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tm, %.lr.ph.i.i188
  %.sroa.0.02.i.i = phi ptr [ %i.buy, %.lr.ph.i.i188 ], [ %i.bva, %bb.tm ] ; 3 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 32 ; 2 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24
  %i.bvc = load i8, ptr %i.bvb, align 8, !range !54, !noalias !31532, !noundef !41
  %i.bvd = trunc nuw i8 %i.bvc to i1
  br i1 %i.bvd, label %bb.tn, label %bb.tm

._crit_edge.i.i189:                               ; preds = %bb.tm
  store ptr inttoptr (i64 8 to ptr), ptr %i.os, align 8, !alias.scope !31532, !captures !65
  store i64 0, ptr %i.ot, align 8, !alias.scope !31532
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit

bb.tm:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.tl
  %i.bve = icmp eq ptr %i.bva, %i.buz
  br i1 %i.bve, label %._crit_edge.i.i189, label %bb.tl

bb.tn:                                            ; preds = %bb.tl
  call void @llvm.experimental.noalias.scope.decl(metadata !31533)
  %i.bvf = load i64, ptr %i.ov, align 8, !alias.scope !31534, !noalias !31535, !noundef !41 ; 3 uses
  %i.bvg = load i64, ptr %i.ou, align 8, !range !45, !alias.scope !31534, !noalias !31535, !noundef !41
  %i.bvh = icmp eq i64 %i.bvf, %i.bvg
  br i1 %i.bvh, label %bb.to, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.to:                                            ; preds = %bb.tn
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ou) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.to, %bb.tn
  %i.bvi = load ptr, ptr %i.ow, align 8, !alias.scope !31534, !noalias !31535, !nonnull !41, !noundef !41
  %i.bvj = getelementptr inbounds nuw [8 x i8], ptr %i.bvi, i64 %i.bvf
  store ptr %.sroa.0.02.i.i, ptr %i.bvj, align 8, !noalias !31536, !captures !65
  %i.bvk = add i64 %i.bvf, 1
  store i64 %i.bvk, ptr %i.ov, align 8, !alias.scope !31534, !noalias !31535
  br label %bb.tm

.outer:                                           ; preds = %bb.sp, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit37.i, %bb.sz, %bb.tf, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit
  %.sroa.0199.1 = phi i64 [ %.sroa.0199.0.ph917, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit ], [ 0, %bb.tf ], [ %i.bqu, %bb.sp ], [ 0, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit37.i ], [ 0, %bb.sz ]
  %storemerge.in = phi ptr [ %i.but, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit ], [ %i.bqt, %bb.tf ], [ %i.bqt, %bb.sp ], [ %i.bqt, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit37.i ], [ %i.bqt, %bb.sz ]
  %storemerge = load i64, ptr %storemerge.in, align 8, !noundef !41 ; 2 uses
  %i.bvl = load ptr, ptr %i.by, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 64
  %i.bvn = load i64, ptr %i.bvm, align 8, !noundef !41 ; 3 uses
  %i.bvo = icmp ult i64 %i.bvn, 288230376151711744
  call void @llvm.assume(i1 %i.bvo)
  %i.bvp = icmp ult i64 %storemerge, %i.bvn
  br i1 %i.bvp, label %.lr.ph, label %.outer._crit_edge

.loopexit265:                                     ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i
  %.sroa.6.013.i = phi ptr [ %i.bua, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i ], [ %.sroa.6.0.copyload.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i ] ; 2 uses
  %.sroa.8.012.i = phi i64 [ %i.bub, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i ], [ %.sroa.8.0.copyload.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.013.i) ]
  %i.bvq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.013.i, ptr %i.bvq, align 8
  %i.bvr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.012.i, ptr %i.bvr, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cb

bb.tp:                                            ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !31537)
  store i64 0, ptr %i.or, align 8, !alias.scope !31537
  call void @llvm.experimental.noalias.scope.decl(metadata !31538)
  %i.bvs = load i64, ptr %i.ot, align 8, !alias.scope !31539, !noundef !41 ; 2 uses
  %i.bvt = icmp eq i64 %i.bvs, 0
  br i1 %i.bvt, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit197, label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %bb.tp
  %i.bvu = load ptr, ptr %i.os, align 8, !alias.scope !31539, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %.idx.i.i192 = shl nuw nsw i64 %i.bvs, 5
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 %.idx.i.i192
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tr, %.lr.ph.i.i191
  %.sroa.0.02.i.i193 = phi ptr [ %i.bvu, %.lr.ph.i.i191 ], [ %i.bvw, %bb.tr ] ; 3 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i193, i64 32 ; 2 uses
  %i.bvx = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i193, i64 24
  %i.bvy = load i8, ptr %i.bvx, align 8, !range !54, !noalias !31539, !noundef !41
  %i.bvz = trunc nuw i8 %i.bvy to i1
  br i1 %i.bvz, label %bb.ts, label %bb.tr

._crit_edge.i.i194:                               ; preds = %bb.tr
  store ptr inttoptr (i64 8 to ptr), ptr %i.os, align 8, !alias.scope !31539, !captures !65
  store i64 0, ptr %i.ot, align 8, !alias.scope !31539
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit197

bb.tr:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i195, %bb.tq
  %i.bwa = icmp eq ptr %i.bvw, %i.bvv
  br i1 %i.bwa, label %._crit_edge.i.i194, label %bb.tq

bb.ts:                                            ; preds = %bb.tq
  call void @llvm.experimental.noalias.scope.decl(metadata !31540)
  %i.bwb = load i64, ptr %i.ov, align 8, !alias.scope !31541, !noalias !31542, !noundef !41 ; 3 uses
  %i.bwc = load i64, ptr %i.ou, align 8, !range !45, !alias.scope !31541, !noalias !31542, !noundef !41
  %i.bwd = icmp eq i64 %i.bwb, %i.bwc
  br i1 %i.bwd, label %bb.tt, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i195

bb.tt:                                            ; preds = %bb.ts
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ou) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i195 unwind label %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i195: ; preds = %bb.tt, %bb.ts
  %i.bwe = load ptr, ptr %i.ow, align 8, !alias.scope !31541, !noalias !31542, !nonnull !41, !noundef !41
  %i.bwf = getelementptr inbounds nuw [8 x i8], ptr %i.bwe, i64 %i.bwb
  store ptr %.sroa.0.02.i.i193, ptr %i.bwf, align 8, !noalias !31543, !captures !65
  %i.bwg = add i64 %i.bwb, 1
  store i64 %i.bwg, ptr %i.ov, align 8, !alias.scope !31541, !noalias !31542
  br label %bb.tr

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter13flush_orphans.exit197: ; preds = %._crit_edge.i.i194, %bb.tp
  %i.bwh = add nuw nsw i64 %.sroa.0.0916, 1       ; 2 uses
  %i.bwi = load ptr, ptr %i.by, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwi, i64 64
  %i.bwk = load i64, ptr %i.bwj, align 8, !noundef !41 ; 3 uses
  %i.bwl = icmp ult i64 %i.bwk, 288230376151711744
  call void @llvm.assume(i1 %i.bwl)
  %i.bwm = icmp ult i64 %i.bwh, %i.bwk
  br i1 %i.bwm, label %bb.cc, label %.outer._crit_edge

bb.tu:                                            ; preds = %bb.sy, %bb.te
  %.sroa.6.0.i = phi i64 [ %i.bty, %bb.te ], [ %i.bti, %bb.sy ]
  %.sroa.0.0.i159 = phi ptr [ %i.bth, %bb.te ], [ %i.bsq, %bb.sy ]
  %i.bwn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i159, ptr %i.bwn, align 8
  %i.bwo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %i.bwo, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cb

.thread:                                          ; preds = %.thread216.loopexit, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread216.loopexit.split-lp.loopexit, %bb.cg, %bb.j, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.m
  %.pn207 = phi { ptr, i32 } [ %i.qo, %bb.cg ], [ %i.dq, %bb.j ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.pn.i.i, %bb.m ], [ %i.dq, %bb.k ], [ %lpad.loopexit, %.thread216.loopexit ], [ %lpad.loopexit251, %.thread216.loopexit.split-lp.loopexit ], [ %lpad.loopexit254, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit256, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit259, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit266, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit268, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit271, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit274, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit279, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp280, %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.val82 = load ptr, ptr %i.bwp, align 8
  %i.bwq = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.val83 = load i64, ptr %i.bwq, align 8, !noundef !41
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtB1D_13introspection7locator7LocatorNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout(ptr %.val82, i64 %.val83) #54
  %i.bwr = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.experimental.noalias.scope.decl(metadata !31544)
end_hunk_12
begin_hunk_13_@_RNvNtCs7tN9tvpkfrg_12typst_layout4flow11layout_flow:bb.a

_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library6layout8fragmentNtB5_8FragmentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ajm = cmpxchg weak ptr %i.no, i8 0, i8 1 acquire monotonic, align 1, !noalias !33725
  %i.ajn = extractvalue { i8, i1 } %i.ajm, 1
  br i1 %i.ajn, label %.noexc.i367, label %bb.en, !prof !43

bb.en:                                            ; preds = %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit
  %i.ajo = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.no, i64 undef, i32 noundef -1)
          to label %.noexc.i367 unwind label %bb.hk, !noalias !33726 ; 0 uses

.noexc.i367:                                      ; preds = %bb.en, %_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBQ_4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.oj, i64 64, i1 false), !noalias !33726
  store i64 0, ptr %i.oj, align 8, !noalias !33725
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !33725
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !33725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) @97, i64 32, i1 false), !noalias !33725
  store i64 0, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !33725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ol, ptr noundef nonnull align 8 dereferenceable(24) %i.ok, i64 24, i1 false), !noalias !33726
  store i64 0, ptr %i.ok, align 8, !noalias !33725
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !33725
  store i64 0, ptr %.sroa.717.0..sroa_idx.i.i.i, align 8, !noalias !33725
  %i.ajp = cmpxchg ptr %i.no, i8 1, i8 0 release monotonic, align 1, !noalias !33725
  %i.ajq = extractvalue { i8, i1 } %i.ajp, 1
  br i1 %i.ajq, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1u_13introspection12introspector1__12___ComemoCallNtNvNtB1u_6engine1__12___ComemoCallNtNvB3h_s_1__12___ComemoCallNtNvB3h_s0_1__12___ComemoCallNtNvNtB2m_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.eo, !prof !43

bb.eo:                                            ; preds = %.noexc.i367
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.no, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1u_13introspection12introspector1__12___ComemoCallNtNvNtB1u_6engine1__12___ComemoCallNtNvB3h_s_1__12___ComemoCallNtNvB3h_s0_1__12___ComemoCallNtNvNtB2m_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.hk, !noalias !33726

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1u_13introspection12introspector1__12___ComemoCallNtNvNtB1u_6engine1__12___ComemoCallNtNvB3h_s_1__12___ComemoCallNtNvB3h_s0_1__12___ComemoCallNtNvNtB2m_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.eo, %.noexc.i367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !33726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !noalias !33726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !33726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ol, i64 24, i1 false), !noalias !33726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.om, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !33699
  store i64 0, ptr %i.on, align 8, !noalias !33726
  call void @llvm.experimental.noalias.scope.decl(metadata !33727), !noalias !33699
  call void @llvm.experimental.noalias.scope.decl(metadata !33728), !noalias !33699
  call void @llvm.experimental.noalias.scope.decl(metadata !33729), !noalias !33699
  %i.ajr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout6inline15layout_par_impl7___CACHE, i64 112), align 8, !alias.scope !33729, !noalias !33730, !noundef !41
  %i.ajs = icmp eq i64 %i.ajr, 0
  br i1 %i.ajs, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, label %bb.ep

bb.ep:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1u_13introspection12introspector1__12___ComemoCallNtNvNtB1u_6engine1__12___ComemoCallNtNvB3h_s_1__12___ComemoCallNtNvB3h_s0_1__12___ComemoCallNtNvNtB2m_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.ajt = mul i64 %i.ye, -1065810590584100411
  %i.aju = add i64 %i.ajt, %i.yf
  %i.ajv = mul i64 %i.aju, -1065810590584100411   ; 2 uses
  %i.ajw = call noundef i64 @llvm.fshl.i64(i64 %i.ajv, i64 %i.ajv, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33731), !noalias !33699
  call void @llvm.experimental.noalias.scope.decl(metadata !33732), !noalias !33699
  %i.ajx = lshr i64 %i.ajw, 57
  %i.ajy = trunc nuw nsw i64 %i.ajx to i8
  %i.ajz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout6inline15layout_par_impl7___CACHE, i64 96), align 8, !alias.scope !33733, !noalias !33734, !noundef !41 ; 2 uses
  %i.aka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout6inline15layout_par_impl7___CACHE, i64 88), align 8, !alias.scope !33733, !noalias !33734, !nonnull !41, !noundef !41 ; 2 uses
  %i.akb = insertelement <16 x i8> poison, i8 %i.ajy, i64 0
  %i.akc = shufflevector <16 x i8> %i.akb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.eq

bb.eq:                                            ; preds = %bb.es, %bb.ep
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ep ], [ %i.akt, %bb.es ]
  %.pn.i.i.i.i369 = phi i64 [ %i.ajw, %bb.ep ], [ %i.aku, %bb.es ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i369, %i.ajz ; 3 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.akd, align 1, !noalias !33735 ; 2 uses
  %i.ake = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.akc
  %i.akf = bitcast <16 x i1> %i.ake to i16        ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.akf, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.eq, %bb.er
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.aks, %bb.er ], [ %i.akf, %bb.eq ] ; 3 uses
  %i.akg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.akh = zext nneg i16 %i.akg to i64
  %i.aki = add i64 %.sroa.01.0.i.i.i.i.i, %i.akh
  %i.akj = and i64 %i.aki, %i.ajz
  %i.akk = sub nsw i64 0, %i.akj
  %i.akl = getelementptr inbounds [32 x i8], ptr %i.aka, i64 %i.akk ; 2 uses
  %i.akm = getelementptr inbounds i8, ptr %i.akl, i64 -32
  %.val2.i.i.i.i.i = load i128, ptr %i.akm, align 16, !noalias !33736, !noundef !41
  %i.akn = icmp eq i128 %i.yj, %.val2.i.i.i.i.i
  br i1 %i.akn, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.er, !prof !43

._crit_edge.i.i.i.i:                              ; preds = %bb.er, %bb.eq
  %i.ako = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.akp = bitcast <16 x i1> %i.ako to i16
  %i.akq = icmp eq i16 %i.akp, 0
  br i1 %i.akq, label %bb.es, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i, !prof !44

bb.er:                                            ; preds = %.lr.ph.i.i.i.i
  %i.akr = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.aks = and i16 %i.akr, %.sroa.06.0.i31.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.aks, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.es:                                            ; preds = %._crit_edge.i.i.i.i
  %i.akt = add i64 %.sroa.9.0.i.i.i.i.i, 16       ; 2 uses
  %i.aku = add i64 %.sroa.01.0.i.i.i.i.i, %i.akt
  br label %bb.eq

.body58.thread32.loopexit.i.i.loopexit:           ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1P_13introspection12introspector1__12___ComemoCallNtNvNtB1P_6engine1__12___ComemoCallNtNvB3C_s_1__12___ComemoCallNtNvB3C_s0_1__12___ComemoCallNtNvNtB2H_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i, %.sink.split.i.i.i.i.i.i.i, %bb.fg
  %lpad.loopexit3767 = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread32.loopexit.i.i

.body58.thread32.loopexit.i.i.loopexit.split-lp:  ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1P_13introspection12introspector1__12___ComemoCallNtNvNtB1P_6engine1__12___ComemoCallNtNvB3C_s_1__12___ComemoCallNtNvB3C_s0_1__12___ComemoCallNtNvNtB2H_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.gi
  %lpad.loopexit.split-lp3768 = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread32.loopexit.i.i

.body58.thread32.loopexit.i.i:                    ; preds = %.body58.thread32.loopexit.i.i.loopexit.split-lp, %.body58.thread32.loopexit.i.i.loopexit
  %.lcssa7490.i = phi i64 [ %.lcssa7486.i.ph, %.body58.thread32.loopexit.i.i.loopexit ], [ %.lcssa74.i, %.body58.thread32.loopexit.i.i.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit3767, %.body58.thread32.loopexit.i.i.loopexit ], [ %lpad.loopexit.split-lp3768, %.body58.thread32.loopexit.i.i.loopexit.split-lp ]
  store i64 %.lcssa7490.i, ptr %i.oo, align 8, !noalias !33726
  br label %.body58.thread.i.i

.body58.thread32.loopexit.split-lp.i.i:           ; preds = %.invoke.i.i, %bb.fc
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread.i.i

.body58.i.i.loopexit:                             ; preds = %bb.he, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1P_13introspection12introspector1__12___ComemoCallNtNvNtB1P_6engine1__12___ComemoCallNtNvB3C_s_1__12___ComemoCallNtNvB3C_s0_1__12___ComemoCallNtNvNtB2H_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i74.i.i
  %lpad.loopexit789 = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread29.i.i

.body58.i.i.loopexit.split-lp:                    ; preds = %bb.hh
  %lpad.loopexit.split-lp790 = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread29.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.akv = getelementptr inbounds i8, ptr %i.akl, i64 -16
  %i.akw = load i64, ptr %i.akv, align 8, !noalias !33730, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1u_13introspection12introspector1__12___ComemoCallNtNvNtB1u_6engine1__12___ComemoCallNtNvB3h_s_1__12___ComemoCallNtNvB3h_s0_1__12___ComemoCallNtNvNtB2m_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.8.0.i.i370 = phi i64 [ %i.akw, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1u_13introspection12introspector1__12___ComemoCallNtNvNtB1u_6engine1__12___ComemoCallNtNvB3h_s_1__12___ComemoCallNtNvB3h_s0_1__12___ComemoCallNtNvNtB2m_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.sroa.010.0.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1u_13introspection12introspector1__12___ComemoCallNtNvNtB1u_6engine1__12___ComemoCallNtNvB3h_s_1__12___ComemoCallNtNvB3h_s0_1__12___ComemoCallNtNvNtB2m_7locator1__12___ComemoCalluuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %._crit_edge.i.i.i.i ]
  %.promoted.i.i = load i64, ptr %i.oo, align 8, !alias.scope !33727, !noalias !33737 ; 2 uses
  %i.akx = load i64, ptr %i.op, align 8, !noalias !33726 ; 8 uses
  %i.aky = icmp ult i64 %i.akx, 82351536043346213
  %i.akz = load ptr, ptr %i.oq, align 8, !noalias !33726, !nonnull !41 ; 4 uses
  %i.ala = load i64, ptr %i.ou, align 8
  %i.alb = icmp eq i64 %i.ala, 0
  %i.alc = load i64, ptr %i.ow, align 8           ; 2 uses
  %i.ald = load ptr, ptr %i.ov, align 8, !nonnull !41 ; 2 uses
  br label %select.unfold40.i.i.outer

select.unfold40.i.i.outer:                        ; preds = %select.unfold40.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i
  %.lcssa7486.i.ph = phi i64 [ %.promoted.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.lcssa74.i, %select.unfold40.i.i.outer.backedge ] ; 7 uses
  %.ph = phi i64 [ %.promoted.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.lcssa13.i, %select.unfold40.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ false, %select.unfold40.i.i.outer.backedge ]
  %.sroa.015.0.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ true, %select.unfold40.i.i.outer.backedge ]
  %.sroa.015.0.i.i.off03715.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ 1, %select.unfold40.i.i.outer.backedge ]
  %.sroa.10.0.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %i.aoy, %select.unfold40.i.i.outer.backedge ]
  %.sroa.17.0.i.i372.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %.sroa.88.0.copyload.i.lcssa.i, %select.unfold40.i.i.outer.backedge ]
  %.sroa.8.1.i.i.ph = phi i64 [ %.sroa.8.0.i.i370, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ %i.aoy, %select.unfold40.i.i.outer.backedge ]
  %.sroa.010.1.i.i.ph = phi i64 [ %.sroa.010.0.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i ], [ 1, %select.unfold40.i.i.outer.backedge ]
  br label %select.unfold40.i.i.outer3769

select.unfold40.i.i.outer3769.backedge:           ; preds = %bb.fh, %._crit_edge.i.i52.i.i
  br label %select.unfold40.i.i.outer3769

select.unfold40.i.i.outer3769:                    ; preds = %select.unfold40.i.i.outer3769.backedge, %select.unfold40.i.i.outer
  %.not27.i.i.ph3770 = phi i1 [ %.not27.i.i.ph, %select.unfold40.i.i.outer ], [ false, %select.unfold40.i.i.outer3769.backedge ]
  %.sroa.015.0.i.i.off0.ph3771 = phi i1 [ %.sroa.015.0.i.i.off0.ph, %select.unfold40.i.i.outer ], [ true, %select.unfold40.i.i.outer3769.backedge ]
  %.sroa.015.0.i.i.off03715.ph3772 = phi i64 [ %.sroa.015.0.i.i.off03715.ph, %select.unfold40.i.i.outer ], [ 1, %select.unfold40.i.i.outer3769.backedge ]
  %.sroa.10.0.i.i.ph3773 = phi i64 [ %.sroa.10.0.i.i.ph, %select.unfold40.i.i.outer ], [ %.sroa.8.1.i.i, %select.unfold40.i.i.outer3769.backedge ] ; 8 uses
  %.sroa.17.0.i.i372.ph3774 = phi i128 [ %.sroa.17.0.i.i372.ph, %select.unfold40.i.i.outer ], [ %i.anb, %select.unfold40.i.i.outer3769.backedge ] ; 2 uses
  %.sroa.8.1.i.i.ph3775 = phi i64 [ %.sroa.8.1.i.i.ph, %select.unfold40.i.i.outer ], [ %.sroa.8.1.i.i, %select.unfold40.i.i.outer3769.backedge ]
  %.sroa.010.1.i.i.ph3776 = phi i64 [ %.sroa.010.1.i.i.ph, %select.unfold40.i.i.outer ], [ 1, %select.unfold40.i.i.outer3769.backedge ]
  br label %select.unfold40.i.i

select.unfold40.i.i:                              ; preds = %select.unfold40.i.i.outer3769, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.not27.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.not27.i.i.ph3770, %select.unfold40.i.i.outer3769 ] ; 2 uses
  %.sroa.015.0.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.015.0.i.i.off0.ph3771, %select.unfold40.i.i.outer3769 ] ; 2 uses
  %.sroa.015.0.i.i.off03715 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.015.0.i.i.off03715.ph3772, %select.unfold40.i.i.outer3769 ] ; 2 uses
  %.sroa.8.1.i.i = phi i64 [ %i.aot, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.8.1.i.i.ph3775, %select.unfold40.i.i.outer3769 ] ; 7 uses
  %.sroa.010.1.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.010.1.i.i.ph3776, %select.unfold40.i.i.outer3769 ] ; 3 uses
  %i.ale = trunc nuw i64 %.sroa.010.1.i.i to i1
  %or.cond.i.i373 = select i1 %.not27.i.i, i1 %i.ale, i1 false
  br i1 %or.cond.i.i373, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %select.unfold40.i.i
  call void @llvm.assume(i1 %i.aky), !noalias !33699
  %i.alf = icmp ult i64 %.ph, %i.akx
  br i1 %i.alf, label %.lr.ph.i.i.i, label %.loopexit51.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.et
  %i.alg = getelementptr inbounds nuw [112 x i8], ptr %i.akz, i64 %.ph ; 3 uses
  %.sroa.04.0.copyload.i76.i = load i16, ptr %i.alg, align 16, !noalias !33738 ; 2 uses
  %.sroa.88.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.alg, i64 96
  %.sroa.88.0.copyload.i78.i = load i128, ptr %.sroa.88.0..sroa_idx.i77.i, align 16, !noalias !33738
  store i16 -1, ptr %i.alg, align 16, !noalias !33739
  %.not.i37.i79.i = icmp eq i16 %.sroa.04.0.copyload.i76.i, -1
  br i1 %.not.i37.i79.i, label %.lr.ph.i.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1z_13introspection12introspector1__12___ComemoCallNtNvNtB1z_6engine1__12___ComemoCallNtNvB3m_s_1__12___ComemoCallNtNvB3m_s0_1__12___ComemoCallNtNvNtB2r_7locator1__12___ComemoCalluuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i
  %i.alh = add nuw nsw i64 %.ph, 1                ; 2 uses
  %exitcond.not.i.i.i3685 = icmp eq i64 %i.alh, %i.akx
  br i1 %exitcond.not.i.i.i3685, label %.loopexit51.i.i, label %.lr.ph3686

.lr.ph3686:                                       ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ali = phi i64 [ %i.alk, %.lr.ph.i ], [ %i.alh, %.lr.ph.i.preheader ] ; 4 uses
  %i.alj = getelementptr inbounds nuw [112 x i8], ptr %i.akz, i64 %i.ali ; 3 uses
  %.sroa.04.0.copyload.i.i = load i16, ptr %i.alj, align 16, !noalias !33738 ; 2 uses
  %.sroa.88.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.alj, i64 96
  %.sroa.88.0.copyload.i.i = load i128, ptr %.sroa.88.0..sroa_idx.i.i, align 16, !noalias !33738
  store i16 -1, ptr %i.alj, align 16, !noalias !33739
  %.not.i37.i.i = icmp eq i16 %.sroa.04.0.copyload.i.i, -1
  br i1 %.not.i37.i.i, label %.lr.ph.i, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1z_13introspection12introspector1__12___ComemoCallNtNvNtB1z_6engine1__12___ComemoCallNtNvB3m_s_1__12___ComemoCallNtNvB3m_s0_1__12___ComemoCallNtNvNtB2r_7locator1__12___ComemoCalluuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i

.lr.ph.i:                                         ; preds = %.lr.ph3686
  %i.alk = add nuw nsw i64 %i.ali, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.alk, %i.akx
  br i1 %exitcond.not.i.i.i, label %.loopexit51.i.i, label %.lr.ph3686

bb.eu:                                            ; preds = %select.unfold40.i.i
  %i.all = icmp sgt i64 %.sroa.8.1.i.i, -1
  br i1 %i.all, label %bb.ev, label %.loopexit.i.sink.split.i

bb.ev:                                            ; preds = %bb.eu
  %.val36.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout6inline15layout_par_impl7___CACHE, i64 24), align 8, !noalias !33730, !noundef !41
  %i.alm = icmp ult i64 %.sroa.8.1.i.i, %.val36.i.i
  br i1 %i.alm, label %bb.ew, label %.invoke.i.i, !prof !43

bb.ew:                                            ; preds = %bb.ev
  %.val35.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout6inline15layout_par_impl7___CACHE, i64 16), align 8, !noalias !33730, !nonnull !41, !noundef !41
  %i.aln = getelementptr inbounds nuw [128 x i8], ptr %.val35.i.i, i64 %.sroa.8.1.i.i ; 2 uses
  %i.alo = load i64, ptr %i.aln, align 16, !range !52, !noalias !33740, !noundef !41
  %.not.i38.i.i = icmp eq i64 %i.alo, 2
  br i1 %.not.i38.i.i, label %.invoke.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1P_13introspection12introspector1__12___ComemoCallNtNvNtB1P_6engine1__12___ComemoCallNtNvB3C_s_1__12___ComemoCallNtNvB3C_s0_1__12___ComemoCallNtNvNtB2H_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i, !prof !44

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1P_13introspection12introspector1__12___ComemoCallNtNvNtB1P_6engine1__12___ComemoCallNtNvB3C_s_1__12___ComemoCallNtNvB3C_s0_1__12___ComemoCallNtNvNtB2H_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.ew
  %i.alp = getelementptr inbounds nuw i8, ptr %i.aln, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !33741), !noalias !33699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !33742
  store i64 8317987319222330741, ptr %i.w, align 8, !noalias !33742
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !33742
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !33742
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i.i.i.i371, align 8, !noalias !33742
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i.i, i8 0, i64 40, i1 false), !noalias !33742
  invoke fastcc void @_RINvXs3_NvNtCsloFShupyl5J_6comemo5inputsa_1__INtB6_9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB12_13introspection12introspector1__12___ComemoCallNtNvNtB12_6engine1__12___ComemoCallNtNvB2P_s_1__12___ComemoCallNtNvB2P_s0_1__12___ComemoCallNtNvNtB1U_7locator1__12___ComemoCalluuuuENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.alp, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.w) #59
          to label %.noexc39.i.i unwind label %.body58.thread32.loopexit.i.i.loopexit, !noalias !33730

.noexc39.i.i:                                     ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputsa_1__9MultiCalluNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1P_13introspection12introspector1__12___ComemoCallNtNvNtB1P_6engine1__12___ComemoCallNtNvB3C_s_1__12___ComemoCallNtNvB3C_s0_1__12___ComemoCallNtNvNtB2H_7locator1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.alq = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.w) #59, !noalias !33742 ; 2 uses
  %i.alr = extractvalue { i64, i64 } %i.alq, 0    ; 2 uses
  %i.als = extractvalue { i64, i64 } %i.alq, 1    ; 2 uses
  %i.alt = zext i64 %i.alr to i128
  %i.alu = zext i64 %i.als to i128
  %i.alv = shl nuw i128 %i.alu, 64
  %i.alw = or disjoint i128 %i.alv, %i.alt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !33742
  call void @llvm.experimental.noalias.scope.decl(metadata !33743), !noalias !33699
  br i1 %i.alb, label %.loopexit.i.sink.split.i, label %bb.ex

bb.ex:                                            ; preds = %.noexc39.i.i
  %i.alx = mul i64 %i.alr, -1065810590584100411
  %i.aly = add i64 %i.alx, %i.als
  %i.alz = mul i64 %i.aly, -1065810590584100411   ; 2 uses
  %i.ama = call noundef i64 @llvm.fshl.i64(i64 %i.alz, i64 %i.alz, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33744), !noalias !33699
  call void @llvm.experimental.noalias.scope.decl(metadata !33745), !noalias !33699
  %i.amb = lshr i64 %i.ama, 57
  %i.amc = trunc nuw nsw i64 %i.amb to i8
  %i.amd = insertelement <16 x i8> poison, i8 %i.amc, i64 0
  %i.ame = shufflevector <16 x i8> %i.amd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fa, %bb.ex
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.ex ], [ %i.amv, %bb.fa ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ama, %bb.ex ], [ %i.amw, %bb.fa ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.alc ; 3 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ald, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.amf, align 1, !noalias !33746 ; 2 uses
  %i.amg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.ame
  %i.amh = bitcast <16 x i1> %i.amg to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.amh, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ey, %bb.ez
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.amu, %bb.ez ], [ %i.amh, %bb.ey ] ; 3 uses
  %i.ami = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.amj = zext nneg i16 %i.ami to i64
  %i.amk = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.amj
  %i.aml = and i64 %i.amk, %i.alc
  %i.amm = sub nsw i64 0, %i.aml
  %i.amn = getelementptr inbounds [32 x i8], ptr %i.ald, i64 %i.amm ; 2 uses
  %i.amo = getelementptr inbounds i8, ptr %i.amn, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.amo, align 16, !noalias !33747, !noundef !41
  %i.amp = icmp eq i128 %i.alw, %.val2.i.i.i.i.i.i
  br i1 %i.amp, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.ez, !prof !43

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ez, %bb.ey
  %i.amq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.amr = bitcast <16 x i1> %i.amq to i16
  %i.ams = icmp eq i16 %i.amr, 0
  br i1 %i.ams, label %bb.fa, label %.loopexit.i.sink.split.i, !prof !44

bb.ez:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.amt = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.amu = and i16 %i.amt, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.amu, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.fa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.amv = add i64 %.sroa.9.0.i.i.i.i.i.i, 16     ; 2 uses
  %i.amw = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.amv
  br label %bb.ey

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.amx = getelementptr inbounds i8, ptr %i.amn, i64 -16
  %i.amy = load i64, ptr %i.amx, align 8, !noalias !33748, !noundef !41 ; 3 uses
  %i.amz = icmp ult i64 %i.amy, %i.akx
  br i1 %i.amz, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.ana = getelementptr inbounds nuw [112 x i8], ptr %i.akz, i64 %i.amy ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load i16, ptr %i.ana, align 16, !noalias !33748 ; 3 uses
  store i16 -1, ptr %i.ana, align 16, !noalias !33748
  %.not10.i.i.i = icmp eq i16 %.sroa.03.0.copyload.i.i.i, -1
  br i1 %.not10.i.i.i, label %.loopexit.i.sink.split.i, label %bb.fd

bb.fc:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  store i64 %.lcssa7486.i.ph, ptr %i.oo, align 8, !noalias !33726
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.amy, i64 noundef %i.akx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #53
          to label %.noexc40.i.i unwind label %.body58.thread32.loopexit.split-lp.i.i, !noalias !33730

.noexc40.i.i:                                     ; preds = %bb.fc
  unreachable

bb.fd:                                            ; preds = %bb.fb
  %.sroa.5.0..sroa_idx.i.i.i385 = getelementptr inbounds nuw i8, ptr %i.ana, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !33742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %.sroa.48.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(110) %.sroa.5.0..sroa_idx.i.i.i385, i64 110, i1 false), !noalias !33748
  store i16 %.sroa.03.0.copyload.i.i.i, ptr %i.x, align 16, !noalias !33742
  %i.anb = load i128, ptr %i.ox, align 16, !noalias !33742, !noundef !41 ; 4 uses
  switch i16 %.sroa.03.0.copyload.i.i.i, label %bb.fh [
    i16 3, label %bb.fe
    i16 5, label %bb.fg
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.anc = load i64, ptr %i.oz, align 16, !range !77, !alias.scope !33749, !noalias !33742, !noundef !41 ; 3 uses
  %i.and = icmp ne i64 %i.anc, 16
  call void @llvm.assume(i1 %i.and), !noalias !33699
  %i.ane = add nsw i64 %i.anc, -11
  %i.anf = icmp samesign ugt i64 %i.anc, 10
  %i.ang = select i1 %i.anf, i64 %i.ane, i64 5
  switch i64 %i.ang, label %bb.fh [
    i64 0, label %bb.ff
    i64 1, label %bb.ff
    i64 2, label %bb.ff
    i64 5, label %.sink.split.i.i.i.i.i.i.i
  ]

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.ff, %bb.fe
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.pa, %bb.ff ], [ %i.oz, %bb.fe ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(64) %.sink.i.i.i.i.i.i.i)
          to label %bb.fh unwind label %.body58.thread32.loopexit.i.i.loopexit, !noalias !33730

bb.ff:                                            ; preds = %bb.fe, %bb.fe, %bb.fe
  br label %.sink.split.i.i.i.i.i.i.i

bb.fg:                                            ; preds = %bb.fd
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.oy)
          to label %bb.fh unwind label %.body58.thread32.loopexit.i.i.loopexit, !noalias !33730

bb.fh:                                            ; preds = %bb.fg, %.sink.split.i.i.i.i.i.i.i, %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !33742
  call void @llvm.experimental.noalias.scope.decl(metadata !33750), !noalias !33699
  %i.anh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout6inline15layout_par_impl7___CACHE, i64 144), align 8, !alias.scope !33750, !noalias !33730, !noundef !41
  %i.ani = icmp eq i64 %i.anh, 0
  br i1 %i.ani, label %select.unfold40.i.i.outer3769.backedge, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.anj = mul i64 %.sroa.8.1.i.i, -1065810590584100411
  %i.ank = trunc i128 %i.anb to i64
  %i.anl = add i64 %i.anj, %i.ank
  %i.anm = mul i64 %i.anl, -1065810590584100411
  %i.ann = lshr i128 %i.anb, 64
  %i.ano = trunc nuw i128 %i.ann to i64
  %i.anp = add i64 %i.anm, %i.ano
  %i.anq = mul i64 %i.anp, -1065810590584100411   ; 2 uses
  %i.anr = call noundef i64 @llvm.fshl.i64(i64 %i.anq, i64 %i.anq, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33751), !noalias !33699
  call void @llvm.experimental.noalias.scope.decl(metadata !33752), !noalias !33699
  %i.ans = lshr i64 %i.anr, 57
  %i.ant = trunc nuw nsw i64 %i.ans to i8
  %i.anu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout6inline15layout_par_impl7___CACHE, i64 128), align 8, !alias.scope !33753, !noalias !33754, !noundef !41 ; 2 uses
  %i.anv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout6inline15layout_par_impl7___CACHE, i64 120), align 8, !alias.scope !33753, !noalias !33754, !nonnull !41, !noundef !41 ; 2 uses
  %i.anw = insertelement <16 x i8> poison, i8 %i.ant, i64 0
  %i.anx = shufflevector <16 x i8> %i.anw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fl, %bb.fi
  %.sroa.9.0.i.i.i43.i.i = phi i64 [ 0, %bb.fi ], [ %i.aoq, %bb.fl ]
  %.pn.i.i44.i.i = phi i64 [ %i.anr, %bb.fi ], [ %i.aor, %bb.fl ]
  %.sroa.01.0.i.i.i45.i.i = and i64 %.pn.i.i44.i.i, %i.anu ; 3 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anv, i64 %.sroa.01.0.i.i.i45.i.i
  %.sroa.0.0.copyload.i24.i.i46.i.i = load <16 x i8>, ptr %i.any, align 1, !noalias !33755 ; 2 uses
  %i.anz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i46.i.i, %i.anx
  %i.aoa = bitcast <16 x i1> %i.anz to i16        ; 2 uses
  %.not.i.not30.i.i47.i.i = icmp eq i16 %i.aoa, 0
  br i1 %.not.i.not30.i.i47.i.i, label %._crit_edge.i.i52.i.i, label %.lr.ph.i.i48.i.i

.lr.ph.i.i48.i.i:                                 ; preds = %bb.fj, %bb.fk
  %.sroa.06.0.i31.i.i49.i.i = phi i16 [ %i.aop, %bb.fk ], [ %i.aoa, %bb.fj ] ; 3 uses
  %i.aob = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i49.i.i, i1 true)
  %i.aoc = zext nneg i16 %i.aob to i64
  %i.aod = add i64 %.sroa.01.0.i.i.i45.i.i, %i.aoc
  %i.aoe = and i64 %i.aod, %i.anu
  %i.aof = sub nsw i64 0, %i.aoe
end_hunk_13
begin_hunk_14_@_RNvNtCs7tN9tvpkfrg_12typst_layout4grid11layout_cell:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !34398)
  call void @llvm.experimental.noalias.scope.decl(metadata !34399)
  call void @llvm.experimental.noalias.scope.decl(metadata !34400)
  call void @llvm.experimental.noalias.scope.decl(metadata !34401)
  %i.du = load i64, ptr %i.dm, align 16, !range !45, !alias.scope !34402, !noalias !34403, !noundef !41
  %i.dv = icmp samesign ult i64 %i.du, 2
  br i1 %i.dv, label %bb.al, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterBT_Kj2_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !44

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm, i64 noundef 0, i64 noundef 2, i64 noundef 16, i64 noundef 192)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.i.i, !noalias !34404

.noexc2.i.i:                                      ; preds = %bb.al
  %.pre.i.i.i.i.i = load i64, ptr %i.dn, align 16, !alias.scope !34405, !noalias !34403
  %.pre16.i = load ptr, ptr %i.dq, align 8, !alias.scope !34405, !noalias !34403
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterBT_Kj2_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterBT_Kj2_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.noexc2.i.i, %bb.ak
  %i.dw = phi ptr [ %i.dr, %bb.ak ], [ %.pre16.i, %.noexc2.i.i ]
  %i.dx = phi i64 [ 0, %bb.ak ], [ %.pre.i.i.i.i.i, %.noexc2.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34406)
  call void @llvm.experimental.noalias.scope.decl(metadata !34407)
  call void @llvm.experimental.noalias.scope.decl(metadata !34408)
  call void @llvm.experimental.noalias.scope.decl(metadata !34409)
  call void @llvm.experimental.noalias.scope.decl(metadata !34410)
  %i.dy = mul i64 %i.dx, 192
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.dw, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %scevgep.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(384) %.sroa.5.0..sroa_idx.i.i, i64 384, i1 false), !noalias !34411
  %i.dz = add i64 %i.dx, 2
  store i64 2, ptr %i.b, align 16, !alias.scope !34412, !noalias !34413
  store i64 %i.dz, ptr %i.dn, align 16, !alias.scope !34405, !noalias !34414
  br label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.ap, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.val.i.i.i33.i.i.ph.i = phi i64 [ 1, %bb.ap ], [ 0, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34415
  %i.ea = sub nuw nsw i64 2, %.val.i.i.i33.i.i.ph.i ; 4 uses
  %i.eb = mul nuw nsw i64 %i.ea, 192              ; 4 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !34416
  %i.ec = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.eb, i64 noundef range(i64 1, 17) 16) #56, !noalias !34416 ; 6 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.eb) #57
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i, !noalias !34404

.noexc3.i.i:                                      ; preds = %bb.am
  unreachable

.thread.i.i.i:                                    ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBX_5frame9FrameItemEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i40.i.i.1.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %.sroa.7.0..sroa_idx3.i44.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.ef = load ptr, ptr %i.dq, align 8, !noalias !34417, !nonnull !41, !noundef !41 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.eg, ptr noundef nonnull align 16 dereferenceable(16) %i.ee, i64 16, i1 false), !noalias !34388
  %.sroa.4.0..sroa_idx.i45.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 208
  store i64 %.sroa.5.0.copyload2.i42.i.i.1.i, ptr %.sroa.4.0..sroa_idx.i45.i.i.1.i, align 16, !noalias !34417
  %.sroa.55.0..sroa_idx.i46.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.0..sroa_idx.i46.i.i.1.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx3.i44.i.i.1.i, i64 168, i1 false), !noalias !34388
  %i.eh = load i64, ptr %i.dn, align 16, !noalias !34417, !noundef !41
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.dn, align 16, !noalias !34417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34415
  call void @llvm.experimental.noalias.scope.decl(metadata !34418)
  call void @llvm.experimental.noalias.scope.decl(metadata !34419)
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8, !noalias !34415
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ej, align 8, !noalias !34415
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.ek, align 8, !noalias !34415
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 16 to ptr), ptr %i.el, align 8, !noalias !34415
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.an:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBP_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB2a_3ops9try_traitINtB3d_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB22_8for_each4callBK_INvNtB2a_3mem4dropBK_EE0E0B3z_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34420)
  %i.em = load i64, ptr %i.dm, align 16, !range !45, !noalias !34421, !noundef !41
  %i.en = sub nsw i64 %i.em, %i.do
  %i.eo = icmp ult i64 %i.en, 2
  br i1 %i.eo, label %bb.ao, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !44

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dm, i64 noundef %i.do, i64 noundef 2, i64 noundef 16, i64 noundef 192)
          to label %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i unwind label %.loopexit.split-lp.i.i, !noalias !34404

._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i: ; preds = %bb.ao
  %.pre.i = load ptr, ptr %i.dq, align 8, !noalias !34421
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i, %bb.an
  %i.ep = phi ptr [ %.pre.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i ], [ %i.dr, %bb.an ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 384
  %i.er = mul nuw nsw i64 %i.do, 192              ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.eq, ptr nonnull align 16 %i.ep, i64 %i.er, i1 false), !noalias !34421
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !34422, !noalias !34387
  call void @llvm.experimental.noalias.scope.decl(metadata !34423)
  %i.es = load i64, ptr %i.dn, align 16, !noalias !34417, !noundef !41 ; 3 uses
  %.not10.i35.i.i.i = icmp ult i64 %i.es, 2
  br i1 %.not10.i35.i.i.i, label %.lr.ph.i36.i.i.preheader.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

.lr.ph.i36.i.i.preheader.i:                       ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34424)
  call void @llvm.experimental.noalias.scope.decl(metadata !34425)
  store i64 1, ptr %i.b, align 16, !alias.scope !34426, !noalias !34427
  %.sroa.5.0..sroa_idx1.i41.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0.copyload2.i42.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx1.i41.i.i.i, align 16, !alias.scope !34428, !noalias !34387 ; 2 uses
  %.not.i43.i.i.i = icmp eq i64 %.sroa.5.0.copyload2.i42.i.i.i, -1
  br i1 %.not.i43.i.i.i, label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i36.i.i.preheader.i
  %.sroa.7.0..sroa_idx3.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.et = load ptr, ptr %i.dq, align 8, !noalias !34417, !nonnull !41, !noundef !41
  %i.eu = getelementptr inbounds nuw [192 x i8], ptr %i.et, i64 %i.es ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.eu, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !34388
  %.sroa.4.0..sroa_idx.i45.i.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 %.sroa.5.0.copyload2.i42.i.i.i, ptr %.sroa.4.0..sroa_idx.i45.i.i.i, align 16, !noalias !34417
  %.sroa.55.0..sroa_idx.i46.i.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.0..sroa_idx.i46.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx3.i44.i.i.i, i64 168, i1 false), !noalias !34388
  %i.ev = load i64, ptr %i.dn, align 16, !noalias !34417, !noundef !41
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %i.dn, align 16, !noalias !34417
  %exitcond.not.i47.i.i.i = icmp eq i64 %i.es, 1
  br i1 %exitcond.not.i47.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBX_5frame9FrameItemEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i40.i.i.1.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBX_5frame9FrameItemEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i40.i.i.1.i: ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !34429)
  call void @llvm.experimental.noalias.scope.decl(metadata !34430)
  store i64 2, ptr %i.b, align 16, !alias.scope !34426, !noalias !34431
  %.sroa.5.0..sroa_idx1.i41.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.sroa.5.0.copyload2.i42.i.i.1.i = load i64, ptr %.sroa.5.0..sroa_idx1.i41.i.i.1.i, align 16, !alias.scope !34432, !noalias !34387 ; 2 uses
  %.not.i43.i.i.1.i = icmp eq i64 %.sroa.5.0.copyload2.i42.i.i.1.i, -1
  br i1 %.not.i43.i.i.1.i, label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %.thread.i.i.i

bb.aq:                                            ; preds = %bb.as
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1u_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #54
          to label %.body.i.i unwind label %bb.av, !noalias !34433

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i: ; preds = %bb.au, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  store ptr %i.fo, ptr %i.fc, align 8, !noalias !34415
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.at, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i, %.thread.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1u_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i, !noalias !34404

.noexc5.i.i:                                      ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34415
  br label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.ar:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34434)
  %i.ey = mul nuw nsw i64 %.val.i.i.i33.i.i.ph.i, 192
  %i.ez = getelementptr i8, ptr %i.b, i64 %i.ey
  %scevgep1.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ez, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ec, ptr noundef nonnull align 16 dereferenceable(1) %scevgep1.i.i.i.i.i.i.i.i.i.i, i64 %i.eb, i1 false), !noalias !34435
  store i64 2, ptr %i.b, align 16, !alias.scope !34436, !noalias !34437
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb ; 2 uses
  store ptr %i.ec, ptr %i.a, align 8, !noalias !34415
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ea, ptr %i.fb, align 8, !noalias !34415
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ec, ptr %i.fc, align 8, !noalias !34415
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.fa, ptr %i.fd, align 8, !noalias !34415
  call void @llvm.experimental.noalias.scope.decl(metadata !34438)
  %i.fe = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ff = load i64, ptr %i.dm, align 16, !range !45, !noalias !34439, !noundef !41
  %i.fg = sub nsw i64 %i.ff, %i.fe
  %i.fh = icmp ugt i64 %i.ea, %i.fg
  br i1 %i.fh, label %bb.as, label %bb.at, !prof !44

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dm, i64 noundef %i.fe, i64 noundef %i.ea, i64 noundef 16, i64 noundef 192)
          to label %bb.at unwind label %bb.aq, !noalias !34433

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fi = sub nuw nsw i64 4, %.val.i.i.i33.i.i.ph.i ; 4 uses
  %i.fj = load ptr, ptr %i.dq, align 8, !noalias !34439, !nonnull !41, !noundef !41 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 384
  %i.fl = getelementptr inbounds nuw [192 x i8], ptr %i.fj, i64 %i.fi
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.fl, ptr nonnull align 16 %i.fk, i64 %i.er, i1 false), !noalias !34439
  store i64 %i.fi, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !34440, !noalias !34387
  %i.fm = load i64, ptr %i.dn, align 16, !noalias !34441, !noundef !41 ; 2 uses
  %.not10.i51.i.i.i = icmp ult i64 %i.fm, %i.fi
  br i1 %.not10.i51.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.at, %bb.au
  %.sroa.01.09.i5471.i.i.i = phi i64 [ %i.fp, %bb.au ], [ %i.fm, %bb.at ] ; 2 uses
  %i.fn = phi ptr [ %i.fo, %bb.au ], [ %i.ec, %bb.at ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 192 ; 3 uses
  %.sroa.5.0..sroa_idx1.i55.i.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %.sroa.5.0.copyload2.i56.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx1.i55.i.i.i, align 16, !noalias !34442 ; 2 uses
  %.not.i57.i.i.i = icmp eq i64 %.sroa.5.0.copyload2.i56.i.i.i, -1
  br i1 %.not.i57.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i, label %bb.au

bb.au:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.7.0..sroa_idx3.i58.i.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = add nuw i64 %.sroa.01.09.i5471.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx3.i58.i.i.i, i64 168, i1 false), !noalias !34441
  %i.fq = load ptr, ptr %i.dq, align 8, !noalias !34441, !nonnull !41, !noundef !41
  %i.fr = getelementptr inbounds nuw [192 x i8], ptr %i.fq, i64 %.sroa.01.09.i5471.i.i.i ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.fn, i64 16, i1 false), !noalias !34441
  %.sroa.4.0..sroa_idx.i59.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i64 %.sroa.5.0.copyload2.i56.i.i.i, ptr %.sroa.4.0..sroa_idx.i59.i.i.i, align 16, !noalias !34441
  %.sroa.55.0..sroa_idx.i60.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.0..sroa_idx.i60.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.i.i.i.i, i64 168, i1 false), !noalias !34441
  %i.fs = load i64, ptr %i.dn, align 16, !noalias !34441, !noundef !41
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %i.dn, align 16, !noalias !34441
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i.i.i.i)
  %exitcond.not.i61.i.i.i = icmp eq i64 %i.fp, %i.fi
  %i.fu = icmp eq ptr %i.fo, %i.fa
  %or.cond.i.i.i = select i1 %exitcond.not.i61.i.i.i, i1 true, i1 %i.fu
  br i1 %or.cond.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.av:                                            ; preds = %bb.aq
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34433
  unreachable

.loopexit.split-lp.i.i:                           ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.ao, %bb.am, %bb.al
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %bb.aq
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ex, %bb.aq ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1n_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ds) #54
          to label %bb.aw unwind label %bb.bf, !noalias !34388

_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.noexc5.i.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBX_5frame9FrameItemEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i40.i.i.1.i, %.lr.ph.i36.i.i.preheader.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterBT_Kj2_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1n_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ds)
          to label %bb.bb unwind label %bb.ba, !noalias !34388

bb.aw:                                            ; preds = %bb.ba, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.gm, %bb.ba ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.fw = load i64, ptr %i.b, align 16, !alias.scope !34443, !noalias !34387, !noundef !41 ; 3 uses
  %i.fx = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !34443, !noalias !34387, !noundef !41 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, %i.fw
  br i1 %i.fy, label %.body92.thread, label %.lr.ph186

.lr.ph186:                                        ; preds = %bb.aw
  %i.fz = sub nuw i64 %i.fx, %i.fw                ; 3 uses
  %i.ga = getelementptr inbounds nuw [192 x i8], ptr %.sroa.5.0..sroa_idx.i.i, i64 %i.fw ; 2 uses
  br label %bb.ax

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ax
  %i.gb = icmp eq i64 %i.gd, %i.fz
  br i1 %i.gb, label %.body92.thread, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph186, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i184 = phi i64 [ 0, %.lr.ph186 ], [ %i.gd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [192 x i8], ptr %i.ga, i64 %.sroa.0.0.i.i.i.i.i.i.i.i184
  %i.gd = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i184, 1 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame9FrameItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(176) %i.ge)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !34388

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i: ; preds = %.lr.ph189
  %i.gf = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i187, 1 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, %i.fz
  br i1 %i.gg, label %.body2.i, label %.lr.ph189

bb.ay:                                            ; preds = %bb.ax
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gi = icmp eq i64 %i.gd, %i.fz
  br i1 %i.gi, label %.body2.i, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.ay, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i187 = phi i64 [ %i.gf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i ], [ %i.gd, %bb.ay ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [192 x i8], ptr %i.ga, i64 %.sroa.0.1.i.i.i.i.i.i.i.i187
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame9FrameItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(176) %i.gk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !34388

bb.az:                                            ; preds = %.lr.ph189
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34388
  unreachable

bb.ba:                                            ; preds = %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.bb:                                            ; preds = %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.gn = load i64, ptr %i.b, align 16, !alias.scope !34444, !noalias !34387, !noundef !41 ; 3 uses
  %i.go = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !34444, !noalias !34387, !noundef !41 ; 2 uses
  %i.gp = icmp eq i64 %i.go, %i.gn
  br i1 %i.gp, label %.loopexit, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.bb
  %i.gq = sub nuw i64 %i.go, %i.gn                ; 3 uses
  %i.gr = getelementptr inbounds nuw [192 x i8], ptr %.sroa.5.0..sroa_idx.i.i, i64 %i.gn ; 2 uses
  br label %bb.bc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.gs = icmp eq i64 %i.gu, %i.gq
  br i1 %i.gs, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph192, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i190 = phi i64 [ 0, %.lr.ph192 ], [ %i.gu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [192 x i8], ptr %i.gr, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i190
  %i.gu = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i190, 1 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame9FrameItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(176) %i.gv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i unwind label %bb.bd, !noalias !34388

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph195
  %i.gw = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i193, 1 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, %i.gq
  br i1 %i.gx, label %.body92.thread, label %.lr.ph195

bb.bd:                                            ; preds = %bb.bc
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = icmp eq i64 %i.gu, %i.gq
  br i1 %i.gz, label %.body92.thread, label %.lr.ph195

.lr.ph195:                                        ; preds = %bb.bd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i193 = phi i64 [ %i.gw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i.i ], [ %i.gu, %bb.bd ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [192 x i8], ptr %i.gr, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i193
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame9FrameItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(176) %i.hb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i.i unwind label %bb.be, !noalias !34388

bb.be:                                            ; preds = %.lr.ph195
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34388
  unreachable

bb.bf:                                            ; preds = %.body.i.i
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body2.i

.body2.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i, %bb.ay, %bb.bf
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34388
  unreachable

bb.bg:                                            ; preds = %._crit_edge
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueATNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBH_5frame9FrameItemEj2_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 16 dereferenceable(384) %i.j) #54
          to label %.body92.thread unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.loopexit:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.sink.split

bb.bi:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 1, ptr %i.hg, align 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  store i8 1, ptr %.sroa.416.0..sroa_idx, align 1
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  store i8 1, ptr %.sroa.517.0..sroa_idx, align 2
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i128 %i.cs, ptr %.sroa.619.0..sroa_idx, align 16
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i128 %i.cu, ptr %.sroa.720.0..sroa_idx, align 16
  store i64 5, ptr %i.k, align 16
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ck, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(176) %i.k)
          to label %bb.bj unwind label %.body92

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.sink.split

bb.bk:                                            ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body92.thread unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECs7tN9tvpkfrg_12typst_layout.exit97.sink.split: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i96
  %.sink = phi i64 [ %i.hn, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i96 ], [ %i.cx, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %.sink179 = phi i64 [ %i.hq, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i96 ], [ %i.da, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %.val76.sink = load ptr, ptr %i.u, align 16, !nonnull !41, !noundef !41
  %i.hh = sub nuw nsw i64 -32, %.sink
  %i.hi = getelementptr inbounds i8, ptr %.val76.sink, i64 %i.hh
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hi, i64 noundef %.sink179, i64 noundef range(i64 1, -9223372036854775807) 16) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECs7tN9tvpkfrg_12typst_layout.exit97

end_hunk_14
begin_hunk_15_@_RNvNtCs7tN9tvpkfrg_12typst_layout5pages15layout_document:bb.a
  store i64 0, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !alias.scope !36532, !noalias !36601
  %i.gx = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i64 24, i1 false), !noalias !36603
  store i64 0, ptr %i.gx, align 8, !alias.scope !36532, !noalias !36601
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.614.0..sroa_idx.i.i, align 8, !alias.scope !36532, !noalias !36601
  store i64 0, ptr %.sroa.715.0..sroa_idx.i.i, align 8, !alias.scope !36532, !noalias !36601
  %i.gz = cmpxchg ptr %i.ao, i8 1, i8 0 release monotonic, align 1, !alias.scope !36532, !noalias !36601
  %i.ha = extractvalue { i8, i1 } %i.gz, 1
  br i1 %i.ha, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.ap, !prof !43

bb.ap:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.ao, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.di, !noalias !36602

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.ap, %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !36604
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i64 24, i1 false), !noalias !36604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.n, i64 144, i1 false), !noalias !36533
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  store i64 0, ptr %i.hc, align 8, !noalias !36604
  call void @llvm.experimental.noalias.scope.decl(metadata !36605)
  call void @llvm.experimental.noalias.scope.decl(metadata !36606)
  %i.hd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages20layout_document_impl7___CACHE, i64 112), align 8, !alias.scope !36606, !noalias !36607, !noundef !41
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.hf = mul i64 %i.aq, -1065810590584100411
  %i.hg = add i64 %i.hf, %i.ar
  %i.hh = mul i64 %i.hg, -1065810590584100411     ; 2 uses
  %i.hi = call noundef i64 @llvm.fshl.i64(i64 %i.hh, i64 %i.hh, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36608)
  call void @llvm.experimental.noalias.scope.decl(metadata !36609)
  %i.hj = lshr i64 %i.hi, 57
  %i.hk = trunc nuw nsw i64 %i.hj to i8
  %i.hl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages20layout_document_impl7___CACHE, i64 96), align 8, !alias.scope !36610, !noalias !36611, !noundef !41 ; 2 uses
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages20layout_document_impl7___CACHE, i64 88), align 8, !alias.scope !36610, !noalias !36611, !nonnull !41, !noundef !41 ; 2 uses
  %i.hn = insertelement <16 x i8> poison, i8 %i.hk, i64 0
  %i.ho = shufflevector <16 x i8> %i.hn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %bb.aq
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.aq ], [ %i.if, %bb.at ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.hi, %bb.aq ], [ %i.ig, %bb.at ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.hl ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.hp, align 1, !noalias !36612 ; 2 uses
  %i.hq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.ho
  %i.hr = bitcast <16 x i1> %i.hq to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i = icmp eq i16 %i.hr, 0
  br i1 %.not.i.not30.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ar, %bb.as
  %.sroa.06.0.i31.i.i.i.i.i.i = phi i16 [ %i.ie, %bb.as ], [ %i.hr, %bb.ar ] ; 3 uses
  %i.hs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i, i1 true)
  %i.ht = zext nneg i16 %i.hs to i64
  %i.hu = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ht
  %i.hv = and i64 %i.hu, %i.hl
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = getelementptr inbounds [32 x i8], ptr %i.hm, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -32
  %.val2.i.i.i.i.i.i.i = load i128, ptr %i.hy, align 16, !noalias !36613, !noundef !41
  %i.hz = icmp eq i128 %i.av, %.val2.i.i.i.i.i.i.i
  br i1 %i.hz, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.as, !prof !43

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.as, %bb.ar
  %i.ia = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.ib = bitcast <16 x i1> %i.ia to i16
  %i.ic = icmp eq i16 %i.ib, 0
  br i1 %i.ic, label %bb.at, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i, !prof !44

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.id = add i16 %.sroa.06.0.i31.i.i.i.i.i.i, -1
  %i.ie = and i16 %i.id, %.sroa.06.0.i31.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.ie, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.at:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.if = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.ig = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.if
  br label %bb.ar

.body58.thread32.loopexit.i.i.i.i.loopexit:       ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i, %bb.bh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread32.loopexit.i.i.i.i

.body58.thread32.loopexit.i.i.i.i.loopexit.split-lp: ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, %bb.ci
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread32.loopexit.i.i.i.i

.body58.thread32.loopexit.i.i.i.i:                ; preds = %.body58.thread32.loopexit.i.i.i.i.loopexit.split-lp, %.body58.thread32.loopexit.i.i.i.i.loopexit
  %.lcssa7490.i.i.i = phi i64 [ %.lcssa7486.i.i.i.ph, %.body58.thread32.loopexit.i.i.i.i.loopexit ], [ %.lcssa74.i.i.i, %.body58.thread32.loopexit.i.i.i.i.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.body58.thread32.loopexit.i.i.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.body58.thread32.loopexit.i.i.i.i.loopexit.split-lp ]
  store i64 %.lcssa7490.i.i.i, ptr %i.ij, align 8, !noalias !36604
  br label %.body58.thread.i.i.i.i

.body58.thread32.loopexit.split-lp.i.i.i.i:       ; preds = %.invoke.i.i.i.i, %bb.bd
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread.i.i.i.i

.body58.i.i.i.i:                                  ; preds = %bb.dc, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i73.i.i.i.i, %bb.df
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.thread29.i.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ih = getelementptr inbounds i8, ptr %i.hx, i64 -16
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !36614, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ii, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 9 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.in = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.io = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.promoted.i.i.i.i = load i64, ptr %i.ij, align 8, !alias.scope !36605, !noalias !36615 ; 2 uses
  %i.iw = load i64, ptr %i.ik, align 8, !noalias !36604 ; 8 uses
  %i.ix = icmp ult i64 %i.iw, 82351536043346213
  %i.iy = load ptr, ptr %i.il, align 8, !noalias !36604, !nonnull !41 ; 4 uses
  %i.iz = load i64, ptr %i.ip, align 8
  %i.ja = icmp eq i64 %i.iz, 0
  %i.jb = load i64, ptr %i.ir, align 8            ; 2 uses
  %i.jc = load ptr, ptr %i.iq, align 8, !nonnull !41 ; 2 uses
  br label %select.unfold40.i.i.i.i.outer

select.unfold40.i.i.i.i.outer:                    ; preds = %select.unfold40.i.i.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i
  %.lcssa7486.i.i.i.ph = phi i64 [ %.promoted.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %.lcssa74.i.i.i, %select.unfold40.i.i.i.i.outer.backedge ] ; 7 uses
  %.ph = phi i64 [ %.promoted.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %.lcssa13.i.i.i, %select.unfold40.i.i.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ false, %select.unfold40.i.i.i.i.outer.backedge ]
  %.sroa.015.0.i.i.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ true, %select.unfold40.i.i.i.i.outer.backedge ]
  %.sroa.015.0.i.i.i.i.off0360.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ 1, %select.unfold40.i.i.i.i.outer.backedge ]
  %.sroa.10.0.i.i.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %i.mw, %select.unfold40.i.i.i.i.outer.backedge ]
  %.sroa.17.0.i.i.i.i.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %.sroa.88.0.copyload.i.lcssa.i.i.i, %select.unfold40.i.i.i.i.outer.backedge ]
  %.sroa.8.1.i.i.i.i.ph = phi i64 [ %.sroa.8.0.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %i.mw, %select.unfold40.i.i.i.i.outer.backedge ]
  %.sroa.010.1.i.i.i.i.ph = phi i64 [ %.sroa.010.0.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ 1, %select.unfold40.i.i.i.i.outer.backedge ]
  br label %select.unfold40.i.i.i.i.outer363

select.unfold40.i.i.i.i.outer363.backedge:        ; preds = %bb.bi, %._crit_edge.i.i52.i.i.i.i
  br label %select.unfold40.i.i.i.i.outer363

select.unfold40.i.i.i.i.outer363:                 ; preds = %select.unfold40.i.i.i.i.outer363.backedge, %select.unfold40.i.i.i.i.outer
  %.not27.i.i.i.i.ph364 = phi i1 [ %.not27.i.i.i.i.ph, %select.unfold40.i.i.i.i.outer ], [ false, %select.unfold40.i.i.i.i.outer363.backedge ]
  %.sroa.015.0.i.i.i.i.off0.ph365 = phi i1 [ %.sroa.015.0.i.i.i.i.off0.ph, %select.unfold40.i.i.i.i.outer ], [ true, %select.unfold40.i.i.i.i.outer363.backedge ]
  %.sroa.015.0.i.i.i.i.off0360.ph366 = phi i64 [ %.sroa.015.0.i.i.i.i.off0360.ph, %select.unfold40.i.i.i.i.outer ], [ 1, %select.unfold40.i.i.i.i.outer363.backedge ]
  %.sroa.10.0.i.i.i.i.ph367 = phi i64 [ %.sroa.10.0.i.i.i.i.ph, %select.unfold40.i.i.i.i.outer ], [ %.sroa.8.1.i.i.i.i, %select.unfold40.i.i.i.i.outer363.backedge ] ; 8 uses
  %.sroa.17.0.i.i.i.i.ph368 = phi i128 [ %.sroa.17.0.i.i.i.i.ph, %select.unfold40.i.i.i.i.outer ], [ %i.la, %select.unfold40.i.i.i.i.outer363.backedge ] ; 2 uses
  %.sroa.8.1.i.i.i.i.ph369 = phi i64 [ %.sroa.8.1.i.i.i.i.ph, %select.unfold40.i.i.i.i.outer ], [ %.sroa.8.1.i.i.i.i, %select.unfold40.i.i.i.i.outer363.backedge ]
  %.sroa.010.1.i.i.i.i.ph370 = phi i64 [ %.sroa.010.1.i.i.i.i.ph, %select.unfold40.i.i.i.i.outer ], [ 1, %select.unfold40.i.i.i.i.outer363.backedge ]
  br label %select.unfold40.i.i.i.i

select.unfold40.i.i.i.i:                          ; preds = %select.unfold40.i.i.i.i.outer363, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.not27.i.i.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.not27.i.i.i.i.ph364, %select.unfold40.i.i.i.i.outer363 ] ; 2 uses
  %.sroa.015.0.i.i.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.015.0.i.i.i.i.off0.ph365, %select.unfold40.i.i.i.i.outer363 ] ; 2 uses
  %.sroa.015.0.i.i.i.i.off0360 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.015.0.i.i.i.i.off0360.ph366, %select.unfold40.i.i.i.i.outer363 ] ; 2 uses
  %.sroa.8.1.i.i.i.i = phi i64 [ %i.ms, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.8.1.i.i.i.i.ph369, %select.unfold40.i.i.i.i.outer363 ] ; 7 uses
  %.sroa.010.1.i.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.010.1.i.i.i.i.ph370, %select.unfold40.i.i.i.i.outer363 ] ; 3 uses
  %i.jd = trunc nuw i64 %.sroa.010.1.i.i.i.i to i1
  %or.cond.i.i.i.i = select i1 %.not27.i.i.i.i, i1 %i.jd, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %select.unfold40.i.i.i.i
  call void @llvm.assume(i1 %i.ix)
  %i.je = icmp ult i64 %.ph, %i.iw
  br i1 %i.je, label %.lr.ph.i.i.i53.i.i, label %.loopexit51.i.i.i.i

.lr.ph.i.i.i53.i.i:                               ; preds = %bb.au
  %i.jf = getelementptr inbounds nuw [112 x i8], ptr %i.iy, i64 %.ph ; 3 uses
  %.sroa.04.0.copyload.i76.i.i.i = load i16, ptr %i.jf, align 16, !noalias !36616 ; 2 uses
  %.sroa.88.0..sroa_idx.i77.i.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 96
  %.sroa.88.0.copyload.i78.i.i.i = load i128, ptr %.sroa.88.0..sroa_idx.i77.i.i.i, align 16, !noalias !36616
  store i16 -1, ptr %i.jf, align 16, !noalias !36617
  %.not.i37.i79.i.i.i = icmp eq i16 %.sroa.04.0.copyload.i76.i.i.i, -1
  br i1 %.not.i37.i79.i.i.i, label %.lr.ph.i57.i.i.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

.lr.ph.i57.i.i.preheader:                         ; preds = %.lr.ph.i.i.i53.i.i
  %i.jg = add nuw nsw i64 %.ph, 1                 ; 2 uses
  %exitcond.not.i.i.i.i.i350 = icmp eq i64 %i.jg, %i.iw
  br i1 %exitcond.not.i.i.i.i.i350, label %.loopexit51.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i57.i.i.preheader, %.lr.ph.i57.i.i
  %i.jh = phi i64 [ %i.jj, %.lr.ph.i57.i.i ], [ %i.jg, %.lr.ph.i57.i.i.preheader ] ; 4 uses
  %i.ji = getelementptr inbounds nuw [112 x i8], ptr %i.iy, i64 %i.jh ; 3 uses
  %.sroa.04.0.copyload.i.i.i.i = load i16, ptr %i.ji, align 16, !noalias !36616 ; 2 uses
  %.sroa.88.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  %.sroa.88.0.copyload.i.i.i.i = load i128, ptr %.sroa.88.0..sroa_idx.i.i.i.i, align 16, !noalias !36616
  store i16 -1, ptr %i.ji, align 16, !noalias !36617
  %.not.i37.i.i.i.i = icmp eq i16 %.sroa.04.0.copyload.i.i.i.i, -1
  br i1 %.not.i37.i.i.i.i, label %.lr.ph.i57.i.i, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

.lr.ph.i57.i.i:                                   ; preds = %.lr.ph
  %i.jj = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.jj, %i.iw
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit51.i.i.i.i, label %.lr.ph

bb.av:                                            ; preds = %select.unfold40.i.i.i.i
  %i.jk = icmp sgt i64 %.sroa.8.1.i.i.i.i, -1
  br i1 %i.jk, label %bb.aw, label %.loopexit.i.sink.split.i.i.i

bb.aw:                                            ; preds = %bb.av
  %.val36.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages20layout_document_impl7___CACHE, i64 24), align 8, !noalias !36607, !noundef !41
  %i.jl = icmp ult i64 %.sroa.8.1.i.i.i.i, %.val36.i.i.i.i
  br i1 %i.jl, label %bb.ax, label %.invoke.i.i.i.i, !prof !43

bb.ax:                                            ; preds = %bb.aw
  %.val35.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages20layout_document_impl7___CACHE, i64 16), align 8, !noalias !36607, !nonnull !41, !noundef !41
  %i.jm = getelementptr inbounds nuw [128 x i8], ptr %.val35.i.i.i.i, i64 %.sroa.8.1.i.i.i.i ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 16, !range !52, !noalias !36618, !noundef !41
  %.not.i38.i.i.i.i = icmp eq i64 %i.jn, 2
  br i1 %.not.i38.i.i.i.i, label %.invoke.i.i.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, !prof !44

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.ax
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !36619)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36620
  store i64 8317987319222330741, ptr %i.b, align 8, !noalias !36620
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36620
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36620
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36620
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !36620
  invoke fastcc void @_RINvXs3_NvNtCsloFShupyl5J_6comemo5inputs6_1__INtB6_9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB11_13introspection12introspector1__12___ComemoCallNtNvNtB11_6engine1__12___ComemoCallNtNvB2O_s_1__12___ComemoCallNtNvB2O_s0_1__12___ComemoCalluuENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.jo, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #59
          to label %.noexc39.i.i.i.i unwind label %.body58.thread32.loopexit.i.i.i.i.loopexit, !noalias !36614

.noexc39.i.i.i.i:                                 ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs6_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.jp = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b) #59, !noalias !36620 ; 2 uses
  %i.jq = extractvalue { i64, i64 } %i.jp, 0      ; 2 uses
  %i.jr = extractvalue { i64, i64 } %i.jp, 1      ; 2 uses
  %i.js = zext i64 %i.jq to i128
  %i.jt = zext i64 %i.jr to i128
  %i.ju = shl nuw i128 %i.jt, 64
  %i.jv = or disjoint i128 %i.ju, %i.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36620
  call void @llvm.experimental.noalias.scope.decl(metadata !36621)
  br i1 %i.ja, label %.loopexit.i.sink.split.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.noexc39.i.i.i.i
  %i.jw = mul i64 %i.jq, -1065810590584100411
  %i.jx = add i64 %i.jw, %i.jr
  %i.jy = mul i64 %i.jx, -1065810590584100411     ; 2 uses
  %i.jz = call noundef i64 @llvm.fshl.i64(i64 %i.jy, i64 %i.jy, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36622)
  call void @llvm.experimental.noalias.scope.decl(metadata !36623)
  %i.ka = lshr i64 %i.jz, 57
  %i.kb = trunc nuw nsw i64 %i.ka to i8
  %i.kc = insertelement <16 x i8> poison, i8 %i.kb, i64 0
  %i.kd = shufflevector <16 x i8> %i.kc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %.sroa.9.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ay ], [ %i.ku, %bb.bb ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.jz, %bb.ay ], [ %i.kv, %bb.bb ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.jb ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ke, align 1, !noalias !36624 ; 2 uses
  %i.kf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, %i.kd
  %i.kg = bitcast <16 x i1> %i.kf to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i = icmp eq i16 %i.kg, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.az, %bb.ba
  %.sroa.06.0.i31.i.i.i.i.i.i.i = phi i16 [ %i.kt, %bb.ba ], [ %i.kg, %bb.az ] ; 3 uses
  %i.kh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i, i1 true)
  %i.ki = zext nneg i16 %i.kh to i64
  %i.kj = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.ki
  %i.kk = and i64 %i.kj, %i.jb
  %i.kl = sub nsw i64 0, %i.kk
  %i.km = getelementptr inbounds [32 x i8], ptr %i.jc, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 -32
  %.val2.i.i.i.i.i.i.i.i = load i128, ptr %i.kn, align 16, !noalias !36625, !noundef !41
  %i.ko = icmp eq i128 %i.jv, %.val2.i.i.i.i.i.i.i.i
  br i1 %i.ko, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, label %bb.ba, !prof !43

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.ba, %bb.az
  %i.kp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, splat (i8 -1)
  %i.kq = bitcast <16 x i1> %i.kp to i16
  %i.kr = icmp eq i16 %i.kq, 0
  br i1 %i.kr, label %bb.bb, label %.loopexit.i.sink.split.i.i.i, !prof !44

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ks = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i, -1
  %i.kt = and i16 %i.ks, %.sroa.06.0.i31.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i16 %i.kt, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ku = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i, 16  ; 2 uses
  %i.kv = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.ku
  br label %bb.az

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.kw = getelementptr inbounds i8, ptr %i.km, i64 -16
  %i.kx = load i64, ptr %i.kw, align 8, !noalias !36626, !noundef !41 ; 3 uses
  %i.ky = icmp ult i64 %i.kx, %i.iw
  br i1 %i.ky, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  %i.kz = getelementptr inbounds nuw [112 x i8], ptr %i.iy, i64 %i.kx ; 3 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load i16, ptr %i.kz, align 16, !noalias !36626 ; 3 uses
  store i16 -1, ptr %i.kz, align 16, !noalias !36626
  %.not10.i.i.i.i.i = icmp eq i16 %.sroa.03.0.copyload.i.i.i.i.i, -1
  br i1 %.not10.i.i.i.i.i, label %.loopexit.i.sink.split.i.i.i, label %bb.be

bb.bd:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  store i64 %.lcssa7486.i.i.i.ph, ptr %i.ij, align 8, !noalias !36604
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.kx, i64 noundef %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #53
          to label %.noexc40.i.i.i.i unwind label %.body58.thread32.loopexit.split-lp.i.i.i.i, !noalias !36614

.noexc40.i.i.i.i:                                 ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %.sroa.48.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(110) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 110, i1 false), !noalias !36626
  store i16 %.sroa.03.0.copyload.i.i.i.i.i, ptr %i.c, align 16, !noalias !36620
  %i.la = load i128, ptr %i.is, align 16, !noalias !36620, !noundef !41 ; 4 uses
  switch i16 %.sroa.03.0.copyload.i.i.i.i.i, label %bb.bi [
    i16 2, label %bb.bf
    i16 4, label %bb.bh
  ]

bb.bf:                                            ; preds = %bb.be
  %i.lb = load i64, ptr %i.iu, align 16, !range !77, !alias.scope !36627, !noalias !36620, !noundef !41 ; 3 uses
  %i.lc = icmp ne i64 %i.lb, 16
  call void @llvm.assume(i1 %i.lc)
  %i.ld = add nsw i64 %i.lb, -11
  %i.le = icmp samesign ugt i64 %i.lb, 10
  %i.lf = select i1 %i.le, i64 %i.ld, i64 5
  switch i64 %i.lf, label %bb.bi [
    i64 0, label %bb.bg
    i64 1, label %bb.bg
    i64 2, label %bb.bg
    i64 5, label %.sink.split.i.i.i.i.i.i.i.i.i
  ]

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bg, %bb.bf
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.iv, %bb.bg ], [ %i.iu, %bb.bf ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(64) %.sink.i.i.i.i.i.i.i.i.i)
          to label %bb.bi unwind label %.body58.thread32.loopexit.i.i.i.i.loopexit, !noalias !36614

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.it)
          to label %bb.bi unwind label %.body58.thread32.loopexit.i.i.i.i.loopexit, !noalias !36614

bb.bi:                                            ; preds = %bb.bh, %.sink.split.i.i.i.i.i.i.i.i.i, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36620
  call void @llvm.experimental.noalias.scope.decl(metadata !36628)
  %i.lg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages20layout_document_impl7___CACHE, i64 144), align 8, !alias.scope !36628, !noalias !36607, !noundef !41
  %i.lh = icmp eq i64 %i.lg, 0
  br i1 %i.lh, label %select.unfold40.i.i.i.i.outer363.backedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.li = mul i64 %.sroa.8.1.i.i.i.i, -1065810590584100411
  %i.lj = trunc i128 %i.la to i64
  %i.lk = add i64 %i.li, %i.lj
  %i.ll = mul i64 %i.lk, -1065810590584100411
  %i.lm = lshr i128 %i.la, 64
  %i.ln = trunc nuw i128 %i.lm to i64
  %i.lo = add i64 %i.ll, %i.ln
  %i.lp = mul i64 %i.lo, -1065810590584100411     ; 2 uses
  %i.lq = call noundef i64 @llvm.fshl.i64(i64 %i.lp, i64 %i.lp, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36629)
  call void @llvm.experimental.noalias.scope.decl(metadata !36630)
  %i.lr = lshr i64 %i.lq, 57
  %i.ls = trunc nuw nsw i64 %i.lr to i8
  %i.lt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages20layout_document_impl7___CACHE, i64 128), align 8, !alias.scope !36631, !noalias !36632, !noundef !41 ; 2 uses
  %i.lu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages20layout_document_impl7___CACHE, i64 120), align 8, !alias.scope !36631, !noalias !36632, !nonnull !41, !noundef !41 ; 2 uses
  %i.lv = insertelement <16 x i8> poison, i8 %i.ls, i64 0
  %i.lw = shufflevector <16 x i8> %i.lv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bm, %bb.bj
  %.sroa.9.0.i.i.i43.i.i.i.i = phi i64 [ 0, %bb.bj ], [ %i.mp, %bb.bm ]
  %.pn.i.i44.i.i.i.i = phi i64 [ %i.lq, %bb.bj ], [ %i.mq, %bb.bm ]
  %.sroa.01.0.i.i.i45.i.i.i.i = and i64 %.pn.i.i44.i.i.i.i, %i.lt ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 %.sroa.01.0.i.i.i45.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i46.i.i.i.i = load <16 x i8>, ptr %i.lx, align 1, !noalias !36633 ; 2 uses
  %i.ly = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i46.i.i.i.i, %i.lw
  %i.lz = bitcast <16 x i1> %i.ly to i16          ; 2 uses
  %.not.i.not30.i.i47.i.i.i.i = icmp eq i16 %i.lz, 0
  br i1 %.not.i.not30.i.i47.i.i.i.i, label %._crit_edge.i.i52.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph.i.i48.i.i.i.i:                             ; preds = %bb.bk, %bb.bl
  %.sroa.06.0.i31.i.i49.i.i.i.i = phi i16 [ %i.mo, %bb.bl ], [ %i.lz, %bb.bk ] ; 3 uses
  %i.ma = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i49.i.i.i.i, i1 true)
  %i.mb = zext nneg i16 %i.ma to i64
  %i.mc = add i64 %.sroa.01.0.i.i.i45.i.i.i.i, %i.mb
  %i.md = and i64 %i.mc, %i.lt
  %i.me = sub nsw i64 0, %i.md
end_hunk_15
begin_hunk_16_@_RNvNtCs7tN9tvpkfrg_12typst_layout5pages26layout_document_for_bundle:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !37373
  invoke fastcc void @_RNvXs3_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7_5clone5Clone5cloneBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.o)
          to label %bb.at unwind label %bb.ar, !noalias !37388

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluNtNvNtB2N_7locator1__12___ComemoCalluEINtNtB4_6result6ResultNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEEB6b_.exit.i.i.i.i, %bb.aq
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cp, %.body57.thread.i.i.i.i, %bb.ar
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.gy, %bb.ar ], [ %.pn.i.i.i.i, %.body57.thread.i.i.i.i ], [ %lpad.thr_comm.i.i.i, %bb.cp ] ; 2 uses
  %i.gz = cmpxchg ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !37373
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.gz, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtB3C_6engine1__12___ComemoCallNtNvB5p_s_1__12___ComemoCallNtNvB5p_s0_1__12___ComemoCalluNtNvNtB4u_7locator1__12___ComemoCalluEINtNtB4_6result6ResultNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEEB7S_.exit.i.i, label %bb.as, !prof !43

bb.as:                                            ; preds = %.body.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtB3C_6engine1__12___ComemoCallNtNvB5p_s_1__12___ComemoCallNtNvB5p_s0_1__12___ComemoCalluNtNvNtB4u_7locator1__12___ComemoCalluEINtNtB4_6result6ResultNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEEB7S_.exit.i.i unwind label %bb.ct, !noalias !37388

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ha = cmpxchg weak ptr %i.aq, i8 0, i8 1 acquire monotonic, align 1, !alias.scope !37372, !noalias !37449
  %i.hb = extractvalue { i8, i1 } %i.ha, 1
  br i1 %i.hb, label %.noexc.i54.i.i, label %bb.au, !prof !43

bb.au:                                            ; preds = %bb.at
  %i.hc = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.aq, i64 undef, i32 noundef -1)
          to label %.noexc.i54.i.i unwind label %bb.cp, !noalias !37450 ; 0 uses

.noexc.i54.i.i:                                   ; preds = %bb.au, %bb.at
  %i.hd = getelementptr inbounds nuw i8, ptr %i.q, i64 152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.hd, i64 64, i1 false), !noalias !37451
  store i64 0, ptr %i.hd, align 8, !alias.scope !37372, !noalias !37449
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !37372, !noalias !37449
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !37372, !noalias !37449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) @97, i64 32, i1 false), !noalias !37449
  store i64 0, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !alias.scope !37372, !noalias !37449
  %i.he = getelementptr inbounds nuw i8, ptr %i.q, i64 216 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false), !noalias !37451
  store i64 0, ptr %i.he, align 8, !alias.scope !37372, !noalias !37449
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.616.0..sroa_idx.i.i, align 8, !alias.scope !37372, !noalias !37449
  store i64 0, ptr %.sroa.717.0..sroa_idx.i.i, align 8, !alias.scope !37372, !noalias !37449
  %i.hg = cmpxchg ptr %i.aq, i8 1, i8 0 release monotonic, align 1, !alias.scope !37372, !noalias !37449
  %i.hh = extractvalue { i8, i1 } %i.hg, 1
  br i1 %i.hh, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.av, !prof !43

bb.av:                                            ; preds = %.noexc.i54.i.i
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.aq, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.cp, !noalias !37450

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.av, %.noexc.i54.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !37452
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.hf, i64 24, i1 false), !noalias !37452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.m, i64 144, i1 false), !noalias !37373
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 0, ptr %i.hj, align 8, !noalias !37452
  call void @llvm.experimental.noalias.scope.decl(metadata !37453)
  call void @llvm.experimental.noalias.scope.decl(metadata !37454)
  %i.hk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 112), align 8, !alias.scope !37454, !noalias !37455, !noundef !41
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.hm = mul i64 %i.as, -1065810590584100411
  %i.hn = add i64 %i.hm, %i.at
  %i.ho = mul i64 %i.hn, -1065810590584100411     ; 2 uses
  %i.hp = call noundef i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37456)
  call void @llvm.experimental.noalias.scope.decl(metadata !37457)
  %i.hq = lshr i64 %i.hp, 57
  %i.hr = trunc nuw nsw i64 %i.hq to i8
  %i.hs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 96), align 8, !alias.scope !37458, !noalias !37459, !noundef !41 ; 2 uses
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 88), align 8, !alias.scope !37458, !noalias !37459, !nonnull !41, !noundef !41 ; 2 uses
  %i.hu = insertelement <16 x i8> poison, i8 %i.hr, i64 0
  %i.hv = shufflevector <16 x i8> %i.hu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.aw ], [ %i.im, %bb.az ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.hp, %bb.aw ], [ %i.in, %bb.az ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.hs ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.hw, align 1, !noalias !37460 ; 2 uses
  %i.hx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.hv
  %i.hy = bitcast <16 x i1> %i.hx to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i = icmp eq i16 %i.hy, 0
  br i1 %.not.i.not30.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ax, %bb.ay
  %.sroa.06.0.i31.i.i.i.i.i.i = phi i16 [ %i.il, %bb.ay ], [ %i.hy, %bb.ax ] ; 3 uses
  %i.hz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i, i1 true)
  %i.ia = zext nneg i16 %i.hz to i64
  %i.ib = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ia
  %i.ic = and i64 %i.ib, %i.hs
  %i.id = sub nsw i64 0, %i.ic
  %i.ie = getelementptr inbounds [32 x i8], ptr %i.ht, i64 %i.id ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -32
  %.val2.i.i.i.i.i.i.i = load i128, ptr %i.if, align 16, !noalias !37461, !noundef !41
  %i.ig = icmp eq i128 %i.ax, %.val2.i.i.i.i.i.i.i
  br i1 %i.ig, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.ay, !prof !43

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ay, %bb.ax
  %i.ih = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.ii = bitcast <16 x i1> %i.ih to i16
  %i.ij = icmp eq i16 %i.ii, 0
  br i1 %i.ij, label %bb.az, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i, !prof !44

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ik = add i16 %.sroa.06.0.i31.i.i.i.i.i.i, -1
  %i.il = and i16 %i.ik, %.sroa.06.0.i31.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.il, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.az:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.im = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.in = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.im
  br label %bb.ax

.body57.i.i.i.i:                                  ; preds = %bb.cj, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i62.i.i.i.i, %bb.cm
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body57.thread.i.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.io = getelementptr inbounds i8, ptr %i.ie, i64 -16
  %i.ip = load i64, ptr %i.io, align 8, !noalias !37462, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ip, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1t_13introspection12introspector1__12___ComemoCallNtNvNtB1t_6engine1__12___ComemoCallNtNvB3g_s_1__12___ComemoCallNtNvB3g_s0_1__12___ComemoCalluNtNvNtB2l_7locator1__12___ComemoCalluEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !37453, !noalias !37463 ; 5 uses
  %i.it = icmp ult i64 %i.is, 82351536043346213
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !37453, !noalias !37463, !nonnull !41 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.promoted.i.i.i.i = load i64, ptr %i.iq, align 8, !alias.scope !37453, !noalias !37463 ; 2 uses
  br label %select.unfold31.i.i.i.i.outer

select.unfold31.i.i.i.i.outer:                    ; preds = %select.unfold31.i.i.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i
  %.lcssa4860.i.i.i.ph = phi i64 [ %.promoted.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %.lcssa48.i.i.i, %select.unfold31.i.i.i.i.outer.backedge ]
  %.ph = phi i64 [ %.promoted.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %.lcssa12.i.i.i, %select.unfold31.i.i.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ false, %select.unfold31.i.i.i.i.outer.backedge ]
  %.sroa.013.0.i.i.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ true, %select.unfold31.i.i.i.i.outer.backedge ]
  %.sroa.013.0.i.i.i.i.off0204.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ 1, %select.unfold31.i.i.i.i.outer.backedge ]
  %.sroa.10.0.i.i.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %i.lg, %select.unfold31.i.i.i.i.outer.backedge ]
  %.sroa.17.0.i.i.i.i.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %.sroa.87.0.copyload.i.lcssa.i.i.i, %select.unfold31.i.i.i.i.outer.backedge ]
  %.sroa.8.1.i.i.i.i.ph = phi i64 [ %.sroa.8.0.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %i.lg, %select.unfold31.i.i.i.i.outer.backedge ]
  %.sroa.010.1.i.i.i.i.ph = phi i64 [ %.sroa.010.0.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ 1, %select.unfold31.i.i.i.i.outer.backedge ]
  br label %select.unfold31.i.i.i.i.outer206

select.unfold31.i.i.i.i.outer206.backedge:        ; preds = %bb.bf, %._crit_edge.i.i48.i.i.i.i
  br label %select.unfold31.i.i.i.i.outer206

select.unfold31.i.i.i.i.outer206:                 ; preds = %select.unfold31.i.i.i.i.outer206.backedge, %select.unfold31.i.i.i.i.outer
  %.not27.i.i.i.i.ph207 = phi i1 [ %.not27.i.i.i.i.ph, %select.unfold31.i.i.i.i.outer ], [ false, %select.unfold31.i.i.i.i.outer206.backedge ]
  %.sroa.013.0.i.i.i.i.off0.ph208 = phi i1 [ %.sroa.013.0.i.i.i.i.off0.ph, %select.unfold31.i.i.i.i.outer ], [ true, %select.unfold31.i.i.i.i.outer206.backedge ]
  %.sroa.013.0.i.i.i.i.off0204.ph209 = phi i64 [ %.sroa.013.0.i.i.i.i.off0204.ph, %select.unfold31.i.i.i.i.outer ], [ 1, %select.unfold31.i.i.i.i.outer206.backedge ]
  %.sroa.10.0.i.i.i.i.ph210 = phi i64 [ %.sroa.10.0.i.i.i.i.ph, %select.unfold31.i.i.i.i.outer ], [ %.sroa.8.1.i.i.i.i, %select.unfold31.i.i.i.i.outer206.backedge ] ; 8 uses
  %.sroa.17.0.i.i.i.i.ph211 = phi i128 [ %.sroa.17.0.i.i.i.i.ph, %select.unfold31.i.i.i.i.outer ], [ %i.jp, %select.unfold31.i.i.i.i.outer206.backedge ] ; 2 uses
  %.sroa.8.1.i.i.i.i.ph212 = phi i64 [ %.sroa.8.1.i.i.i.i.ph, %select.unfold31.i.i.i.i.outer ], [ %.sroa.8.1.i.i.i.i, %select.unfold31.i.i.i.i.outer206.backedge ]
  %.sroa.010.1.i.i.i.i.ph213 = phi i64 [ %.sroa.010.1.i.i.i.i.ph, %select.unfold31.i.i.i.i.outer ], [ 1, %select.unfold31.i.i.i.i.outer206.backedge ]
  br label %select.unfold31.i.i.i.i

select.unfold31.i.i.i.i:                          ; preds = %select.unfold31.i.i.i.i.outer206, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.not27.i.i.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.not27.i.i.i.i.ph207, %select.unfold31.i.i.i.i.outer206 ] ; 2 uses
  %.sroa.013.0.i.i.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.013.0.i.i.i.i.off0.ph208, %select.unfold31.i.i.i.i.outer206 ] ; 2 uses
  %.sroa.013.0.i.i.i.i.off0204 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.013.0.i.i.i.i.off0204.ph209, %select.unfold31.i.i.i.i.outer206 ] ; 2 uses
  %.sroa.8.1.i.i.i.i = phi i64 [ %i.lc, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.8.1.i.i.i.i.ph212, %select.unfold31.i.i.i.i.outer206 ] ; 7 uses
  %.sroa.010.1.i.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ], [ %.sroa.010.1.i.i.i.i.ph213, %select.unfold31.i.i.i.i.outer206 ] ; 3 uses
  %i.ja = trunc nuw i64 %.sroa.010.1.i.i.i.i to i1
  %or.cond.i.i.i.i = select i1 %.not27.i.i.i.i, i1 %i.ja, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %select.unfold31.i.i.i.i
  call void @llvm.assume(i1 %i.it)
  %i.jb = icmp ult i64 %.ph, %i.is
  br i1 %i.jb, label %.lr.ph.i.i.preheader.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.ba
  %i.jc = getelementptr inbounds nuw [112 x i8], ptr %i.iv, i64 %.ph ; 3 uses
  %.sroa.03.0.copyload.i50.i.i.i = load i16, ptr %i.jc, align 16, !noalias !37464 ; 2 uses
  %.sroa.87.0..sroa_idx.i51.i.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  %.sroa.87.0.copyload.i52.i.i.i = load i128, ptr %.sroa.87.0..sroa_idx.i51.i.i.i, align 16, !noalias !37464
  store i16 -1, ptr %i.jc, align 16, !noalias !37465
  %.not.i37.i53.i.i.i = icmp eq i16 %.sroa.03.0.copyload.i50.i.i.i, -1
  br i1 %.not.i37.i53.i.i.i, label %.lr.ph.i59.i.i.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

.lr.ph.i59.i.i.preheader:                         ; preds = %.lr.ph.i.i.preheader.i.i.i
  %i.jd = add nuw nsw i64 %.ph, 1                 ; 2 uses
  %exitcond.not.i.i.i.i.i194 = icmp eq i64 %i.jd, %i.is
  br i1 %exitcond.not.i.i.i.i.i194, label %.loopexit.i.loopexit.i.i.i, label %.lr.ph.i.i.i60.i.i

.lr.ph.i.i.i60.i.i:                               ; preds = %.lr.ph.i59.i.i.preheader, %.lr.ph.i59.i.i
  %i.je = phi i64 [ %i.jg, %.lr.ph.i59.i.i ], [ %i.jd, %.lr.ph.i59.i.i.preheader ] ; 4 uses
  %i.jf = getelementptr inbounds nuw [112 x i8], ptr %i.iv, i64 %i.je ; 3 uses
  %.sroa.03.0.copyload.i.i.i.i = load i16, ptr %i.jf, align 16, !noalias !37464 ; 2 uses
  %.sroa.87.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 96
  %.sroa.87.0.copyload.i.i.i.i = load i128, ptr %.sroa.87.0..sroa_idx.i.i.i.i, align 16, !noalias !37464
  store i16 -1, ptr %i.jf, align 16, !noalias !37465
  %.not.i37.i.i.i.i = icmp eq i16 %.sroa.03.0.copyload.i.i.i.i, -1
  br i1 %.not.i37.i.i.i.i, label %.lr.ph.i59.i.i, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

.lr.ph.i59.i.i:                                   ; preds = %.lr.ph.i.i.i60.i.i
  %i.jg = add nuw nsw i64 %i.je, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.jg, %i.is
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.i, label %.lr.ph.i.i.i60.i.i

bb.bb:                                            ; preds = %select.unfold31.i.i.i.i
  %i.jh = icmp sgt i64 %.sroa.8.1.i.i.i.i, -1
  br i1 %i.jh, label %bb.bc, label %.loopexit44.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %.val36.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 24), align 8, !noalias !37455, !noundef !41
  %i.ji = icmp ult i64 %.sroa.8.1.i.i.i.i, %.val36.i.i.i.i
  br i1 %i.ji, label %bb.bd, label %.invoke.i.i.i.i, !prof !43

bb.bd:                                            ; preds = %bb.bc
  %.val35.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 16), align 8, !noalias !37455, !nonnull !41, !noundef !41
  %i.jj = getelementptr inbounds nuw [128 x i8], ptr %.val35.i.i.i.i, i64 %.sroa.8.1.i.i.i.i ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 16, !range !52, !noalias !37466, !noundef !41
  %.not.i38.i.i.i.i = icmp eq i64 %i.jk, 2
  br i1 %.not.i38.i.i.i.i, label %.invoke.i.i.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, !prof !44

.invoke.i.i.i.i:                                  ; preds = %bb.br, %bb.bq, %bb.bd, %bb.bc
  %i.jl = phi ptr [ @411, %bb.bd ], [ @411, %bb.bc ], [ @410, %bb.bq ], [ @410, %bb.br ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @392, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jl) #53
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !37462

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.bd
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37455
  invoke fastcc void @_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluEE7extractCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.jm)
          to label %bb.be unwind label %.loopexit43.i.i.i.i.loopexit, !noalias !37467

bb.be:                                            ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.jn = load i128, ptr %i.c, align 16, !range !42, !noalias !37455, !noundef !41
  %i.jo = trunc nuw i128 %i.jn to i1
  br i1 %i.jo, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.jp = load i128, ptr %i.iz, align 16, !noalias !37455, !noundef !41 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37455
  call void @llvm.experimental.noalias.scope.decl(metadata !37468)
  %i.jq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 144), align 8, !alias.scope !37468, !noalias !37455, !noundef !41
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %select.unfold31.i.i.i.i.outer206.backedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.js = mul i64 %.sroa.8.1.i.i.i.i, -1065810590584100411
  %i.jt = trunc i128 %i.jp to i64
  %i.ju = add i64 %i.js, %i.jt
  %i.jv = mul i64 %i.ju, -1065810590584100411
  %i.jw = lshr i128 %i.jp, 64
  %i.jx = trunc nuw i128 %i.jw to i64
  %i.jy = add i64 %i.jv, %i.jx
  %i.jz = mul i64 %i.jy, -1065810590584100411     ; 2 uses
  %i.ka = call noundef i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37469)
  call void @llvm.experimental.noalias.scope.decl(metadata !37470)
  %i.kb = lshr i64 %i.ka, 57
  %i.kc = trunc nuw nsw i64 %i.kb to i8
  %i.kd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 128), align 8, !alias.scope !37471, !noalias !37472, !noundef !41 ; 2 uses
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 120), align 8, !alias.scope !37471, !noalias !37472, !nonnull !41, !noundef !41 ; 2 uses
  %i.kf = insertelement <16 x i8> poison, i8 %i.kc, i64 0
  %i.kg = shufflevector <16 x i8> %i.kf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %bb.bg
  %.sroa.9.0.i.i.i39.i.i.i.i = phi i64 [ 0, %bb.bg ], [ %i.kz, %bb.bj ]
  %.pn.i.i40.i.i.i.i = phi i64 [ %i.ka, %bb.bg ], [ %i.la, %bb.bj ]
  %.sroa.01.0.i.i.i41.i.i.i.i = and i64 %.pn.i.i40.i.i.i.i, %i.kd ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.sroa.01.0.i.i.i41.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i42.i.i.i.i = load <16 x i8>, ptr %i.kh, align 1, !noalias !37473 ; 2 uses
  %i.ki = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i.i.i, %i.kg
  %i.kj = bitcast <16 x i1> %i.ki to i16          ; 2 uses
  %.not.i.not30.i.i43.i.i.i.i = icmp eq i16 %i.kj, 0
  br i1 %.not.i.not30.i.i43.i.i.i.i, label %._crit_edge.i.i48.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i

.lr.ph.i.i44.i.i.i.i:                             ; preds = %bb.bh, %bb.bi
  %.sroa.06.0.i31.i.i45.i.i.i.i = phi i16 [ %i.ky, %bb.bi ], [ %i.kj, %bb.bh ] ; 3 uses
  %i.kk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i45.i.i.i.i, i1 true)
  %i.kl = zext nneg i16 %i.kk to i64
  %i.km = add i64 %.sroa.01.0.i.i.i41.i.i.i.i, %i.kl
  %i.kn = and i64 %i.km, %i.kd
  %i.ko = sub nsw i64 0, %i.kn
  %i.kp = getelementptr inbounds [48 x i8], ptr %i.ke, i64 %i.ko ; 3 uses
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 -48
  %.val2.i.i.i46.i.i.i.i = load i64, ptr %i.kq, align 8, !noalias !37474, !noundef !41
  %i.kr = getelementptr i8, ptr %i.kp, i64 -32
  %.val3.i.i.i.i.i.i.i = load i128, ptr %i.kr, align 16, !noalias !37474
  %i.ks = icmp eq i64 %.sroa.8.1.i.i.i.i, %.val2.i.i.i46.i.i.i.i
  %i.kt = icmp eq i128 %i.jp, %.val3.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.bi, !prof !43

._crit_edge.i.i48.i.i.i.i:                        ; preds = %bb.bi, %bb.bh
  %i.ku = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i42.i.i.i.i, splat (i8 -1)
  %i.kv = bitcast <16 x i1> %i.ku to i16
  %i.kw = icmp eq i16 %i.kv, 0
  br i1 %i.kw, label %bb.bj, label %select.unfold31.i.i.i.i.outer206.backedge, !prof !44

bb.bi:                                            ; preds = %.lr.ph.i.i44.i.i.i.i
  %i.kx = add i16 %.sroa.06.0.i31.i.i45.i.i.i.i, -1
  %i.ky = and i16 %i.kx, %.sroa.06.0.i31.i.i45.i.i.i.i ; 2 uses
  %.not.i.not.i.i47.i.i.i.i = icmp eq i16 %i.ky, 0
  br i1 %.not.i.not.i.i47.i.i.i.i, label %._crit_edge.i.i48.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i

bb.bj:                                            ; preds = %._crit_edge.i.i48.i.i.i.i
  %i.kz = add i64 %.sroa.9.0.i.i.i39.i.i.i.i, 16  ; 2 uses
  %i.la = add i64 %.sroa.01.0.i.i.i41.i.i.i.i, %i.kz
  br label %bb.bh

bb.bk:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37455
  br label %.loopexit44.i.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.lr.ph.i.i44.i.i.i.i
  %i.lb = getelementptr inbounds i8, ptr %i.kp, i64 -16
  %i.lc = load i64, ptr %i.lb, align 8, !noalias !37462, !noundef !41
  br label %select.unfold31.i.i.i.i

.loopexit44.i.i.i.i:                              ; preds = %bb.bb, %.loopexit.i.i.i.i, %bb.bk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEB11_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(176) %i.d)
          to label %bb.bm unwind label %bb.bl, !noalias !37475

bb.bl:                                            ; preds = %.loopexit44.i.i.i.i
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB20_13introspection12introspector1__12___ComemoCallNtNvNtB20_6engine1__12___ComemoCallNtNvB3N_s_1__12___ComemoCallNtNvB3N_s0_1__12___ComemoCalluNtNvNtB2S_7locator1__12___ComemoCalluEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.hi) #54
          to label %.body57.thread.i.i.i.i unwind label %bb.bn, !noalias !37475

bb.bm:                                            ; preds = %.loopexit44.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB20_13introspection12introspector1__12___ComemoCallNtNvNtB20_6engine1__12___ComemoCallNtNvB3N_s_1__12___ComemoCallNtNvB3N_s0_1__12___ComemoCalluNtNvNtB2S_7locator1__12___ComemoCalluEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.hi)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo7memoize10CacheEntryINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1V_13introspection12introspector1__12___ComemoCallNtNvNtB1V_6engine1__12___ComemoCallNtNvB3I_s_1__12___ComemoCallNtNvB3I_s0_1__12___ComemoCalluNtNvNtB2N_7locator1__12___ComemoCalluEINtNtB4_6result6ResultNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1V_4diag16SourceDiagnosticEEEEB6b_.exit.i.i.i.i unwind label %bb.cn, !noalias !37475

bb.bn:                                            ; preds = %bb.bl
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !37476
  unreachable

_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i60.i.i, %.lr.ph.i.i.preheader.i.i.i
  %.lcssa48.i.i.i = phi i64 [ %.lcssa4860.i.i.i.ph, %.lr.ph.i.i.preheader.i.i.i ], [ %i.je, %.lr.ph.i.i.i60.i.i ] ; 2 uses
  %.lcssa12.i.i.i = phi i64 [ %.ph, %.lr.ph.i.i.preheader.i.i.i ], [ %i.je, %.lr.ph.i.i.i60.i.i ] ; 2 uses
  %.sroa.03.0.copyload.i.lcssa.i.i.i = phi i16 [ %.sroa.03.0.copyload.i50.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.03.0.copyload.i.i.i.i, %.lr.ph.i.i.i60.i.i ]
  %.sroa.87.0.copyload.i.lcssa.i.i.i = phi i128 [ %.sroa.87.0.copyload.i52.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.87.0.copyload.i.i.i.i, %.lr.ph.i.i.i60.i.i ]
  %i.lf = getelementptr inbounds nuw [112 x i8], ptr %i.iv, i64 %.lcssa12.i.i.i
  store i64 %.lcssa48.i.i.i, ptr %i.iq, align 8, !noalias !37452
  %.sroa.8.0..sroa_idx.le.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(94) %.sroa.49.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(94) %.sroa.8.0..sroa_idx.le.i.i.i.i, i64 94, i1 false), !noalias !37462
  store i16 %.sroa.03.0.copyload.i.lcssa.i.i.i, ptr %i.iw, align 16, !noalias !37455
  store i64 0, ptr %i.ix, align 16, !noalias !37455
  store i64 %.sroa.013.0.i.i.i.i.off0204, ptr %i.b, align 16, !noalias !37455
  store i64 %.sroa.10.0.i.i.i.i.ph210, ptr %i.iy, align 8, !noalias !37455
  %i.lg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 40), align 8, !noalias !37455, !noundef !41 ; 5 uses
  invoke fastcc void @_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEE9insert_atCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 8), i64 noundef %i.lg, ptr noalias nofree noundef align 16 captures(address) dereferenceable(128) %i.b)
          to label %bb.bo unwind label %.loopexit43.i.i.i.i.loopexit.split-lp, !noalias !37462

.loopexit.i.loopexit.i.i.i:                       ; preds = %.lr.ph.i59.i.i.preheader, %.lr.ph.i59.i.i
  store i64 %i.is, ptr %i.iq, align 8, !noalias !37452
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.ba, %.loopexit.i.loopexit.i.i.i
  %i.lh = icmp eq i64 %.sroa.010.1.i.i.i.i, 1     ; 2 uses
  %or.cond32.i.i.i.i = and i1 %.not27.i.i.i.i, %i.lh
  br i1 %or.cond32.i.i.i.i, label %.loopexit44.i.i.i.i, label %bb.bs

bb.bo:                                            ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1y_13introspection12introspector1__12___ComemoCallNtNvNtB1y_6engine1__12___ComemoCallNtNvB3l_s_1__12___ComemoCallNtNvB3l_s0_1__12___ComemoCalluNtNvNtB2q_7locator1__12___ComemoCalluEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37455
  %.not.i.i.i.i = icmp eq i64 %.sroa.010.1.i.i.i.i, 1
  br i1 %.not.i.i.i.i, label %.noexc53.i.i.i.i, label %bb.bp

.noexc53.i.i.i.i:                                 ; preds = %bb.bp, %bb.bo
  br i1 %.sroa.013.0.i.i.i.i.off0, label %bb.bq, label %select.unfold31.i.i.i.i.outer.backedge

bb.bp:                                            ; preds = %bb.bo
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 88), i128 noundef %i.ax, i64 noundef %i.lg)
          to label %.noexc53.i.i.i.i unwind label %.loopexit43.i.i.i.i.loopexit.split-lp

bb.bq:                                            ; preds = %.noexc53.i.i.i.i
  %.val1.i.i.i56.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 24), align 8, !noalias !37477, !noundef !41
  %i.li = icmp ult i64 %.sroa.10.0.i.i.i.i.ph210, %.val1.i.i.i56.i.i
  br i1 %i.li, label %bb.br, label %.invoke.i.i.i.i, !prof !43

bb.br:                                            ; preds = %bb.bq
  %.val.i.i.i57.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 16), align 8, !noalias !37477, !nonnull !41, !noundef !41
  %i.lj = getelementptr inbounds nuw [128 x i8], ptr %.val.i.i.i57.i.i, i64 %.sroa.10.0.i.i.i.i.ph210 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 16, !range !52, !noalias !37478, !noundef !41
  %.not.i.i.i.i58.i.i = icmp eq i64 %i.lk, 2
  br i1 %.not.i.i.i.i58.i.i, label %.invoke.i.i.i.i, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, !prof !44

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %bb.br
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 112 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 16, !noalias !37479, !noundef !41
  %i.ln = add i64 %i.lm, 1
  store i64 %i.ln, ptr %i.ll, align 16, !noalias !37479
  invoke fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7tN9tvpkfrg_12typst_layout5pages31layout_document_for_bundle_impl7___CACHE, i64 120), i64 noundef %.sroa.10.0.i.i.i.i.ph210, i128 noundef %.sroa.17.0.i.i.i.i.ph211, i64 noundef %i.lg)
          to label %select.unfold31.i.i.i.i.outer.backedge unwind label %.loopexit43.i.i.i.i.loopexit.split-lp

select.unfold31.i.i.i.i.outer.backedge:           ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtB1O_6engine1__12___ComemoCallNtNvB3B_s_1__12___ComemoCallNtNvB3B_s0_1__12___ComemoCalluNtNvNtB2G_7locator1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, %.noexc53.i.i.i.i
end_hunk_16
begin_hunk_17_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan:bb.a
bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs3_1__9MultiCalluuuuuEINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEEECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.dd, !noalias !47921

_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit49.i: ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !47875
  store ptr %i.nb, ptr %i.f, align 8, !noalias !47875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ns = cmpxchg weak ptr %i.o, i8 0, i8 1 acquire monotonic, align 1, !alias.scope !47874, !noalias !47930
  %i.nt = extractvalue { i8, i1 } %i.ns, 1
  br i1 %i.nt, label %.noexc.i51.i, label %bb.as, !prof !43

bb.as:                                            ; preds = %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit49.i
  %i.nu = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 undef, i32 noundef -1)
          to label %.noexc.i51.i unwind label %bb.cy, !noalias !47921 ; 0 uses

.noexc.i51.i:                                     ; preds = %bb.as, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit49.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.nv, i64 64, i1 false), !noalias !47921
  store i64 0, ptr %i.nv, align 8, !alias.scope !47874, !noalias !47930
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !47874, !noalias !47930
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !47874, !noalias !47930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) @97, i64 32, i1 false), !noalias !47930
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !47874, !noalias !47930
  %i.nw = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nx, ptr noundef nonnull align 8 dereferenceable(24) %i.nw, i64 24, i1 false), !noalias !47921
  store i64 0, ptr %i.nw, align 8, !alias.scope !47874, !noalias !47930
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !47874, !noalias !47930
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !47874, !noalias !47930
  %i.ny = cmpxchg ptr %i.o, i8 1, i8 0 release monotonic, align 1, !alias.scope !47874, !noalias !47930
  %i.nz = extractvalue { i8, i1 } %i.ny, 1
  br i1 %i.nz, label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs3_1__9MultiCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.at, !prof !43

bb.at:                                            ; preds = %.noexc.i51.i
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 dereferenceable(96) %i.o, i1 noundef zeroext false)
          to label %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs3_1__9MultiCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.cy, !noalias !47921

.body.i.i:                                        ; preds = %bb.cw, %bb.cp, %.thread.i.i.i.i, %bb.cc, %bb.bo, %bb.bn, %.body63.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.cw ], [ %lpad.thr_comm.split-lp.i.i.i, %.body63.i.i.i ], [ %i.vs, %bb.cc ], [ %i.wg, %.thread.i.i.i.i ], [ %i.wp, %bb.cp ], [ %i.uc, %bb.bn ], [ %i.uc, %bb.bo ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs3_1__9MultiCalluuuuuEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #54, !noalias !47931
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs3_1__9MultiCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.at, %.noexc.i51.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !47875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !47875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !47875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.nx, i64 24, i1 false), !noalias !47875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.oa = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.nb, ptr %i.oa, align 8, !noalias !47875
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %i.ob, align 8, !noalias !47875
  call void @llvm.experimental.noalias.scope.decl(metadata !47932)
  call void @llvm.experimental.noalias.scope.decl(metadata !47933)
  call void @llvm.experimental.noalias.scope.decl(metadata !47934)
  %i.oc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan7___CACHE, i64 112), align 8, !alias.scope !47934, !noalias !47935, !noundef !41
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, label %bb.au

bb.au:                                            ; preds = %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs3_1__9MultiCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.oe = mul i64 %i.ja, -1065810590584100411
  %i.of = add i64 %i.oe, %i.jb
  %i.og = mul i64 %i.of, -1065810590584100411     ; 2 uses
  %i.oh = call noundef i64 @llvm.fshl.i64(i64 %i.og, i64 %i.og, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47936)
  call void @llvm.experimental.noalias.scope.decl(metadata !47937)
  %i.oi = lshr i64 %i.oh, 57
  %i.oj = trunc nuw nsw i64 %i.oi to i8
  %i.ok = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan7___CACHE, i64 96), align 8, !alias.scope !47938, !noalias !47939, !noundef !41 ; 2 uses
  %i.ol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan7___CACHE, i64 88), align 8, !alias.scope !47938, !noalias !47939, !nonnull !41, !noundef !41 ; 2 uses
  %i.om = insertelement <16 x i8> poison, i8 %i.oj, i64 0
  %i.on = shufflevector <16 x i8> %i.om, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.au ], [ %i.pe, %bb.ax ]
  %.pn.i.i.i.i.i = phi i64 [ %i.oh, %bb.au ], [ %i.pf, %bb.ax ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.ok ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.oo, align 1, !noalias !47940 ; 2 uses
  %i.op = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.on
  %i.oq = bitcast <16 x i1> %i.op to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.oq, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.av, %bb.aw
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.pd, %bb.aw ], [ %i.oq, %bb.av ] ; 3 uses
  %i.or = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.os = zext nneg i16 %i.or to i64
  %i.ot = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.os
  %i.ou = and i64 %i.ot, %i.ok
  %i.ov = sub nsw i64 0, %i.ou
  %i.ow = getelementptr inbounds [32 x i8], ptr %i.ol, i64 %i.ov ; 2 uses
  %i.ox = getelementptr inbounds i8, ptr %i.ow, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.ox, align 16, !noalias !47941, !noundef !41
  %i.oy = icmp eq i128 %i.jf, %.val2.i.i.i.i.i.i
  br i1 %i.oy, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.aw, !prof !43

._crit_edge.i.i.i.i.i:                            ; preds = %bb.aw, %bb.av
  %i.oz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.pa = bitcast <16 x i1> %i.oz to i16
  %i.pb = icmp eq i16 %i.pa, 0
  br i1 %i.pb, label %bb.ax, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i, !prof !44

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pc = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.pd = and i16 %i.pc, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.pd, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.pe = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.pf = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.pe
  br label %bb.av

.body63.i.i.i:                                    ; preds = %bb.cq, %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs7tN9tvpkfrg_12typst_layout.exit.i68.i.i.i, %bb.ct
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.pg = getelementptr inbounds i8, ptr %i.ow, i64 -16
  %i.ph = load i64, ptr %i.pg, align 8, !noalias !47942, !noundef !41
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs3_1__9MultiCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.ph, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ undef, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs3_1__9MultiCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.010.0.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ 0, %_RNvMNtCsloFShupyl5J_6comemo10constraintINtB2_10ConstraintINtNvNtB4_5inputs3_1__9MultiCalluuuuuEE4takeCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %._crit_edge.i.i.i.i.i ]
  %i.pi = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 6 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.pk = load i64, ptr %i.pj, align 8, !alias.scope !47932, !noalias !47943 ; 8 uses
  %i.pl = icmp ult i64 %i.pk, 288230376151711744
  %i.pm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !alias.scope !47932, !noalias !47943, !nonnull !41 ; 5 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.po = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.pp = load i64, ptr %i.po, align 8, !alias.scope !47932, !noalias !47943
  %i.pq = icmp eq i64 %i.pp, 0
  %i.pr = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ps = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !47932, !noalias !47943 ; 8 uses
  %i.pu = load ptr, ptr %i.pr, align 8, !alias.scope !47932, !noalias !47943 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.pi, align 8, !alias.scope !47932, !noalias !47943 ; 2 uses
  br label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer: ; preds = %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i
  %.lcssa5462.i.i.ph = phi i64 [ %.promoted.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %.lcssa54.i.i, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge ] ; 6 uses
  %.ph = phi i64 [ %.promoted.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %.lcssa10.i.i, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge ] ; 4 uses
  %.not27.i.i.i.ph = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ false, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge ]
  %.sroa.021.0.i.i.i.off0.ph = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ true, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge ]
  %.sroa.021.0.i.i.i.off0311.ph = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ 1, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge ]
  %.sroa.10.0.i.i.i.ph = phi i64 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %i.uh, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge ]
  %.sroa.17.0.i.i.i.ph = phi i128 [ undef, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %.lcssa.i.i, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge ]
  %.sroa.8.1.i.i.i.ph = phi i64 [ %.sroa.8.0.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ %i.uh, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge ]
  %.sroa.010.1.i.i.i.ph = phi i64 [ %.sroa.010.0.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i ], [ 1, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer.backedge ]
  br label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge: ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs3_1__9MultiCalluuuuuEE7extractCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %._crit_edge.i.i49.i.i.i
  br label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314: ; preds = %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer
  %.not27.i.i.i.ph315 = phi i1 [ %.not27.i.i.i.ph, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer ], [ false, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge ]
  %.sroa.021.0.i.i.i.off0.ph316 = phi i1 [ %.sroa.021.0.i.i.i.off0.ph, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer ], [ true, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge ]
  %.sroa.021.0.i.i.i.off0311.ph317 = phi i64 [ %.sroa.021.0.i.i.i.off0311.ph, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer ], [ 1, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge ]
  %.sroa.10.0.i.i.i.ph318 = phi i64 [ %.sroa.10.0.i.i.i.ph, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer ], [ %.sroa.8.1.i.i.i, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge ] ; 9 uses
  %.sroa.17.0.i.i.i.ph319 = phi i128 [ %.sroa.17.0.i.i.i.ph, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer ], [ %i.sm, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge ] ; 2 uses
  %.sroa.8.1.i.i.i.ph320 = phi i64 [ %.sroa.8.1.i.i.i.ph, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer ], [ %.sroa.8.1.i.i.i, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge ]
  %.sroa.010.1.i.i.i.ph321 = phi i64 [ %.sroa.010.1.i.i.i.ph, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer ], [ 1, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge ]
  br label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.not27.i.i.i = phi i1 [ true, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.not27.i.i.i.ph315, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314 ] ; 2 uses
  %.sroa.021.0.i.i.i.off0 = phi i1 [ false, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.021.0.i.i.i.off0.ph316, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314 ] ; 2 uses
  %.sroa.021.0.i.i.i.off0311 = phi i64 [ 0, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.021.0.i.i.i.off0311.ph317, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314 ] ; 3 uses
  %.sroa.8.1.i.i.i = phi i64 [ %i.tz, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.8.1.i.i.i.ph320, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314 ] ; 7 uses
  %.sroa.010.1.i.i.i = phi i64 [ 1, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.010.1.i.i.i.ph321, %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314 ] ; 3 uses
  %i.pv = trunc nuw i64 %.sroa.010.1.i.i.i to i1
  %or.cond.i.i.i = select i1 %.not27.i.i.i, i1 %i.pv, i1 false
  br i1 %or.cond.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.assume(i1 %i.pl)
  %i.pw = icmp ult i64 %.ph, %i.pk
  br i1 %i.pw, label %.lr.ph.i.i.preheader.i.i, label %.loopexit54.i.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.ay
  %i.px = getelementptr inbounds nuw [32 x i8], ptr %i.pn, i64 %.ph ; 3 uses
  %i.py = load i8, ptr %i.px, align 16, !range !151, !noalias !47944, !noundef !41 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.qa = load i128, ptr %i.pz, align 16, !noalias !47944
  store i8 -1, ptr %i.px, align 16, !noalias !47944
  %.not.i37.i56.i.i = icmp eq i8 %i.py, -1
  br i1 %.not.i37.i56.i.i, label %.lr.ph.i53.i.preheader, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs3_1__9MultiCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

.lr.ph.i53.i.preheader:                           ; preds = %.lr.ph.i.i.preheader.i.i
  %i.qb = add nuw nsw i64 %.ph, 1                 ; 2 uses
  %exitcond.not.i.i.i.i301 = icmp eq i64 %i.qb, %i.pk
  br i1 %exitcond.not.i.i.i.i301, label %.loopexit54.i.i.i, label %.lr.ph.i.i.i54.i

.lr.ph.i.i.i54.i:                                 ; preds = %.lr.ph.i53.i.preheader, %.lr.ph.i53.i
  %i.qc = phi i64 [ %i.qh, %.lr.ph.i53.i ], [ %i.qb, %.lr.ph.i53.i.preheader ] ; 4 uses
  %i.qd = getelementptr inbounds nuw [32 x i8], ptr %i.pn, i64 %i.qc ; 3 uses
  %i.qe = load i8, ptr %i.qd, align 16, !range !151, !noalias !47944, !noundef !41 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qg = load i128, ptr %i.qf, align 16, !noalias !47944
  store i8 -1, ptr %i.qd, align 16, !noalias !47944
  %.not.i37.i.i.i = icmp eq i8 %i.qe, -1
  br i1 %.not.i37.i.i.i, label %.lr.ph.i53.i, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs3_1__9MultiCalluuuuuEE4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

.lr.ph.i53.i:                                     ; preds = %.lr.ph.i.i.i54.i
  %i.qh = add nuw nsw i64 %i.qc, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.qh, %i.pk
  br i1 %exitcond.not.i.i.i.i, label %.loopexit54.i.i.i, label %.lr.ph.i.i.i54.i

bb.az:                                            ; preds = %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.qi = icmp sgt i64 %.sroa.8.1.i.i.i, -1
  br i1 %i.qi, label %bb.ba, label %.loopexit.i.sink.split.i.i

bb.ba:                                            ; preds = %bb.az
  %.val33.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan7___CACHE, i64 24), align 8, !noalias !47935, !noundef !41
  %i.qj = icmp ult i64 %.sroa.8.1.i.i.i, %.val33.i.i.i
  br i1 %i.qj, label %bb.bb, label %.invoke.i.i.i, !prof !43

bb.bb:                                            ; preds = %bb.ba
  %.val.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan7___CACHE, i64 16), align 8, !noalias !47935, !nonnull !41, !noundef !41
  %i.qk = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.sroa.8.1.i.i.i ; 2 uses
  %i.ql = load i64, ptr %i.qk, align 8, !range !52, !noalias !47945, !noundef !41
  %.not.i38.i.i.i = icmp eq i64 %i.ql, 2
  br i1 %.not.i38.i.i.i, label %.invoke.i.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !44

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.bb
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !47946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47947
  call void @llvm.experimental.noalias.scope.decl(metadata !47948)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !47947
  %.val.i.i.i.i.i.i = load i8, ptr %i.qm, align 8, !range !93, !alias.scope !47946, !noalias !47949, !noundef !41
  %i.qn = zext nneg i8 %.val.i.i.i.i.i.i to i64   ; 2 uses
  store i64 8, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !47950, !noalias !47947
  %i.qo = xor i64 %i.qn, 8387220255154660723      ; 3 uses
  %i.qp = add nuw i64 %i.qo, 7816392313619706465
  %i.qq = call noundef i64 @llvm.fshl.i64(i64 %i.qo, i64 8387220255154660720, i64 16)
  %i.qr = xor i64 %i.qp, %i.qq                    ; 2 uses
  %i.qs = add i64 %i.qr, -2389206912058073146     ; 2 uses
  %i.qt = call noundef i64 @llvm.fshl.i64(i64 %i.qr, i64 -8882027881020480592, i64 21)
  %i.qu = xor i64 %i.qt, %i.qs
  store i64 %i.qu, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !47951, !noalias !47947
  %i.qv = add nsw i64 %i.qo, -6481707427169490218 ; 2 uses
  %i.qw = xor i64 %i.qv, -2011800273400728795
  store i64 %i.qw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !47951, !noalias !47947
  %i.qx = call noundef i64 @llvm.fshl.i64(i64 %i.qv, i64 1905512827985170496, i64 32)
  store i64 %i.qx, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !47951, !noalias !47947
  %i.qy = xor i64 %i.qs, %i.qn
  store i64 %i.qy, ptr %i.a, align 8, !alias.scope !47950, !noalias !47947
  %i.qz = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a) #59, !noalias !47947 ; 2 uses
  %i.ra = extractvalue { i64, i64 } %i.qz, 0      ; 2 uses
  %i.rb = extractvalue { i64, i64 } %i.qz, 1      ; 2 uses
  %i.rc = zext i64 %i.ra to i128
  %i.rd = zext i64 %i.rb to i128
  %i.re = shl nuw i128 %i.rd, 64
  %i.rf = or disjoint i128 %i.re, %i.rc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47947
  br i1 %i.pq, label %.loopexit.i.sink.split.i.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs3_1__9MultiCalluuuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.rg = mul i64 %i.ra, -1065810590584100411
  %i.rh = add i64 %i.rg, %i.rb
  %i.ri = mul i64 %i.rh, -1065810590584100411     ; 2 uses
  %i.rj = call noundef i64 @llvm.fshl.i64(i64 %i.ri, i64 %i.ri, i64 26) ; 2 uses
  %i.rk = lshr i64 %i.rj, 57
  %i.rl = trunc nuw nsw i64 %i.rk to i8
  %i.rm = insertelement <16 x i8> poison, i8 %i.rl, i64 0
  %i.rn = shufflevector <16 x i8> %i.rm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bc ], [ %i.se, %bb.bf ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.rj, %bb.bc ], [ %i.sf, %bb.bf ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.pt ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.ro, align 1, !noalias !47952 ; 2 uses
  %i.rp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.rn
  %i.rq = bitcast <16 x i1> %i.rp to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i = icmp eq i16 %i.rq, 0
  br i1 %.not.i.not30.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bd, %bb.be
  %.sroa.06.0.i31.i.i.i.i.i.i = phi i16 [ %i.sd, %bb.be ], [ %i.rq, %bb.bd ] ; 3 uses
  %i.rr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i, i1 true)
  %i.rs = zext nneg i16 %i.rr to i64
  %i.rt = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.rs
  %i.ru = and i64 %i.rt, %i.pt
  %i.rv = sub nsw i64 0, %i.ru
  %i.rw = getelementptr inbounds [32 x i8], ptr %i.pu, i64 %i.rv ; 2 uses
  %i.rx = getelementptr inbounds i8, ptr %i.rw, i64 -32
  %.val2.i.i.i.i.i.i.i = load i128, ptr %i.rx, align 16, !noalias !47953, !noundef !41
  %i.ry = icmp eq i128 %i.rf, %.val2.i.i.i.i.i.i.i
  br i1 %i.ry, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %bb.be, !prof !43

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.be, %bb.bd
  %i.rz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.sa = bitcast <16 x i1> %i.rz to i16
  %i.sb = icmp eq i16 %i.sa, 0
  br i1 %i.sb, label %bb.bf, label %.loopexit.i.sink.split.i.i, !prof !44

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.sc = add i16 %.sroa.06.0.i31.i.i.i.i.i.i, -1
  %i.sd = and i16 %i.sc, %.sroa.06.0.i31.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.sd, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.se = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.sf = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.se
  br label %bb.bd

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.sg = getelementptr inbounds i8, ptr %i.rw, i64 -16
  %i.sh = load i64, ptr %i.sg, align 8, !noalias !47954, !noundef !41 ; 3 uses
  %i.si = icmp ult i64 %i.sh, %i.pk
  br i1 %i.si, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.sj = getelementptr inbounds nuw [32 x i8], ptr %i.pn, i64 %i.sh ; 3 uses
  %i.sk = load i8, ptr %i.sj, align 16, !range !151, !noalias !47954, !noundef !41
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sm = load i128, ptr %i.sl, align 16, !noalias !47954 ; 4 uses
  store i8 -1, ptr %i.sj, align 16, !noalias !47954
  %.not8.i.i.i.i = icmp eq i8 %i.sk, -1
  br i1 %.not8.i.i.i.i, label %.loopexit.i.sink.split.i.i, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs3_1__9MultiCalluuuuuEE7extractCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.bh:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  store i64 %.lcssa5462.i.i.ph, ptr %i.pi, align 8, !noalias !47875
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.sh, i64 noundef %i.pk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #53
          to label %.noexc39.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !47942

.noexc39.i.i.i:                                   ; preds = %bb.bh
  unreachable

_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs3_1__9MultiCalluuuuuEE7extractCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !47955)
  %i.sn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan7___CACHE, i64 144), align 8, !alias.scope !47955, !noalias !47935, !noundef !41
  %i.so = icmp eq i64 %i.sn, 0
  br i1 %i.so, label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge, label %bb.bi

bb.bi:                                            ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs3_1__9MultiCalluuuuuEE7extractCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.sp = mul i64 %.sroa.8.1.i.i.i, -1065810590584100411
  %i.sq = trunc i128 %i.sm to i64
  %i.sr = add i64 %i.sp, %i.sq
  %i.ss = mul i64 %i.sr, -1065810590584100411
  %i.st = lshr i128 %i.sm, 64
  %i.su = trunc nuw i128 %i.st to i64
  %i.sv = add i64 %i.ss, %i.su
  %i.sw = mul i64 %i.sv, -1065810590584100411     ; 2 uses
  %i.sx = call noundef i64 @llvm.fshl.i64(i64 %i.sw, i64 %i.sw, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47956)
  call void @llvm.experimental.noalias.scope.decl(metadata !47957)
  %i.sy = lshr i64 %i.sx, 57
  %i.sz = trunc nuw nsw i64 %i.sy to i8
  %i.ta = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan7___CACHE, i64 128), align 8, !alias.scope !47958, !noalias !47959, !noundef !41 ; 2 uses
  %i.tb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping17create_shape_plan7___CACHE, i64 120), align 8, !alias.scope !47958, !noalias !47959, !nonnull !41, !noundef !41 ; 2 uses
  %i.tc = insertelement <16 x i8> poison, i8 %i.sz, i64 0
  %i.td = shufflevector <16 x i8> %i.tc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bi
  %.sroa.9.0.i.i.i40.i.i.i = phi i64 [ 0, %bb.bi ], [ %i.tw, %bb.bl ]
  %.pn.i.i41.i.i.i = phi i64 [ %i.sx, %bb.bi ], [ %i.tx, %bb.bl ]
  %.sroa.01.0.i.i.i42.i.i.i = and i64 %.pn.i.i41.i.i.i, %i.ta ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 %.sroa.01.0.i.i.i42.i.i.i
  %.sroa.0.0.copyload.i24.i.i43.i.i.i = load <16 x i8>, ptr %i.te, align 1, !noalias !47960 ; 2 uses
  %i.tf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i43.i.i.i, %i.td
  %i.tg = bitcast <16 x i1> %i.tf to i16          ; 2 uses
  %.not.i.not30.i.i44.i.i.i = icmp eq i16 %i.tg, 0
  br i1 %.not.i.not30.i.i44.i.i.i, label %._crit_edge.i.i49.i.i.i, label %.lr.ph.i.i45.i.i.i

.lr.ph.i.i45.i.i.i:                               ; preds = %bb.bj, %bb.bk
  %.sroa.06.0.i31.i.i46.i.i.i = phi i16 [ %i.tv, %bb.bk ], [ %i.tg, %bb.bj ] ; 3 uses
  %i.th = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i46.i.i.i, i1 true)
  %i.ti = zext nneg i16 %i.th to i64
  %i.tj = add i64 %.sroa.01.0.i.i.i42.i.i.i, %i.ti
  %i.tk = and i64 %i.tj, %i.ta
  %i.tl = sub nsw i64 0, %i.tk
  %i.tm = getelementptr inbounds [48 x i8], ptr %i.tb, i64 %i.tl ; 3 uses
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 -48
  %.val2.i.i.i47.i.i.i = load i64, ptr %i.tn, align 8, !noalias !47961, !noundef !41
  %i.to = getelementptr i8, ptr %i.tm, i64 -32
  %.val3.i.i.i.i.i.i = load i128, ptr %i.to, align 16, !noalias !47961
  %i.tp = icmp eq i64 %.sroa.8.1.i.i.i, %.val2.i.i.i47.i.i.i
  %i.tq = icmp eq i128 %i.sm, %.val3.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.tp, i1 %i.tq, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.bk, !prof !43

._crit_edge.i.i49.i.i.i:                          ; preds = %bb.bk, %bb.bj
  %i.tr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i43.i.i.i, splat (i8 -1)
  %i.ts = bitcast <16 x i1> %i.tr to i16
  %i.tt = icmp eq i16 %i.ts, 0
  br i1 %i.tt, label %bb.bl, label %_RNvMs_NtCsloFShupyl5J_6comemo4treeINtB4_8CallTreeINtNvNtB6_5inputs3_1__9MultiCalluuuuuEINtNtB6_7memoize10CacheEntryBL_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEEE4linkCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.outer314.backedge, !prof !44

bb.bk:                                            ; preds = %.lr.ph.i.i45.i.i.i
  %i.tu = add i16 %.sroa.06.0.i31.i.i46.i.i.i, -1
  %i.tv = and i16 %i.tu, %.sroa.06.0.i31.i.i46.i.i.i ; 2 uses
  %.not.i.not.i.i48.i.i.i = icmp eq i16 %i.tv, 0
  br i1 %.not.i.not.i.i48.i.i.i, label %._crit_edge.i.i49.i.i.i, label %.lr.ph.i.i45.i.i.i

bb.bl:                                            ; preds = %._crit_edge.i.i49.i.i.i
  %i.tw = add i64 %.sroa.9.0.i.i.i40.i.i.i, 16    ; 2 uses
  %i.tx = add i64 %.sroa.01.0.i.i.i42.i.i.i, %i.tw
  br label %bb.bj

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.lr.ph.i.i45.i.i.i
end_hunk_17
