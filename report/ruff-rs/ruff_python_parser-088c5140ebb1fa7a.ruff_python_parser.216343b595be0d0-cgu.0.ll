Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser10parse_listNCNvMNtB5_10expressionBL_34parse_interpolated_string_elements0EB7_:bb.a
  %i.tk = phi i8 [ %i.up, %bb.hd ], [ %i.th, %bb.gq ] ; 10 uses
  %.sroa.06.1.i.i.i.i.i = phi i8 [ %.sroa.06.2.i.i.i.i.i, %bb.hd ], [ %.sroa.06.0.i.i.i.i.i, %bb.gq ] ; 3 uses
  %.sroa.01.1.i.i.i.i.i = phi i8 [ %.sroa.01.2.i.i.i.i.i, %bb.hd ], [ %.sroa.01.0.i.i.i.i.i, %bb.gq ] ; 6 uses
  %.not.i.i.i.i287.i = icmp eq i64 %i.ti, 0
  br i1 %.not.i.i.i.i287.i, label %bb.gs, label %bb.gt, !prof !30

bb.gs:                                            ; preds = %bb.gr
  %i.tl = load i64, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671, !noundef !15 ; 2 uses
  %i.tm = icmp eq i64 %i.tl, 0
  br i1 %i.tm, label %bb.gw, label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %i.tn = call fastcc { i64, ptr } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator3nthCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(32) %i.h, i64 noundef %i.ti), !noalias !671, !inline_history !301
  br label %bb.gx

bb.gu:                                            ; preds = %bb.gs
  %i.to = add i64 %i.tl, -1
  store i64 %i.to, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  %i.tp = load ptr, ptr %i.h, align 8, !alias.scope !672, !noalias !671, !nonnull !15, !noundef !15 ; 3 uses
  %i.tq = load ptr, ptr %.sroa.09.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !672, !noalias !671, !nonnull !15, !noundef !15
  %i.tr = icmp eq ptr %i.tp, %i.tq
  br i1 %i.tr, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 1
  store ptr %i.ts, ptr %i.h, align 8, !alias.scope !672, !noalias !671
  %i.tt = load i64, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !673, !noalias !671, !noundef !15 ; 2 uses
  %i.tu = add i64 %i.tt, 1
  store i64 %i.tu, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !673, !noalias !671
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i: ; preds = %bb.gv, %bb.gu
  %.sroa.2.0.i.i.i.i.i.i = phi ptr [ %i.tp, %bb.gv ], [ null, %bb.gu ]
  %.sroa.0.0.i.i.i.i.i288.i = phi i64 [ %i.tt, %bb.gv ], [ undef, %bb.gu ]
  %i.tv = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.i.i288.i, 0
  %i.tw = insertvalue { i64, ptr } %i.tv, ptr %.sroa.2.0.i.i.i.i.i.i, 1
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gx, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !671
  %i.tx = icmp eq i8 %i.tk, %i.tj
  br i1 %i.tx, label %.noexc.i.i.i, label %_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i, !prof !14

