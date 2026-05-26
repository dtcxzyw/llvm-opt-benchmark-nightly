inline.NumInlined: 10669
inline.NumDeleted: 3626
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB2l_3map3MapINtNtNtB2p_5slice4iter4IterTB12_B12_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B43_NtB43_13RawDeltaTable21get_active_partitionss4_0ENCB4R_s5_0EE9from_iterB43_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s5_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %.not7.i.i = icmp eq ptr %i.o, null
  br i1 %.not7.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB22_3map3MapINtNtNtB26_5slice4iter4IterTBS_BS_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B3I_NtB3I_13RawDeltaTable21get_active_partitionss4_0ENCB4w_s5_0EE11spec_extendB3I_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc9
  %i.p = phi ptr [ %i.x, %.noexc9 ], [ %i.o, %.noexc ]
  %i.q = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !13789, !noalias !13794, !noundef !3 ; 5 uses
  %i.r = icmp ult i64 %i.q, 1152921504606846976
  call void @llvm.assume(i1 %i.r)
  %i.s = load i64, ptr %i.c, align 8, !range !9, !alias.scope !13789, !noalias !13794, !noundef !3
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, label %.noexc8

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.q, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %i.u = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13789, !noalias !13794, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.q
  store ptr %i.p, ptr %i.v, align 8
  %i.w = add nuw nsw i64 %i.q, 1
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !13789, !noalias !13794
  %i.x = invoke noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s5_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %.noexc8
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB22_3map3MapINtNtNtB26_5slice4iter4IterTBS_BS_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B3I_NtB3I_13RawDeltaTable21get_active_partitionss4_0ENCB4w_s5_0EE11spec_extendB3I_.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB22_3map3MapINtNtNtB26_5slice4iter4IterTBS_BS_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B3I_NtB3I_13RawDeltaTable21get_active_partitionss4_0ENCB4w_s5_0EE11spec_extendB3I_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, %.noexc8
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB22_3map3MapINtNtNtB26_5slice4iter4IterTBS_BS_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B3I_NtB3I_13RawDeltaTable21get_active_partitionss4_0ENCB4w_s5_0EE11spec_extendB3I_.exit: ; preds = %.noexc9, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13800)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !4240, !alias.scope !13803, !noundef !3
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !13803, !nonnull !3, !noundef !3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !13803, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13804)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !13807, !noalias !13808, !noundef !3 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.k, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !13807, !noalias !13808 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.l
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !13807, !noalias !13808, !noundef !3 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.pre.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !13807, !noalias !13808 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.t = phi i64 [ %i.ai, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.u = sub nuw i64 %i.k, %i.t                   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.t ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 16
  br i1 %i.w, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.x = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !13810
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.y = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.z = insertvalue { i64, i64 } %i.y, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ad, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.05.i.i.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !13811, !noalias !13810, !noundef !3
  %i.ac = icmp eq i8 %i.ab, %.pre.i.i.i
  br i1 %i.ac, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.z, %._crit_edge.i.i.i.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  %i.ag = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.ah = add i64 %i.t, 1
  %i.ai = add i64 %i.ah, %i.ag                    ; 7 uses
  store i64 %i.ai, ptr %i.i, align 8, !alias.scope !13807, !noalias !13808
  %.not12.i.i.i = icmp ult i64 %i.ai, %i.p
  %.not13.i.i.i = icmp ugt i64 %i.ai, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !13807, !noalias !13808
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aj = icmp ult i64 %i.k, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = sub nuw i64 %i.ai, %i.p                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ak
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.m, i64 %i.p), !noalias !13808
  %i.am = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.am, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !alias.scope !13803, !noundef !3 ; 2 uses
  %i.ao = sub nuw i64 %i.ak, %i.an
  store i64 %i.ai, ptr %1, align 8, !alias.scope !13803
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.d, align 1, !alias.scope !13814
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = load i8, ptr %i.ap, align 8, !range !4240, !alias.scope !13814, !noundef !3
  %i.ar = trunc nuw i8 %i.aq to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !13814 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !13814 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ar, i1 true, i1 %.not.i3.i.i
  %cond.fr = freeze i1 %or.cond.not.i.i.i
  %i.as = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %cond.fr, label %select.unfold, label %bb.n

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.as, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.pn = phi i64 [ %i.an, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.at = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !62, !noundef !3 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.au, label %bb.h, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit, !prof !10

bb.h:                                             ; preds = %select.unfold
  %i.ay = load i64, ptr %i.ax, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ay) #23
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit: ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  %i.az = load ptr, ptr %i.ax, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.ba = icmp ugt i64 %i.aw, 3
  tail call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.1.i.i, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.4.1.i.i, ptr %i.bb, align 8
  store i64 %i.aw, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13825)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.bc, align 1, !alias.scope !13827, !noalias !13832
  %.promoted13.i.i = load i64, ptr %i.b, align 8, !alias.scope !13833, !noalias !13832 ; 4 uses
  %i.bd = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.bd, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !13827, !noalias !13832, !nonnull !3, !noundef !3 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !13827, !noalias !13832, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !13834, !noalias !13837, !noundef !3 ; 5 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.bh, %.val1.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !alias.scope !13833, !noalias !13832 ; 2 uses
  %i.bl = zext nneg i8 %i.bk to i64               ; 4 uses
  %i.bm = icmp ult i8 %i.bk, 5
  %i.bn = getelementptr i8, ptr %i.bi, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bq = load i8, ptr %i.bp, align 8, !range !4240, !alias.scope !13833, !noalias !13832
  %i.br = trunc nuw i8 %i.bq to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !13833, !noalias !13832 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted17.i.i = load i64, ptr %i.bs, align 8, !alias.scope !13834, !noalias !13837
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted13.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.us.i.i
  %cond.fr.us.i.i = freeze i1 %or.cond.not.i.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13841)
  br i1 %cond.fr.us.i.i, label %._crit_edge.split.us.split.us.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit

