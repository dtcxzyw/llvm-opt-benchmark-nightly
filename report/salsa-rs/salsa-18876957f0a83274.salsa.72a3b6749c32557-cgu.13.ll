Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.13?download=true
inline.NumInlined: 216
inline.NumDeleted: 148
begin_hunk_0_@_RNvMs2_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_16DisambiguatorMap12disambiguate:bb.a
  %.sroa.0.07.i.i.i = and i64 %i.e, %1            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !242
  %i.ad = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !109

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.d ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.av, %.lr.ph.i.i.i ]
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.e                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !247, !noundef !3 ; 2 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.e, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i, !prof !95

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %.val72.i.i.i.i = load <16 x i8>, ptr %i.f, align 16, !noalias !247
  %i.am = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.an, 0
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.an, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ap
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !247
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.d ]
  %i.aq = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ar = add i64 %i.aq, 16                       ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.as, %i.e          ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.at, align 1, !noalias !242
  %i.au = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !111

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i.i
  %i.aw = phi i8 [ %.pre.i.i, %bb.e ], [ %i.ak, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ap, %bb.e ], [ %i.ai, %._crit_edge.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !248, !noalias !249, !noundef !3 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = trunc i8 %i.aw to i1
  %or.cond.i.i = and i1 %i.az, %i.ba
  br i1 %or.cond.i.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE7reserveNCINvMs6_NtB8_9raw_entryINtB2k_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_.exit.i.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB17_13DisambiguatoruE18insert_with_hasherNCNvMs2_B17_NtB17_16DisambiguatorMap12disambiguates_0EB19_.exit, !prof !113

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE7reserveNCINvMs6_NtB8_9raw_entryINtB2k_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_.exit.i.i: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i
  %i.bb = call { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE14reserve_rehashNCINvMs6_NtB8_9raw_entryINtB2s_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i1 noundef zeroext true), !noalias !250 ; 0 uses
  %.val7.i.i = load ptr, ptr %0, align 8, !alias.scope !248, !noalias !249 ; 3 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !248, !noalias !249, !noundef !3 ; 2 uses
  %i.bc = call fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val7.i.i, i64 %.val8.i.i, i64 noundef %1), !noalias !250 ; 2 uses
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 %i.bc
  %.pre10.i.i = load i8, ptr %.phi.trans.insert9.i.i, align 1, !noalias !251
  %.pre11.i.i = load i64, ptr %i.ax, align 8, !alias.scope !255, !noalias !256
  br label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB17_13DisambiguatoruE18insert_with_hasherNCNvMs2_B17_NtB17_16DisambiguatorMap12disambiguates_0EB19_.exit

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB17_13DisambiguatoruE18insert_with_hasherNCNvMs2_B17_NtB17_16DisambiguatorMap12disambiguates_0EB19_.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE7reserveNCINvMs6_NtB8_9raw_entryINtB2k_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_.exit.i.i
  %i.bd = phi i64 [ %.val8.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE7reserveNCINvMs6_NtB8_9raw_entryINtB2k_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_.exit.i.i ], [ %i.e, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.be = phi i64 [ %.pre11.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE7reserveNCINvMs6_NtB8_9raw_entryINtB2k_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_.exit.i.i ], [ %i.ay, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.bf = phi i8 [ %.pre10.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE7reserveNCINvMs6_NtB8_9raw_entryINtB2k_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_.exit.i.i ], [ %i.aw, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.bg = phi ptr [ %.val7.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE7reserveNCINvMs6_NtB8_9raw_entryINtB2k_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_.exit.i.i ], [ %i.f, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.bc, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE7reserveNCINvMs6_NtB8_9raw_entryINtB2k_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_.exit.i.i ], [ %.sroa.0.0.i5.i.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.0.0.i.i
  %i.bi = and i8 %i.bf, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = sub i64 %i.be, %i.bj
  store i64 %i.bk, ptr %i.ax, align 8, !alias.scope !255, !noalias !256
  %i.bl = add i64 %.sroa.0.0.i.i, -16
  %i.bm = and i64 %i.bl, %i.bd
  store i8 %i.c, ptr %i.bh, align 1, !noalias !251
  %i.bn = getelementptr i8, ptr %i.bg, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  store i8 %i.c, ptr %i.bo, align 1, !noalias !251
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !255, !noalias !256, !noundef !3
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !alias.scope !255, !noalias !256
  %i.bs = sub nsw i64 0, %.sroa.0.0.i.i
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.bg, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24
  store i64 %1, ptr %i.bu, align 8, !noalias !257
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds i8, ptr %i.bt, i64 -16
  store i32 %2, ptr %.sroa.4.0..sroa_idx.i3, align 8, !noalias !257
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  store i32 0, ptr %.sroa.51.0..sroa_idx.i, align 8, !noalias !257
  br label %bb.f

_RINvMs2_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_18RawEntryBuilderMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB18_13DisambiguatoruE6searchNCNvMs2_B18_NtB18_16DisambiguatorMap12disambiguate0EB1a_.exit: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBU_13DisambiguatorEE4findNCINvMs2_NtBa_9raw_entryINtB2j_18RawEntryBuilderMutBS_B1J_uE6searchNCNvMs2_BU_NtBU_16DisambiguatorMap12disambiguate0E0E0BW_.exit.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %.pre = load i32, ptr %i.bv, align 4
  br label %bb.f

bb.f:                                             ; preds = %_RINvMs2_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_18RawEntryBuilderMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB18_13DisambiguatoruE6searchNCNvMs2_B18_NtB18_16DisambiguatorMap12disambiguate0EB1a_.exit, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB17_13DisambiguatoruE18insert_with_hasherNCNvMs2_B17_NtB17_16DisambiguatorMap12disambiguates_0EB19_.exit
  %i.bw = phi i32 [ 0, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB17_13DisambiguatoruE18insert_with_hasherNCNvMs2_B17_NtB17_16DisambiguatorMap12disambiguates_0EB19_.exit ], [ %.pre, %_RINvMs2_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_18RawEntryBuilderMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB18_13DisambiguatoruE6searchNCNvMs2_B18_NtB18_16DisambiguatorMap12disambiguate0EB1a_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.51.0..sroa_idx.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_17RawVacantEntryMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB17_13DisambiguatoruE18insert_with_hasherNCNvMs2_B17_NtB17_16DisambiguatorMap12disambiguates_0EB19_.exit ], [ %i.bv, %_RINvMs2_NtCsgMW4BsFgQdt_9hashbrown9raw_entryINtB6_18RawEntryBuilderMutNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB18_13DisambiguatoruE6searchNCNvMs2_B18_NtB18_16DisambiguatorMap12disambiguate0EB1a_.exit ]
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %.sroa.0.0, align 4
  ret i32 %i.bw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsC8CapfvpQ1_5salsa14tracked_structNtB5_16DisambiguatorMap5clear(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !258, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBR_13DisambiguatorEE5clearBT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1c_13DisambiguatorEEB1e_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !258, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !alias.scope !258, !nonnull !3, !noundef !3
  %i.i = add i64 %i.f, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 -1, i64 %i.i, i1 false)
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !258
  %.pre.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i     ; 3 uses
  %i.j = icmp ult i64 %.pre.fr.i.i.i.i, 8
  %i.k = add i64 %.pre.fr.i.i.i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %spec.select.i.i.i.i = select i1 %i.j, i64 %.pre.fr.i.i.i.i, i64 %i.m
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !258, !noundef !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !alias.scope !258, !nonnull !3, !noundef !3
  %i.r = add i64 %i.o, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false)
  %.pre.i.i.i2.i = load i64, ptr %i.n, align 8, !alias.scope !258
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i   ; 3 uses
  %i.s = icmp ult i64 %.pre.fr.i.i.i3.i, 8
  %i.t = add i64 %.pre.fr.i.i.i3.i, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i4.i = select i1 %i.s, i64 %.pre.fr.i.i.i3.i, i64 %i.v
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i: ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %spec.select.i.i.i4.i, %bb.f ], [ 0, %bb.e ]
  store i64 0, ptr %i.a, align 8, !alias.scope !258
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !258
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBR_13DisambiguatorEE5clearBT_.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %bb.c ]
  store i64 0, ptr %i.a, align 8, !alias.scope !258
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !258
  resume { ptr, i32 } %i.d

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBR_13DisambiguatorEE5clearBT_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1R_13DisambiguatorEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef zeroext i1 @_RNvMs4_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValues4load(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load atomic i8, ptr %0 acquire, align 1
  %i.b = icmp ne i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMs4_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValues5store(ptr nofree noundef nonnull captures(none) %0, i1 noundef zeroext %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i1 %1 to i8
  store atomic i8 %i.a, ptr %0 release, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 0, 9223372036854775793) i64 @_RNvMs_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB4_14AccumulatedMap15allocation_size(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %1 = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %1)
  %i.d = mul i64 %i.b, 24
  %i.e = and i64 %i.d, -16
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %i.b, 17
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = icmp uge i64 %i.h, %i.f
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %.sroa.0.0 = phi i64 [ %i.h, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB4_14AccumulatedMap5clear(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !261, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBT_11accumulator11accumulated14AnyAccumulatedEL_EEE5clearBT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1e_11accumulator11accumulated14AnyAccumulatedEL_EEEB1e_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !261, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !alias.scope !261, !nonnull !3, !noundef !3
  %i.i = add i64 %i.f, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 -1, i64 %i.i, i1 false)
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !261
  %.pre.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i     ; 3 uses
  %i.j = icmp ult i64 %.pre.fr.i.i.i.i, 8
  %i.k = add i64 %.pre.fr.i.i.i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %spec.select.i.i.i.i = select i1 %i.j, i64 %.pre.fr.i.i.i.i, i64 %i.m
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !261, !noundef !3 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1T_11accumulator11accumulated14AnyAccumulatedEL_EEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !alias.scope !261, !nonnull !3, !noundef !3
  %i.r = add i64 %i.o, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false)
  %.pre.i.i.i2.i = load i64, ptr %i.n, align 8, !alias.scope !261
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i   ; 3 uses
  %i.s = icmp ult i64 %.pre.fr.i.i.i3.i, 8
  %i.t = add i64 %.pre.fr.i.i.i3.i, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i4.i = select i1 %i.s, i64 %.pre.fr.i.i.i3.i, i64 %i.v
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1T_11accumulator11accumulated14AnyAccumulatedEL_EEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1T_11accumulator11accumulated14AnyAccumulatedEL_EEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i: ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %spec.select.i.i.i4.i, %bb.f ], [ 0, %bb.e ]
  store i64 0, ptr %i.a, align 8, !alias.scope !261
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !261
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBT_11accumulator11accumulated14AnyAccumulatedEL_EEE5clearBT_.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ 0, %bb.c ]
  store i64 0, ptr %i.a, align 8, !alias.scope !261
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !261
  resume { ptr, i32 } %i.d

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBT_11accumulator11accumulated14AnyAccumulatedEL_EEE5clearBT_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1T_11accumulator11accumulated14AnyAccumulatedEL_EEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5.i
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #5 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !noalias !264
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16            ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !prof !109

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ]
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e
  %i.g = and i64 %i.f, %.8.val                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !3
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !prof !95

