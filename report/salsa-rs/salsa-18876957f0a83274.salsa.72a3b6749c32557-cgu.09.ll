Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.09?download=true
inline.NumInlined: 236
inline.NumDeleted: 126
begin_hunk_0_@_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE11swap_removeBO_EBS_:bb.a

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ev = add i16 %.sroa.05.0.i33.i.i.i.i.i, -1
  %i.ew = and i16 %i.ev, %.sroa.05.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ex = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.ey = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ex
  br label %bb.r

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23, !noalias !182
  unreachable

_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ez = getelementptr inbounds i8, ptr %i.ep, i64 -8
  store i64 %i.dw, ptr %i.ez, align 8, !noalias !182
  br label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit: ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i, %bb.a, %bb.b, %bb.c, %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_.exit.i
  %.sroa.4.0 = phi i32 [ %.sroa.3.0.copyload, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i ], [ 0, %._crit_edge.i.i.i ], [ 0, %bb.a ], [ 0, %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_.exit.i ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i ], [ %.sroa.3.0.copyload, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i ], [ 1, %._crit_edge.i.i.i.i ]
  %.not = icmp ne i32 %.sroa.4.0, 0
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB5_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBP_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 7 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtCsffXo9NmvYC7_8indexmap4util14simplify_rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsC8CapfvpQ1_5salsa(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 12 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !194, !nonnull !3, !noundef !3 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.f, %i.b
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23, !noalias !197
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.j = sub nuw nsw i64 %i.b, %i.f               ; 2 uses
  %.not.i5.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i5.i, label %bb.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i, !prof !50

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !201
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.l = sub nuw nsw i64 %i.f, %i.e               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !194, !noundef !3 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !194, !noundef !3 ; 3 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = lshr i64 %i.r, 1                         ; 2 uses
  %i.t = icmp eq i64 %i.f, %i.e
  br i1 %i.t, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i
  %i.u = add nuw nsw i64 %i.j, %i.e
  %i.v = icmp samesign ult i64 %i.u, %i.s
  %i.w = icmp samesign ult i64 %i.e, %i.l
  %or.cond.i = and i1 %i.w, %i.v
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = sub nuw nsw i64 %i.b, %i.e
  %i.y = icmp samesign ult i64 %i.x, %i.s
  br i1 %i.y, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %i.o, 0
  br i1 %i.z, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsjECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !205, !noundef !3 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.m, align 8, !alias.scope !205, !nonnull !3, !noundef !3
  %i.af = add i64 %i.ac, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 -1, i64 %i.af, i1 false)
  %.pre.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !205
  %.pre.fr.i.i.i.i.i = freeze i64 %.pre.i.i.i.i.i ; 3 uses
  %i.ag = icmp ult i64 %.pre.fr.i.i.i.i.i, 8
  %i.ah = add i64 %.pre.fr.i.i.i.i.i, 1
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = mul nuw i64 %i.ai, 7
  %spec.select.i.i.i.i.i = select i1 %i.ag, i64 %.pre.fr.i.i.i.i.i, i64 %i.aj
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !205, !noundef !3 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.m, align 8, !alias.scope !205, !nonnull !3, !noundef !3
  %i.ao = add i64 %i.al, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 -1, i64 %i.ao, i1 false)
  %.pre.i.i.i2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !205
  %.pre.fr.i.i.i3.i.i = freeze i64 %.pre.i.i.i2.i.i ; 3 uses
  %i.ap = icmp ult i64 %.pre.fr.i.i.i3.i.i, 8
  %i.aq = add i64 %.pre.fr.i.i.i3.i.i, 1
  %i.ar = lshr i64 %i.aq, 3
  %i.as = mul nuw i64 %i.ar, 7
  %spec.select.i.i.i4.i.i = select i1 %i.ap, i64 %.pre.fr.i.i.i3.i.i, i64 %i.as
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i: ; preds = %bb.k, %bb.j
  %i.at = phi i64 [ %spec.select.i.i.i4.i.i, %bb.k ], [ 0, %bb.j ]
  store i64 0, ptr %i.n, align 8, !alias.scope !205
  store i64 %i.at, ptr %i.p, align 8, !alias.scope !205
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.au = phi i64 [ %spec.select.i.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  store i64 0, ptr %i.n, align 8, !alias.scope !205
  store i64 %i.au, ptr %i.p, align 8, !alias.scope !205
  resume { ptr, i32 } %i.aa

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i, %bb.f
  tail call fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.e)
  tail call fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef %i.j)
  br label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit

bb.m:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = icmp eq i64 %i.o, 0
  br i1 %i.aw, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.ax = load ptr, ptr %i.m, align 8, !alias.scope !214, !noalias !215, !nonnull !3, !noundef !3 ; 6 uses
  %.val24.i.i.i = load <16 x i8>, ptr %i.ax, align 16, !noalias !218
  %i.ay = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = ptrtoint ptr %i.ax to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i.i
  %i.bc = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.cn, %bb.q ] ; 4 uses
  %.sroa.14.015.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.bo, %bb.q ]
  %.sroa.10.014.i.i = phi i16 [ %i.az, %.lr.ph.i.i ], [ %i.bl, %bb.q ] ; 2 uses
  %.sroa.6.013.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.q ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.sroa.07.1.i.i, %bb.q ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %i.bd = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %.sroa.6.013.i.i, %bb.n ] ; 2 uses
  %i.be = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %.sroa.07.012.i.i, %bb.n ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.bd, align 16, !noalias !219
  %i.bf = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.bf to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i

_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.n
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.012.i.i, %bb.n ], [ %i.bg, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.013.i.i, %bb.n ], [ %i.bh, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.014.i.i, %bb.n ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bi = add i16 %.lcssa.i.i.i, -1
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = and i16 %i.bi, %.lcssa.i.i.i
  %i.bm = sub nsw i64 0, %i.bk
  %i.bn = getelementptr inbounds [8 x i8], ptr %.sroa.07.1.i.i, i64 %i.bm ; 2 uses
  %i.bo = add i64 %.sroa.14.015.i.i, -1           ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !222, !noalias !225, !noundef !3 ; 3 uses
  %.not.i5.i.i = icmp ult i64 %i.bq, %i.f
  br i1 %.not.i5.i.i, label %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i, label %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i

_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i: ; preds = %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.br = sub nuw i64 %i.bq, %i.l
  store i64 %i.br, ptr %i.bp, align 8, !alias.scope !222, !noalias !225
  br label %bb.q

_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i: ; preds = %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.bs = icmp ult i64 %i.bq, %i.e
  br i1 %i.bs, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.1.i.i) ]
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = sub i64 %i.bb, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.bw = add nsw i64 %i.bv, -16
  %i.bx = load i64, ptr %i.av, align 8, !alias.scope !233, !noalias !234, !noundef !3
  %i.by = and i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.by ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.bz, align 1, !noalias !235
  %i.ca = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bv ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !238
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1)
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %i.cf = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.cb, i1 false)
  %i.cg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ce, i1 false)
  %narrow.i.i.i.i = add nuw nsw i16 %i.cg, %i.cf
  %i.ch = icmp samesign ugt i16 %narrow.i.i.i.i, 15
  br i1 %i.ch, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.ci, ptr %i.p, align 8, !alias.scope !233, !noalias !234
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %bb.p, %bb.o
  %i.cj = phi i64 [ %i.ci, %bb.p ], [ %i.bc, %bb.o ]
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.p ], [ -128, %bb.o ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.cc, align 1, !noalias !241
  %i.ck = getelementptr i8, ptr %i.bz, i64 16
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.ck, align 1, !noalias !241
  %i.cl = load i64, ptr %i.n, align 8, !alias.scope !233, !noalias !234, !noundef !3
  %i.cm = add i64 %i.cl, -1
  store i64 %i.cm, ptr %i.n, align 8, !alias.scope !233, !noalias !234
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i
  %i.cn = phi i64 [ %i.cj, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i ], [ %i.bc, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i ], [ %i.bc, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i ]
  %i.co = icmp eq i64 %i.bo, 0
  br i1 %i.co, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %bb.n

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i: ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !242, !noalias !249, !noundef !3 ; 5 uses
  %i.cr = load ptr, ptr %i.m, align 8, !alias.scope !242, !noalias !249, !nonnull !3, !noundef !3 ; 6 uses
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i: ; preds = %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i
  %i.cs = phi i64 [ %i.o, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i ], [ %i.ei, %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i ] ; 2 uses
  %i.ct = phi i64 [ %i.q, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i ], [ %i.ej, %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i ] ; 3 uses
  %.sroa.031.064.i = phi ptr [ %i.k, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i ], [ %i.cv, %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i ] ; 2 uses
  %.sroa.7.063.i = phi i64 [ %i.e, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i ], [ %i.cu, %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i ] ; 2 uses
  %i.cu = add i64 %.sroa.7.063.i, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.031.064.i, i64 24 ; 2 uses
  %i.cw = load i64, ptr %.sroa.031.064.i, align 8, !noalias !194, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.cx = lshr i64 %i.cw, 57
  %i.cy = trunc nuw nsw i64 %i.cx to i8
  %i.cz = insertelement <16 x i8> poison, i8 %i.cy, i64 0
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i ], [ %i.dr, %bb.t ]
  %.pn.i.i.i.i = phi i64 [ %i.cw, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i ], [ %i.ds, %bb.t ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.cq ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.db, align 1, !noalias !254 ; 2 uses
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.da
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i10.i

.lr.ph.i.i10.i:                                   ; preds = %bb.r, %bb.s
  %.sroa.05.0.i33.i.i.i = phi i16 [ %i.dq, %bb.s ], [ %i.dd, %bb.r ] ; 3 uses
  %i.de = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.01.0.i.i.i.i, %i.df
  %i.dh = and i64 %i.dg, %i.cq                    ; 3 uses
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %.val2.i.i.i.i = load i64, ptr %i.dk, align 8, !noalias !257, !noundef !3
  %i.dl = icmp eq i64 %.val2.i.i.i.i, %.sroa.7.063.i
  br i1 %i.dl, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i, label %bb.s, !prof !98

._crit_edge.i.i.i:                                ; preds = %bb.s, %bb.r
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.dn = bitcast <16 x i1> %i.dm to i16
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.t, label %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i, !prof !50

bb.s:                                             ; preds = %.lr.ph.i.i10.i
  %i.dp = add i16 %.sroa.05.0.i33.i.i.i, -1
  %i.dq = and i16 %i.dp, %.sroa.05.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i10.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.dr = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.ds = add i64 %.sroa.01.0.i.i.i.i, %i.dr
  br label %bb.r

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %.lr.ph.i.i10.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dh ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.du = add nsw i64 %i.dh, -16
  %i.dv = and i64 %i.du, %i.cq
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dv ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i11.i = load <16 x i8>, ptr %i.dw, align 1, !noalias !266
  %i.dx = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i11.i, splat (i8 -1)
  %i.dy = bitcast <16 x i1> %i.dx to i16
  %.sroa.0.0.copyload.i926.i.i.i12.i = load <16 x i8>, ptr %i.dt, align 1, !noalias !270
  %i.dz = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i12.i, splat (i8 -1)
  %i.ea = bitcast <16 x i1> %i.dz to i16
  %i.eb = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.dy, i1 false)
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ea, i1 false)
  %narrow.i.i.i13.i = add nuw nsw i16 %i.ec, %i.eb
  %i.ed = icmp samesign ugt i16 %narrow.i.i.i13.i, 15
  br i1 %i.ed, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.ee = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.p, align 8, !alias.scope !273, !noalias !274
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %bb.u, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.ef = phi i64 [ %i.ee, %bb.u ], [ %i.ct, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i ]
  %.sroa.0.0.i.i.i14.i = phi i8 [ -1, %bb.u ], [ -128, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i14.i, ptr %i.dt, align 1, !noalias !275
  %i.eg = getelementptr i8, ptr %i.dw, i64 16
  store i8 %.sroa.0.0.i.i.i14.i, ptr %i.eg, align 1, !noalias !275
  %i.eh = add i64 %i.cs, -1                       ; 2 uses
  store i64 %i.eh, ptr %i.n, align 8, !alias.scope !273, !noalias !274
  br label %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i

_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i: ; preds = %._crit_edge.i.i.i, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i
  %i.ei = phi i64 [ %i.eh, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i ], [ %i.cs, %._crit_edge.i.i.i ]
  %i.ej = phi i64 [ %i.ef, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i ], [ %i.ct, %._crit_edge.i.i.i ]
  %i.ek = icmp eq ptr %i.cv, %i.i
  br i1 %i.ek, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i: ; preds = %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.b
  %i.em = icmp samesign eq i64 %i.f, %i.b
  br i1 %i.em, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i
  %.sroa.1042.068.i = phi i64 [ %i.eo, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i ], [ %i.f, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i ] ; 2 uses
  %.sroa.741.067.i = phi i64 [ %i.en, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i ], [ %i.e, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i ] ; 2 uses
  %.sroa.039.066.i = phi ptr [ %i.ep, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i ], [ %i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i ] ; 2 uses
  %i.en = add i64 %.sroa.741.067.i, 1
  %i.eo = add i64 %.sroa.1042.068.i, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.039.066.i, i64 24 ; 2 uses
  %i.eq = load i64, ptr %.sroa.039.066.i, align 8, !noalias !194, !noundef !3 ; 2 uses
  %i.er = lshr i64 %i.eq, 57
  %i.es = trunc nuw nsw i64 %i.er to i8
  %i.et = insertelement <16 x i8> poison, i8 %i.es, i64 0
  %i.eu = shufflevector <16 x i8> %i.et, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i
  %.sroa.011.0.i.i.i15.i = phi i64 [ 0, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i ], [ %i.fl, %bb.x ]
  %.pn.i.i.i16.i = phi i64 [ %i.eq, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i ], [ %i.fm, %bb.x ]
  %.sroa.01.0.i.i.i17.i = and i64 %.pn.i.i.i16.i, %i.cq ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.01.0.i.i.i17.i
  %.sroa.0.0.copyload.i26.i.i18.i = load <16 x i8>, ptr %i.ev, align 1, !noalias !276 ; 2 uses
  %i.ew = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i18.i, %i.eu
  %i.ex = bitcast <16 x i1> %i.ew to i16          ; 2 uses
  %.not.i.not32.i.i19.i = icmp eq i16 %i.ex, 0
  br i1 %.not.i.not32.i.i19.i, label %._crit_edge.i.i24.i, label %.lr.ph.i.i20.i

.lr.ph.i.i20.i:                                   ; preds = %bb.v, %bb.w
  %.sroa.05.0.i33.i.i21.i = phi i16 [ %i.fk, %bb.w ], [ %i.ex, %bb.v ] ; 3 uses
  %i.ey = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i21.i, i1 true)
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = add i64 %.sroa.01.0.i.i.i17.i, %i.ez
  %i.fb = and i64 %i.fa, %i.cq
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -8
  %.val2.i.i.i22.i = load i64, ptr %i.fe, align 8, !noalias !284, !noundef !3
  %i.ff = icmp eq i64 %.val2.i.i.i22.i, %.sroa.1042.068.i
  br i1 %i.ff, label %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i, label %bb.w, !prof !98

