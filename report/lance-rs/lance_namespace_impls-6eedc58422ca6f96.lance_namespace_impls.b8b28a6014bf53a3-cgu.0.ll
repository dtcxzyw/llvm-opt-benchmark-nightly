Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 288
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB4_17TransactionRebase20finish_delete_update0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i.i
  %.not.not.not.not.i.not.not.not.i.not.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.dh = phi i64 [ %i.br, %bb.j ], [ %i.du, %bb.k ]
  %.lcssa1216.i.i.i.i.i.i.i1443 = phi ptr [ %i.bo, %bb.j ], [ %.sroa.09.0.copyload.i.i.i.i, %bb.k ] ; 2 uses
  %i.di = phi i16 [ %i.df, %bb.j ], [ %i.dr, %bb.k ] ; 2 uses
  %.lcssa20.i.i.i.i.i.i.i1442 = phi ptr [ %i.bp, %bb.j ], [ %.sroa.410.0.copyload.i.i.i.i, %bb.k ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.di, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.dj = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa20.i.i.i.i.i.i.i1442, %bb.l ] ; 2 uses
  %i.dk = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1216.i.i.i.i.i.i.i1443, %bb.l ]
  %.val10.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dj, align 16, !noalias !146200
  %i.dl = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -4096 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.dl to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.l
  %.sroa.410.0.copyload.i.i.i.i = phi ptr [ %.lcssa20.i.i.i.i.i.i.i1442, %bb.l ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i = phi ptr [ %.lcssa1216.i.i.i.i.i.i.i1443, %bb.l ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.di, %bb.l ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.do = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.dp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = and i16 %i.do, %.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ds = sub nsw i64 0, %i.dq
  %i.dt = getelementptr inbounds [256 x i8], ptr %.sroa.09.0.copyload.i.i.i.i, i64 %i.ds ; 2 uses
  %i.du = add i64 %i.dh, -1                       ; 4 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 -8
  %.val8.i.i.i.i.i.i.i = load i8, ptr %i.dv, align 8, !range !423, !noalias !146201, !noundef !411
  %i.dw = trunc nuw i8 %.val8.i.i.i.i.i.i.i to i1
  br i1 %i.dw, label %bb.m, label %bb.k

bb.m:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i.i
  %i.dx = getelementptr i8, ptr %i.dt, i64 -16
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !146201
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !146202
  %i.dy = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #68, !noalias !146202 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.invoke, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.invoke:                                          ; preds = %bb.m, %bb.i
  %i.ea = phi i64 [ 1, %bb.i ], [ 8, %bb.m ]
  %i.eb = phi i64 [ 84, %bb.i ], [ 32, %bb.m ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.ea, i64 %i.eb) #72
          to label %.cont unwind label %bb.aq

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.m
  store i64 %.val.i.i.i.i.i.i.i, ptr %i.dy, align 8, !noalias !146199
  store i64 4, ptr %i.an, align 8, !noalias !146199
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  store ptr %i.dy, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !146199
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !146199
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146204)
  %.not.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i14441452 = icmp eq i64 %i.du, 0
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i14441452, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IteryTNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentbEENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB4e_17TransactionRebase20finish_delete_update0s_0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph1450

.lr.ph1450:                                       ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %.noexc.i.i.i.i
  %i.ec = phi i64 [ %i.et, %.noexc.i.i.i.i ], [ %i.du, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.lcssa914.i.i.i.i.i.i1454 = phi ptr [ %.lcssa912.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.09.0.copyload.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %i.ed = phi i16 [ %i.eq, %.noexc.i.i.i.i ], [ %i.dr, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.lcssa19.i.i.i.i.i.i1453 = phi ptr [ %.lcssa17.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.410.0.copyload.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %i.ee = phi i64 [ %i.fc, %.noexc.i.i.i.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 5 uses
  %i.ef = phi ptr [ %i.fa, %.noexc.i.i.i.i ], [ %i.dy, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i = icmp eq i64 %i.et, 0
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IteryTNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentbEENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB4e_17TransactionRebase20finish_delete_update0s_0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph1450, %bb.n
  %i.eg = phi i64 [ %i.ec, %.lr.ph1450 ], [ %i.et, %bb.n ]
  %.lcssa1216.i.i.i.i.i.i.i.i.i1448 = phi ptr [ %.lcssa914.i.i.i.i.i.i1454, %.lr.ph1450 ], [ %.lcssa1215.i.i.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %i.eh = phi i16 [ %i.ed, %.lr.ph1450 ], [ %i.eq, %bb.n ] ; 2 uses
  %.lcssa20.i.i.i.i.i.i.i.i.i1447 = phi ptr [ %.lcssa19.i.i.i.i.i.i1453, %.lr.ph1450 ], [ %.lcssa19.i.i.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %.lcssa913.i.i.i.i.i.i1446 = phi ptr [ %.lcssa914.i.i.i.i.i.i1454, %.lr.ph1450 ], [ %.lcssa912.i.i.i.i.i.i, %bb.n ]
  %.lcssa18.i.i.i.i.i.i1445 = phi ptr [ %.lcssa19.i.i.i.i.i.i1453, %.lr.ph1450 ], [ %.lcssa17.i.i.i.i.i.i, %bb.n ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ei = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa20.i.i.i.i.i.i.i.i.i1447, %bb.o ] ; 2 uses
  %i.ej = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1216.i.i.i.i.i.i.i.i.i1448, %bb.o ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ei, align 16, !noalias !146205
  %i.ek = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -4096 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ek to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o
  %.lcssa17.i.i.i.i.i.i = phi ptr [ %.lcssa18.i.i.i.i.i.i1445, %bb.o ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa912.i.i.i.i.i.i = phi ptr [ %.lcssa913.i.i.i.i.i.i1446, %bb.o ], [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa19.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa20.i.i.i.i.i.i.i.i.i1447, %bb.o ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1215.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa1216.i.i.i.i.i.i.i.i.i1448, %bb.o ], [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.eh, %bb.o ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.en = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.eo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ep = zext nneg i16 %i.eo to i64
  %i.eq = and i16 %i.en, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.er = sub nsw i64 0, %i.ep
  %i.es = getelementptr inbounds [256 x i8], ptr %.lcssa1215.i.i.i.i.i.i.i.i.i, i64 %i.er ; 2 uses
  %i.et = add i64 %i.eg, -1                       ; 4 uses
  %i.eu = getelementptr i8, ptr %i.es, i64 -8
  %.val8.i.i.i.i.i.i.i.i.i = load i8, ptr %i.eu, align 8, !range !423, !noalias !146206, !noundef !411
  %i.ev = trunc nuw i8 %.val8.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ev, label %bb.p, label %bb.n

bb.p:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ew = getelementptr i8, ptr %i.es, i64 -16
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ew, align 8, !noalias !146206
  %i.ex = icmp samesign ult i64 %i.ee, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load i64, ptr %i.an, align 8, !range !414, !alias.scope !146207, !noalias !146199, !noundef !411
  %i.ez = icmp eq i64 %i.ee, %i.ey
  br i1 %i.ez, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.ee, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i unwind label %bb.r, !noalias !146199

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !146207, !noalias !146199
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i, %bb.p
  %i.fa = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i ], [ %i.ef, %bb.p ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ee
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.fb, align 8, !noalias !146208
  %i.fc = add nuw nsw i64 %i.ee, 1                ; 2 uses
  store i64 %i.fc, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !146207, !noalias !146199
  %.not.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i1444 = icmp eq i64 %i.et, 0
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i.i.i.i1444, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IteryTNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentbEENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB4e_17TransactionRebase20finish_delete_update0s_0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph1450

bb.q:                                             ; preds = %bb.k
  store i64 0, ptr %i.dg, align 8, !alias.scope !146209
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store ptr inttoptr (i64 8 to ptr), ptr %i.fd, align 8, !alias.scope !146209
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 1032
  store i64 0, ptr %i.fe, align 8, !alias.scope !146209
  br label %bb.t

bb.r:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !146199 ; 2 uses
  %i.fg = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !146199, !nonnull !411, !noundef !411
  %i.fh = shl nuw i64 %.val.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !146199
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IteryTNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentbEENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB4e_17TransactionRebase20finish_delete_update0s_0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.n, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !146210
  %.pre = load ptr, ptr %i.bk, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IteryTNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentbEENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB4e_17TransactionRebase20finish_delete_update0s_0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.fi = phi ptr [ %i.bm, %bb.q ], [ %.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IteryTNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentbEENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB4e_17TransactionRebase20finish_delete_update0s_0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !146199
  %i.fj = getelementptr i8, ptr %i.fi, i64 280
  %.val166 = load ptr, ptr %i.fj, align 8, !nonnull !411, !noundef !411
  %i.fk = getelementptr inbounds nuw i8, ptr %.val166, i64 512
  %.val154 = load ptr, ptr %i.fk, align 8, !nonnull !411, !noundef !411 ; 2 uses
  %i.fl = getelementptr i8, ptr %.val154, i64 24
  %.val167 = load ptr, ptr %i.fl, align 8, !nonnull !411, !noundef !411 ; 2 uses
  %i.fm = getelementptr i8, ptr %.val154, i64 32
  %.val168 = load i64, ptr %i.fm, align 8, !noundef !411
  %i.fn = getelementptr inbounds nuw [240 x i8], ptr %.val167, i64 %.val168 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !146211
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  br label %.outer.i.i.i.i.i.i

.outer.i.i.i.i.i.i:                               ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.t
  %.ph.i.i.i.i.i.i = phi ptr [ %.val167, %bb.t ], [ %i.fy, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %i.fq = icmp eq ptr %.ph.i.i.i.i.i.i, %i.fn
  br i1 %i.fq, label %.loopexit757, label %.lr.ph.i.i.i.i.i187

.lr.ph.i.i.i.i.i187:                              ; preds = %.outer.i.i.i.i.i.i
  %i.fr = load ptr, ptr %i.fo, align 8, !noalias !146212, !nonnull !411, !noundef !411 ; 2 uses
  %i.fs = load i64, ptr %i.fp, align 8, !noalias !146212, !noundef !411 ; 2 uses
  %i.ft = and i64 %i.fs, 1152921504606846968      ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ft ; 7 uses
  %i.fv = shl i64 %i.fs, 3
  %.idx1465 = and i64 %i.fv, 56                   ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i1455 = icmp eq i64 %i.ft, 0
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i1458 = icmp samesign eq i64 %.idx1465, 0
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.idx1465, 8
  %3 = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.1 = icmp samesign eq i64 %.idx1465, 16
  %4 = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.2 = icmp samesign eq i64 %.idx1465, 24
  %5 = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.3 = icmp samesign eq i64 %.idx1465, 32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %.not.i.i.i.i.i.i.i.i.i1455.a = icmp samesign eq i64 %.idx1465, 40
  %6 = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i1458.a = icmp samesign eq i64 %.idx1465, 48
  %7 = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  br label %bb.u

bb.u:                                             ; preds = %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i187
  %i.fx = phi ptr [ %.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i187 ], [ %i.fy, %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 240 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146216)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 232
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.fz, align 8, !alias.scope !146217, !noalias !146218 ; 16 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i1455, label %.preheader.i.i.i.i.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i1457, i64 64
  %i.gb = add nsw i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i1456, -8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.v, %bb.u
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i1458, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i, label %.lr.ph1459

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph1459
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i, label %.lr.ph1459.1

.lr.ph1459.1:                                     ; preds = %.preheader.i.i.i.i.i
  %.val3.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %3, align 8, !alias.scope !146219, !noalias !146220, !noundef !411
  %8 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i
  br i1 %8, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.1

.preheader.i.i.i.i.i.1:                           ; preds = %.lr.ph1459.1
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.1, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i, label %.lr.ph1459.2

.lr.ph1459.2:                                     ; preds = %.preheader.i.i.i.i.i.1
  %.val3.i.i.i.i.i.i.i.i.i.i.2 = load i64, ptr %4, align 8, !alias.scope !146219, !noalias !146220, !noundef !411
  %9 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i
  br i1 %9, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.2

.preheader.i.i.i.i.i.2:                           ; preds = %.lr.ph1459.2
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.2, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i, label %.lr.ph1459.3

.lr.ph1459.3:                                     ; preds = %.preheader.i.i.i.i.i.2
  %.val3.i.i.i.i.i.i.i.i.i.i.3 = load i64, ptr %5, align 8, !alias.scope !146219, !noalias !146220, !noundef !411
  %10 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i
  br i1 %10, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.3

.preheader.i.i.i.i.i.3:                           ; preds = %.lr.ph1459.3
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.3, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i, label %.lr.ph1459.4

.lr.ph1459.4:                                     ; preds = %.preheader.i.i.i.i.i.3
  %.val3.i.i.i.i.i.i.i.i.i.i.4 = load i64, ptr %i.fw, align 8, !alias.scope !146219, !noalias !146220, !noundef !411
  %11 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.4, %.val.i.i.i.i.i.i.i.i
  br i1 %11, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.4

.preheader.i.i.i.i.i.4:                           ; preds = %.lr.ph1459.4
  br i1 %.not.i.i.i.i.i.i.i.i.i1455.a, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i, label %.lr.ph1459.5

.lr.ph1459.5:                                     ; preds = %.preheader.i.i.i.i.i.4
  %.val3.i.i.i.i.i.i.i.i.i.i.5 = load i64, ptr %6, align 8, !alias.scope !146219, !noalias !146220, !noundef !411
  %12 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.5, %.val.i.i.i.i.i.i.i.i
  br i1 %12, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.preheader.a

.preheader.i.i.i.i.i.preheader.a:                 ; preds = %.lr.ph1459.5
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i1458.a, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.a

.preheader.i.i.i.i.i.a:                           ; preds = %.preheader.i.i.i.i.i.preheader.a
  %.val3.i.i.i.i.i.i.i.i.i.i.6 = load i64, ptr %7, align 8, !alias.scope !146219, !noalias !146220, !noundef !411
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.a = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.6, %.val.i.i.i.i.i.i.i.i
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.a, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i

.lr.ph1459:                                       ; preds = %.preheader.i.i.i.i.i.preheader
  %.val3.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !146219, !noalias !146220, !noundef !411
  %i.gc = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.gc, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.v
  %.sroa.0.05.i.i.i.i.i.i.i.i.i1457 = phi ptr [ %i.ga, %bb.v ], [ %i.fr, %bb.u ] ; 9 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i.i1456 = phi i64 [ %i.gb, %bb.v ], [ %i.ft, %bb.u ]
  %.val13.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i1457, align 8, !alias.scope !146219, !noalias !146221, !noundef !411
  %i.gd = icmp eq i64 %.val13.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i1457, i64 8
  %.val13.i.1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ge, align 8, !alias.scope !146219, !noalias !146221, !noundef !411
  %i.gf = icmp eq i64 %.val13.i.1.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  %i.gg = or i1 %i.gd, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i1457, i64 16
  %.val13.i.2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gh, align 8, !alias.scope !146219, !noalias !146221, !noundef !411
  %i.gi = icmp eq i64 %.val13.i.2.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  %i.gj = or i1 %i.gg, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i1457, i64 24
  %.val13.i.3.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gk, align 8, !alias.scope !146219, !noalias !146221, !noundef !411
  %i.gl = icmp eq i64 %.val13.i.3.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  %i.gm = or i1 %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i1457, i64 32
  %.val13.i.4.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gn, align 8, !alias.scope !146219, !noalias !146221, !noundef !411
  %i.go = icmp eq i64 %.val13.i.4.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  %i.gp = or i1 %i.gm, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i1457, i64 40
  %.val13.i.5.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gq, align 8, !alias.scope !146219, !noalias !146221, !noundef !411
  %i.gr = icmp eq i64 %.val13.i.5.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  %i.gs = or i1 %i.gp, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i1457, i64 48
  %.val13.i.6.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gt, align 8, !alias.scope !146219, !noalias !146221, !noundef !411
  %i.gu = icmp eq i64 %.val13.i.6.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  %i.gv = or i1 %i.gs, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i1457, i64 56
  %.val13.i.7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gw, align 8, !alias.scope !146219, !noalias !146221, !noundef !411
  %i.gx = icmp eq i64 %.val13.i.7.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  %i.gy = or i1 %i.gv, %i.gx
  br i1 %i.gy, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.v

_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.1, %.preheader.i.i.i.i.i.2, %.preheader.i.i.i.i.i.3, %.preheader.i.i.i.i.i.4, %.preheader.i.i.i.i.i.preheader.a, %.preheader.i.i.i.i.i.a, %.preheader.i.i.i.i.i.preheader
  %i.gz = icmp eq ptr %i.fy, %i.fn
  br i1 %i.gz, label %.loopexit757, label %bb.u

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %.lr.ph1459, %.lr.ph1459.1, %.lr.ph1459.2, %.lr.ph1459.3, %.lr.ph1459.4, %.lr.ph1459.5, %.preheader.i.i.i.i.i.a
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %.sroa.7.8.copyload.i.i.i.i = load i64, ptr %i.ha, align 8, !alias.scope !146222, !noalias !146223 ; 2 uses
  %i.hb = icmp eq i64 %.sroa.7.8.copyload.i.i.i.i, -2
  br i1 %i.hb, label %.outer.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.12.8..sroa_idx.le.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.8..sroa_idx.le.i.i.i.i, i64 40, i1 false), !noalias !146211
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !146224
  %i.hc = tail call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, 17) 8) #68, !noalias !146224 ; 6 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.x, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i188

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 224) #72
          to label %.noexc194 unwind label %bb.ad

.noexc194:                                        ; preds = %bb.x
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i188: ; preds = %bb.w
  %.sroa.516.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.516.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i.i.i, i64 40, i1 false), !noalias !146211
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %i.hc, align 8, !noalias !146211
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 %.sroa.7.8.copyload.i.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !noalias !146211
  store i64 4, ptr %i.am, align 8, !noalias !146211
  %.sroa.4.0..sroa_idx.i.i.i.i189 = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  store ptr %i.hc, ptr %.sroa.4.0..sroa_idx.i.i.i.i189, align 8, !noalias !146211
  %.sroa.6.0..sroa_idx.i.i.i.i190 = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i190, align 8, !noalias !146211
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146226)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i)
  br label %bb.y

bb.y:                                             ; preds = %.noexc.i.i.i.i191, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i188
  %i.he = phi ptr [ %i.iv, %.noexc.i.i.i.i191 ], [ %i.hc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i188 ]
  %.sroa.15.0.copyload = phi i64 [ %i.ix, %.noexc.i.i.i.i191 ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i188 ] ; 6 uses
  %i.hf = phi ptr [ %i.ho, %.noexc.i.i.i.i191 ], [ %i.fy, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i188 ]
  br label %.outer.i.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.y
  %.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.hf, %bb.y ], [ %i.ho, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hg = icmp eq ptr %.ph.i.i.i.i.i.i.i.i, %i.fn
  br i1 %i.hg, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.outer.i.i.i.i.i.i.i.i
  %i.hh = load ptr, ptr %i.fo, align 8, !noalias !146227, !nonnull !411, !noundef !411 ; 2 uses
  %i.hi = load i64, ptr %i.fp, align 8, !noalias !146227, !noundef !411 ; 2 uses
  %i.hj = and i64 %i.hi, 1152921504606846968      ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hj ; 7 uses
  %i.hl = shl i64 %i.hi, 3
  %.idx1466 = and i64 %i.hl, 56                   ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i1460 = icmp eq i64 %i.hj, 0
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i1463 = icmp samesign eq i64 %.idx1466, 0
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.idx1466, 8
  %13 = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp samesign eq i64 %.idx1466, 16
  %14 = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i.2 = icmp samesign eq i64 %.idx1466, 24
  %15 = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp samesign eq i64 %.idx1466, 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i.i1460.a = icmp samesign eq i64 %.idx1466, 40
  %16 = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i1463.a = icmp samesign eq i64 %.idx1466, 48
  %17 = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  br label %bb.z

bb.z:                                             ; preds = %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.hn = phi ptr [ %.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ho, %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 240 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146231)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 232
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hp, align 8, !alias.scope !146232, !noalias !146233 ; 16 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i1460, label %.preheader.i.i.i.i.i.i.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462, i64 64
  %i.hr = add nsw i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i1461, -8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.aa, %bb.z
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i1463, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph1464

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph1464
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph1464.1

.lr.ph1464.1:                                     ; preds = %.preheader.i.i.i.i.i.i.i
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %13, align 8, !alias.scope !146234, !noalias !146235, !noundef !411
  %18 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %18, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.1

.preheader.i.i.i.i.i.i.i.1:                       ; preds = %.lr.ph1464.1
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i.1, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph1464.2

.lr.ph1464.2:                                     ; preds = %.preheader.i.i.i.i.i.i.i.1
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.2 = load i64, ptr %14, align 8, !alias.scope !146234, !noalias !146235, !noundef !411
  %19 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.2, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %19, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.2

.preheader.i.i.i.i.i.i.i.2:                       ; preds = %.lr.ph1464.2
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i.2, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph1464.3

.lr.ph1464.3:                                     ; preds = %.preheader.i.i.i.i.i.i.i.2
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.3 = load i64, ptr %15, align 8, !alias.scope !146234, !noalias !146235, !noundef !411
  %20 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.3, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %20, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.3

.preheader.i.i.i.i.i.i.i.3:                       ; preds = %.lr.ph1464.3
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph1464.4

.lr.ph1464.4:                                     ; preds = %.preheader.i.i.i.i.i.i.i.3
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.4 = load i64, ptr %i.hm, align 8, !alias.scope !146234, !noalias !146235, !noundef !411
  %21 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.4, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %21, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.4

.preheader.i.i.i.i.i.i.i.4:                       ; preds = %.lr.ph1464.4
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i1460.a, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph1464.5

.lr.ph1464.5:                                     ; preds = %.preheader.i.i.i.i.i.i.i.4
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.5 = load i64, ptr %16, align 8, !alias.scope !146234, !noalias !146235, !noundef !411
  %22 = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.5, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %22, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader.a

.preheader.i.i.i.i.i.i.i.preheader.a:             ; preds = %.lr.ph1464.5
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i1463.a, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.a

.preheader.i.i.i.i.i.i.i.a:                       ; preds = %.preheader.i.i.i.i.i.i.i.preheader.a
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.6 = load i64, ptr %17, align 8, !alias.scope !146234, !noalias !146235, !noundef !411
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i.a = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i.6, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i.a, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph1464:                                       ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hk, align 8, !alias.scope !146234, !noalias !146235, !noundef !411
  %i.hs = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hs, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.aa
  %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462 = phi ptr [ %i.hq, %bb.aa ], [ %i.hh, %bb.z ] ; 9 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i1461 = phi i64 [ %i.hr, %bb.aa ], [ %i.hj, %bb.z ]
  %.val13.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462, align 8, !alias.scope !146234, !noalias !146236, !noundef !411
  %i.ht = icmp eq i64 %.val13.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462, i64 8
  %.val13.i.1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hu, align 8, !alias.scope !146234, !noalias !146236, !noundef !411
  %i.hv = icmp eq i64 %.val13.i.1.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  %i.hw = or i1 %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462, i64 16
  %.val13.i.2.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hx, align 8, !alias.scope !146234, !noalias !146236, !noundef !411
  %i.hy = icmp eq i64 %.val13.i.2.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  %i.hz = or i1 %i.hw, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462, i64 24
  %.val13.i.3.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ia, align 8, !alias.scope !146234, !noalias !146236, !noundef !411
  %i.ib = icmp eq i64 %.val13.i.3.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  %i.ic = or i1 %i.hz, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462, i64 32
  %.val13.i.4.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.id, align 8, !alias.scope !146234, !noalias !146236, !noundef !411
  %i.ie = icmp eq i64 %.val13.i.4.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  %i.if = or i1 %i.ic, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462, i64 40
  %.val13.i.5.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ig, align 8, !alias.scope !146234, !noalias !146236, !noundef !411
  %i.ih = icmp eq i64 %.val13.i.5.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  %i.ii = or i1 %i.if, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462, i64 48
  %.val13.i.6.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ij, align 8, !alias.scope !146234, !noalias !146236, !noundef !411
  %i.ik = icmp eq i64 %.val13.i.6.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  %i.il = or i1 %i.ii, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i1462, i64 56
  %.val13.i.7.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.im, align 8, !alias.scope !146234, !noalias !146236, !noundef !411
  %i.in = icmp eq i64 %.val13.i.7.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  %i.io = or i1 %i.il, %i.in
  br i1 %i.io, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.aa

_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.1, %.preheader.i.i.i.i.i.i.i.2, %.preheader.i.i.i.i.i.i.i.3, %.preheader.i.i.i.i.i.i.i.4, %.preheader.i.i.i.i.i.i.i.preheader.a, %.preheader.i.i.i.i.i.i.i.a, %.preheader.i.i.i.i.i.i.i.preheader
  %i.ip = icmp eq ptr %i.ho, %i.fn
  br i1 %i.ip, label %.loopexit.i.i.i.i, label %bb.z

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsD_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph1464, %.lr.ph1464.1, %.lr.ph1464.2, %.lr.ph1464.3, %.lr.ph1464.4, %.lr.ph1464.5, %.preheader.i.i.i.i.i.i.i.a
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %.sroa.7.8.copyload.i.i.i.i.i.i = load i64, ptr %i.iq, align 8, !alias.scope !146237, !noalias !146238 ; 2 uses
  %.sroa.12.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.8..sroa_idx.i.i.i.i.i.i, i64 40, i1 false), !noalias !146239
  %i.ir = icmp eq i64 %.sroa.7.8.copyload.i.i.i.i.i.i, -2
  br i1 %i.ir, label %.outer.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB2E_17TransactionRebase20finish_delete_update0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB2E_17TransactionRebase20finish_delete_update0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtBV_17TransactionRebase20finish_delete_update0s0_0INtB7_5FnMutTRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.is = icmp samesign ult i64 %.sroa.15.0.copyload, 164703072086692426
  tail call void @llvm.assume(i1 %i.is)
  %i.it = load i64, ptr %i.am, align 8, !range !414, !alias.scope !146240, !noalias !146211, !noundef !411
  %i.iu = icmp eq i64 %.sroa.15.0.copyload, %i.it
  br i1 %i.iu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.noexc.i.i.i.i191

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB2E_17TransactionRebase20finish_delete_update0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.sroa.15.0.copyload, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 56)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i unwind label %bb.ab, !noalias !146211

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.pre.i.i.i.i193 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i189, align 8, !alias.scope !146240, !noalias !146211
  br label %.noexc.i.i.i.i191

.noexc.i.i.i.i191:                                ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB2E_17TransactionRebase20finish_delete_update0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.iv = phi ptr [ %.pre.i.i.i.i193, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i..noexc_crit_edge.i.i.i.i ], [ %i.he, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB2E_17TransactionRebase20finish_delete_update0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [56 x i8], ptr %i.iv, i64 %.sroa.15.0.copyload ; 3 uses
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i.i.i.i.i.i, i64 40, i1 false), !noalias !146239
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.iw, align 8, !noalias !146239
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i64 %.sroa.7.8.copyload.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !146239
  %i.ix = add nuw nsw i64 %.sroa.15.0.copyload, 1 ; 2 uses
  store i64 %i.ix, ptr %.sroa.6.0..sroa_idx.i.i.i.i190, align 8, !alias.scope !146240, !noalias !146211
  br label %bb.y

bb.ab:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTyINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format8fragment12DeletionFileEEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val6.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !146211 ; 2 uses
  %i.iz = icmp eq i64 %.val6.i.i.i.i, 0
  br i1 %i.iz, label %.body195, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val7.i.i.i.i192 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i189, align 8, !noalias !146211, !nonnull !411, !noundef !411
  %i.ja = mul nuw i64 %.val6.i.i.i.i, 56
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i192, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !146211
  br label %.body195

.loopexit.i.i.i.i:                                ; preds = %.outer.i.i.i.i.i.i.i.i, %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i)
  %.sroa.0466.0.copyload = load i64, ptr %i.am, align 8, !noalias !146241
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i189, align 8, !noalias !146241
  %.pre1041 = load ptr, ptr %i.bk, align 8
  br label %.loopexit757

bb.ad:                                            ; preds = %bb.x
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body195

.loopexit757:                                     ; preds = %.outer.i.i.i.i.i.i, %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i
  %i.jc = phi ptr [ %.pre1041, %.loopexit.i.i.i.i ], [ %i.fi, %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i ], [ %i.fi, %.outer.i.i.i.i.i.i ]
  %.sroa.15.0 = phi i64 [ %.sroa.15.0.copyload, %.loopexit.i.i.i.i ], [ 0, %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i ], [ 0, %.outer.i.i.i.i.i.i ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.0.copyload, %.loopexit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.outer.i.i.i.i.i.i ] ; 7 uses
  %.sroa.0466.0 = phi i64 [ %.sroa.0466.0.copyload, %.loopexit.i.i.i.i ], [ 0, %_RNvXsD_NtNtCscI6d9CVNmLh_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i.i.i ], [ 0, %.outer.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !146211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.jd = icmp samesign ult i64 %.sroa.15.0, 164703072086692426
  tail call void @llvm.assume(i1 %i.jd)
  %i.je = getelementptr inbounds nuw [56 x i8], ptr %.sroa.13.0, i64 %.sroa.15.0
  %i.jf = ptrtoint ptr %.sroa.13.0 to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 256
  %.val153 = load ptr, ptr %i.jh, align 8, !nonnull !411, !noundef !411
  %i.ji = getelementptr inbounds nuw i8, ptr %.val153, i64 16
  %i.jj = invoke noundef i64 @_RNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_11ObjectStore14io_parallelism(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ji)
          to label %bb.ae unwind label %.thread660

.thread660:                                       ; preds = %.loopexit757
  %i.jk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jl = icmp eq i64 %.sroa.0466.0, 0
  br i1 %i.jl, label %.body222, label %bb.an

bb.ae:                                            ; preds = %.loopexit757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !146242
  store i64 1, ptr %i.al, align 8, !noalias !146242
  %i.jm = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.jm, align 8, !noalias !146242
  %i.jn = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.jn, align 8, !noalias !146242
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !146242
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1840
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 32, i1 false), !noalias !146242
  store i8 1, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !146242
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1873
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !146242
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !146243
  %i.jo = tail call noundef align 8 dereferenceable_or_null(1880) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1880, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !146243 ; 4 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.af, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB2Y_17TransactionRebase20finish_delete_update0s1_00EEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, !prof !443

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1880) #72
          to label %.noexc.i.i.i unwind label %bb.ag, !noalias !146242

.noexc.i.i.i:                                     ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB3c_17TransactionRebase20finish_delete_update0s1_00EEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(1880) %i.al) #73
          to label %.body.i.i unwind label %bb.ah, !noalias !146242

bb.ah:                                            ; preds = %bb.ag
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !146242
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB2Y_17TransactionRebase20finish_delete_update0s1_00EEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1880) %i.jo, ptr noundef nonnull align 8 dereferenceable(1880) %i.al, i64 1880, i1 false), !noalias !146242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !146242
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 2 uses
  %i.jt = ptrtoint ptr %i.js to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !146242
  store i64 1, ptr %i.ak, align 8, !noalias !146242
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 1, ptr %i.ju, align 8, !noalias !146242
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.jo, ptr %i.jv, align 8, !noalias !146242
  %.sroa.4.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10.i.i.i, align 8, !noalias !146242
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i.i.i, align 8, !noalias !146242
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %i.jt, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !146242
  %.sroa.612.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %i.js, ptr %.sroa.612.0..sroa_idx.i.i.i, align 8, !noalias !146242
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !146244
  %i.jw = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !146244 ; 3 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.ai, label %bb.am, !prof !443

