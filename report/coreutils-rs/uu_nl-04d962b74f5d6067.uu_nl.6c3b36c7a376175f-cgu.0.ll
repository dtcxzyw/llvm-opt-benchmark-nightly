Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_nl-04d962b74f5d6067.uu_nl.6c3b36c7a376175f-cgu.0?download=true
inline.NumInlined: 663
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCs9i6ZclbYTs9_5uu_nl6helper13parse_options:bb.a
  %i.gr = icmp eq i128 %.sroa.013.0.copyload.i.i, -62271773597008635811074466929279596351
  br i1 %i.gr, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1306
  %i.gs = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.gq) #22, !noalias !1307 ; 3 uses
  %.not8.i = icmp eq ptr %i.gs, null
  br i1 %.not8.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRjEECs9i6ZclbYTs9_5uu_nl.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val.i = load ptr, ptr %i.gs, align 8, !noalias !1307, !nonnull !4, !noundef !4
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  %.val10.i = load ptr, ptr %i.gt, align 8, !noalias !1307, !nonnull !4, !align !144, !noundef !4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !range !145, !invariant.load !4, !noalias !1307
  %i.gw = add nsw i64 %i.gv, -1
  %i.gx = and i64 %i.gw, -16
  %i.gy = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1307
  %i.ha = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !invariant.load !4, !noalias !1307, !nonnull !4
  call void %i.hb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noundef nonnull %i.gz) #24, !noalias !1307, !inline_history !1308
  %i.hc = load i128, ptr %i.p, align 16, !noalias !1307, !noundef !4
  %.not.i107 = icmp eq i128 %i.hc, -62271773597008635811074466929279596351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1307
  br i1 %.not.i107, label %bb.ap, label %bb.an, !prof !147

bb.an:                                            ; preds = %bb.am
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23, !noalias !1307
  unreachable

bb.ao:                                            ; preds = %bb.ak
  %i.hd = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.he = trunc nuw i128 %i.hd to i64
  %i.hf = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.hg = inttoptr i64 %i.hf to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @57, ptr %i.o, align 8, !noalias !1309
  %i.hh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 12, ptr %i.hh, align 8, !noalias !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1309
  store i64 0, ptr %i.n, align 8
  %.sroa.7177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.hg, ptr %.sroa.7177.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.he, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i128 -62271773597008635811074466929279596351, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1309
  store ptr %i.o, ptr %i.m, align 8, !noalias !1309
  %.sroa.42.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs9i6ZclbYTs9_5uu_nl, ptr %.sroa.42.0..sroa_idx.i109, align 8, !noalias !1309
  %i.hi = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.hi, align 8, !noalias !1309
  %.sroa.46.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i110, align 8, !noalias !1309
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23, !noalias !1309
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.hj = load i64, ptr %i.gz, align 8, !noundef !4 ; 2 uses
  %.not68 = icmp eq i64 %i.hj, 0
  br i1 %.not68, label %bb.ay, label %bb.ax

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRjEECs9i6ZclbYTs9_5uu_nl.exit.thread: ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.al, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs9i6ZclbYTs9_5uu_nl.exit135, %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  br label %.lr.ph.i.i.i112

.lr.ph.i.i.i112:                                  ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRjEECs9i6ZclbYTs9_5uu_nl.exit.thread, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i116
  %.sroa.0.0917.i.i.i113 = phi ptr [ %i.hk, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i116 ], [ %i.fr, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRjEECs9i6ZclbYTs9_5uu_nl.exit.thread ] ; 3 uses
  %.sroa.8.016.i.i.i114 = phi i64 [ %i.hl, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i116 ], [ 0, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRjEECs9i6ZclbYTs9_5uu_nl.exit.thread ] ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i113, i64 16 ; 2 uses
  %i.hl = add nuw nsw i64 %.sroa.8.016.i.i.i114, 1
  %i.hm = getelementptr i8, ptr %.sroa.0.0917.i.i.i113, i64 8
  %.val7.i.i.i115 = load i64, ptr %i.hm, align 8, !noalias !1321, !noundef !4
  %i.hn = icmp eq i64 %.val7.i.i.i115, 16
  br i1 %i.hn, label %.split.i.i.i118, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i116

.split.i.i.i118:                                  ; preds = %.lr.ph.i.i.i112
  %.val.i.i.i119 = load ptr, ptr %.sroa.0.0917.i.i.i113, align 8, !noalias !1321, !nonnull !4, !noundef !4
  %i.ho = load i128, ptr %.val.i.i.i119, align 1
  %i.hp = icmp ne i128 %i.ho, 153387880915470098707885008342902992746
  %i.hq = zext i1 %i.hp to i32
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.aq, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i116

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i116: ; preds = %.split.i.i.i118, %.lr.ph.i.i.i112
  %i.hs = icmp eq ptr %i.hk, %i.fu
  br i1 %i.hs, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRyEECs9i6ZclbYTs9_5uu_nl.exit.thread, label %.lr.ph.i.i.i112