bb.gx:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, %bb.gt
  %.pn.i.i.i.i.i = phi { i64, ptr } [ %i.tn, %bb.gt ], [ %i.tw, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i.i.i, 1 ; 2 uses
  %.sroa.014.0.i.i.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i.i.i, 0 ; 4 uses
  %.not29.i.i.i.i.i = icmp eq ptr %.sroa.7.0.i.i.i.i.i, null
  br i1 %.not29.i.i.i.i.i, label %bb.gw, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ty = load i8, ptr %.sroa.7.0.i.i.i.i.i, align 1, !noalias !674, !noundef !15 ; 4 uses
  %i.tz = zext i8 %i.ty to i64
  %i.ua = getelementptr inbounds nuw i8, ptr @383, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !noalias !671, !noundef !15 ; 2 uses
  %i.uc = zext i8 %.sroa.01.1.i.i.i.i.i to i64
  %i.ud = getelementptr inbounds nuw i8, ptr @383, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !noalias !671, !noundef !15
  %i.uf = icmp ult i8 %i.ub, %i.ue
  br i1 %i.uf, label %bb.ha, label %bb.gz

.noexc.i.i.i:                                     ; preds = %bb.gw
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedhhECs9OSMwK5JXHk_12aho_corasick(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #41
          to label %.noexc289.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !301

.noexc289.i:                                      ; preds = %.noexc.i.i.i
  unreachable

bb.gz:                                            ; preds = %bb.gy
  %.not30.i.i.i.i.i = icmp eq i8 %i.ty, %.sroa.01.1.i.i.i.i.i
  br i1 %.not30.i.i.i.i.i, label %bb.hd, label %bb.hb

bb.ha:                                            ; preds = %bb.gy
  store i8 %i.tk, ptr %i.i, align 1, !noalias !671
  %i.ug = icmp ugt i64 %.sroa.014.0.i.i.i.i.i, 255
  br i1 %i.ug, label %.noexc4.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i, !prof !14

.noexc4.i.i.i:                                    ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !675
  br label %.invoke2157

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i: ; preds = %bb.ha
  %i.uh = trunc nuw i64 %.sroa.014.0.i.i.i.i.i to i8 ; 2 uses
  store i8 %i.uh, ptr %i.j, align 1, !noalias !671
  br label %bb.hd

bb.hb:                                            ; preds = %bb.gz
  %i.ui = zext i8 %.sroa.06.1.i.i.i.i.i to i64
  %i.uj = getelementptr inbounds nuw i8, ptr @383, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !671, !noundef !15
  %i.ul = icmp ult i8 %i.ub, %i.uk
  br i1 %i.ul, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.um = icmp ugt i64 %.sroa.014.0.i.i.i.i.i, 255
  br i1 %i.um, label %.noexc5.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, !prof !14

.noexc5.i.i.i:                                    ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !676
  br label %.invoke2157

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i: ; preds = %bb.hc
  %i.un = trunc nuw i64 %.sroa.014.0.i.i.i.i.i to i8 ; 2 uses
  store i8 %i.un, ptr %i.i, align 1, !noalias !671
  br label %bb.hd

bb.hd:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, %bb.hb, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i, %bb.gz
  %i.uo = phi i8 [ %i.tk, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %i.un, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %i.tj, %bb.hb ], [ %i.tj, %bb.gz ]
  %i.up = phi i8 [ %i.uh, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %i.tk, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %i.tk, %bb.hb ], [ %i.tk, %bb.gz ]
  %.sroa.06.2.i.i.i.i.i = phi i8 [ %.sroa.01.1.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %i.ty, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %.sroa.06.1.i.i.i.i.i, %bb.hb ], [ %.sroa.06.1.i.i.i.i.i, %bb.gz ]
  %.sroa.01.2.i.i.i.i.i = phi i8 [ %i.ty, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i.i, %bb.hb ], [ %.sroa.01.1.i.i.i.i.i, %bb.gz ]
  %.pr.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !671
  br label %bb.gr

_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i: ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !671
  %i.uq = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !677 ; 2 uses
  %i.ur = icmp eq i64 %i.uq, 0
  br i1 %i.ur, label %.split.i.i.i.i, label %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i, !prof !14

.split.i.i.i.i:                                   ; preds = %_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.us = invoke noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc292.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !301

.noexc292.i:                                      ; preds = %.split.i.i.i.i
  %i.ut = and i128 %i.us, 32768
  %.not80.i.i.i.i = icmp eq i128 %i.ut, 0
  br i1 %.not80.i.i.i.i, label %bb.he, label %.noexc9.i.i.i

_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i: ; preds = %_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.uu = and i64 %i.uq, 32768
  %.not.i.i.i.i = icmp eq i64 %i.uu, 0
  br i1 %.not.i.i.i.i, label %bb.he, label %.noexc9.i.i.i

bb.he:                                            ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i, %.noexc292.i
  %i.uv = zext i8 %i.tk to i64                    ; 3 uses
  %i.uw = icmp samesign ugt i64 %.sroa.5.0.i.i, %i.uv
  br i1 %i.uw, label %bb.hf, label %.noexc8.i.i.i.invoke

bb.hf:                                            ; preds = %bb.he
  %i.ux = zext i8 %i.tj to i64                    ; 3 uses
  %i.uy = icmp samesign ugt i64 %.sroa.5.0.i.i, %i.ux
  br i1 %i.uy, label %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i, label %.noexc8.i.i.i.invoke

.noexc8.i.i.i.invoke:                             ; preds = %bb.hf, %bb.he
  %i.uz = phi i64 [ %i.uv, %bb.he ], [ %i.ux, %bb.hf ]
  %i.va = phi ptr [ @169, %bb.he ], [ @170, %bb.hf ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.uz, i64 noundef range(i64 2, 4) %.sroa.5.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.va) #41
          to label %.noexc8.i.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !301

.noexc8.i.i.i.cont:                               ; preds = %.noexc8.i.i.i.invoke
  unreachable

_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i: ; preds = %bb.hf
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i274.i, i64 %i.uv
  %i.vc = load i8, ptr %i.vb, align 1, !alias.scope !678, !noalias !592, !noundef !15
  %i.vd = insertelement <16 x i8> poison, i8 %i.vc, i64 0
  %i.ve = shufflevector <16 x i8> %i.vd, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.i.i59.i.i.i.i = call noundef i8 @llvm.umax.i8(i8 %i.tj, i8 %i.tk)
  %i.vf = zext i8 %.sroa.0.0.i.i59.i.i.i.i to i64
  %i.vg = add nuw nsw i64 %i.vf, 16
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i274.i, i64 %i.ux
  %i.vi = load i8, ptr %i.vh, align 1, !alias.scope !678, !noalias !592, !noundef !15
  %i.vj = insertelement <16 x i8> poison, i8 %i.vi, i64 0
  %i.vk = shufflevector <16 x i8> %i.vj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i

.noexc9.i.i.i:                                    ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i, %.noexc292.i
  invoke fastcc void @_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644avx210packedpairNtB2_6Finder14with_pair_impl(ptr noalias noundef align 32 captures(none) dereferenceable(160) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i274.i, i64 noundef range(i64 1, 4) %.sroa.5.0.i.i, i8 noundef %i.tk, i8 noundef %i.tj)
          to label %.noexc295.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !301

.noexc295.i:                                      ; preds = %.noexc9.i.i.i
  %.sroa.3.sroa.4.31.copyload.i.i.i.i = load i8, ptr %.sroa.3.sroa.4.31..sroa_idx.i.i.i.i, align 8, !noalias !679
  %.sroa.02.0.copyload3.i.i.i = load <16 x i8>, ptr %i.k, align 32, !noalias !679
  %.sroa.6.0.copyload5.i.i.i = load <16 x i8>, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 16, !noalias !679
  %.sroa.76.0.copyload8.i.i.i = load i64, ptr %.sroa.76.0..sroa_idx7.i.i.i, align 32, !noalias !679
  %.sroa.8.0.copyload10.i.i.i = load i8, ptr %.sroa.8.0..sroa_idx9.i.i.i, align 8, !noalias !679
  %.sroa.9.0.copyload12.i.i.i = load i8, ptr %.sroa.9.0..sroa_idx11.i.i.i, align 1, !noalias !679
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i

_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i: ; preds = %bb.go
  %.sroa.02.0.vec.insert.i.i.i = insertelement <16 x i8> <i8 poison, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, i8 %i.sq, i64 0
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i

bb.hg:                                            ; preds = %bb.gn
  %i.vl = load i8, ptr %.sroa.0.0.i274.i, align 1, !alias.scope !680, !noalias !592, !noundef !15
  %i.vm = zext i8 %i.vl to i32                    ; 2 uses
  br i1 %.not.i.i273.i, label %.peel.next.i.i.i, label %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i

.peel.next.i.i.i:                                 ; preds = %bb.hg
  %i.vn = select i1 %.not.i2.i.i, i32 68, i32 78
  %i.vo = shl nuw nsw i32 %i.vm, 2
  %i.vp = add nuw nsw i32 %i.vn, %i.vo
  %i.vq = select i1 %.not.i2.i.i, i32 34, i32 39
  %i.vr = add nuw nsw i32 %i.vp, %i.vq
  br label %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i

_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i: ; preds = %.peel.next.i.i.i, %bb.hg
  %.sroa.6.1.lcssa.i.neg.i.i = phi i32 [ 2147483647, %bb.hg ], [ 2147483644, %.peel.next.i.i.i ]
  %.sroa.0.1.lcssa.i.i.i = phi i32 [ %i.vm, %bb.hg ], [ %i.vr, %.peel.next.i.i.i ]
  %i.vs = ptrtoint ptr %i.so to i64
  %i.vt = icmp samesign ugt i64 %.sroa.5.0.i.i, %i.sn
  br i1 %i.vt, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i
  %i.vu = load i8, ptr %i.so, align 1, !alias.scope !681, !noalias !592, !noundef !15
  %i.vv = zext i8 %i.vu to i32                    ; 2 uses
  br i1 %.not.i.i273.i, label %.lr.ph.i.i.i.i.1, label %.preheader.i.preheader.i.i.i

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.vw = getelementptr inbounds nuw i8, ptr %i.so, i64 1
  %i.vx = load i8, ptr %i.vw, align 1, !alias.scope !681, !noalias !592, !noundef !15
  %i.vy = shl nuw nsw i32 %i.vv, 1
  %i.vz = zext i8 %i.vx to i32
  %i.wa = add nuw nsw i32 %i.vy, %i.vz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.so, i64 2
  %i.wc = load i8, ptr %i.wb, align 1, !alias.scope !681, !noalias !592, !noundef !15
  %i.wd = shl nuw nsw i32 %i.wa, 1
  %i.we = zext i8 %i.wc to i32
  %i.wf = add nuw nsw i32 %i.wd, %i.we
  br label %.preheader.i.preheader.i.i.i

.preheader.i.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i
  %.lcssa2255 = phi i32 [ %i.vv, %.lr.ph.i.i.i.i ], [ %i.wf, %.lr.ph.i.i.i.i.1 ]
  %i.wg = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.qg
  %i.wh = getelementptr inbounds i8, ptr %i.wg, i64 %.sroa.5.0.i.i.neg
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.hj, %.preheader.i.preheader.i.i.i
  %.sroa.013.1.i.i.i.i = phi i32 [ %i.wr, %bb.hj ], [ %.lcssa2255, %.preheader.i.preheader.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ws, %bb.hj ], [ %i.so, %.preheader.i.preheader.i.i.i ] ; 6 uses
  %i.wi = icmp eq i32 %.sroa.0.1.lcssa.i.i.i, %.sroa.013.1.i.i.i.i
  br i1 %i.wi, label %bb.hi, label %bb.hh, !prof !14

bb.hh:                                            ; preds = %.noexc296.i, %.preheader.i.i.i.i
  %.not.i.i10.i.i = icmp ult ptr %.sroa.0.0.i.i.i.i, %i.wh
  br i1 %.not.i.i10.i.i, label %bb.hj, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

bb.hi:                                            ; preds = %.preheader.i.i.i.i
  %i.wj = invoke noundef zeroext i1 @_RNvNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarp12is_equal_raw(ptr noundef nonnull %.sroa.0.0.i.i.i.i, ptr noundef nonnull readonly %.sroa.0.0.i274.i, i64 noundef range(i64 1, 4) %.sroa.5.0.i.i)
          to label %.noexc296.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !301

.noexc296.i:                                      ; preds = %bb.hi
  br i1 %i.wj, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281, label %bb.hh

bb.hj:                                            ; preds = %bb.hh
  %i.wk = load i8, ptr %.sroa.0.0.i.i.i.i, align 1, !alias.scope !681, !noalias !592, !noundef !15
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.5.0.i.i
  %i.wm = load i8, ptr %i.wl, align 1, !alias.scope !681, !noalias !592, !noundef !15
  %i.wn = zext i8 %i.wk to i32
  %.neg.i.i = mul i32 %.sroa.6.1.lcssa.i.neg.i.i, %i.wn
  %i.wo = add i32 %.neg.i.i, %.sroa.013.1.i.i.i.i
  %i.wp = shl i32 %i.wo, 1
  %i.wq = zext i8 %i.wm to i32
  %i.wr = add i32 %i.wp, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1
  br label %.preheader.i.i.i.i

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281: ; preds = %.noexc296.i
  %i.wt = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64
  %i.wu = sub i64 %i.wt, %i.vs
  br label %bb.hk

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i: ; preds = %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i, %.noexc295.i, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i
  %.sroa.16.1.i.i.i = phi ptr [ @_RNvNtNtCsiVHPhtDv1FH_6memchr6memmem8searcher22searcher_kind_one_byte, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ @_RNvNtNtCsiVHPhtDv1FH_6memchr6memmem8searcher18searcher_kind_sse2, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ @_RNvNtNtCsiVHPhtDv1FH_6memchr6memmem8searcher18searcher_kind_avx2, %.noexc295.i ] ; 2 uses
  %.sroa.14.0.i.i.i = phi i32 [ 1, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ 4, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ 4, %.noexc295.i ]
  %.sroa.1215.0.i.i.i = phi i32 [ %i.sr, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.sy, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %i.sy, %.noexc295.i ]
  %.sroa.1014.1.i.i.i = phi i8 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ undef, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.3.sroa.4.31.copyload.i.i.i.i, %.noexc295.i ]
  %.sroa.9.1.i.i.i = phi i8 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.tj, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.9.0.copyload12.i.i.i, %.noexc295.i ]
  %.sroa.8.1.i.i.i = phi i8 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.tk, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.8.0.copyload10.i.i.i, %.noexc295.i ]
  %.sroa.76.1.i.i.i = phi i64 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.vg, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.76.0.copyload8.i.i.i, %.noexc295.i ]
  %.sroa.6.1.i.i.i = phi <16 x i8> [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.vk, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.6.0.copyload5.i.i.i, %.noexc295.i ]
  %.sroa.02.1.i.i.i = phi <16 x i8> [ %.sroa.02.0.vec.insert.i.i.i, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.ve, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.02.0.copyload3.i.i.i, %.noexc295.i ]
  store i64 0, ptr %i.dj, align 32, !alias.scope !667, !noalias !666
  store ptr %.sroa.0.0.i274.i, ptr %.sroa.5.0..sroa_idx1.i.i.i, align 8, !alias.scope !667, !noalias !666
  store i64 %.sroa.5.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !667, !noalias !666
  store <16 x i8> %.sroa.02.1.i.i.i, ptr %i.m, align 32, !alias.scope !667, !noalias !666
  store <16 x i8> %.sroa.6.1.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !alias.scope !667, !noalias !666
  store i64 %.sroa.76.1.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i, align 32, !alias.scope !667, !noalias !666
  store i8 %.sroa.8.1.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !667, !noalias !666
  store i8 %.sroa.9.1.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 1, !alias.scope !667, !noalias !666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.10.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %i.di, i64 30, i1 false), !noalias !682
  store i8 %.sroa.1014.1.i.i.i, ptr %.sroa.1014.0..sroa_idx.i.i.i, align 8, !alias.scope !667, !noalias !666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.11.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(87) %i.dh, i64 87, i1 false), !noalias !682
  store i32 %.sroa.1215.0.i.i.i, ptr %.sroa.1215.0..sroa_idx.i.i.i, align 32, !alias.scope !667, !noalias !666
  store i32 %.sroa.14.0.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i, align 4, !alias.scope !667, !noalias !666
  store ptr %.sroa.16.1.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i, align 8, !alias.scope !667, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !666
  store i32 1, ptr %i.l, align 4, !noalias !666
  store i32 0, ptr %i.dk, align 4, !noalias !666
  %i.wv = invoke { i64, i64 } %.sroa.16.1.i.i.i(ptr noalias noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(256) %i.m, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.so, i64 noundef range(i64 0, -9223372036854775808) %i.sn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i274.i, i64 noundef range(i64 1, 4) %.sroa.5.0.i.i)
          to label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !460 ; 2 uses

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i:   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i
  %i.ww = extractvalue { i64, i64 } %i.wv, 1
  %i.wx = extractvalue { i64, i64 } %i.wv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !666
  %i.wy = trunc nuw i64 %i.wx to i1
  br i1 %i.wy, label %bb.hk, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

