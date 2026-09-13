Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0Cs9fPPV5zPXBl_5typst:bb.a

bb.am:                                            ; preds = %.noexc6.i.i.i.i, %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE8new_lifoCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %i.et = phi ptr [ %.pre.i.i.i.i.i, %.noexc6.i.i.i.i ], [ %i.eq, %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE8new_lifoCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ] ; 3 uses
  %i.eu = atomicrmw add ptr %i.et, i64 1 monotonic, align 8, !noalias !25384
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %bb.an, label %.noexc3.i.i.i.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.trap()
  unreachable

.noexc3.i.i.i.i:                                  ; preds = %bb.am
  %i.ew = load i8, ptr %i.ef, align 8, !range !53, !noalias !25383, !noundef !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !25367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !25367
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  %i.ex = icmp ult i64 %i.ei, 288230376151711744
  call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %i.dz, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.i.i.i.i, i64 32, i1 false), !noalias !25385
  %i.ez = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %i.fa = icmp ult i64 %i.eh, 576460752303423488
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.eh ; 2 uses
  store ptr %i.et, ptr %i.fb, align 8, !noalias !25386
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i8 %i.ew, ptr %i.fc, align 8, !noalias !25386
  %i.fd = add nuw nsw i64 %i.eh, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ej, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendCs9fPPV5zPXBl_5typst.exit.loopexit.i.i.i.i, label %bb.af

.loopexit.i.i.i.i:                                ; preds = %bb.al
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !25367
  store i64 %i.eh, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !25367
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.ad
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.ak
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.es, %bb.ak ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIBD_INtB1c_7StealerB1W_EEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #62
          to label %.body67.i.i.i unwind label %bb.ao, !noalias !25370

_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendCs9fPPV5zPXBl_5typst.exit.loopexit.i.i.i.i: ; preds = %.noexc3.i.i.i.i
  store i64 %i.ez, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !25367
  store i64 %i.fd, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !25367
  br label %bb.ap

bb.ao:                                            ; preds = %.body.i.i.i.i
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !25370
  unreachable

bb.ap:                                            ; preds = %_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendCs9fPPV5zPXBl_5typst.exit.loopexit.i.i.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !25387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !25367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !25352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !25352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !25352
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25388
  store i64 0, ptr %i.d, align 8, !alias.scope !25389, !noalias !25388
  %.sroa.4.0..sroa_idx2.i.i69.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i.i69.i.i.i, align 8, !alias.scope !25389, !noalias !25388
  %.sroa.5.0..sroa_idx3.i.i70.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i71.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i70.i.i.i, i8 0, i64 16, i1 false), !alias.scope !25389, !noalias !25388
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i71.i.i.i, align 8, !alias.scope !25389, !noalias !25388
  %.sroa.3.0..sroa_idx.i.i72.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 5 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i72.i.i.i, align 8, !alias.scope !25389, !noalias !25388
  call void @llvm.experimental.noalias.scope.decl(metadata !25390)
  br i1 %.not.not.i.i.not.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i82.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef 0, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 32)
          to label %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i75.i.i.i unwind label %.loopexit.split-lp.i73.i.i.i, !noalias !25391

_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i75.i.i.i: ; preds = %bb.aq
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.fh = load i64, ptr %.sroa.3.0..sroa_idx.i.i72.i.i.i, align 8, !alias.scope !25392, !noalias !25388, !noundef !28 ; 3 uses
  %i.fi = load i64, ptr %i.fg, align 8, !range !37, !alias.scope !25392, !noalias !25388, !noundef !28
  %i.fj = sub i64 %i.fi, %i.fh
  %i.fk = icmp ugt i64 %..i.i.i.i, %i.fj
  br i1 %i.fk, label %bb.ar, label %.lr.ph.i.i.i.i.i76.i.i.i, !prof !38

bb.ar:                                            ; preds = %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i75.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg, i64 noundef %i.fh, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %.noexc2.i.i.i.i unwind label %.loopexit.split-lp.i73.i.i.i, !noalias !25391

.noexc2.i.i.i.i:                                  ; preds = %bb.ar
  %.promoted8.i.i.i.pre.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i72.i.i.i, align 8, !alias.scope !25393, !noalias !25388
  br label %.lr.ph.i.i.i.i.i76.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i82.i.i.i: ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !25394)
  call void @llvm.experimental.noalias.scope.decl(metadata !25395)
  call void @llvm.experimental.noalias.scope.decl(metadata !25396)
  br label %bb.aw