bb.aq:                                            ; preds = %.split.i.i.i118
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !1325, !noalias !1326, !noundef !4 ; 2 uses
  %i.hv = icmp ult i64 %.sroa.8.016.i.i.i114, %i.hu
  br i1 %i.hv, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i114, i64 noundef %i.hu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !1321
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !1325, !noalias !1326, !nonnull !4, !noundef !4
  %i.hy = getelementptr inbounds nuw [104 x i8], ptr %i.hx, i64 %.sroa.8.016.i.i.i114 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1327
  store i128 -147457254988281438159280264631028149675, ptr %i.k, align 16, !noalias !1327
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.hy, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.k) #22, !noalias !1327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1327
  %.sroa.013.0.copyload.i.i121 = load i128, ptr %i.l, align 16, !noalias !1327 ; 3 uses
  %i.hz = icmp eq i128 %.sroa.013.0.copyload.i.i121, -147457254988281438159280264631028149675
  br i1 %i.hz, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1327
  %i.ia = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.hy) #22, !noalias !1328 ; 3 uses
  %.not8.i125 = icmp eq ptr %i.ia, null
  br i1 %.not8.i125, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRyEECs9i6ZclbYTs9_5uu_nl.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val.i126 = load ptr, ptr %i.ia, align 8, !noalias !1328, !nonnull !4, !noundef !4
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %.val10.i127 = load ptr, ptr %i.ib, align 8, !noalias !1328, !nonnull !4, !align !144, !noundef !4 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.val10.i127, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !range !145, !invariant.load !4, !noalias !1328
  %i.ie = add nsw i64 %i.id, -1
  %i.if = and i64 %i.ie, -16
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i126, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1328
  %i.ii = getelementptr inbounds nuw i8, ptr %.val10.i127, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !invariant.load !4, !noalias !1328, !nonnull !4
  call void %i.ij(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull %i.ih) #24, !noalias !1328, !inline_history !1329
  %i.ik = load i128, ptr %i.j, align 16, !noalias !1328, !noundef !4
  %.not.i128 = icmp eq i128 %i.ik, -147457254988281438159280264631028149675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1328
  br i1 %.not.i128, label %bb.ba, label %bb.av, !prof !147

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23, !noalias !1328
  unreachable

bb.aw:                                            ; preds = %bb.as
  %i.il = lshr i128 %.sroa.013.0.copyload.i.i121, 64
  %i.im = trunc nuw i128 %i.il to i64
  %i.in = trunc i128 %.sroa.013.0.copyload.i.i121 to i64
  %i.io = inttoptr i64 %i.in to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @42, ptr %i.i, align 8, !noalias !1330
  %i.ip = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 16, ptr %i.ip, align 8, !noalias !1330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1330
  store i64 0, ptr %i.h, align 8
  %.sroa.7183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.io, ptr %.sroa.7183.0..sroa_idx, align 8
  %.sroa.11184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.im, ptr %.sroa.11184.0..sroa_idx, align 8
  %.sroa.12185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i128 -147457254988281438159280264631028149675, ptr %.sroa.12185.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1330
  store ptr %i.i, ptr %i.g, align 8, !noalias !1330
  %.sroa.42.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs9i6ZclbYTs9_5uu_nl, ptr %.sroa.42.0..sroa_idx.i130, align 8, !noalias !1330
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.iq, align 8, !noalias !1330
  %.sroa.46.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i131, align 8, !noalias !1330
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23, !noalias !1330
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRyEECs9i6ZclbYTs9_5uu_nl.exit.thread.critedge: ; preds = %.thread193
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRyEECs9i6ZclbYTs9_5uu_nl.exit.thread

bb.ax:                                            ; preds = %bb.ap
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.hj, ptr %i.ir, align 8
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRjEECs9i6ZclbYTs9_5uu_nl.exit.thread

bb.ay:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 0, ptr %i.aw, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1333
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs9i6ZclbYTs9_5uu_nl(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %.pre = load i64, ptr %i.bb, align 8, !alias.scope !1336, !noalias !1339 ; 3 uses
  %.pre220 = load i64, ptr %i.az, align 8, !range !40, !alias.scope !1336, !noalias !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.is = icmp eq i64 %.pre, %.pre220
  br i1 %i.is, label %bb.az, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs9i6ZclbYTs9_5uu_nl.exit135

bb.az:                                            ; preds = %bb.ay
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2vKOLqTMYjT_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az) #21, !noalias !1339
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs9i6ZclbYTs9_5uu_nl.exit135

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs9i6ZclbYTs9_5uu_nl.exit135: ; preds = %bb.ay, %bb.az
  %i.it = load ptr, ptr %i.ba, align 8, !alias.scope !1336, !noalias !1339, !nonnull !4, !noundef !4
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %.pre
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  %i.iv = add i64 %.pre, 1
  store i64 %i.iv, ptr %i.bb, align 8, !alias.scope !1336, !noalias !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRjEECs9i6ZclbYTs9_5uu_nl.exit.thread