bb.hk:                                            ; preds = %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i
  %.sroa.3.0.i.pn.i.i285 = phi i64 [ %i.wu, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281 ], [ %i.ww, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i ] ; 2 uses
  %i.wz = icmp ugt i64 %.sroa.3.0.i.pn.i.i285, 4294967295
  %i.xa = shl nuw i64 %.sroa.3.0.i.pn.i.i285, 32
  %.sroa.081.0.insert.insert.i = select i1 %i.wz, i64 513, i64 %i.xa ; 2 uses
  %i.xb = trunc i64 %.sroa.081.0.insert.insert.i to i1
  br i1 %i.xb, label %bb.hl, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i, !prof !14

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !683
  br label %.invoke2157

.invoke2157:                                      ; preds = %.loopexit1225, %.noexc4.i.i.i, %.noexc5.i.i.i, %bb.hl
  %.sink = phi ptr [ %i.p, %.loopexit1225 ], [ %i.f, %.noexc4.i.i.i ], [ %i.g, %.noexc5.i.i.i ], [ %i.o, %bb.hl ] ; 2 uses
  %i.xc = phi ptr [ @112, %.loopexit1225 ], [ @10, %.noexc4.i.i.i ], [ @9, %.noexc5.i.i.i ], [ @110, %bb.hl ]
  store i8 2, ptr %.sink, align 1, !noalias !593
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xc) #41
          to label %.cont2158 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !301

