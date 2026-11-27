Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.02?download=true
inline.NumInlined: 801
inline.NumDeleted: 529
begin_hunk_0_@_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1P_8adapters10filter_map19filter_map_try_foldBX_INtNtB1R_6result6ResultBX_NtNtB11_5error5ErrorEB2N_INtNtNtB1R_3ops12control_flow11ControlFlowIB4o_B2N_zEB2N_ENCNvMs0_NtB11_10repositoryNtB6g_10Repository23find_pack_with_snapshot0NCINvXB3y_INtB3y_12GenericShuntINtB3w_9FilterMapBI_B68_EIB4o_zB4N_EEB1J_8try_foldB2N_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B5S_E0E0B5c_EB13_:bb.a

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread: ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.y

.body.i:                                          ; preds = %.loopexit.split-lp, %bb.t
  %eh.lpad-body9.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %.loopexit.split-lp ], [ %i.ay, %bb.t ]
  resume { ptr, i32 } %eh.lpad-body9.i

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.m, %.body.i.i.i, %bb.e
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ab, %bb.e ], [ %lpad.thr_comm.split-lp.i.i, %bb.p ], [ %i.as, %bb.m ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #18
          to label %.body.i unwind label %bb.v, !noalias !600

bb.v:                                             ; preds = %.loopexit.split-lp
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !600
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit: ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !600
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.047, align 8, !noalias !612
  %.sroa.10.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.047, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !600
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4.047, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load ptr, ptr %i.i, align 8
  %.pre60 = load ptr, ptr %i.j, align 8
  br label %bb.y

._crit_edge:                                      ; preds = %bb.y, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %3, %bb.a ], [ %.sroa.811.020, %bb.y ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.bd, align 8, !alias.scope !613
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa, ptr %i.be, align 8, !alias.scope !613
  store i64 0, ptr %0, align 8, !alias.scope !613
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.x
  ret void

bb.x:                                             ; preds = %bb.r, %bb.s
  store <2 x i64> %i.aa, ptr %.val2.le, align 8, !noalias !612
  %.sroa.10.24..sroa.59.0..8.val.sroa_idx10.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.24..sroa.59.0..8.val.sroa_idx10.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !600
  %.sroa.611.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 32
  %.sroa.10.48..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..8.val.sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.48..sroa_idx6.i, i64 24, i1 false), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.bf, align 8, !alias.scope !614
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.047, ptr %i.bg, align 8, !alias.scope !614
  store i64 1, ptr %0, align 8, !alias.scope !614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.y:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread
  %i.bh = phi ptr [ %i.w, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread ], [ %.pre60, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit ] ; 2 uses
  %i.bi = phi ptr [ %i.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread ], [ %.pre, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit ] ; 2 uses
  %.sroa.811.020 = phi ptr [ %.sroa.4.047, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread ], [ %i.bc, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq ptr %i.bh, %i.bi
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1P_8adapters6filter15filter_try_foldBX_B2N_INtNtB1R_6result6ResultB2N_zENCNCNvMs0_NtB11_10repositoryNtB4V_10Repository11loose_packs00NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4i_EB13_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not12 = icmp eq ptr %i.g, %i.f
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.pre14 = load ptr, ptr %3, align 8, !noalias !619
  %.val.i.pre = load ptr, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit
  %i.k = phi ptr [ %i.f, %.lr.ph ], [ %i.v, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %.val.i = phi ptr [ %.val.i.pre14, %.lr.ph ], [ %.val.i15, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %i.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %.sroa.4.013 = phi ptr [ %2, %.lr.ph ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store ptr %.sroa.4.013, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !619
  store ptr %.sroa.4.013, ptr %i.j, align 8, !noalias !619
  %i.n = load ptr, ptr %.val.i, align 8, !noalias !620, !nonnull !5, !align !9, !noundef !5
  %i.o = invoke noundef zeroext i1 @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13is_pack_loose(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i unwind label %bb.g

_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i: ; preds = %bb.b
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.c
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.f:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 24
  %.pre = load ptr, ptr %i.d, align 8
  %.pre17 = load ptr, ptr %i.e, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #18
          to label %.thread.i unwind label %bb.h

bb.h:                                             ; preds = %.thread.i, %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.i:                                             ; preds = %.thread.i, %bb.d
  %.pn3.i = phi { ptr, i32 } [ %i.s, %.thread.i ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %.pn3.i

.thread.i:                                        ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %bb.i unwind label %bb.h

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.f
  %i.u = phi ptr [ %.pre17, %bb.f ], [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %.pre, %bb.f ], [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i ] ; 2 uses
  %.val.i15 = phi ptr [ %.val.i.pre, %bb.f ], [ %.val.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i ]
  %.pn6.i = phi ptr [ %i.r, %bb.f ], [ %.sroa.4.013, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %i.w = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.x = insertvalue { ptr, ptr } %i.w, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldBX_INtNtB1G_6result6ResultAhj14_NtNtNtB1G_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBY_E0NCINvNvB1y_8for_each4callB3b_NCINvMsk_B8_INtB8_3VecB3b_E14extend_trustedINtB2E_3MapBI_B45_EE0E0E0EB4c_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 1                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [20 x i8], align 4                ; 8 uses
  %i.h = alloca [104 x i8], align 8               ; 7 uses
  %i.i = alloca [20 x i8], align 1                ; 8 uses
  %i.j = alloca [104 x i8], align 8               ; 5 uses
  %i.k = alloca [104 x i8], align 8               ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i = alloca [7 x i8], align 1           ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.p, align 8        ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not.not26 = icmp eq ptr %.promoted, %i.q
  br i1 %.not.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.6.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %.sroa.7.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted28 = load i64, ptr %i.af, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit
  %i.ag = phi i64 [ %.promoted28, %.lr.ph ], [ %i.co, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit ] ; 3 uses
  %i.ah = phi ptr [ %.promoted, %.lr.ph ], [ %i.aj, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit ] ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !9, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !674
  invoke void @_RINvNtCsaL1QbXo9JQH_3std2fs4readRNtNtB4_4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %.noexc unwind label %.loopexit, !noalias !675

.noexc:                                           ; preds = %bb.b
  %i.ak = load i64, ptr %i.l, align 8, !range !4, !noalias !674, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  %i.am = load ptr, ptr %i.r, align 8, !noalias !674 ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !674
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit

bb.d:                                             ; preds = %.noexc
  %.sroa.59.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !674
  store i64 %i.ak, ptr %i.m, align 8, !noalias !674
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !674
  store i64 %.sroa.59.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !674
  invoke void @_RNvXs1_Cs6kU8M6Zwtah_12block_bufferINtB5_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtCs3oUPovFnLWP_4core7default7Default7defaultCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([65 x i8]) align 1 captures(none) dereferenceable(65) %i.s)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !675

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, %_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, %.noexc22.i.i, %bb.j, %.noexc20.i.i, %.noexc19.i.i, %.noexc18.i.i, %._crit_edge.thread.i.i.i.i.i, %bb.i, %bb.h, %.noexc14.i.i, %bb.g, %.noexc.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, %bb.d
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #18
          to label %bb.r unwind label %bb.n, !noalias !675

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.k, align 8, !alias.scope !676, !noalias !674
  store i64 -1167088121787636991, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !676, !noalias !674
  store i64 1167088121787636990, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !676, !noalias !674
  store i32 -1009589776, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !676, !noalias !674
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !678, !noalias !674, !nonnull !5, !noundef !5 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !678, !noalias !674, !noundef !5 ; 6 uses
  %i.an = load i8, ptr %i.t, align 8, !alias.scope !679, !noalias !674, !noundef !5 ; 3 uses
  %i.ao = zext nneg i8 %i.an to i64               ; 4 uses
  %i.ap = icmp ult i8 %i.an, 64
  call void @llvm.assume(i1 %i.ap)
  %i.aq = sub nuw nsw i64 64, %i.ao               ; 5 uses
  %i.ar = icmp samesign ult i64 %.val1.i.i.i.i, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = icmp eq i8 %i.an, 0
  br i1 %i.as, label %.noexc13.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

.noexc13.i.i:                                     ; preds = %.noexc.i.i, %bb.f
  %.sroa.6.0.i.i.i.i.i = phi i64 [ %.val1.i.i.i.i, %bb.f ], [ %i.ba, %.noexc.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i, %bb.f ], [ %i.az, %.noexc.i.i ] ; 2 uses
  %i.at = lshr i64 %.sroa.6.0.i.i.i.i.i, 6        ; 3 uses
  %i.au = and i64 %.sroa.6.0.i.i.i.i.i, 9223372036854775744
  %i.av = and i64 %.sroa.6.0.i.i.i.i.i, 63        ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 %i.au
  %i.ax = icmp eq i64 %i.at, 0
  br i1 %i.ax, label %.noexc14.i.i, label %bb.g

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ao
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %i.ay, i64 noundef %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !680

.noexc.i.i:                                       ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.aq
  %i.ba = sub nuw nsw i64 %.val1.i.i.i.i, %i.aq
  %i.bb = load i64, ptr %i.k, align 8, !alias.scope !681, !noalias !682, !noundef !5
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.k, align 8, !alias.scope !681, !noalias !682
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %i.s, i64 noundef range(i64 1, 144115188075855872) 1)
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !680

bb.g:                                             ; preds = %.noexc13.i.i
  %i.bd = load i64, ptr %i.k, align 8, !alias.scope !683, !noalias !684, !noundef !5
  %i.be = add i64 %i.bd, %i.at
  store i64 %i.be, ptr %i.k, align 8, !alias.scope !683, !noalias !684
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i, i64 noundef range(i64 1, 144115188075855872) %i.at)
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !680

.noexc14.i.i:                                     ; preds = %bb.g, %.noexc13.i.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull dereferenceable(65) %i.s, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !680

bb.h:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ao
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %i.bf, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !680

.noexc16.i.i:                                     ; preds = %bb.h
  %i.bg = add nuw nsw i64 %.val1.i.i.i.i, %i.ao
  br label %bb.i

bb.i:                                             ; preds = %.noexc16.i.i, %.noexc14.i.i
  %storemerge.in.i.i.i.i.i = phi i64 [ %i.bg, %.noexc16.i.i ], [ %i.av, %.noexc14.i.i ]
  %storemerge.i.i.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i.i.i to i8
  store i8 %storemerge.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !679, !noalias !674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false), !noalias !674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !685
  invoke void @_RINvXsg_Cs1XKMWD4UPJk_13generic_arrayINtB6_12GenericArrayhINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB1Y_2B0EB1W_EB2b_EB2b_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCs3oUPovFnLWP_4core7default7Default7default0ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([20 x i8]) align 1 captures(none) dereferenceable(20) %i.i)
          to label %.noexc17.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !686

.noexc17.i.i:                                     ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.j, i64 104, i1 false), !noalias !687
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.bh = load i8, ptr %i.v, align 8, !alias.scope !691, !noalias !685, !noundef !5 ; 3 uses
  %i.bi = zext nneg i8 %i.bh to i64               ; 4 uses
  %i.bj = icmp ult i8 %i.bh, 64
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i64, ptr %i.h, align 8, !alias.scope !692, !noalias !685, !noundef !5
  %i.bl = shl i64 %i.bk, 9
  %i.bm = shl nuw nsw i64 %i.bi, 3
  %i.bn = or disjoint i64 %i.bl, %i.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !693
  %i.bo = call i64 @llvm.bswap.i64(i64 %i.bn)
  store i64 %i.bo, ptr %i.d, align 8, !noalias !693
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bi ; 2 uses
  store i8 -128, ptr %i.bp, align 1, !alias.scope !695, !noalias !685
  %i.bq = icmp eq i8 %i.bh, 63
  br i1 %i.bq, label %._crit_edge.thread.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc17.i.i
  %i.br = getelementptr i8, ptr %i.bp, i64 1
  %i.bs = xor i64 %i.bi, 63
  call void @llvm.memset.p0.i64(ptr align 1 %i.br, i8 0, i64 %i.bs, i1 false), !alias.scope !695, !noalias !685
  %i.bt = xor i64 %i.bi, 56
  %i.bu = icmp samesign ult i64 %i.bt, 8
  br i1 %i.bu, label %._crit_edge.thread.i.i.i.i.i, label %bb.j

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %.noexc17.i.i
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %i.u, i64 noundef 1)
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !696