._crit_edge.split.us.split.us.i.i:                ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted13.i.i
  %i.bt = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted13.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i, ptr %i.bu, align 8, !noalias !13833
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.bt, ptr %i.bv, align 8, !noalias !13833
  store i64 2, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13832, !noalias !13833
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit

.lr.ph.split.i.i:                                 ; preds = %.noexc11, %.lr.ph.split.preheader.i.i
  %i.bw = phi i64 [ %i.ct, %.noexc11 ], [ %.promoted17.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa111516.i.i = phi i64 [ %.lcssa1114.i.i, %.noexc11 ], [ %.promoted13.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13839)
  call void @llvm.experimental.noalias.scope.decl(metadata !13840)
  call void @llvm.experimental.noalias.scope.decl(metadata !13841)
  %i.bx = icmp ult i64 %i.bh, %i.bw
  br i1 %i.bx, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  call void @llvm.assume(i1 %i.bm)
  %.pre.i.i.i.i.i = load i8, ptr %i.bo, align 1, !alias.scope !13834, !noalias !13837 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.l, %.lr.ph.split.preheader.i.i.i.i.i
  %i.by = phi i64 [ %i.cn, %bb.l ], [ %i.bw, %.lr.ph.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.bz = sub nuw i64 %i.bh, %i.by                ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.by ; 2 uses
  %i.cb = icmp samesign ult i64 %i.bz, 16
  br i1 %i.cb, label %.preheader.i.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.cc = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef range(i64 0, -9223372036854775808) %i.bz)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i unwind label %.loopexit

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bz, %bb.j ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.j ]
  %i.cd = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.ce = insertvalue { i64, i64 } %i.cd, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.j
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.ci, %bb.j ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !13842, !noalias !13845, !noundef !3
  %i.ch = icmp eq i8 %i.cg, %.pre.i.i.i.i.i
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ci = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.bz
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.ce, %._crit_edge.i.i.i.i.i.i ], [ %i.cc, %bb.i ] ; 2 uses
  %i.cj = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.k, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.k:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.cl = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.cm = add i64 %i.by, 1
  %i.cn = add i64 %i.cm, %i.cl                    ; 8 uses
  %.not12.i.i.i.i.i = icmp ult i64 %i.cn, %i.bl
  %.not13.i.i.i.i.i = icmp ugt i64 %i.cn, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %.not13.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.co = icmp ult i64 %i.bh, %i.cn
  br i1 %i.co, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cp = sub nuw i64 %i.cn, %i.bl                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cp
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cq, ptr nonnull %i.bi, i64 %i.bl), !noalias !13846
  %i.cr = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cr, label %select.unfold.i.i, label %bb.l

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.l, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i, %.lr.ph.split.i.i
  %i.cs = phi i64 [ %i.bw, %.lr.ph.split.i.i ], [ %i.bh, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.cn, %bb.l ]
  store i8 1, ptr %i.bc, align 1, !alias.scope !13847, !noalias !13832
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa111516.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.i.i
  %cond.fr.i.i = freeze i1 %or.cond.not.i.i.i.i.i
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit

