inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRReEINtB2_18SpecFromIterNestedB11_INtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceB12_NtNtB1E_6hasher18DefaultHashBuilderEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.noexc10, %.lr.ph.i.i
  %i.v = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.ah, %.noexc10 ]
  %i.w = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !31033, !noalias !31034, !noundef !8 ; 5 uses
  %i.x = icmp ult i64 %i.w, 1152921504606846976
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !83, !alias.scope !31033, !noalias !31034, !noundef !8
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.noexc9

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !31034, !noalias !31033, !noundef !8
  %.val6.i.i = load ptr, ptr %i.u, align 8, !alias.scope !31034, !noalias !31033, !nonnull !8, !align !1742, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !31035, !noundef !8
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %.val.i.i, i64 %i.ab)
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %i.ac, i64 1)
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.w, i64 noundef range(i64 1, 0) %i.ad, i64 noundef 8, i64 noundef 8)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.d
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !31033, !noalias !31034, !nonnull !8, !noundef !8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.w
  store ptr %i.v, ptr %i.af, align 8, !noalias !31034
  %i.ag = add nuw nsw i64 %i.w, 1
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !31033, !noalias !31034
  %i.ah = invoke fastcc noundef align 8 ptr @_RNvXsK_NtCs2HSpDNxY7OE_9hashbrown3setINtB5_10DifferenceReNtNtB7_6hasher18DefaultHashBuilderENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRReEINtB2_10SpecExtendBR_INtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceBS_NtNtB1l_6hasher18DefaultHashBuilderEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRReEINtB2_10SpecExtendBR_INtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceBS_NtNtB1l_6hasher18DefaultHashBuilderEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRReEINtB2_10SpecExtendBR_INtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceBS_NtNtB1l_6hasher18DefaultHashBuilderEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc10, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRReEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31041)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !5519, !alias.scope !31044, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !31044, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !31044, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31045)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !31048, !noalias !31049, !noundef !8 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.k, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !31048, !noalias !31049 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.l
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !31048, !noalias !31049, !noundef !8 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.pre.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !31048, !noalias !31049 ; 2 uses
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
  %i.x = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !31051
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
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !31052, !noalias !31051, !noundef !8
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
  store i64 %i.ai, ptr %i.i, align 8, !alias.scope !31048, !noalias !31049
  %.not12.i.i.i = icmp ult i64 %i.ai, %i.p
  %.not13.i.i.i = icmp ugt i64 %i.ai, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.k, ptr %i.i, align 8, !alias.scope !31048, !noalias !31049
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aj = icmp ult i64 %i.k, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = sub nuw i64 %i.ai, %i.p                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ak
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.m, i64 %i.p), !noalias !31049
  %i.am = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.am, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %1, align 8, !alias.scope !31044, !noundef !8 ; 2 uses
  %i.ao = sub nuw i64 %i.ak, %i.an
  store i64 %i.ai, ptr %1, align 8, !alias.scope !31044
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.d, align 1, !alias.scope !31055
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = load i8, ptr %i.ap, align 8, !range !5519, !alias.scope !31055, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !31055 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !31055 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ar, i1 true, i1 %.not.i3.i.i
  %i.as = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.n

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.as, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.pn = phi i64 [ %i.an, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.at = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !107, !noundef !8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.au, label %bb.h, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.h:                                             ; preds = %select.unfold
  %i.ay = load i64, ptr %i.ax, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ay) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  %i.az = load ptr, ptr %i.ax, align 8, !nonnull !8, !noundef !8 ; 5 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31066)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.bc, align 1, !alias.scope !31068, !noalias !31073
  %.promoted13.i.i = load i64, ptr %i.b, align 8, !alias.scope !31074, !noalias !31073 ; 4 uses
  %i.bd = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.bd, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !31068, !noalias !31073, !nonnull !8, !noundef !8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !31068, !noalias !31073, !noundef !8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !31075, !noalias !31078, !noundef !8 ; 5 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.bh, %.val1.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !alias.scope !31074, !noalias !31073 ; 2 uses
  %i.bl = zext nneg i8 %i.bk to i64               ; 4 uses
  %i.bm = icmp ult i8 %i.bk, 5
  %i.bn = getelementptr i8, ptr %i.bi, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bq = load i8, ptr %i.bp, align 8, !range !5519, !alias.scope !31074, !noalias !31073
  %i.br = trunc nuw i8 %i.bq to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !31074, !noalias !31073 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted17.i.i = load i64, ptr %i.bs, align 8, !alias.scope !31075, !noalias !31078
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted13.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31082)
  br i1 %or.cond.not.i.i.i.us.i.i, label %._crit_edge.split.us.split.us.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit

._crit_edge.split.us.split.us.i.i:                ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted13.i.i
  %i.bt = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted13.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i, ptr %i.bu, align 8, !noalias !31074
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.bt, ptr %i.bv, align 8, !noalias !31074
  store i64 2, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !31073, !noalias !31074
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i.i:                                 ; preds = %.noexc12, %.lr.ph.split.preheader.i.i
  %i.bw = phi i64 [ %i.ct, %.noexc12 ], [ %.promoted17.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa111516.i.i = phi i64 [ %.lcssa1114.i.i, %.noexc12 ], [ %.promoted13.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31080)
  call void @llvm.experimental.noalias.scope.decl(metadata !31081)
  call void @llvm.experimental.noalias.scope.decl(metadata !31082)
  %i.bx = icmp ult i64 %i.bh, %i.bw
  br i1 %i.bx, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  call void @llvm.assume(i1 %i.bm)
  %.pre.i.i.i.i.i = load i8, ptr %i.bo, align 1, !alias.scope !31075, !noalias !31078 ; 2 uses
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
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !31083, !noalias !31086, !noundef !8
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
  br i1 %i.ck, label %bb.k, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

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
  br i1 %i.co, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cp = sub nuw i64 %i.cn, %i.bl                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cp
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cq, ptr nonnull %i.bi, i64 %i.bl), !noalias !31087
  %i.cr = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cr, label %select.unfold.i.i, label %bb.l

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.l, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i, %.lr.ph.split.i.i
  %i.cs = phi i64 [ %i.bw, %.lr.ph.split.i.i ], [ %i.bh, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.cn, %bb.l ]
  store i8 1, ptr %i.bc, align 1, !alias.scope !31088, !noalias !31073
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa111516.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.br, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit

select.unfold.i.i:                                ; preds = %bb.m, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.ct = phi i64 [ %i.cs, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.cn, %bb.m ]
  %.lcssa1114.i.i = phi i64 [ %.lcssa111516.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.cn, %bb.m ]
  %i.cu = phi i1 [ true, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ false, %bb.m ]
  %.pn.i.i = phi i64 [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.cp, %bb.m ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa111516.i.i
  %.sroa.0.1.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa111516.i.i
  %i.cv = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !31073, !noalias !31074, !noundef !8 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 576460752303423488
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.c, align 8, !range !83, !alias.scope !31073, !noalias !31074, !noundef !8
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.noexc12

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %select.unfold.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cv, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, %select.unfold.i.i
  %i.cz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !31073, !noalias !31074, !nonnull !8, !noundef !8
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cv ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i10, ptr %i.da, align 8, !noalias !31074
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.db, align 8, !noalias !31074
  %i.dc = add nuw nsw i64 %i.cv, 1
  store i64 %i.dc, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !31073, !noalias !31074
  br i1 %i.cu, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.split.i.i

bb.n:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 0, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.de, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.q

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitcEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc12, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %._crit_edge.split.us.split.us.i.i, %.lr.ph.split.us.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENCB4d_s0_0EE9from_iterB4l_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31094)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31097)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31100
  store ptr %i.j, ptr %i.f, align 8, !noalias !31101
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.m, %bb.c ], [ %1, %bb.a ]   ; 4 uses
  %i.l = icmp eq ptr %i.k, %2
  br i1 %i.l, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !alias.scope !31103, !noalias !31104
  store ptr %i.k, ptr %i.e, align 8, !noalias !31101
  %i.n = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0INtB7_5FnMutTRRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !noalias !31097
  br i1 %i.n, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31100
  %.val.i = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.r = load i64, ptr %i.q, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.s = load i64, ptr %i.d, align 8, !range !79, !noundef !8
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !107, !noundef !8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.t, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !84

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.w, align 8
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #27
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.z = icmp ugt i64 %i.v, 3
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.p, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.r, ptr %i.aa, align 8
  store i64 %i.v, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  %i.ab = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.ac = load ptr, ptr %i.i, align 8, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31105)
  call void @llvm.experimental.noalias.scope.decl(metadata !31108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31105
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !31111
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.noexc12, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %.promoted.i.i.i.i.i = phi ptr [ %.promoted.i.i.i.pre.i.i, %.noexc12 ], [ %i.ab, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.af = phi ptr [ %.pre.i.i, %.noexc12 ], [ %i.ac, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !31112)
  call void @llvm.experimental.noalias.scope.decl(metadata !31115)
  call void @llvm.experimental.noalias.scope.decl(metadata !31118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31121
  store ptr %i.ae, ptr %i.b, align 8, !noalias !31122
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %i.ag = phi ptr [ %i.ai, %.noexc ], [ %.promoted.i.i.i.i.i, %bb.f ] ; 5 uses
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.thread.i.i.i, label %bb.h

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.thread.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31121
  br label %.loopexit17

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.c, align 8, !alias.scope !31124, !noalias !31125
  store ptr %i.ag, ptr %i.a, align 8, !noalias !31122
  %i.aj = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0INtB7_5FnMutTRRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.h
  br i1 %i.aj, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i.i, label %bb.g

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31121
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %.loopexit17, label %bb.i

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENtNtNtB9_6traits8iterator8Iterator4nextB2U_.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !8, !noundef !8
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !8
  %i.ao = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !31111, !noundef !8 ; 5 uses
  %i.ap = icmp ult i64 %i.ao, 576460752303423488
  call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %i.g, align 8, !range !83, !alias.scope !31111, !noundef !8
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.noexc12
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB1E_4Path5parts0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.w:                                             ; preds = %bb.m
  call fastcc void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false) #34
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.w, %bb.v, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i
  %i.cn = load i64, ptr %i.a, align 8, !range !79, !noalias !33690, !noundef !8
  %i.co = trunc nuw i64 %i.cn to i1
  br i1 %i.co, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !33690, !noundef !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !33690, !noundef !8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !33690, !noundef !8 ; 2 uses
  %i.cv = sub nuw i64 %i.cq, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cu
  store i64 %i.cs, ptr %i.ct, align 8, !alias.scope !33690
  br label %bb.ac

bb.y:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.cx = load i8, ptr %i.b, align 1, !range !5519, !alias.scope !33715, !noundef !8
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.b, align 1, !alias.scope !33715
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.da = load i8, ptr %i.cz, align 8, !range !5519, !alias.scope !33715, !noundef !8
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %._crit_edge.i.i.i, label %bb.aa

._crit_edge.i.i.i:                                ; preds = %bb.z
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !33715
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !alias.scope !33715
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !33715, !noundef !8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !33715, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dd, %i.df
  br i1 %.not.i.i.i, label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i
  %i.dg = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.dd, %bb.aa ]
  %i.dh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.df, %bb.aa ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !33715, !nonnull !8, !noundef !8
  %i.di = sub nuw i64 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.dh
  br label %bb.ac

_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6: ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33690
  br label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.sroa.4.0.i.i = phi i64 [ %i.cv, %bb.x ], [ %i.di, %bb.ab ]
  %.sroa.0.0.i.i = phi ptr [ %i.cw, %bb.x ], [ %i.dj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33690
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ad

_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a, %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ac
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB1v_10ColumnNameINtNtNtB9_6traits7collect12FromIteratorReE9from_iterBW_E0ENtNtB2P_8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33721)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !5519, !alias.scope !33724, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !33724, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !33724, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33725)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !33728, !noalias !33729, !noundef !8 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33728, !noalias !33729 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.j
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !33728, !noalias !33729, !noundef !8 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !33728, !noalias !33729 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.r = phi i64 [ %i.ag, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !33731
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !33732, !noalias !33731, !noundef !8
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.s
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.x, %._crit_edge.i.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.af = add i64 %i.r, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 7 uses
  store i64 %i.ag, ptr %i.g, align 8, !alias.scope !33728, !noalias !33729
  %.not12.i.i.i = icmp ult i64 %i.ag, %i.n
  %.not13.i.i.i = icmp ugt i64 %i.ag, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !33728, !noalias !33729
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ah = icmp ult i64 %i.i, %i.ag
  br i1 %i.ah, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = sub nuw i64 %i.ag, %i.n                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ai
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.k, i64 %i.n), !noalias !33729
  %i.ak = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ak, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %1, align 8, !alias.scope !33724, !noundef !8 ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al
  store i64 %i.ag, ptr %1, align 8, !alias.scope !33724
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.b, align 1, !alias.scope !33735
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !5519, !alias.scope !33735, !noundef !8
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !33735 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !33735 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i
  %i.aq = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.j

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.aq, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 5 uses
  %.pn = phi i64 [ %i.al, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33738
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !33738
  %i.ar = load i64, ptr %i.a, align 8, !range !79, !noalias !33738, !noundef !8
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !107, !noalias !33738, !noundef !8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.h, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, !prof !84

bb.h:                                             ; preds = %select.unfold
  %i.aw = load i64, ptr %i.av, align 8, !noalias !33738
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #27, !noalias !33738
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %select.unfold
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !33738, !nonnull !8, !noundef !8 ; 2 uses
  %i.ay = icmp ule i64 %.sroa.4.1.i.i, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33738
  %.not.i.i.i.i3 = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i.i.i.i3, label %_RNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB7_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1u_3str4iter5SplitcEE0Cs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.0.1.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.4.1.i.i, i1 false), !noalias !33751
  br label %_RNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB7_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1u_3str4iter5SplitcEE0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB7_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1u_3str4iter5SplitcEE0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.i
  store i64 %i.au, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB7_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1u_3str4iter5SplitcEE0Cs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000ENtNtNtB9_6traits8iterator8Iterator4nextB1x_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33755)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !5519, !alias.scope !33758, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !33758, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !33758, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33759)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !33762, !noalias !33763, !noundef !8 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33762, !noalias !33763 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.j
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !33762, !noalias !33763, !noundef !8 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !33762, !noalias !33763 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.r = phi i64 [ %i.ag, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !33765
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !33766, !noalias !33765, !noundef !8
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.s
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.x, %._crit_edge.i.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.af = add i64 %i.r, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 7 uses
  store i64 %i.ag, ptr %i.g, align 8, !alias.scope !33762, !noalias !33763
  %.not12.i.i.i = icmp ult i64 %i.ag, %i.n
  %.not13.i.i.i = icmp ugt i64 %i.ag, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !33762, !noalias !33763
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ah = icmp ult i64 %i.i, %i.ag
  br i1 %i.ah, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = sub nuw i64 %i.ag, %i.n                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ai
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.k, i64 %i.n), !noalias !33763
  %i.ak = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ak, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %1, align 8, !alias.scope !33758, !noundef !8 ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al
  store i64 %i.ag, ptr %1, align 8, !alias.scope !33758
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.b, align 1, !alias.scope !33769
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !5519, !alias.scope !33769, !noundef !8
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !33769 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !33769 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i
  %i.aq = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.k

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.aq, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 5 uses
  %.pn = phi i64 [ %i.al, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33772
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !33772
  %i.ar = load i64, ptr %i.a, align 8, !range !79, !noalias !33772, !noundef !8
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !107, !noalias !33772, !noundef !8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %select.unfold
  %i.aw = load i64, ptr %i.av, align 8, !noalias !33772
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #27, !noalias !33772
  unreachable

bb.i:                                             ; preds = %select.unfold
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !33772, !nonnull !8, !noundef !8 ; 2 uses
  %i.ay = icmp ule i64 %.sroa.4.1.i.i, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33772
  %.not.i = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i, label %_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000B9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.0.1.i.i, i64 %.sroa.4.1.i.i, i1 false), !noalias !33776
  br label %_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000B9_.exit