.lr.ph.i.i.i.i.i76.i.i.i:                         ; preds = %.noexc2.i.i.i.i, %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i75.i.i.i
  %.sroa.3.0..sroa_idx.i.promoted.i.i.i.i = phi i64 [ %.promoted8.i.i.i.pre.i.i.i.i.i, %.noexc2.i.i.i.i ], [ %i.fh, %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i.i75.i.i.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fm = load ptr, ptr %.sroa.4.0..sroa_idx2.i.i69.i.i.i, align 8, !alias.scope !25393, !noalias !25388, !nonnull !28
  %i.fn = load ptr, ptr %.sroa.2.0..sroa_idx.i.i71.i.i.i, align 8, !alias.scope !25393, !noalias !25388, !nonnull !28
  %.promoted.i.i.i.i.i77.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i70.i.i.i, align 8, !alias.scope !25393, !noalias !25388
  br label %bb.as

bb.as:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i76.i.i.i
  %i.fo = phi i64 [ %.sroa.3.0..sroa_idx.i.promoted.i.i.i.i, %.lr.ph.i.i.i.i.i76.i.i.i ], [ %i.gb, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.fp = phi i64 [ %.promoted.i.i.i.i.i77.i.i.i, %.lr.ph.i.i.i.i.i76.i.i.i ], [ %i.fx, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.07.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i76.i.i.i ], [ %i.ft, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25397
  invoke fastcc void @_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE8new_fifoCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c)
          to label %.noexc3.i80.i.i.i unwind label %.loopexit.i78.i.i.i, !noalias !25391

.noexc3.i80.i.i.i:                                ; preds = %bb.as
  %i.fq = load ptr, ptr %i.c, align 8, !noalias !25397, !nonnull !28, !noundef !28 ; 2 uses
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !25398
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.at, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.noexc3.i80.i.i.i
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc3.i80.i.i.i
  %i.ft = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fu = load i8, ptr %i.fl, align 8, !range !53, !noalias !25397, !noundef !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !25399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25397
  %i.fv = icmp ult i64 %i.fp, 288230376151711744
  call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !25400
  %i.fx = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %i.fy = icmp ult i64 %i.fo, 576460752303423488
  call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %i.fo ; 2 uses
  store ptr %i.fq, ptr %i.fz, align 8, !noalias !25401
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i8 %i.fu, ptr %i.ga, align 8, !noalias !25401
  %i.gb = add nuw nsw i64 %i.fo, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i81.i.i.i = icmp eq i64 %i.ft, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i81.i.i.i, label %_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnEs_0EE6extendCs9fPPV5zPXBl_5typst.exit.loopexit.i.i.i.i, label %bb.as

.loopexit.i78.i.i.i:                              ; preds = %bb.as
  %lpad.loopexit.i79.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.fp, ptr %.sroa.5.0..sroa_idx3.i.i70.i.i.i, align 8, !noalias !25388
  store i64 %i.fo, ptr %.sroa.3.0..sroa_idx.i.i72.i.i.i, align 8, !noalias !25388
  br label %bb.au

.loopexit.split-lp.i73.i.i.i:                     ; preds = %bb.ar, %bb.aq
  %lpad.loopexit.split-lp.i74.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp.i73.i.i.i, %.loopexit.i78.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i79.i.i.i, %.loopexit.i78.i.i.i ], [ %lpad.loopexit.split-lp.i74.i.i.i, %.loopexit.split-lp.i73.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIBD_INtB1c_7StealerB1W_EEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #62
          to label %bb.dg unwind label %bb.av, !noalias !25391

_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnEs_0EE6extendCs9fPPV5zPXBl_5typst.exit.loopexit.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i
  store i64 %i.fx, ptr %.sroa.5.0..sroa_idx3.i.i70.i.i.i, align 8, !noalias !25388
  store i64 %i.gb, ptr %.sroa.3.0..sroa_idx.i.i72.i.i.i, align 8, !noalias !25388
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !25391
  unreachable

bb.aw:                                            ; preds = %_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnEs_0EE6extendCs9fPPV5zPXBl_5typst.exit.loopexit.i.i.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE14extend_reserveCs9fPPV5zPXBl_5typst.exit.i.i82.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !25352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !25352
  %i.gd = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 24, i1 false), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !25352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !25352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !25352
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !25352, !nonnull !28, !noundef !28 ; 6 uses
  %i.gg = load i64, ptr %i.ad, align 8, !range !37, !noalias !25352, !noundef !28 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !25352, !noundef !28 ; 7 uses
  %i.gj = icmp ult i64 %i.gi, 576460752303423488
  call void @llvm.assume(i1 %i.gj)
  %.idx.i.i.i = shl nuw nsw i64 %i.gi, 4          ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i.i
  store ptr %i.gf, ptr %i.x, align 8, !noalias !25352
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.gf, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.gg, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %.sroa.65.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.gk, ptr %.sroa.65.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %i.gl = mul i64 %i.gi, 48                       ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp samesign ugt i64 %i.gi, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i, label %2, label %bb.ax, !prof !61

bb.ax:                                            ; preds = %bb.aw
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsf1gSX8u3EQ2_10rayon_core8registry10ThreadInfoE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.ax
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !25402
  %i.gn = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.gl, i64 noundef range(i64 1, 17) 8) #56, !noalias !25402 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %2, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsf1gSX8u3EQ2_10rayon_core8registry10ThreadInfoE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