select.unfold.i.i:                                ; preds = %bb.m, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.ct = phi i64 [ %i.cs, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.cn, %bb.m ]
  %.lcssa1114.i.i = phi i64 [ %.lcssa111516.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.cn, %bb.m ]
  %i.cu = phi i1 [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ false, %bb.m ]
  %.pn.i.i = phi i64 [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.cp, %bb.m ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa111516.i.i
  %.sroa.0.1.i.i.i.i9 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa111516.i.i
  %i.cv = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13832, !noalias !13833, !noundef !3 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 576460752303423488
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.c, align 8, !range !9, !alias.scope !13832, !noalias !13833, !noundef !3
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, label %.noexc11

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %select.unfold.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cv, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, %select.unfold.i.i
  %i.cz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13832, !noalias !13833, !nonnull !3, !noundef !3
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cv ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i9, ptr %i.da, align 8, !noalias !13833
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.db, align 8, !noalias !13833
  %i.dc = add nuw nsw i64 %i.cv, 1
  store i64 %i.dc, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13832, !noalias !13833
  br i1 %i.cu, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.split.i.i

bb.n:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i
  store i64 0, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.de, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.q

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc11, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %._crit_edge.split.us.split.us.i.i, %.lr.ph.split.us.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterB11_EE9from_iterCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = invoke { ptr, i64 } @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = extractvalue { ptr, i64 } %i.d, 1
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBR_EE11spec_extendCs7p2uQeJxui2_9deltalake.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.k, align 8, !noundef !3
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %.sroa.0.0.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.l, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.g
  %i.m = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !62, !noundef !3 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #23
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.t = icmp ule i64 %.sroa.0.0.i, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.g, ptr %i.u, align 8
  store i64 %i.p, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13858)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.i
  %i.w = invoke { ptr, i64 } @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.m unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %bb.o, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %i.x, %bb.l ]
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTReuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.body unwind label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.y = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  %i.z = extractvalue { ptr, i64 } %i.w, 1
  br i1 %.not.i.i.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterBG_EECs7p2uQeJxui2_9deltalake.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13860, !noalias !13861, !noundef !3 ; 5 uses
  %i.ab = icmp ult i64 %i.aa, 576460752303423488
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.c, align 8, !range !9, !alias.scope !13860, !noalias !13861, !noundef !3
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.p, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.p, %bb.n
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13860, !noalias !13861, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aa ; 2 uses
  store ptr %i.y, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.z, ptr %i.ag, align 8
  %i.ah = add nuw nsw i64 %i.aa, 1
  store i64 %i.ah, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !13860, !noalias !13861
  br label %bb.j