.noexc18.i.i:                                     ; preds = %._crit_edge.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !697
  invoke void @_RINvXsg_Cs1XKMWD4UPJk_13generic_arrayINtB6_12GenericArrayhINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBV_IBV_IBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCs3oUPovFnLWP_4core7default7Default7default0ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([64 x i8]) align 1 captures(none) dereferenceable(64) %i.c)
          to label %.noexc19.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !698

.noexc19.i.i:                                     ; preds = %.noexc18.i.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %i.y, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %.noexc20.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !696

.noexc20.i.i:                                     ; preds = %.noexc19.i.i
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.c, i64 noundef 1)
          to label %.noexc21.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !696

.noexc21.i.i:                                     ; preds = %.noexc20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !697
  br label %_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %i.x, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc22.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !696

.noexc22.i.i:                                     ; preds = %bb.j
  invoke void @_RNvNtCs18FmLiCbOr5_4sha18compress8compress(ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %i.u, i64 noundef 1)
          to label %_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !696

_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %.noexc22.i.i, %.noexc21.i.i
  store i8 0, ptr %i.v, align 8, !alias.scope !695, !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !699
  store ptr %i.z, ptr %i.b, align 8, !noalias !700
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !700
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !700
  store i64 20, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !700
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !693
  invoke void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull %i.g, ptr noundef nonnull %i.aa)
          to label %.noexc24.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !701