2:                                                ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.aw
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.aw ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.gl) #61
          to label %.noexc.i.i.i.i unwind label %bb.ba, !noalias !25403

.noexc.i.i.i.i:                                   ; preds = %2
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsf1gSX8u3EQ2_10rayon_core8registry10ThreadInfoE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.ax
  %3 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ax ], [ %i.gn, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.ax ], [ %i.gi, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 2 uses
  %4 = icmp samesign ule i64 %i.gi, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %4)
  %.not.not10.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not.not10.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsf1gSX8u3EQ2_10rayon_core8registry10ThreadInfoE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.gp = add nsw i64 %.idx.i.i.i, -16            ; 3 uses
  %i.gq = lshr exact i64 %i.gp, 4
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %i.gs = icmp eq i64 %i.gp, 0
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.gr, 2305843009213693950
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new
  %i.gt = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gu = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.hf, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !25404, !nonnull !28, !noundef !28
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gx = load i8, ptr %i.gw, align 8, !range !53, !noalias !25404, !noundef !28
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gz = getelementptr inbounds nuw [48 x i8], ptr %3, i64 %i.gt ; 5 uses
  store ptr %i.gv, ptr %i.gz, align 8, !noalias !25405
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i8 %i.gx, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !25405
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ha, i8 0, i64 14, i1 false), !noalias !25406
  %i.hb = getelementptr i8, ptr %i.gz, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hb, i8 0, i64 10, i1 false), !noalias !25406
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !25405
  %i.hc = load ptr, ptr %i.gy, align 8, !noalias !25404, !nonnull !28, !noundef !28
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.he = load i8, ptr %i.hd, align 8, !range !53, !noalias !25404, !noundef !28
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gu, i64 32 ; 2 uses
  %i.hg = getelementptr inbounds nuw [48 x i8], ptr %3, i64 %i.gt ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  store ptr %i.hc, ptr %i.hh, align 8, !noalias !25405
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  store i8 %i.he, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !25405
  %i.hi = getelementptr i8, ptr %i.hg, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.hi, i8 0, i64 14, i1 false), !noalias !25406
  %i.hj = getelementptr i8, ptr %i.hg, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hj, i8 0, i64 10, i1 false), !noalias !25406
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.hg, i64 92
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 4, !noalias !25405
  %i.hk = add nuw nsw i64 %i.gt, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.hl = and i64 %i.gp, 16
  %lcmp.mod.not.not = icmp eq i64 %i.hl, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hk, %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init375 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hf, %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod377 = trunc i64 %i.gr to i1
  call void @llvm.assume(i1 %lcmp.mod377)
  %i.hm = load ptr, ptr %.epil.init375, align 8, !noalias !25404, !nonnull !28, !noundef !28
  %i.hn = getelementptr inbounds nuw i8, ptr %.epil.init375, i64 8
  %i.ho = load i8, ptr %i.hn, align 8, !range !53, !noalias !25404, !noundef !28
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %3, i64 %.epil.init ; 5 uses
  store ptr %i.hm, ptr %i.hp, align 8, !noalias !25405
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i8 %i.ho, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !25405
  %i.hq = getelementptr i8, ptr %i.hp, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.hq, i8 0, i64 14, i1 false), !noalias !25406
  %i.hr = getelementptr i8, ptr %i.hp, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hr, i8 0, i64 10, i1 false), !noalias !25406
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.hp, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 4, !noalias !25405
  %i.hs = add nuw nsw i64 %.epil.init, 1
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsf1gSX8u3EQ2_10rayon_core8registry10ThreadInfoE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %.sroa.42.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsf1gSX8u3EQ2_10rayon_core8registry10ThreadInfoE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i ], [ %i.hk, %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ht = icmp eq i64 %i.gg, 0
  br i1 %i.ht, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.hu = shl nuw i64 %i.gg, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gf, i64 noundef %i.hu, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !25404
  br label %bb.bc

bb.az:                                            ; preds = %bb.ba
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !25403
  unreachable

bb.ba:                                            ; preds = %2
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.x)
          to label %.thread130.i.i.i unwind label %bb.az, !noalias !25407