.cont2158:                                        ; preds = %.invoke2157
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i: ; preds = %bb.hk
  %.sroa.6.0.extract.shift.i126.i = lshr i64 %.sroa.081.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i127.i = trunc nuw i64 %.sroa.6.0.extract.shift.i126.i to i32
  %i.xd = add i32 %.sroa.0.0.i266.i, %.sroa.6.0.extract.trunc.i127.i ; 3 uses
  %i.xe = add i32 %i.xd, %..i55                   ; 2 uses
  %.not113.i = icmp ugt i32 %i.xd, %i.xe
  br i1 %.not113.i, label %.loopexit1226.invoke, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, !prof !14

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i
  call void @llvm.experimental.noalias.scope.decl(metadata !684), !noalias !588
  %i.xf = load i8, ptr %i.dc, align 4, !alias.scope !685, !noalias !588, !noundef !15 ; 3 uses
  %i.xg = load i8, ptr %i.dd, align 1, !alias.scope !685, !noalias !588, !noundef !15 ; 2 uses
  %i.xh = icmp eq i8 %i.xf, 3
  %i.xi = icmp ult i8 %i.xf, 3
  %i.xj = icmp ult i8 %i.xg, 12
  %spec.select9.i.i.i = select i1 %i.xh, i1 %i.xj, i1 %i.xi
  br i1 %spec.select9.i.i.i, label %bb.hm, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

bb.hm:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !686), !noalias !588
  %i.xk = load i64, ptr %i.df, align 8, !alias.scope !687, !noalias !588, !noundef !15 ; 3 uses
  %i.xl = load i64, ptr %i.de, align 8, !range !26, !alias.scope !687, !noalias !588, !noundef !15
  %i.xm = icmp eq i64 %i.xk, %i.xl
  br i1 %i.xm, label %bb.hn, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i

bb.hn:                                            ; preds = %bb.hm
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !301

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i: ; preds = %bb.hn, %bb.hm
  %i.xn = load ptr, ptr %i.dg, align 8, !alias.scope !687, !noalias !588, !nonnull !15, !noundef !15
  %i.xo = getelementptr inbounds nuw [40 x i8], ptr %i.xn, i64 %i.xk ; 6 uses
  store i8 12, ptr %i.xo, align 8, !noalias !688
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xo, i64 1
  store i8 3, ptr %.sroa.5216.0..sroa_idx, align 1, !noalias !688
  %.sroa.4.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  store i32 %i.xd, ptr %.sroa.4.0..sroa_idx.i.i56, align 8, !noalias !689
  %.sroa.5.0..sroa_idx.i.i57 = getelementptr inbounds nuw i8, ptr %i.xo, i64 28
  store i32 %i.xe, ptr %.sroa.5.0..sroa_idx.i.i57, align 4, !noalias !689
  %.sroa.6.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.xo, i64 32
  store i8 %i.xf, ptr %.sroa.6.0..sroa_idx.i.i58, align 8, !noalias !689
  %.sroa.7.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %i.xo, i64 33
  store i8 %i.xg, ptr %.sroa.7.0..sroa_idx.i.i59, align 1, !noalias !689
  %i.xp = add i64 %i.xk, 1
  store i64 %i.xp, ptr %i.df, align 8, !alias.scope !687, !noalias !588
  br label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread: ; preds = %bb.hh, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !690), !noalias !588
  %.val.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !691, !noalias !588, !nonnull !15, !noundef !15 ; 7 uses
  %.val1.i.i = load i64, ptr %i.cf, align 8, !alias.scope !691, !noalias !588, !noundef !15 ; 11 uses
  %.idx = mul nuw nsw i64 %.val1.i.i, 12
  %i.xq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx ; 2 uses
  %.not.i.i299.i2146 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i299.i2146, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