.noexc24.i.i:                                     ; preds = %_RINvMs4_Cs6kU8M6Zwtah_12block_bufferINtB6_11BlockBufferINtNtCs6q71FM3kdqy_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_Cs18FmLiCbOr5_4sha1NtB3l_8Sha1CoreNtNtCsl2BbkTbfUYR_6digest8core_api15FixedOutputCore19finalize_fixed_core0ECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !699
  %i.bv = load i64, ptr %i.ab, align 8, !alias.scope !702, !noalias !693, !noundef !5 ; 2 uses
  %i.bw = load i64, ptr %i.ac, align 8, !alias.scope !702, !noalias !693, !noundef !5
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, label %.loopexit1.i.i

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %.noexc24.i.i, %.noexc26.i.i
  %i.by = phi i64 [ %i.cg, %.noexc26.i.i ], [ %i.bv, %.noexc24.i.i ] ; 3 uses
  %i.bz = add nuw i64 %i.by, 1
  store i64 %i.bz, ptr %i.ab, align 8, !alias.scope !702, !noalias !693
  %i.ca = invoke { ptr, i64 } @_RNvXs1y_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %i.by)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !703 ; 2 uses

.noexc25.i.i:                                     ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %.loopexit1.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc25.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !702, !noalias !693, !nonnull !5, !noundef !5
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.by
  %i.cd = extractvalue { ptr, i64 } %i.ca, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !693
  %i.ce = load i32, ptr %i.cc, align 4, !noalias !701, !noundef !5
  %i.cf = call i32 @llvm.bswap.i32(i32 %i.ce)
  store i32 %i.cf, ptr %i.e, align 4, !noalias !693
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %i.cb, i64 noundef %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !701