bb.bb:                                            ; preds = %bb.da
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i.i.i

bb.bc:                                            ; preds = %bb.ay, %._crit_edge.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.y, align 8, !noalias !25408
  %.sroa.4123.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %3, ptr %.sroa.4123.0..sroa_idx.i.i.i, align 8, !noalias !25408
  %.sroa.5124.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i, ptr %.sroa.5124.0..sroa_idx.i.i.i, align 8, !noalias !25408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25352
  invoke void @_RNvMNtCsf1gSX8u3EQ2_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, i64 noundef %..i.i.i.i)
          to label %bb.be unwind label %bb.bd, !noalias !25351

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core5sleep5SleepECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.bh, %bb.bg, %bb.bd
  %.pn.i.i.i = phi { ptr, i32 } [ %i.hy, %bb.bd ], [ %i.ib, %bb.bg ], [ %i.ib, %bb.bh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsf1gSX8u3EQ2_10rayon_core8registry10ThreadInfoEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #62
          to label %.thread130.i.i.i unwind label %bb.db, !noalias !25351

bb.bd:                                            ; preds = %bb.bc
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core5sleep5SleepECs9fPPV5zPXBl_5typst.exit.i.i.i

bb.be:                                            ; preds = %bb.bc
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !25351
  %i.hz = call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #56, !noalias !25351 ; 3 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.bf, label %_RNvMsc_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_5BlockNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3newCs9fPPV5zPXBl_5typst.exit.i.i.i, !prof !38

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #61
          to label %.noexc89.i.i.i unwind label %bb.bg, !noalias !25351

.noexc89.i.i.i:                                   ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val58.i.i.i = load i64, ptr %i.w, align 8, !noalias !25352 ; 2 uses
  %i.ic = icmp eq i64 %.val58.i.i.i, 0
  br i1 %i.ic, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core5sleep5SleepECs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.id = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val59.i.i.i = load ptr, ptr %i.id, align 8, !noalias !25352, !nonnull !28, !noundef !28
  %i.ie = shl nuw i64 %.val58.i.i.i, 7
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59.i.i.i, i64 noundef %i.ie, i64 noundef range(i64 1, -9223372036854775807) 128) #56, !noalias !25351
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core5sleep5SleepECs9fPPV5zPXBl_5typst.exit.i.i.i

_RNvMsc_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_5BlockNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3newCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539.i.i.i)
  %.sroa.539.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.539.i.i.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.539.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !25352
  %i.if = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.af, i64 72 ; 2 uses
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !25352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !25352
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !25352
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.539.i.i.i, i64 27, i1 false), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.539.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25352
  store i64 1, ptr %i.l, align 128, !noalias !25352
  %i.ii = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.ii, align 8, !noalias !25352
  %i.ij = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i64 0, ptr %i.ij, align 128, !noalias !25352
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store ptr %i.hz, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 128, !noalias !25352
  %.sroa.0.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  store ptr %i.hz, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %.sroa.0.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 384
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx.i.i.i, align 128, !noalias !25352
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 388
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i.i.i, align 4, !noalias !25352
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 416
  %i.ik = load <2 x ptr>, ptr %i.if, align 8, !alias.scope !25350, !noalias !25351
  store ptr null, ptr %i.if, align 8, !alias.scope !25350, !noalias !25351
  store <2 x ptr> %i.ik, ptr %.sroa.5.0..sroa_idx.i.i.i, align 32, !noalias !25352
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.il = load <2 x ptr>, ptr %i.ig, align 8, !alias.scope !25350, !noalias !25351
  store ptr null, ptr %i.ig, align 8, !alias.scope !25350, !noalias !25351
  store <2 x ptr> %i.il, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !noalias !25352
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  %i.im = load <2 x ptr>, ptr %i.ih, align 8, !alias.scope !25350, !noalias !25351
  store ptr null, ptr %i.ih, align 8, !alias.scope !25350, !noalias !25351
  store <2 x ptr> %i.im, ptr %.sroa.9.0..sroa_idx.i.i.i, align 64, !noalias !25352
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  store i64 1, ptr %.sroa.11.0..sroa_idx.i.i.i, align 16, !noalias !25352
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !25409
  %i.in = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #56, !noalias !25409 ; 3 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.bi, label %bb.bn, !prof !29