bb.ai:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB2Y_17TransactionRebase20finish_delete_update0s1_00EEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #72
          to label %.noexc24.i.i.i unwind label %bb.aj, !noalias !146242

.noexc24.i.i.i:                                   ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB3D_17TransactionRebase20finish_delete_update0s1_00EEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ak) #73
          to label %.body.i.i unwind label %bb.ak, !noalias !146242

bb.ak:                                            ; preds = %bb.aj
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !146242
  unreachable

.body.i.i:                                        ; preds = %bb.aj, %bb.ag
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.jy, %bb.aj ], [ %i.jq, %bb.ag ] ; 2 uses
  %i.ka = icmp eq i64 %.sroa.0466.0, 0
  br i1 %i.ka, label %.body222, label %bb.al

bb.al:                                            ; preds = %.body.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0) ]
  %i.kb = mul nuw i64 %.sroa.0466.0, 56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0, i64 noundef %i.kb, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !146245
  br label %.body222

bb.am:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB2Y_17TransactionRebase20finish_delete_update0s1_00EEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jw, ptr noundef nonnull align 8 dereferenceable(64) %i.ak, i64 64, i1 false), !noalias !146242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !146242
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 1272
  store i64 0, ptr %i.kc, align 8
  %.sroa.0481.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0481.sroa.8.0..sroa_idx, align 8
  %.sroa.0481.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store i64 0, ptr %.sroa.0481.sroa.9.0..sroa_idx, align 8
  %.sroa.0481.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store ptr %i.jw, ptr %.sroa.0481.sroa.10.0..sroa_idx, align 8
  %.sroa.0481.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1304
  store i64 0, ptr %.sroa.0481.sroa.11.0..sroa_idx, align 8
  %.sroa.0481.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1312
  store i8 0, ptr %.sroa.0481.sroa.12.0..sroa_idx, align 8
  %i.kd = getelementptr i8, ptr %1, i64 1320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, i8 0, i64 16, i1 false)
  %.sroa.0481.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1336
  store ptr %.sroa.13.0, ptr %.sroa.0481.sroa.14.0..sroa_idx, align 8
  %.sroa.0481.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1344
  store i64 %i.jf, ptr %.sroa.0481.sroa.15.0..sroa_idx, align 8
  %.sroa.0481.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1352
  store i64 %.sroa.0466.0, ptr %.sroa.0481.sroa.16.0..sroa_idx, align 8
  %.sroa.0481.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1360
end_hunk_0