bb.b:                                             ; preds = %._crit_edge
  %.val72.i = load <16 x i8>, ptr %.0.val, align 16
  %i.k = icmp slt <16 x i8> %.val72.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  tail call void @llvm.assume(i1 %.not.i6)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16                         ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010
  %.sroa.0.0 = and i64 %i.q, %.8.val              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !noalias !264
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !prof !111
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXNtCsC8CapfvpQ1_5salsa4hashNtB2_12TypeIdHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 137 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB2_14AccumulatedMapNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !267, !noalias !270, !nonnull !3, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !267, !noalias !270, !noundef !3
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %.val24.i = load <16 x i8>, ptr %i.c, align 16, !noalias !272
  %i.h = icmp sgt <16 x i8> %.val24.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !267, !noalias !270, !noundef !3
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <16 x i1> %i.h, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.k, ptr %.sroa.8.0..sroa_idx, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  %i.m = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMs3_NtCsC8CapfvpQ1_5salsa14tracked_structINtB8_14IngredientImplpE11clear_memosNtB2_14TableDropGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !align !48, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !48, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  %.val.i = load ptr, ptr %.val1, align 8, !noundef !3 ; 2 uses
  %i.h = getelementptr i8, ptr %.val1, i64 8
  %.val3.i = load i64, ptr %i.h, align 8
  %i.i = icmp eq ptr %.val.i, null                ; 2 uses
  %.sroa.4.0.i.i = select i1 %i.i, i64 0, i64 %.val3.i
  %.sroa.0.0.i.i = select i1 %i.i, ptr inttoptr (i64 8 to ptr), ptr %.val.i ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  call void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeEINtBQ_7IterMutNtB1f_9MemoEntryEEB1j_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull %i.j)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8 ; 2 uses
end_hunk_0