bb.bi:                                            ; preds = %_RNvMsc_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_5BlockNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3newCs9fPPV5zPXBl_5typst.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #61
          to label %.noexc90.i.i.i unwind label %bb.bj, !noalias !25351

.noexc90.i.i.i:                                   ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 128 dereferenceable(640) %i.l) #62
          to label %.thread130.i.i.i unwind label %bb.bk, !noalias !25351

bb.bk:                                            ; preds = %bb.bj
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !25351
  unreachable

bb.bl:                                            ; preds = %.critedge.i.i.i, %bb.bm
  %.pn48.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn48.pn.i.i.i, %.critedge.i.i.i ], [ %i.ir, %bb.bm ]
  invoke void @_RNvXs3_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_10TerminatorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core8registry10TerminatorECs9fPPV5zPXBl_5typst.exit.i.i.i unwind label %bb.db, !noalias !25351

bb.bm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsf1gSX8u3EQ2_10rayon_core8registry13ThreadBuilderECs9fPPV5zPXBl_5typst.exit.i.i, %bb.bv
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %_RNvMsc_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_5BlockNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3newCs9fPPV5zPXBl_5typst.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.in, ptr noundef nonnull align 128 dereferenceable(640) %i.l, i64 640, i1 false), !noalias !25351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !25352
  store ptr %i.in, ptr %i.z, align 8, !noalias !25352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !25352
  store ptr %i.z, ptr %i.v, align 8, !noalias !25352
  %i.is = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !noalias !25352, !nonnull !28, !noundef !28 ; 4 uses
  %i.iu = load i64, ptr %i.ae, align 8, !range !37, !noalias !25352, !noundef !28
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !25352, !noundef !28 ; 3 uses
  %i.ix = icmp ult i64 %i.iw, 288230376151711744
  call void @llvm.assume(i1 %i.ix)
  %.idx240.i.i.i = shl nuw nsw i64 %i.iw, 5
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 %.idx240.i.i.i ; 3 uses
  %.sroa.0115.0.copyload.i.i.i = load i64, ptr %i.ab, align 8, !noalias !25352
  %.sroa.4116.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4116.0.copyload.i.i.i = load ptr, ptr %.sroa.4116.0..sroa_idx.i.i.i, align 8, !noalias !25352, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.5117.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5117.0.copyload.i.i.i = load i64, ptr %.sroa.5117.0..sroa_idx.i.i.i, align 8, !noalias !25352 ; 2 uses
  %i.iz = icmp ult i64 %.sroa.5117.0.copyload.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4116.0.copyload.i.i.i, i64 %.sroa.5117.0.copyload.i.i.i ; 3 uses
  %.sroa.08.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !25352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !25352
  store ptr %i.it, ptr %i.u, align 8, !noalias !25352
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 8 uses
  %.sroa.08.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.iu, ptr %.sroa.08.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %.sroa.08.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.iy, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %.sroa.08.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %.sroa.4116.0.copyload.i.i.i, ptr %.sroa.08.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %.sroa.08.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 8 uses
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 %.sroa.0115.0.copyload.i.i.i, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.ja, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !25352
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25410
  %i.jb = icmp eq i64 %i.iw, 0
  br i1 %i.jb, label %.loopexit.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.lr.ph.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.lr.ph.i.i.i: ; preds = %bb.bn
  %.sroa.522.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %.sroa.421.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.12120.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.jc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.je = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.jf = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.jj = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.jl = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.jm = getelementptr inbounds nuw i8, ptr %i.af, i64 90
  %i.jn = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.lr.ph.i.i.i
  %i.jo = phi ptr [ %i.it, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.lr.ph.i.i.i ], [ %i.js, %.backedge.i.i.i ] ; 5 uses
  %i.jp = phi ptr [ %.sroa.4116.0.copyload.i.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.lr.ph.i.i.i ], [ %i.jy, %.backedge.i.i.i ] ; 5 uses
  %i.jq = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.lr.ph.i.i.i ], [ %.be.i.i.i, %.backedge.i.i.i ] ; 4 uses
  %i.jr = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.lr.ph.i.i.i ], [ %i.kc, %.backedge.i.i.i ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 32 ; 10 uses
  %.sroa.5.0..sroa_idx12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %.sroa.5.0.copyload13.i.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i, align 8, !noalias !25411 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.5.0.copyload13.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs66IsRtDrrKP_15crossbeam_deque5deque6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx14.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 25 ; 2 uses
end_hunk_0