._crit_edge.i.i24.i:                              ; preds = %bb.w, %bb.v
  %i.fg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i18.i, splat (i8 -1)
  %i.fh = bitcast <16 x i1> %i.fg to i16
  %i.fi = icmp eq i16 %i.fh, 0
  br i1 %i.fi, label %bb.x, label %bb.y, !prof !50

bb.w:                                             ; preds = %.lr.ph.i.i20.i
  %i.fj = add i16 %.sroa.05.0.i33.i.i21.i, -1
  %i.fk = and i16 %i.fj, %.sroa.05.0.i33.i.i21.i  ; 2 uses
  %.not.i.not.i.i23.i = icmp eq i16 %i.fk, 0
  br i1 %.not.i.not.i.i23.i, label %._crit_edge.i.i24.i, label %.lr.ph.i.i20.i

bb.x:                                             ; preds = %._crit_edge.i.i24.i
  %i.fl = add i64 %.sroa.011.0.i.i.i15.i, 16      ; 2 uses
  %i.fm = add i64 %.sroa.01.0.i.i.i17.i, %i.fl
  br label %bb.v

bb.y:                                             ; preds = %._crit_edge.i.i24.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23, !noalias !194
  unreachable

_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i: ; preds = %.lr.ph.i.i20.i
  %i.fn = getelementptr inbounds i8, ptr %i.fd, i64 -8
  store i64 %.sroa.741.067.i, ptr %i.fn, align 8, !noalias !194
  %i.fo = icmp eq ptr %i.ep, %i.el
  br i1 %i.fo, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i