.noexc26.i.i:                                     ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !693
  %i.cg = load i64, ptr %i.ab, align 8, !alias.scope !702, !noalias !693, !noundef !5 ; 2 uses
  %i.ch = load i64, ptr %i.ac, align 8, !alias.scope !702, !noalias !693, !noundef !5
  %i.ci = icmp ult i64 %i.cg, %i.ch
  br i1 %i.ci, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, label %.loopexit1.i.i

.loopexit1.i.i:                                   ; preds = %.noexc26.i.i, %.noexc25.i.i, %.noexc24.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !704
  %.sroa.6.1.copyload.i = load ptr, ptr %.sroa.6.1..sroa_idx.i, align 1, !noalias !705
  %.sroa.7.1.copyload.i = load i40, ptr %.sroa.7.1..sroa_idx.i, align 1, !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !674
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.l, !noalias !675

bb.l:                                             ; preds = %.loopexit1.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldBX_INtNtB1G_6result6ResultAhj14_NtNtNtB1G_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBY_E0NCINvNvB1y_8for_each4callB3b_NCINvMsk_B8_INtB8_3VecB3b_E14extend_trustedINtB2E_3MapBI_B45_EE0E0E0EB4c_:bb.a
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.p, !noalias !710

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !710
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldBX_INtNtB1R_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtB12_4repo5error5ErrorEuNCNvMs0_NtB4m_10repositoryNtB4T_10Repository18copy_loose_entries0NCINvNvB1J_8for_each4callB3m_NCINvMsk_B8_INtB8_3VecB3m_E14extend_trustedINtB2P_3MapBI_B4L_EE0E0E0EB12_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 17 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %.sroa.15.i = alloca [40 x i8], align 8         ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.k, align 8        ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not.not28 = icmp eq ptr %.promoted, %i.l
  br i1 %.not.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted29 = load i64, ptr %i.v, align 8
  %.val.i.pre = load ptr, ptr %i.m, align 8, !alias.scope !728 ; 2 uses
  %.val1.i.pre = load ptr, ptr %i.n, align 8, !alias.scope !728 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit
  %.val720 = phi i64 [ %.promoted29, %.lr.ph ], [ %i.cd, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit ] ; 3 uses
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.z, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !731
  store i64 0, ptr %i.h, align 8, !noalias !731
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !731
  store i64 0, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !731
  %i.aa = load ptr, ptr %.val.i.pre, align 8, !noalias !731, !nonnull !5, !noundef !5
  %i.ab = load i64, ptr %i.w, align 8, !noalias !731, !noundef !5
  invoke void @_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtB6_4PathECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab)
          to label %bb.c unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !731