bb.ba:                                            ; preds = %bb.au
  %i.iw = load i64, ptr %i.ih, align 8, !noundef !4
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.iw, ptr %i.ix, align 8
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRyEECs9i6ZclbYTs9_5uu_nl.exit.thread

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRyEECs9i6ZclbYTs9_5uu_nl.exit.thread: ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i116, %bb.at, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRyEECs9i6ZclbYTs9_5uu_nl.exit.thread.critedge, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onexECs9i6ZclbYTs9_5uu_nl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 14) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @39, ptr %i.f, align 8, !noalias !1344
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 14, ptr %i.iy, align 8, !noalias !1344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1344
  %i.iz = load i64, ptr %i.al, align 8, !range !296, !alias.scope !1341, !noalias !1346, !noundef !4
  %.not.i136 = icmp eq i64 %i.iz, 2
  br i1 %.not.i136, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRxEECs9i6ZclbYTs9_5uu_nl.exit, label %bb.bb, !prof !147

bb.bb:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRyEECs9i6ZclbYTs9_5uu_nl.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !1346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1344
  store ptr %i.f, ptr %i.d, align 8, !noalias !1344
  %.sroa.42.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs9i6ZclbYTs9_5uu_nl, ptr %.sroa.42.0..sroa_idx.i137, align 8, !noalias !1344
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ja, align 8, !noalias !1344
  %.sroa.46.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i138, align 8, !noalias !1344
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23, !noalias !1341
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRxEECs9i6ZclbYTs9_5uu_nl.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRyEECs9i6ZclbYTs9_5uu_nl.exit.thread
  %i.jb = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !1341, !noalias !1346, !align !144, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.not70 = icmp eq ptr %i.jc, null
  br i1 %.not70, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRxEECs9i6ZclbYTs9_5uu_nl.exit
  %i.jd = load i64, ptr %i.jc, align 8, !noundef !4
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.jd, ptr %i.je, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRxEECs9i6ZclbYTs9_5uu_nl.exit, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onexECs9i6ZclbYTs9_5uu_nl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 20) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @55, ptr %i.c, align 8, !noalias !1350
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 20, ptr %i.jf, align 8, !noalias !1350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1350
  %i.jg = load i64, ptr %i.ak, align 8, !range !296, !alias.scope !1347, !noalias !1352, !noundef !4
  %.not.i139 = icmp eq i64 %i.jg, 2
  br i1 %.not.i139, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRxEECs9i6ZclbYTs9_5uu_nl.exit142, label %bb.be, !prof !147

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ak, i64 40, i1 false), !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1350
  store ptr %i.c, ptr %i.a, align 8, !noalias !1350
  %.sroa.42.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs9i6ZclbYTs9_5uu_nl, ptr %.sroa.42.0..sroa_idx.i140, align 8, !noalias !1350
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.jh, align 8, !noalias !1350
  %.sroa.46.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i141, align 8, !noalias !1350
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23, !noalias !1347
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRxEECs9i6ZclbYTs9_5uu_nl.exit142: ; preds = %bb.bd
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !alias.scope !1347, !noalias !1352, !align !144, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.not71 = icmp eq ptr %i.jj, null
  br i1 %.not71, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRxEECs9i6ZclbYTs9_5uu_nl.exit142
  %i.jk = load i64, ptr %i.jj, align 8, !noundef !4
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.jk, ptr %i.jl, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRxEECs9i6ZclbYTs9_5uu_nl.exit142, %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXCs9i6ZclbYTs9_5uu_nlNtB2_8SettingsNtNtCs6JMX4GRUq9U_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1353
  %i.a = tail call noundef dereferenceable_or_null(2) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef range(i64 1, 9) 1) #22, !noalias !1353 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  store i16 14940, ptr %i.a, align 1
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1356
  %i.c = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #22, !noalias !1356 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  store i8 9, ptr %i.c, align 1
  store i64 2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.a, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 2, ptr %.sroa.55.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 6, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %i.k, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.c, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x i64> splat (i64 1), ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtCs7tKScEop1B6_5alloc6string6StringNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @14, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyjNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @5, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyxNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @6, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyyNtB2_3Any7type_idCs9i6ZclbYTs9_5uu_nl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_Cs9i6ZclbYTs9_5uu_nlNtB5_14NumberingStyleINtNtCs6JMX4GRUq9U_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
end_hunk_0