_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit: ; preds = %bb.q, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i, %bb.m, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i
  tail call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB1f_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.e, i64 noundef %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1P_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1P_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTablejEECsC8CapfvpQ1_5salsa.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #25
          to label %common.resume.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTablejEECsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap5inner4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEB1i_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTablejEECsC8CapfvpQ1_5salsa.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.i:                                  ; preds = %bb.c, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap5inner4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEB1i_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown5table9HashTablejEECsC8CapfvpQ1_5salsa.exit.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %.not = icmp ult i64 %i.c, %2
  br i1 %.not, label %bb.b, label %bb.c, !prof !50

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %2, 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit
  %.sroa.02.04 = phi ptr [ %1, %.lr.ph ], [ %i.g, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.04, i64 24 ; 2 uses
  %i.h = load i64, ptr %.sroa.02.04, align 8, !noundef !3 ; 3 uses
  %i.i = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !287, !nonnull !3, !noundef !3 ; 6 uses
  %.val6.i = load i64, ptr %i.f, align 8, !alias.scope !287, !noundef !3 ; 4 uses
  %.sroa.0.07.i.i = and i64 %.val6.i, %i.h        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !290
  %i.k = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !293

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.d ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.l, %bb.d ], [ %i.ac, %.lr.ph.i.i ]
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.0.lcssa.i.i, %i.n
  %i.p = and i64 %i.o, %.val6.i                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !287, !noundef !3 ; 2 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.e, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !50