.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i50.i.i, %bb.j, %bb.f, %bb.d, %bb.c, %bb.b, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.y)
          to label %bb.d unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !732

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !731, !nonnull !5, !noundef !5
  %i.ad = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !731, !noundef !5
  %i.ae = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
          to label %bb.e unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !732 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = invoke noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs14create_dir_allRNtNtB4_4path4PathECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag)
          to label %bb.i unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !732 ; 2 uses

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
          to label %bb.h unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !732

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %.not42.i.i = icmp eq ptr %i.ah, null
  br i1 %.not42.i.i, label %bb.j, label %bb.al

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !731
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.pre) ]
  %i.ai = load ptr, ptr %.val1.i.pre, align 8, !noalias !733, !nonnull !5, !align !9, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository17loose_object_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.aj)
          to label %bb.k unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !732

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !734, !noundef !5
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !734, !noundef !5
  %i.ap = invoke noundef ptr @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs12create_emptyRNtNtCsaL1QbXo9JQH_3std4path7PathBufEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i32 noundef %i.ao)
          to label %bb.o unwind label %bb.n, !noalias !732 ; 2 uses

bb.m:                                             ; preds = %bb.k
  %i.aq = invoke { i64, ptr } @_RINvNtCsaL1QbXo9JQH_3std2fs4copyRNtNtB4_4path7PathBufBu_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.v unwind label %bb.n, !noalias !732 ; 2 uses

bb.n:                                             ; preds = %bb.af, %bb.ad, %bb.m, %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i.i

.body55.i.i:                                      ; preds = %bb.aa, %bb.n
  %eh.lpad-body56.i.i = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %i.bm, %bb.aa ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %.thread.i.i unwind label %bb.ao, !noalias !732