bb.o:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7p2uQeJxui2_9deltalake:bb.a
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !13921, !noundef !3 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !9, !alias.scope !13921, !noundef !3
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.thread.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i, !prof !10

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !13926, !noundef !3 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.d

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.c
  %i.l = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !13926, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.c, i64 %i.d, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !13926
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i
  %i.q = phi i64 [ %.pre.i, %bb.d ], [ %i.f, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesE7reserveCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.r = add i64 %i.q, %i.d
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !13926
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.u, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgbCypRs12E4_4pyo35types8sequenceINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionENtNtB9_10conversion12FromPyObject13extract_boundB1g_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = tail call noundef i64 @PyType_GetFlags(ptr noundef %i.c) #27
  %i.e = and i64 %i.d, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsgbCypRs12E4_4pyo35types8sequence16extract_sequenceNtCs7p2uQeJxui2_9deltalake13PyTransactionEBY_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #27 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #23
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store ptr @17, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 28, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %.sroa.05.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @18, ptr %.sroa.05.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 3, ptr %.sroa.46.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgbCypRs12E4_4pyo35types8sequenceINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB9_8pybacked11PyBackedStrENtNtB9_10conversion12FromPyObject13extract_boundCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = tail call noundef i64 @PyType_GetFlags(ptr noundef %i.c) #27
  %i.e = and i64 %i.d, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsgbCypRs12E4_4pyo35types8sequence16extract_sequenceNtNtB6_8pybacked11PyBackedStrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #27 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #23
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store ptr @17, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 28, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %.sroa.05.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @18, ptr %.sroa.05.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 3, ptr %.sroa.46.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13932)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13938
  store ptr %i.d, ptr %i.b, align 8, !noalias !13942
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !noalias !13942
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !13946, !noalias !13951
  %.promoted25.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !13952, !noalias !13951 ; 5 uses
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.g, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !13946, !noalias !13951, !nonnull !3, !noundef !3 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !13946, !noalias !13951, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !13953, !noalias !13956, !noundef !3 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !13952, !noalias !13951 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !4240, !alias.scope !13952, !noalias !13951
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !13952, !noalias !13951 ; 5 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %.promoted29.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !13953, !noalias !13956
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  store i8 1, ptr %i.f, align 1, !alias.scope !13958, !noalias !13951
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted25.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.us.i.i.i
  %cond.fr.us.i.i.i = freeze i1 %or.cond.not.i.i.i.us.i.i.i
  %i.w = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted25.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted25.i.i.i
  br i1 %cond.fr.us.i.i.i, label %.lr.ph.split.us.split.us.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.i.i.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.i.i.i
  %.not.i.us.i.i.i = icmp eq i64 %.pre2.i.i.i.i.i.i, %.promoted25.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13963)
  br i1 %.not.i.us.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13964
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyReEs_0INtB7_5FnMutTB2h_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %i.w), !noalias !13973
  %i.x = load i64, ptr %i.a, align 8, !range !402, !noalias !13964, !noundef !3 ; 2 uses
  %.not.i.i.us.us.i.i.i = icmp eq i64 %i.x, 6
  br i1 %.not.i.i.us.us.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.us.us.i.i.i, label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.us.us.i.i.i: ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13964
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13963)
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.split.i.i.i:                               ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.y = phi i64 [ %i.av, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ %.promoted29.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa222728.i.i.i = phi i64 [ %.lcssa2226.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ %.promoted25.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13961)
  call void @llvm.experimental.noalias.scope.decl(metadata !13962)
  call void @llvm.experimental.noalias.scope.decl(metadata !13963)
  %i.z = icmp ult i64 %i.l, %i.y
  br i1 %i.z, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !13953, !noalias !13956 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.aa = phi i64 [ %i.ap, %bb.e ], [ %i.y, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ab = sub nuw i64 %i.l, %i.aa                 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.aa ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ab, 16
  br i1 %i.ad, label %.preheader.i.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ae = call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.ab), !noalias !13974
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.ab, %bb.c ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.af = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.ag = insertvalue { i64, i64 } %i.af, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !13975, !noalias !13974, !noundef !3
  %i.aj = icmp eq i8 %i.ai, %.pre.i.i.i.i.i.i
  br i1 %i.aj, label %._crit_edge.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.b
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ag, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ae, %bb.b ] ; 2 uses
  %i.al = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.d, label %.split.us.i.i.i.i.i.i

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.an = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.ao = add i64 %i.aa, 1
  %i.ap = add i64 %i.ao, %i.an                    ; 10 uses
  store i64 %i.ap, ptr %i.j, align 8, !alias.scope !13953, !noalias !13956
  %.not12.i.i.i.i.i.i = icmp ult i64 %i.ap, %i.p
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.ap, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %.not13.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.f