_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000B9_.exit: ; preds = %bb.i, %bb.j
  store i64 %i.au, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core10operations34get_num_idx_cols_and_stats_columnss0_000B9_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB1w_17RecordBatchWriter9for_tables_00ENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33780)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !5519, !alias.scope !33783, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !33783, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !33783, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33784)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !33787, !noalias !33788, !noundef !8 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !33787, !noalias !33788 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  %or.cond21.i.i.i = or i1 %.not.i.i.i, %i.j
  br i1 %or.cond21.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !33787, !noalias !33788, !noundef !8 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !33787, !noalias !33788 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.r = phi i64 [ %i.ag, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !33790
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !33791, !noalias !33790, !noundef !8
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.s
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.x, %._crit_edge.i.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.af = add i64 %i.r, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 7 uses
  store i64 %i.ag, ptr %i.g, align 8, !alias.scope !33787, !noalias !33788
  %.not12.i.i.i = icmp ult i64 %i.ag, %i.n
  %.not13.i.i.i = icmp ugt i64 %i.ag, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !33787, !noalias !33788
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ah = icmp ult i64 %i.i, %i.ag
  br i1 %i.ah, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = sub nuw i64 %i.ag, %i.n                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ai
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.k, i64 %i.n), !noalias !33788
  %i.ak = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ak, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %1, align 8, !alias.scope !33783, !noundef !8 ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al
  store i64 %i.ag, ptr %1, align 8, !alias.scope !33783
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.b, align 1, !alias.scope !33794
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !5519, !alias.scope !33794, !noundef !8
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !33794 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !33794 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i
  %i.aq = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.k

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.aq, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 5 uses
  %.pn = phi i64 [ %i.al, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33797
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !33797
  %i.ar = load i64, ptr %i.a, align 8, !range !79, !noalias !33797, !noundef !8
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !107, !noalias !33797, !noundef !8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %select.unfold
  %i.aw = load i64, ptr %i.av, align 8, !noalias !33797
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #27, !noalias !33797
  unreachable

bb.i:                                             ; preds = %select.unfold
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !33797, !nonnull !8, !noundef !8 ; 2 uses
  %i.ay = icmp ule i64 %.sroa.4.1.i.i, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33797
  %.not.i = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i, label %_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB8_17RecordBatchWriter9for_tables_00Bc_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.0.1.i.i, i64 %.sroa.4.1.i.i, i1 false), !noalias !33801
  br label %_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB8_17RecordBatchWriter9for_tables_00Bc_.exit