bb.o:                                             ; preds = %bb.l
  %.not44.i.i = icmp eq ptr %i.ap, null
  br i1 %.not44.i.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.sroa.9.8.copyload2.i = load ptr, ptr %i.h, align 8, !noalias !735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427.0..sroa_idx.i.i, i64 16, i1 false), !noalias !736
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.q, !noalias !732

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread17 unwind label %bb.r, !noalias !732

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !732
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split unwind label %.thread23, !noalias !732

bb.s:                                             ; preds = %bb.ak, %bb.ag, %bb.o
  %.sroa.9.1.i = phi ptr [ %i.ap, %bb.o ], [ %i.bn, %bb.ak ], [ %i.bv, %bb.ag ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i50.i.i unwind label %bb.t, !noalias !732

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread.i.i unwind label %bb.u, !noalias !732

bb.u:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !732
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i50.i.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit54.i.i unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !732

bb.v:                                             ; preds = %bb.m
  %i.aw = extractvalue { i64, ptr } %i.aq, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.w, label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.ay = extractvalue { i64, ptr } %i.aq, 1      ; 7 uses
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !731 ; 2 uses
  %.val46.i.i = load i64, ptr %i.p, align 8, !noalias !731
  %.val47.i.i = load ptr, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !731 ; 2 uses
  %.val48.i.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !731
  %i.az = ptrtoint ptr %i.ay to i64               ; 4 uses
  %i.ba = and i64 %i.az, 3                        ; 2 uses
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.x
    i64 3, label %bb.y
    i64 0, label %bb.z
    i64 1, label %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit.thread21.i.i.i.i
  ], !prof !6

default.unreachable:                              ; preds = %bb.ab, %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i unwind label %bb.aa, !noalias !732

.noexc.i.i.i:                                     ; preds = %bb.x
  %i.bc = lshr i64 %i.az, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !732, !nonnull !5, !noundef !5
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i unwind label %bb.aa, !noalias !732, !inline_history !717

_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit.thread21.i.i.i.i: ; preds = %bb.w
  %2 = getelementptr i8, ptr %i.ay, i64 31
  %3 = load i8, ptr %2, align 8, !range !737, !noalias !732, !noundef !5
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bh = lshr i64 %i.az, 32
  %i.bi = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %i.bh to i8 ; 2 uses
  %i.bj = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bj)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.z:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !737, !noalias !732, !noundef !5
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.aa:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit.i.i.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i, %.noexc.i.i.i, %bb.x
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr nonnull %i.ay) #18
          to label %.body55.i.i unwind label %bb.ae, !noalias !732

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i: ; preds = %bb.z, %bb.y, %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit.thread21.i.i.i.i, %.noexc.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %3, %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit.thread21.i.i.i.i ], [ %switch.idx.cast.i.i.i.i.i.i, %bb.y ], [ %i.bl, %bb.z ], [ %i.bg, %.noexc.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !731
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  store ptr %.val.i.i, ptr %i.e, align 8, !noalias !731
  store i64 %.val46.i.i, ptr %i.q, align 8, !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !731
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val47.i.i) ]
  store ptr %.val47.i.i, ptr %i.d, align 8, !noalias !731
  store i64 %.val48.i.i, ptr %i.r, align 8, !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !731
  store ptr %i.e, ptr %i.c, align 8, !noalias !731
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !731
  store ptr %i.d, ptr %i.s, align 8, !noalias !731
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !731
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @6, ptr noundef nonnull %i.c)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.aa, !noalias !732

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !731
  %i.bn = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsfwHX9XeyMnn_4zstd(i8 noundef %.sroa.0.0.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ab unwind label %bb.aa, !noalias !732

bb.ab:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !731
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.ak
    i64 3, label %bb.ac
    i64 0, label %bb.ak
    i64 1, label %bb.ad
  ], !prof !6

bb.ac:                                            ; preds = %bb.ab
  %i.bo = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr)
  %i.bp = and i64 %i.az, 1095216660480
  %i.bq = icmp ne i64 %i.bp, 1095216660480
  call void @llvm.assume(i1 %i.bo)
  call void @llvm.assume(i1 %i.bq)
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  %i.br = getelementptr i8, ptr %i.ay, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %i.t, align 8, !alias.scope !738, !noalias !731
  store i8 3, ptr %i.b, align 8, !alias.scope !738, !noalias !731
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.ak unwind label %bb.n, !noalias !732