bb.ho:                                            ; preds = %.lr.ph
  %.not.i.i299.i = icmp eq ptr %.val.i.i, %i.xs
  br i1 %.not.i.i299.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.ho
  %.sroa.03.0.i.i.i.i2147 = phi i64 [ %i.xt, %bb.ho ], [ %.val1.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xr = phi ptr [ %i.xs, %bb.ho ], [ %i.xq, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xs = getelementptr inbounds i8, ptr %i.xr, i64 -12 ; 3 uses
  %i.xt = add i64 %.sroa.03.0.i.i.i.i2147, -1     ; 3 uses
  %.val9.i.i.i.i = load i32, ptr %i.xs, align 4, !noalias !692, !noundef !15
  %i.xu = icmp eq i32 %.val9.i.i.i.i, %.sroa.0.0.i266.i
  br i1 %i.xu, label %bb.hp, label %bb.ho

bb.hp:                                            ; preds = %.lr.ph
  %i.xv = icmp ult i64 %i.xt, %.val1.i.i
  call void @llvm.assume(i1 %i.xv), !noalias !588
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i: ; preds = %bb.ho, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.hp
  %.not.i.i299.i1814 = phi i1 [ false, %bb.hp ], [ true, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ true, %bb.ho ]
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.xt, %bb.hp ], [ undef, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ undef, %bb.ho ] ; 4 uses
  %i.xw = icmp eq i64 %.val1.i.i, 0
  br i1 %i.xw, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2150

bb.hq:                                            ; preds = %.lr.ph2150
  %i.xx = getelementptr inbounds i8, ptr %i.xz, i64 -12 ; 2 uses
  %i.xy = icmp eq ptr %.val.i.i, %i.xx
  br i1 %i.xy, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2150

.lr.ph2150:                                       ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %bb.hq
  %.sroa.03.0.i7.i.i.i2149 = phi i64 [ %i.ya, %bb.hq ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 4 uses
  %i.xz = phi ptr [ %i.xx, %bb.hq ], [ %i.xq, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 2 uses
  %i.ya = add i64 %.sroa.03.0.i7.i.i.i2149, -1    ; 2 uses
  %i.yb = getelementptr i8, ptr %i.xz, i64 -8
  %.val9.i8.i.i.i = load i32, ptr %i.yb, align 4, !noalias !693, !noundef !15
  %i.yc = icmp eq i32 %.val9.i8.i.i.i, %.sroa.11.0.i
  br i1 %i.yc, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i, label %bb.hq

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i: ; preds = %.lr.ph2150
  %i.yd = icmp ult i64 %i.ya, %.val1.i.i
  call void @llvm.assume(i1 %i.yd), !noalias !588
  br i1 %.not.i.i299.i1814, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %bb.hr

bb.hr:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %i.ye = icmp ult i64 %.sroa.03.0.i7.i.i.i2149, %.sroa.3.0.i.i.i.i
  br i1 %i.ye, label %bb.hs, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, !prof !14

bb.hs:                                            ; preds = %bb.hr
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.3.0.i.i.i.i, i64 noundef %.sroa.03.0.i7.i.i.i2149, i64 noundef range(i64 0, 768614336404564651) %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41
          to label %.noexc301.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !301

.noexc301.i:                                      ; preds = %bb.hs
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.hr
  %i.yf = sub nuw nsw i64 %.sroa.03.0.i7.i.i.i2149, %.sroa.3.0.i.i.i.i
  %i.yg = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i, i64 %.sroa.3.0.i.i.i.i
  br label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i: ; preds = %bb.hq, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %.pn11.i.i.i = phi ptr [ %i.yg, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val.i.i, %bb.hq ] ; 2 uses
  %.pn9.i.i.i = phi i64 [ %i.yf, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val1.i.i, %bb.hq ]
  %i.yh = getelementptr inbounds nuw [12 x i8], ptr %.pn11.i.i.i, i64 %.pn9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !694), !noalias !588
  br label %bb.ht

bb.ht:                                            ; preds = %.noexc302.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i
  %.sroa.0.0.i300.i = phi i1 [ %.sroa.022.0.i.lcssa840, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ true, %.noexc302.i ]
  %i.yi = phi ptr [ %.pn11.i.i.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ %i.yl, %.noexc302.i ]
  br label %bb.hu

end_hunk_0
begin_hunk_1_@_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser18parse_escaped_char:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.as
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.fl, %bb.as ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.sroa.01.05.i.i.i.i
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !13290, !noalias !13289, !noundef !15
  %i.fk = icmp eq i8 %i.fj, 125
  br i1 %i.fk, label %._crit_edge.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fl = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fl, %i.fc
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.ar
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.fh, %._crit_edge.i.i.i.i ], [ %i.ff, %bb.ar ] ; 2 uses
  %i.fm = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.at, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i

bb.at:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i
  %i.fo = extractvalue { i64, i64 } %.merged.i.i.i.i, 1 ; 2 uses
  %i.fp = add i64 %i.fb, 1
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  %.not13.i.i.i = icmp ugt i64 %i.fq, %i.ez       ; 2 uses
  %i.fr = add i64 %i.fo, %i.fb                    ; 5 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.fr, %i.ez
  br i1 %or.cond.i.not.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not13.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i, label %.backedge.i.i.backedge

bb.av:                                            ; preds = %bb.at
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fr
  %lhsc.i.i = load i8, ptr %i.fs, align 1, !alias.scope !13291, !noalias !13281
  %i.ft = icmp eq i8 %lhsc.i.i, 125               ; 2 uses
  %brmerge.i.i = or i1 %.not13.i.i.i, %i.ft
  br i1 %brmerge.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.backedge.i.i.backedge

.backedge.i.i.backedge:                           ; preds = %bb.av, %bb.au
  br label %.backedge.i.i

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.av
  br i1 %i.ft, label %bb.ax, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i

bb.aw:                                            ; preds = %bb.ap, %.split.i.i119
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, i64 noundef %.pre-phi.i, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #41, !noalias !13281
  unreachable

bb.ax:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.fu = add i64 %.pre-phi.i, 1
  %i.fv = add i64 %i.fu, %i.fr                    ; 7 uses
  %.not.i39.i = icmp ugt i64 %.pre-phi.i, %i.fv
  br i1 %.not.i39.i, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.eu, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.bd, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.fx = load i8, ptr %i.fa, align 1, !alias.scope !13292, !noalias !13281, !noundef !15
  %i.fy = icmp sgt i8 %i.fx, -65
  br i1 %i.fy, label %bb.az, label %bb.be

bb.bb:                                            ; preds = %bb.az
  %.not6.i.i = icmp ult i64 %i.fv, %i.o
  br i1 %.not6.i.i, label %bb.bc, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.bb
  %i.fz = icmp eq i64 %i.fv, %i.o
  br i1 %i.fz, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.fv
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !13292, !noalias !13281, !noundef !15
  %i.gc = icmp sgt i8 %i.gb, -65
  br i1 %i.gc, label %bb.bd, label %bb.be

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i: ; preds = %bb.au, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.gd = icmp ugt i64 %i.o, 4294967295
  %i.ge = shl nuw i64 %i.o, 32
  %.sroa.09.0.insert.insert.i43.i = select i1 %i.gd, i64 513, i64 %i.ge ; 2 uses
  %i.gf = trunc i64 %.sroa.09.0.insert.insert.i43.i to i1
  br i1 %i.gf, label %.noexc.i, label %bb.bi, !prof !14

.noexc.i:                                         ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13293
  store i8 2, ptr %i.f, align 1, !noalias !13293
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #41, !noalias !13281
  unreachable

bb.bd:                                            ; preds = %bb.bc, %.split7.i.i, %bb.az
  store i64 %i.fv, ptr %i.p, align 8, !alias.scope !13279
  %i.gg = tail call noundef i32 @_RNvCskH0j5Haz5NY_14unicode_names29character(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fa, i64 noundef %i.fr), !noalias !13281 ; 2 uses
  %.not29.i = icmp eq i32 %i.gg, -1
  br i1 %.not29.i, label %bb.bf, label %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser18parse_unicode_name.exit

bb.be:                                            ; preds = %bb.bc, %.split7.i.i, %bb.ba, %bb.ax
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, i64 noundef %.pre-phi.i, i64 noundef %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #41, !noalias !13281
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.gh = add i64 %i.fr, %.pre-phi.i              ; 2 uses
  %i.gi = icmp ugt i64 %i.gh, 4294967295
  %i.gj = shl nuw i64 %i.gh, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.gi, i64 513, i64 %i.gj ; 2 uses
  %i.gk = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.gk, label %.noexc.i.i, label %bb.bg, !prof !14

.noexc.i.i:                                       ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13294
  store i8 2, ptr %i.e, align 1, !noalias !13294
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #41, !noalias !13295
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  %i.gl = add i32 %.val31.i, %.sroa.6.0.extract.trunc.i.i.i.i ; 2 uses
  %.not.i50.i = icmp ugt i32 %i.et, %i.gl
  br i1 %.not.i50.i, label %bb.bh, label %bb.bj, !prof !14

bb.bh:                                            ; preds = %bb.bg
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #41, !noalias !13295
  unreachable

bb.bi:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i
  %.sroa.6.0.extract.shift.i.i44.i = lshr i64 %.sroa.09.0.insert.insert.i43.i, 32
  %.sroa.6.0.extract.trunc.i.i45.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i44.i to i32
  %i.gm = add i32 %.val31.i, %.sroa.6.0.extract.trunc.i.i45.i ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.aj, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_char.exit.i, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_char.exit.thread58.i, %bb.bg
  %.sroa.17.0.ph = phi i32 [ %i.gl, %bb.bg ], [ %i.ct, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_char.exit.thread58.i ], [ %i.ct, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_char.exit.i ], [ %i.ct, %bb.aj ], [ %i.gm, %bb.bi ]
  %.sroa.14.0.ph = phi i32 [ %i.et, %bb.bg ], [ %i.ct, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_char.exit.thread58.i ], [ %i.ct, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_char.exit.i ], [ %i.ct, %bb.aj ], [ %i.gm, %bb.bi ]
  %.sroa.0.0.ph = phi i8 [ 2, %bb.bg ], [ 3, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_char.exit.thread58.i ], [ 3, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_char.exit.i ], [ 3, %bb.aj ], [ 4, %bb.bi ]
  store i8 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.6103.sroa.4.0..sroa.6103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.14.0.ph, ptr %.sroa.6103.sroa.4.0..sroa.6103.0..sroa_idx.sroa_idx, align 8
  %.sroa.6103.sroa.5.0..sroa.6103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.17.0.ph, ptr %.sroa.6103.sroa.5.0..sroa.6103.0..sroa_idx.sroa_idx, align 4
  br label %bb.cn

bb.bk:                                            ; preds = %bb.v
  %.not110 = icmp eq i64 %i.o, %i.bl
  br i1 %.not110, label %bb.bo, label %bb.bm

bb.bl:                                            ; preds = %bb.v
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.bl, i64 noundef %i.o, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #41
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bl
  %i.go = load i8, ptr %i.gn, align 1, !noundef !15
  %i.gp = icmp eq i8 %i.go, 10
  br i1 %i.gp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  tail call fastcc void @_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_byte(ptr noalias noundef align 8 dereferenceable(40) %1)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bk, %bb.bn
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2, ptr %i.gq, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.cn

bb.bp:                                            ; preds = %bb.i
  %i.gr = trunc nuw nsw i32 %.sroa.4.0.i21.i to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13296)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13296
  store i8 %i.gr, ptr %i.d, align 1, !noalias !13296
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  store i8 0, ptr %i.gs, align 1, !noalias !13296
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store i8 0, ptr %i.gt, align 1, !noalias !13296
  %i.gu = icmp ugt i64 %i.bl, %i.o
  br i1 %i.gu, label %bb.cg, label %bb.cf, !prof !14