bb.e:                                             ; preds = %._crit_edge.i.i
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !287
  %i.t = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.u, 0
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.u, i1 true)
  %i.w = zext nneg i16 %i.v to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.w
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !287
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %bb.d ]
  %i.x = phi i64 [ %i.y, %.lr.ph.i.i ], [ 0, %bb.d ]
  %i.y = add i64 %i.x, 16                         ; 2 uses
  %i.z = add i64 %i.y, %.sroa.0.010.i.i
  %.sroa.0.0.i.i = and i64 %i.z, %.val6.i         ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i.i
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.aa, align 1, !noalias !290
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !294

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.e, %._crit_edge.i.i
  %i.ad = phi i8 [ %.pre.i, %bb.e ], [ %i.r, %._crit_edge.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i = phi i64 [ %i.w, %bb.e ], [ %i.p, %._crit_edge.i.i ]
  %i.ae = load i64, ptr %i.b, align 8, !alias.scope !287, !noundef !3 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = trunc i8 %i.ad to i1
  %or.cond.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit, !prof !295

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ah = tail call { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB26_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i1 noundef zeroext true) ; 0 uses
  %.val7.i = load ptr, ptr %0, align 8, !alias.scope !287 ; 3 uses
  %.val8.i = load i64, ptr %i.f, align 8, !alias.scope !287, !noundef !3 ; 2 uses
  %i.ai = tail call fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val7.i, i64 %.val8.i, i64 noundef %i.h) ; 2 uses
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %.val7.i, i64 %i.ai
  %.pre10.i = load i8, ptr %.phi.trans.insert9.i, align 1, !noalias !296
  %.pre11.i = load i64, ptr %i.b, align 8, !alias.scope !299
  %.pre = load i64, ptr %i.a, align 8, !alias.scope !299
  br label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i
  %i.aj = phi i64 [ %.pre, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  %i.ak = phi i64 [ %.val8.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %.val6.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  %i.al = phi i64 [ %.pre11.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %i.ae, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  %i.am = phi i8 [ %.pre10.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %i.ad, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ]
  %i.an = phi ptr [ %.val7.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %.val.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.ai, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1Y_.exit.i ], [ %.sroa.0.0.i5.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ] ; 3 uses
  %i.ao = lshr i64 %i.h, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i
  %i.ar = and i8 %i.am, 1
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = sub i64 %i.al, %i.as
  store i64 %i.at, ptr %i.b, align 8, !alias.scope !299
  %i.au = add i64 %.sroa.0.0.i, -16
  %i.av = and i64 %i.au, %i.ak
  store i8 %i.ap, ptr %i.aq, align 1, !noalias !296
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store i8 %i.ap, ptr %i.ax, align 1, !noalias !296
  %i.ay = add i64 %i.aj, 1
  store i64 %i.ay, ptr %i.a, align 8, !alias.scope !299
  %i.az = sub nsw i64 0, %.sroa.0.0.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  store i64 %i.i, ptr %i.bb, align 8, !noalias !296
  %i.bc = icmp eq ptr %i.g, %i.d
  br i1 %i.bc, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.z ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ee, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.cx, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.r = load i8, ptr %i.q, align 8, !range !310, !alias.scope !311, !noalias !314, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !310, !alias.scope !317, !noalias !318, !noundef !3 ; 2 uses
  %i.u = sub nsw i8 %i.r, %i.t
  %i.v = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p), !noalias !314 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 2 uses
  %i.y = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n), !noalias !319 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1       ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.aa)
  %i.ab = tail call i32 @memcmp(ptr %i.w, ptr %i.z, i64 %spec.store.select.i.i.i), !noalias !319 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.x, %i.aa
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp eq i8 %i.r, %i.t
  %i.ag = icmp slt i64 %spec.select.i.i.i, 0
  %i.ah = icmp eq i8 %i.u, -1
  %i.ai = select i1 %i.af, i1 %i.ag, i1 %i.ah     ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ai, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.sroa.01.0.i23.i = phi i64 [ %i.be, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load i8, ptr %i.al, align 8, !range !310, !alias.scope !330, !noalias !331, !noundef !3 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 -8
  %i.ao = load i8, ptr %i.an, align 8, !range !310, !alias.scope !332, !noalias !333, !noundef !3 ; 2 uses
  %i.ap = sub nsw i8 %i.am, %i.ao
  %i.aq = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj), !noalias !331 ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  %i.at = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak), !noalias !319 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
  %spec.store.select.i.i7.i = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.av)
  %i.aw = tail call i32 @memcmp(ptr %i.ar, ptr %i.au, i64 %spec.store.select.i.i7.i), !noalias !319 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %i.as, %i.av
  %spec.select.i.i8.i = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = icmp eq i8 %i.am, %i.ao
  %i.bb = icmp slt i64 %spec.select.i.i8.i, 0
  %i.bc = icmp eq i8 %i.ap, -1
  %i.bd = select i1 %i.ba, i1 %i.bb, i1 %i.bc
  br i1 %i.bd, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.be = add nuw nsw i64 %.sroa.01.0.i23.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i26.i = phi i64 [ %i.ca, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bi = load i8, ptr %i.bh, align 8, !range !310, !alias.scope !344, !noalias !345, !noundef !3 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bf, i64 -8
  %i.bk = load i8, ptr %i.bj, align 8, !range !310, !alias.scope !346, !noalias !347, !noundef !3 ; 2 uses
  %i.bl = sub nsw i8 %i.bi, %i.bk
  %i.bm = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bf), !noalias !345 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0
  %i.bo = extractvalue { ptr, i64 } %i.bm, 1      ; 2 uses
  %i.bp = tail call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bg), !noalias !319 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1      ; 2 uses
  %spec.store.select.i.i9.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.br)
  %i.bs = tail call i32 @memcmp(ptr %i.bn, ptr %i.bq, i64 %spec.store.select.i.i9.i), !noalias !319 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = sub i64 %i.bo, %i.br
  %spec.select.i.i10.i = select i1 %i.bu, i64 %i.bv, i64 %i.bt
  %i.bw = icmp eq i8 %i.bi, %i.bk
  %i.bx = icmp slt i64 %spec.select.i.i10.i, 0
  %i.by = icmp eq i8 %i.bl, -1
  %i.bz = select i1 %i.bw, i1 %i.bx, i1 %i.by
  br i1 %i.bz, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.ca = add nuw nsw i64 %.sroa.01.1.i26.i, 1    ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.ca, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.cb = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.cb)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i
  %i.cc = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.cc, 0
  %or.cond.not.i = and i1 %i.ai, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i11.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.cd = shl nuw nsw i64 %.sroa.0.0.i11.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i12.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i12.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i12.i, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i445155.i, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i ]
  %i.cg = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ch = or disjoint i64 %i.cg, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ci = phi i64 [ %i.cc, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i445155.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i445155.i
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.co, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ck = xor i64 %.sroa.0.017.i.i.i, -1
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.cm = getelementptr [40 x i8], ptr %i.cj, i64 %i.ck
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cm, i64 noundef 5)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i unwind label %bb.r, !noalias !319

bb.r:                                             ; preds = %bb.q
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #24, !noalias !319
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEB14_.exit.i.i.i: ; preds = %bb.q
  %i.co = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.co, %i.ci
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i, label %bb.q

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7reverseBy_.exit.i
end_hunk_0