bb.ae:                                            ; preds = %bb.aa
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !732
  unreachable

bb.af:                                            ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.bu = load i32, ptr %i.bt, align 4, !alias.scope !734, !noundef !5
  %i.bv = invoke noundef ptr @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs13set_file_modeRNtNtCsaL1QbXo9JQH_3std4path7PathBufEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i32 noundef %i.bu)
          to label %bb.ag unwind label %bb.n, !noalias !732 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %.not43.i.i = icmp eq ptr %i.bv, null
  br i1 %.not43.i.i, label %bb.ah, label %bb.s

bb.ah:                                            ; preds = %bb.ag
  %.sroa.9.8.copyload.i = load ptr, ptr %i.h, align 8, !noalias !735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427.0..sroa_idx.i.i, i64 16, i1 false), !noalias !736
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i unwind label %bb.ai, !noalias !732

bb.ai:                                            ; preds = %bb.ah
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread17 unwind label %bb.aj, !noalias !732

bb.aj:                                            ; preds = %bb.ai
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !732
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split unwind label %.thread23, !noalias !732

bb.ak:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !731
  br label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit54.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i50.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !731
  br label %bb.al

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit54.i.i, %bb.i
  %.sroa.9.0.i = phi ptr [ %.sroa.9.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit54.i.i ], [ %i.ah, %bb.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i unwind label %bb.am, !noalias !732

bb.am:                                            ; preds = %bb.al
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread17 unwind label %bb.an, !noalias !732

bb.an:                                            ; preds = %bb.am
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !732
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit unwind label %.thread23, !noalias !732

bb.ao:                                            ; preds = %.thread.i.i, %.body55.i.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !732
  unreachable

.thread.i.i:                                      ; preds = %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %.body55.i.i
  %.pn4.i.i = phi { ptr, i32 } [ %eh.lpad-body56.i.i, %.body55.i.i ], [ %i.au, %bb.t ], [ %lpad.loopexit.split-lp, %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %.thread17 unwind label %bb.ao, !noalias !732

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i
  %.sroa.9.2.i.ph = phi ptr [ %.sroa.9.8.copyload2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i ], [ %.sroa.9.8.copyload.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !731
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i
  %.sroa.9.2.i = phi ptr [ %.sroa.9.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i ], [ %.sroa.9.2.i.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split ]
  %.sroa.0.2.i = phi i64 [ -9223372036854775808, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i ], [ -2, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !731
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.cb = load ptr, ptr %i.u, align 8, !alias.scope !741, !noundef !5
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.cb, i64 %.val720 ; 3 uses
  store i64 %.sroa.0.2.i, ptr %i.cc, align 8, !noalias !741
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %.sroa.9.2.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.i, i64 40, i1 false), !noalias !728
  %i.cd = add i64 %.val720, 1                     ; 2 uses
  store i64 %i.cd, ptr %i.v, align 8, !alias.scope !741
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %.not.not = icmp eq ptr %i.z, %i.l
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit, %bb.a
  %i.ce = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.cg, ptr %i.i, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ce, ptr %i.ch, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.ci, align 8, !noundef !5
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.aq:                                            ; preds = %.thread17
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

.thread23:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread17

bb.ar:                                            ; preds = %._crit_edge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.ck, align 8, !noundef !5
  store i64 %.val7, ptr %.val6, align 8
  br label %.thread

.thread:                                          ; preds = %bb.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1u_.exit
  %.pn16 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ar ], [ %eh.lpad-body21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1u_.exit ]
  resume { ptr, i32 } %.pn16

.thread17:                                        ; preds = %bb.q, %bb.ai, %bb.am, %.thread.i.i, %.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread23 ], [ %i.as, %bb.q ], [ %i.bw, %bb.ai ], [ %.pn4.i.i, %.thread.i.i ], [ %i.by, %bb.am ]
  %.val625 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  store i64 %.val720, ptr %.val625, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !742, !nonnull !5, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