.split.us.i.i.i.i.i.i:                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !13953, !noalias !13956
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.aq = icmp ult i64 %i.l, %i.ap
  br i1 %i.aq, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ar = sub nuw i64 %i.ap, %i.p                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ar
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.as, ptr nonnull %i.m, i64 %i.p), !noalias !13978
  %i.at = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.at, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.ap, ptr %i.c, align 8, !alias.scope !13946, !noalias !13951
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.e, %.split.us.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.au = phi i64 [ %i.y, %.lr.ph.split.i.i.i ], [ %i.l, %.split.us.i.i.i.i.i.i ], [ %i.ap, %bb.e ]
  store i8 1, ptr %i.f, align 1, !alias.scope !13958, !noalias !13951
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa222728.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.i
  %cond.fr.i.i.i = freeze i1 %or.cond.not.i.i.i.i.i.i
  br i1 %cond.fr.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.av = phi i64 [ %i.ap, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.au, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %.lcssa2226.i.i.i = phi i64 [ %i.ap, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa222728.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %i.aw = phi i1 [ false, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %.pn.i.i.i = phi i64 [ %i.ar, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pn.i.i.i, %.lcssa222728.i.i.i
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa222728.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa222728.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13964
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyReEs_0INtB7_5FnMutTB2h_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i), !noalias !13973
  %i.ax = load i64, ptr %i.a, align 8, !range !402, !noalias !13964, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, 6
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.i.i.i, label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13964
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.i.i.i, %select.unfold.i.i.i
  br i1 %i.aw, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.split.i.i.i

.loopexit.i:                                      ; preds = %bb.g, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.x, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i ], [ %i.ax, %bb.g ]
  %.sroa.710.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.515.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.710.0..sroa_idx.i.i.i, i64 72, i1 false), !noalias !13979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13964
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %bb.a, %.lr.ph.split.us.split.us.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.us.us.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.i.i.i, %.loopexit.i
  %.us-phi.i.i.sink.i = phi i64 [ %.us-phi.i.i.i, %.loopexit.i ], [ 6, %.lr.ph.split.us.split.us.i.i.i ], [ 6, %bb.a ], [ 6, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.i.i.i ], [ 6, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread17.us.us.i.i.i ], [ 6, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ 6, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13938
  store i64 %.us-phi.i.i.sink.i, ptr %0, align 8, !alias.scope !13927, !noalias !13979
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2m_5tableNtB3J_10DeltaTable13get_file_uris0ENCB3D_s_0EB1A_4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13980
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EBM_4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !13984
  %i.f = load i64, ptr %i.c, align 8, !range !62, !noalias !13980, !noundef !3
  %.not.i = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.b

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13980
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !13980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13980
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView17object_store_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !13984

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #25
          to label %common.resume unwind label %bb.h, !noalias !13985

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !13988)
  call void @llvm.experimental.noalias.scope.decl(metadata !13991)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13994)
  call void @llvm.experimental.noalias.scope.decl(metadata !13997)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !14000, !noalias !14002, !nonnull !3, !noundef !3
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !14003
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #26
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit unwind label %bb.f, !noalias !13985

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #25
          to label %common.resume unwind label %bb.g, !noalias !13985

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !13985
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.l, %bb.f ], [ %i.ab, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !13985
  unreachable

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a), !noalias !13985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13980
  %.sroa.0.0.copyload1 = load i64, ptr %i.b, align 8, !noalias !14004 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !14004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13980
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -9223372036854775808
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0.copyload1, ptr %i.d, align 8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !3, !align !773, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !noalias !14005, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !noalias !14005, !nonnull !3, !align !773, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !71, !invariant.load !3, !noalias !14005
  %i.v = add nsw i64 %i.u, -1
  %i.w = and i64 %i.v, -16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !3, !noalias !14005, !nonnull !3
  invoke void %i.aa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable13get_file_uriss_0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k, !noalias !14009

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !14009
  unreachable

_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable13get_file_uriss_0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !14009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit.thread, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNvMs0_NtB2i_5tableNtB3F_10DeltaTable13get_file_uris0EB1w_4nextCs7p2uQeJxui2_9deltalake.exit
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable13get_file_uriss_0Cs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3P_13RawDeltaTable7historys_0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(544) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [256 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14013)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !14016, !noalias !14019, !noundef !3
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.q, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !14023, !noalias !14026, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.j, align 8, !alias.scope !14023, !noalias !14026 ; 2 uses
  %i.k = icmp eq ptr %.promoted.i.i, %i.i
  br i1 %i.k, label %bb.q, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEEEINtB5_8FuseImplBY_E4nextCs7p2uQeJxui2_9deltalake.exit.i.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEEEINtB5_8FuseImplBY_E4nextCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEECs7p2uQeJxui2_9deltalake.exit4.i.i
  %i.l = phi ptr [ %i.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoEECs7p2uQeJxui2_9deltalake.exit4.i.i ], [ %.promoted.i.i, %.lr.ph.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14029)
end_hunk_1