bb.bq:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ch, %bb.cf
  %.sroa.0.0.lcssa.i = phi i64 [ 1, %bb.ch ], [ 1, %bb.cf ], [ 3, %bb.cm ], [ 2, %bb.ck ], [ 2, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13296
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %.sroa.0.0.lcssa.i), !noalias !13296
  call void @llvm.experimental.noalias.scope.decl(metadata !13297)
  %i.gv = load i64, ptr %i.c, align 8, !range !56, !alias.scope !13297, !noalias !13296, !noundef !15
  %i.gw = trunc nuw i64 %i.gv to i1
  br i1 %i.gw, label %bb.br, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !14

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13298
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !noalias !13296
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #41, !noalias !13298
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.bq
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !13297, !noalias !13296, !nonnull !15, !noundef !15 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !13297, !noalias !13296, !noundef !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13296
  switch i64 %i.hb, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i
    i64 1, label %bb.bs
  ]

bb.bs:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.hc = load i8, ptr %i.gz, align 1, !alias.scope !13299, !noalias !13296, !noundef !15 ; 2 uses
  switch i8 %i.hc, label %bb.bt [
    i8 43, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i
    i8 45, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.pr.i.i = load i8, ptr %i.gz, align 1, !alias.scope !13299, !noalias !13296
  br label %bb.bt

bb.bt:                                            ; preds = %thread-pre-split.i.i, %bb.bs
  %i.hd = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.hc, %bb.bs ]
  %cond.i.i = icmp eq i8 %i.hd, 43                ; 2 uses
  %i.he = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.hb, %i.he      ; 10 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.0.0.idx.i.i ; 9 uses
  %i.hf = icmp samesign ult i64 %.sroa.15.0.i.i, 9
  br i1 %i.hf, label %.preheader.i.i, label %.preheader60.i.i

.preheader.i.i:                                   ; preds = %bb.bt
  %.not5671.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5671.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.bu:                                            ; preds = %bb.bv
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.170.i.i, i64 1
  %i.hh = add nsw i64 %.sroa.15.169.i.i, -1       ; 2 uses
  %i.hi = shl nuw i32 %.sroa.045.068.i.i, 3
  %i.hj = or disjoint i32 %i.hp, %i.hi            ; 2 uses
  %.not55.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not55.i.i, label %.loopexit.i.i, label %.preheader60.i.i

.loopexit.i.i:                                    ; preds = %bb.bu, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %.preheader.i.i
  %.sroa.045.1.i.i = phi i32 [ %i.jt, %bb.ce ], [ 0, %.preheader.i.i ], [ %i.hv, %bb.bx ], [ %i.id, %bb.by ], [ %i.ik, %bb.bz ], [ %i.ir, %bb.ca ], [ %i.iy, %bb.cb ], [ %i.jf, %bb.cc ], [ %i.jm, %bb.cd ], [ %i.hj, %bb.bu ]
  %i.hk = zext i32 %.sroa.045.1.i.i to i64
  %i.hl = shl nuw i64 %i.hk, 32
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.i