_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB8_17RecordBatchWriter9for_tables_00Bc_.exit: ; preds = %bb.i, %bb.j
  store i64 %i.au, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB8_17RecordBatchWriter9for_tables_00Bc_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statisticss_00ENtNtNtB9_6traits8iterator8Iterator4nextB3p_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(288) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 3 uses
  %i.f = alloca [64 x i8], align 16               ; 3 uses
  %i.g = alloca [80 x i8], align 16               ; 6 uses
  %.sroa.418.i = alloca [64 x i8], align 16       ; 3 uses
  %i.h = alloca [80 x i8], align 16               ; 5 uses
  %i.i = alloca [80 x i8], align 16               ; 6 uses
  %.sroa.5 = alloca [64 x i8], align 16           ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !alias.scope !33802, !nonnull !8, !noundef !8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !33802, !nonnull !8, !noundef !8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store ptr %i.n, ptr %1, align 8, !alias.scope !33802
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33808)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !33812, !align !1742, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_RNCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statisticss_00Bf_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o), !noalias !33813
  br i1 %i.s, label %bb.d, label %_RNCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay23extract_file_statisticss_00Bf_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !range !107, !noalias !33813, !noundef !8
  %.not26.i = icmp eq i64 %i.v, -9223372036854775808
  br i1 %.not26.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !33808, !noalias !33813, !nonnull !8, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !33808, !noalias !33813, !noundef !8
  %i.aa = tail call { i64, i64 } @_RNvXs5_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataNtB5_13StructDataExt8index_of(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z), !noalias !33813 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 3 uses
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.u, align 8, !range !107, !noalias !33813, !noundef !8
  %.not27.i = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not27.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !noalias !33813, !noundef !8 ; 2 uses
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !33813, !nonnull !8, !noundef !8
  %i.ak = getelementptr inbounds nuw [96 x i8], ptr %i.aj, i64 %i.ac ; 3 uses
  %i.al = load i64, ptr %i.ak, align 16, !range !12394, !noalias !33813, !noundef !8 ; 2 uses
  %i.am = xor i64 %i.al, -9223372036854775808
  %i.an = icmp slt i64 %i.al, 0
  %i.ao = select i1 %i.an, i64 %i.am, i64 16
  switch i64 %i.ao, label %bb.l [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !noalias !33813
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !noalias !33813, !noundef !8
  %i.ar = sext i32 %i.aq to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noalias !33813, !noundef !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.d
  %.sroa.410.1.i = phi i64 [ undef, %bb.e ], [ undef, %bb.d ], [ undef, %bb.f ], [ %i.at, %bb.k ], [ %i.ar, %bb.j ], [ undef, %bb.h ]
  %.sroa.09.1.i = phi i64 [ 2, %bb.e ], [ 2, %bb.d ], [ 2, %bb.f ], [ 0, %bb.k ], [ 0, %bb.j ], [ 2, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !33812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !33812
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8
  call void @_RINvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay17extract_precisionRNtNtCs6Po7BT7Nknu_5alloc6string6StringEBc_(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o), !noalias !33813
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33812
  %i.ay = load i128, ptr %i.h, align 16, !range !6563, !noalias !33812, !noundef !8
  %i.az = trunc nuw nsw i128 %i.ay to i64
  switch i64 %i.az, label %default.unreachable [
    i64 0, label %.sink.split
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.p, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.m
  %.sink15 = phi ptr [ %i.e, %bb.m ], [ %i.f, %bb.l ] ; 2 uses
  %.sink.ph = phi i128 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sink15, ptr noundef nonnull align 16 dereferenceable(64) %i.ba, i64 64, i1 false), !noalias !33812
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtBa_15DeltaScanConfig16map_scalar_value(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(64) %.sink15), !noalias !33813
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l
  %.sink = phi i128 [ 2, %bb.l ], [ %.sink.ph, %.sink.split ] ; 2 uses
  %switch.i.i = phi i1 [ false, %bb.l ], [ true, %.sink.split ]
  store i128 %.sink, ptr %i.i, align 16, !noalias !33812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !33812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !33812
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !33805, !noalias !33810, !nonnull !8, !align !1742, !noundef !8
  invoke void @_RINvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay17extract_precisionRNtNtCs6Po7BT7Nknu_5alloc6string6StringEBc_(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o)
          to label %bb.p unwind label %bb.o, !noalias !33813

bb.o:                                             ; preds = %bb.r, %bb.q, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br i1 %switch.i.i, label %.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i

.sink.split.i.i:                                  ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjhHCjzi9uUI_17datafusion_common5stats9PrecisionNtNtBL_6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.v, !noalias !33813

bb.p:                                             ; preds = %bb.n
end_hunk_1