.preheader60.i.i:                                 ; preds = %bb.bt, %bb.bu
  %.sroa.0.170.i.i = phi ptr [ %i.hg, %bb.bu ], [ %.sroa.0.0.i.i, %bb.bt ] ; 2 uses
  %.sroa.15.169.i.i = phi i64 [ %i.hh, %bb.bu ], [ %.sroa.15.0.i.i, %bb.bt ]
  %.sroa.045.068.i.i = phi i32 [ %i.hj, %bb.bu ], [ 0, %bb.bt ] ; 2 uses
  %i.hm = icmp ugt i32 %.sroa.045.068.i.i, 536870911
  %i.hn = load i8, ptr %.sroa.0.170.i.i, align 1, !alias.scope !13299, !noalias !13296, !noundef !15 ; 2 uses
  br i1 %i.hm, label %bb.bw, label %bb.bv, !prof !14

bb.bv:                                            ; preds = %.preheader60.i.i
  %i.ho = zext i8 %i.hn to i32
  %i.hp = add nsw i32 %i.ho, -48                  ; 2 uses
  %i.hq = icmp ult i32 %i.hp, 8
  br i1 %i.hq, label %bb.bu, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i

bb.bw:                                            ; preds = %.preheader60.i.i
  %i.hr = and i8 %i.hn, -8
  %i.hs = icmp eq i8 %i.hr, 48
  %spec.select.i.i = select i1 %i.hs, i64 513, i64 257
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ht = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !13299, !noalias !13296, !noundef !15
  %i.hu = zext i8 %i.ht to i32
  %i.hv = add nsw i32 %i.hu, -48                  ; 3 uses
  %i.hw = icmp ult i32 %i.hv, 8
  br i1 %i.hw, label %bb.bx, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i

bb.bx:                                            ; preds = %.lr.ph.i.i
  %.not56.i.i = icmp eq i64 %.sroa.15.0.i.i, 1
  br i1 %.not56.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.bx
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !alias.scope !13299, !noalias !13296, !noundef !15
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add nsw i32 %i.hz, -48                  ; 2 uses
  %i.ib = icmp ult i32 %i.ia, 8
  br i1 %i.ib, label %bb.by, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i

bb.by:                                            ; preds = %.lr.ph.i.i.1
  %i.ic = shl nuw nsw i32 %i.hv, 3
  %i.id = or disjoint i32 %i.ia, %i.ic            ; 2 uses
  %.not56.i.i.1 = icmp eq i64 %.sroa.15.0.i.i, 2
  br i1 %.not56.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.by
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !13299, !noalias !13296, !noundef !15
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nsw i32 %i.ig, -48                  ; 2 uses
  %i.ii = icmp ult i32 %i.ih, 8
  br i1 %i.ii, label %bb.bz, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i

bb.bz:                                            ; preds = %.lr.ph.i.i.2
  %i.ij = shl nuw nsw i32 %i.id, 3
  %i.ik = or disjoint i32 %i.ih, %i.ij            ; 2 uses
  %.not56.i.i.2 = icmp eq i64 %.sroa.15.0.i.i, 3
  br i1 %.not56.i.i.2, label %.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.bz
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 3
  %i.im = load i8, ptr %i.il, align 1, !alias.scope !13299, !noalias !13296, !noundef !15
  %i.in = zext i8 %i.im to i32
  %i.io = add nsw i32 %i.in, -48                  ; 2 uses
  %i.ip = icmp ult i32 %i.io, 8
  br i1 %i.ip, label %bb.ca, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i

bb.ca:                                            ; preds = %.lr.ph.i.i.3
  %i.iq = shl nuw nsw i32 %i.ik, 3
  %i.ir = or disjoint i32 %i.io, %i.iq            ; 2 uses
  %.not56.i.i.3 = icmp eq i64 %.sroa.15.0.i.i, 4
  br i1 %.not56.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %bb.ca
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  %i.it = load i8, ptr %i.is, align 1, !alias.scope !13299, !noalias !13296, !noundef !15
  %i.iu = zext i8 %i.it to i32
  %i.iv = add nsw i32 %i.iu, -48                  ; 2 uses
  %i.iw = icmp ult i32 %i.iv, 8
  br i1 %i.iw, label %bb.cb, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i

bb.cb:                                            ; preds = %.lr.ph.i.i.4
  %i.ix = shl i32 %i.ir, 3
  %i.iy = or disjoint i32 %i.iv, %i.ix            ; 2 uses
  %.not56.i.i.4 = icmp eq i64 %.sroa.15.0.i.i, 5
  br i1 %.not56.i.i.4, label %.loopexit.i.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %bb.cb
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 5
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !13299, !noalias !13296, !noundef !15
  %i.jb = zext i8 %i.ja to i32
  %i.jc = add nsw i32 %i.jb, -48                  ; 2 uses
  %i.jd = icmp ult i32 %i.jc, 8
  br i1 %i.jd, label %bb.cc, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i

bb.cc:                                            ; preds = %.lr.ph.i.i.5
  %i.je = shl i32 %i.iy, 3
  %i.jf = or disjoint i32 %i.jc, %i.je            ; 2 uses
  %.not56.i.i.5 = icmp eq i64 %.sroa.15.0.i.i, 6
  br i1 %.not56.i.i.5, label %.loopexit.i.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %bb.cc
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 6
  %i.jh = load i8, ptr %i.jg, align 1, !alias.scope !13299, !noalias !13296, !noundef !15
  %i.ji = zext i8 %i.jh to i32
  %i.jj = add nsw i32 %i.ji, -48                  ; 2 uses
  %i.jk = icmp ult i32 %i.jj, 8
  br i1 %i.jk, label %bb.cd, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i

bb.cd:                                            ; preds = %.lr.ph.i.i.6
  %i.jl = shl i32 %i.jf, 3
  %i.jm = or disjoint i32 %i.jj, %i.jl            ; 2 uses
  %.not56.i.i.6 = icmp eq i64 %.sroa.15.0.i.i, 7
  br i1 %.not56.i.i.6, label %.loopexit.i.i, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %bb.cd
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 7
  %i.jo = load i8, ptr %i.jn, align 1, !alias.scope !13299, !noalias !13296, !noundef !15
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add nsw i32 %i.jp, -48                  ; 2 uses
  %i.jr = icmp ult i32 %i.jq, 8
  br i1 %i.jr, label %bb.ce, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i

bb.ce:                                            ; preds = %.lr.ph.i.i.7
  %i.js = shl i32 %i.jm, 3
  %i.jt = or disjoint i32 %i.jq, %i.js
  br label %.loopexit.i.i

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.i: ; preds = %bb.bw, %.loopexit.i.i
  %.sroa.8.0.insert.insert.i.i = phi i64 [ %spec.select.i.i, %bb.bw ], [ %i.hl, %.loopexit.i.i ] ; 4 uses
  %i.ju = trunc i64 %.sroa.8.0.insert.insert.i.i to i1
  br i1 %i.ju, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !61

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread.i: ; preds = %bb.bv, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %.lr.ph.i.i.7, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.i, %bb.bs, %bb.bs, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.sroa.8.0.insert.insert.i24.i = phi i64 [ %.sroa.8.0.insert.insert.i.i, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.i ], [ 256, %.lr.ph.i.i ], [ 256, %bb.bs ], [ 256, %bb.bs ], [ %i.hb, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ 256, %.lr.ph.i.i.7 ], [ 256, %.lr.ph.i.i.6 ], [ 256, %.lr.ph.i.i.5 ], [ 256, %.lr.ph.i.i.4 ], [ 256, %.lr.ph.i.i.3 ], [ 256, %.lr.ph.i.i.2 ], [ 256, %.lr.ph.i.i.1 ], [ 256, %bb.bv ]
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.8.0.insert.insert.i24.i, 8
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13296
  store i8 %.sroa.4.0.extract.trunc.i.i, ptr %i.b, align 1, !noalias !13296
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #41, !noalias !13296
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.i
  %.sroa.6.0.extract.shift.i.i120 = lshr i64 %.sroa.8.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i121 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i120 to i32 ; 2 uses
  %i.jv = xor i32 %.sroa.6.0.extract.trunc.i.i121, 55296
  %i.jw = add i32 %i.jv, -1114112
  %i.jx = icmp ult i32 %i.jw, -1112064
  br i1 %i.jx, label %bb.ci, label %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser11parse_octet.exit, !prof !14

bb.cf:                                            ; preds = %bb.bp
  %.not.i = icmp eq i64 %i.o, %i.bl
  br i1 %.not.i, label %bb.bq, label %bb.ch

bb.cg:                                            ; preds = %bb.cj, %bb.bp
  %.lcssa39.i = phi i64 [ %i.bl, %bb.bp ], [ %i.kb, %bb.cj ]
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.lcssa39.i, i64 noundef %i.o, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #41, !noalias !13296
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.jy = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bl
  %i.jz = load i8, ptr %i.jy, align 1, !noalias !13296, !noundef !15 ; 2 uses
  %i.ka = and i8 %i.jz, -8
  %or.cond.i = icmp eq i8 %i.ka, 48
  br i1 %or.cond.i, label %bb.cj, label %bb.bq

bb.ci:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #41, !noalias !13296
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.kb = add i64 %i.bl, 1                        ; 5 uses
  store i64 %i.kb, ptr %i.p, align 8, !alias.scope !13300
  store i8 %i.jz, ptr %i.gs, align 1, !noalias !13296
  %i.kc = icmp ugt i64 %i.kb, %i.o
  br i1 %i.kc, label %bb.cg, label %bb.ck, !prof !14

bb.ck:                                            ; preds = %bb.cj
  %.not.1.i = icmp eq i64 %i.o, %i.kb
  br i1 %.not.1.i, label %bb.bq, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kd = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.kb
  %i.ke = load i8, ptr %i.kd, align 1, !noalias !13296, !noundef !15 ; 2 uses
  %i.kf = and i8 %i.ke, -8
  %or.cond.1.i = icmp eq i8 %i.kf, 48
  br i1 %or.cond.1.i, label %bb.cm, label %bb.bq

bb.cm:                                            ; preds = %bb.cl
  %i.kg = add i64 %i.bl, 2
  store i64 %i.kg, ptr %i.p, align 8, !alias.scope !13300
  store i8 %i.ke, ptr %i.gt, align 1, !noalias !13296
  br label %bb.bq

_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser11parse_octet.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.kh = icmp ult i64 %.sroa.8.0.insert.insert.i.i, 4785074604081152
  call void @llvm.assume(i1 %i.kh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13296
  br label %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser18parse_unicode_name.exit

bb.cn:                                            ; preds = %bb.u, %bb.w, %bb.z, %bb.aa, %bb.ad, %bb.bj, %bb.bo, %bb.co, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser18parse_unicode_name.exit
  ret void

bb.co:                                            ; preds = %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser9next_char.exit.thread
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i32, ptr %i.ki, align 8, !noundef !15
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.kj = add i32 %.val, %.sroa.6.0.extract.trunc.i.i ; 2 uses
  store i8 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.kj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.kj, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.cn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser21parse_unicode_literal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1, i64 noundef range(i64 2, 9) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val45 = load i32, ptr %i.d, align 8, !noundef !15 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !15  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 8 uses
  %.promoted = load i64, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.s
  %i.h = phi i64 [ %.promoted, %bb.a ], [ %i.br, %bb.s ] ; 13 uses
  %.sroa.0.0135 = phi i32 [ 0, %bb.a ], [ %i.cd, %bb.s ]
  %.sroa.0.096134 = phi i64 [ 1, %bb.a ], [ %spec.select109, %bb.s ] ; 3 uses
  %i.i = icmp uge i64 %.sroa.0.096134, %2         ; 2 uses
  %not. = xor i1 %i.i, true
  %i.j = zext i1 %not. to i64
  %spec.select109 = add nuw i64 %.sroa.0.096134, %i.j ; 2 uses
  %i.k = icmp ugt i64 %i.h, 4294967295
  %i.l = shl nuw i64 %i.h, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.k, i64 513, i64 %i.l ; 3 uses
  %i.m = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.m, label %bb.c, label %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser16compute_position.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13315
  store i8 2, ptr %i.b, align 1, !noalias !13315
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #41
  unreachable

_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser16compute_position.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13316)
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser16compute_position.exit
  %.not.i.i = icmp ult i64 %i.h, %i.g
  br i1 %.not.i.i, label %bb.e, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d
  %i.o = icmp eq i64 %i.h, %i.g
  br i1 %i.o, label %bb.f, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !13317, !noalias !13316, !noundef !15
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %.split.i.i, %_RNvMs2_NtCsb6FLkjZuKG_18ruff_python_parser6stringNtB5_12StringParser16compute_position.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 4 uses
  %i.t = icmp samesign eq i64 %i.h, %i.g
  br i1 %i.t, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.s, align 1, !noalias !13318, !noundef !15 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = and i8 %i.u, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = add nuw nsw i64 %i.h, 1
  %i.aa = icmp samesign ne i64 %i.z, %i.g
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.w, align 1, !noalias !13318, !noundef !15
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.u, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.thread.i: ; preds = %bb.g
  %i.ah = zext nneg i8 %i.u to i32
  br label %bb.q

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.aj = add nuw nsw i64 %i.h, 2
  %i.ak = icmp samesign ne i64 %i.aj, %i.g
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !13318, !noundef !15
  %i.am = shl nuw nsw i32 %i.ae, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.y, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.u, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.au = add nuw nsw i64 %i.h, 3
  %i.av = icmp samesign ne i64 %i.au, %i.g
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !13318, !noundef !15
  %i.ax = shl nuw nsw i32 %i.y, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i
  %.sroa.4.0.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i ], [ %i.af, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i ] ; 6 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.i, 128
  br i1 %i.be, label %bb.q, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsb6FLkjZuKG_18ruff_python_parser.exit.i
end_hunk_1
