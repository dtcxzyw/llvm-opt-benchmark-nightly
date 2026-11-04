Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertB6_:bb.a
  %.sroa.0.0.copyload.i.i.i.12.i.i = load i64, ptr %i.bd, align 1, !alias.scope !1618
  %.sroa.02.0.copyload.i.i.i.12.i.i = load i64, ptr %i.be, align 8, !alias.scope !1619
  store i64 %.sroa.02.0.copyload.i.i.i.12.i.i, ptr %i.bd, align 1, !alias.scope !1618
  store i64 %.sroa.0.0.copyload.i.i.i.12.i.i, ptr %i.be, align 8, !alias.scope !1619
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.017, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #44
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB2_9Colorizer12with_content(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) initializes((16, 24)) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  %.val.i.i = load i64, ptr %1, align 8, !range !11, !alias.scope !1626, !noundef !10 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1626, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1626
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 16               ; 4 uses
  %i.o = alloca [712 x i8], align 8               ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = load ptr, ptr %0, align 8, !nonnull !10, !align !16, !noundef !10 ; 27 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.w = load i64, ptr %i.v, align 8, !range !12, !alias.scope !1669, !noundef !10
  %.not.i = icmp eq i64 %i.w, -1
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %i.u, i64 472
  %.val = load ptr, ptr %i.x, align 8, !nonnull !10, !noundef !10
  %i.y = getelementptr i8, ptr %i.u, i64 480
  %.val3 = load i64, ptr %i.y, align 8, !noundef !10 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1672, !noundef !10 ; 5 uses
  %i.ab = load i64, ptr %1, align 8, !range !11, !alias.scope !1672, !noundef !10
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = icmp ugt i64 %.val3, %i.ac
  br i1 %i.ad, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aa, i64 noundef %.val3, i64 noundef 1, i64 noundef 1) #43
  %i.ae = load i64, ptr %i.z, align 8, !alias.scope !1673, !noundef !10 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  br label %bb.c

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %bb.b
  %i.ag = icmp sgt i64 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ag)
  %.not.i.i = icmp eq i64 %.val3, 0
  br i1 %.not.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %i.ah = phi i64 [ %i.ae, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.aa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1673, !nonnull !10, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %.val, i64 %.val3, i1 false), !noalias !1673
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %bb.c
  %i.al = phi i64 [ %i.ah, %bb.c ], [ %i.aa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.am = add i64 %i.al, %.val3
  store i64 %i.am, ptr %i.z, align 8, !alias.scope !1673
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage16write_help_usage.exit

bb.d:                                             ; preds = %bb.a
  %i.an = icmp eq i64 %3, 0
  br i1 %i.an, label %bb.j, label %bb.e

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage16write_help_usage.exit: ; preds = %.loopexit, %bb.m, %bb.u, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17write_smart_usage.exit, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit
  ret void

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1675
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !1674, !nonnull !10, !align !37, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store ptr %i.aq, ptr %i.s, align 8, !noalias !1675
  store ptr %i.s, ptr %i.t, align 8, !noalias !1675
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage15write_arg_usage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 1, 576460752303423488) %3, i1 noundef zeroext true) #43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 700
  %i.as = load i32, ptr %i.ar, align 4, !noalias !1674, !noundef !10
  %i.at = and i32 %i.as, 512
  %.not.i4 = icmp eq i32 %i.at, 0
  br i1 %.not.i4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 704
  %i.av = load i32, ptr %i.au, align 8, !noalias !1674, !noundef !10
  %i.aw = and i32 %i.av, 512
  %.not20.i = icmp eq i32 %i.aw, 0
  br i1 %.not20.i, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17write_smart_usage.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1675
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 656
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1674, !noundef !10 ; 2 uses
  %.not21.i = icmp eq ptr %i.ay, null
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 664
  %i.ba = load i64, ptr %i.az, align 8, !noalias !1674, !noundef !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink22.i = phi ptr [ %i.ay, %bb.h ], [ @216, %bb.g ]
  %.sink.i = phi i64 [ %i.ba, %bb.h ], [ 7, %bb.g ]
  store ptr %.sink22.i, ptr %i.r, align 8, !noalias !1675, !captures !21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sink.i, ptr %i.bb, align 8, !noalias !1675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1675
  store ptr %i.t, ptr %i.q, align 8, !noalias !1675
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !1675
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.bc, align 8, !noalias !1675
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !1675
  %i.bd = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @200, ptr noundef nonnull %i.q) #43, !noalias !1674 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1675
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17write_smart_usage.exit

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17write_smart_usage.exit: ; preds = %bb.f, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1675
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage16write_help_usage.exit

bb.j:                                             ; preds = %bb.d
  %i.be = getelementptr i8, ptr %i.u, i64 184     ; 2 uses
  %.val.i = load ptr, ptr %i.be, align 8, !noalias !1676, !nonnull !10, !noundef !10 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.u, i64 192     ; 2 uses
  %.val36.i = load i64, ptr %i.bf, align 8, !noalias !1676, !noundef !10 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val36.i, 712
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i
  %.not.i.i22 = icmp eq i64 %.val36.i, 0
  br i1 %.not.i.i22, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i
  %i.bh = phi ptr [ %i.bi, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i ], [ %.val.i, %bb.j ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 712 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677), !noalias !1676
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 568
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1677, !noalias !1678, !noundef !10
  %i.bl = icmp eq i64 %i.bk, 4
  br i1 %i.bl, label %bb.k, label %.split.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 560
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1677, !noalias !1678, !nonnull !10, !noundef !10
  %i.bo = load i32, ptr %i.bn, align 1
  %i.bp = icmp ne i32 %i.bo, 1886152040
  %i.bq = zext i1 %i.bp to i32
  %.not.i.i.i23 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i23, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 700
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !alias.scope !1677, !noalias !1678
  %.fr12 = freeze <2 x i32> %i.bs
  %4 = and <2 x i32> %.fr12, splat (i32 8388608)
  %.scalar = bitcast <2 x i32> %4 to i64
  %.sroa.01.0.i.i.i = icmp eq i64 %.scalar, 0
  br i1 %.sroa.01.0.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i: ; preds = %.split.i.i, %bb.k
  %.not5.i.i = icmp eq ptr %i.bi, %i.bg
  br i1 %.not5.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.thread, label %.lr.ph.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.thread: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i, %bb.j, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit
  tail call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage15write_arg_usage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, i1 noundef zeroext true) #43, !inline_history !1646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %.val.i16 = load ptr, ptr %i.be, align 8, !noalias !1680, !nonnull !10, !noundef !10 ; 2 uses
  %.val110.i = load i64, ptr %i.bf, align 8, !noalias !1680, !noundef !10 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val110.i, 712
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %.idx.i.i
  %.not.i.i.i = icmp eq i64 %.val110.i, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.thread, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i
  %i.bu = phi ptr [ %i.bv, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i ], [ %.val.i16, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.thread ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 712 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 568
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1681, !noalias !1682, !noundef !10
  %i.by = icmp eq i64 %i.bx, 4
  br i1 %i.by, label %bb.l, label %.split.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 560
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !1681, !noalias !1682, !nonnull !10, !noundef !10
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = icmp ne i32 %i.cb, 1886152040
  %i.cd = zext i1 %i.cc to i32
  %.not.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 700
  %i.cf = load <2 x i32>, ptr %i.ce, align 4, !alias.scope !1681, !noalias !1682
  %.fr13 = freeze <2 x i32> %i.cf
  %5 = and <2 x i32> %.fr13, splat (i32 8388608)
  %.scalar14 = bitcast <2 x i32> %5 to i64
  %.sroa.01.0.i.i.i.i = icmp eq i64 %.scalar14, 0
  br i1 %.sroa.01.0.i.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %bb.l
  %.not5.i.i.i = icmp eq ptr %i.bv, %i.bt
  br i1 %.not5.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i17

.loopexit.i:                                      ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 700
  %i.ch = load i32, ptr %i.cg, align 4, !noalias !1680, !noundef !10
  %i.ci = and i32 %i.ch, 1024
  %.not.i18 = icmp eq i32 %i.ci, 0
  br i1 %.not.i18, label %bb.m, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i: ; preds = %.split.i.i.i, %bb.m, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1680
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !1679, !nonnull !10, !align !37, !noundef !10 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 42
  store ptr %i.cl, ptr %i.j, align 8, !noalias !1680
  store ptr %i.j, ptr %i.k, align 8, !noalias !1680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1680
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store ptr %i.cm, ptr %i.h, align 8, !noalias !1680
  store ptr %i.h, ptr %i.i, align 8, !noalias !1680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1680
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 656
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !1680, !noundef !10 ; 2 uses
  %.not97.i = icmp eq ptr %i.co, null
  br i1 %.not97.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.loopexit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 704
  %i.cq = load i32, ptr %i.cp, align 8, !noalias !1680, !noundef !10
  %i.cr = and i32 %i.cq, 1024
  %.not96.i = icmp eq i32 %i.cr, 0
  br i1 %.not96.i, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage16write_help_usage.exit, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i

bb.n:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 664
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !1680, !noundef !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i
  %.sink112.i = phi ptr [ %i.co, %bb.n ], [ @216, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ]
  %.sink.i19 = phi i64 [ %i.ct, %bb.n ], [ 7, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ]
  store ptr %.sink112.i, ptr %i.g, align 8, !noalias !1680, !captures !21
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sink.i19, ptr %i.cu, align 8, !noalias !1680
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 700 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !noalias !1680, !noundef !10 ; 2 uses
  %i.cx = and i32 %i.cw, 4096
  %.not98.i = icmp eq i32 %i.cx, 0
  br i1 %.not98.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.u, i64 704
  %i.cz = load i32, ptr %i.cy, align 8, !noalias !1680, !noundef !10 ; 2 uses
  %i.da = and i32 %i.cz, 4096
  %i.db = or i32 %i.cz, %i.cw                     ; 2 uses
  %i.dc = and i32 %i.db, 8192
  %i.dd = or disjoint i32 %i.dc, %i.da
  %or.cond108.i = icmp eq i32 %i.dd, 0
  br i1 %or.cond108.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #43, !noalias !1679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1680
  store ptr @236, ptr %i.f, align 8, !noalias !1680
  %.sroa.44.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.44.0..sroa_idx.i20, align 8, !noalias !1680
  %i.de = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @108, ptr noundef nonnull %i.f) #43, !noalias !1679 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1680
  %i.df = load i32, ptr %i.cv, align 4, !noalias !1679, !noundef !10
  %i.dg = and i32 %i.df, 8192
  %.not104.i = icmp eq i32 %i.dg, 0
  br i1 %.not104.i, label %bb.v, label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.dh = and i32 %i.db, 512
  %or.cond109.i = icmp eq i32 %i.dh, 0
  br i1 %or.cond109.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1680
  store ptr %i.i, ptr %i.a, align 8, !noalias !1680
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.479.0..sroa_idx.i, align 8, !noalias !1680
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.di, align 8, !noalias !1680
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.483.0..sroa_idx.i, align 8, !noalias !1680
  %i.dj = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @237, ptr noundef nonnull %i.a) #43, !noalias !1679 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1680
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1680
  store ptr %i.i, ptr %i.b, align 8, !noalias !1680
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !1680
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.dk, align 8, !noalias !1680
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.463.0..sroa_idx.i, align 8, !noalias !1680
  %i.dl = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @200, ptr noundef nonnull %i.b) #43, !noalias !1679 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1680
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1680
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage16write_help_usage.exit

bb.v:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.u, i64 704
  %i.dn = load i32, ptr %i.dm, align 8, !noalias !1679, !noundef !10
  %i.do = and i32 %i.dn, 8192
  %.not105.i = icmp eq i32 %i.do, 0
  br i1 %.not105.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage15write_arg_usage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, i1 noundef zeroext false) #43
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1680
  %i.dp = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.dq = load i64, ptr %i.dp, align 8, !range !12, !noalias !1679, !noundef !10
  %.not106.i = icmp eq i64 %i.dq, -1
  br i1 %.not106.i, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.ad, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1680
  store ptr %i.i, ptr %i.c, align 8, !noalias !1680
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !1680
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.dr, align 8, !noalias !1680
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !1680
  %i.ds = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @200, ptr noundef nonnull %i.c) #43, !noalias !1679 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1680
  br label %bb.u

bb.z:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !1679, !nonnull !10, !noundef !10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.u, i64 504
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !1679, !noundef !10
  store ptr %i.du, ptr %i.e, align 8, !noalias !1680, !captures !21
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !noalias !1680
  br label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 296
  %i.dz = load i64, ptr %i.dy, align 8, !range !12, !noalias !1679, !noundef !10
  %.not107.i = icmp eq i64 %i.dz, -1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %.not107.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !1679, !nonnull !10, !noundef !10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 312
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !1679, !noundef !10
  store ptr %i.ec, ptr %i.e, align 8, !noalias !1680
  store i64 %i.ee, ptr %i.ea, align 8, !noalias !1680
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 560
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !1679, !nonnull !10, !noundef !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 568
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !1679, !noundef !10
  store ptr %i.eg, ptr %i.e, align 8, !noalias !1680
  store i64 %i.ei, ptr %i.ea, align 8, !noalias !1680
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1680
  store ptr %i.k, ptr %i.d, align 8, !noalias !1680
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !1680
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ej, align 8, !noalias !1680
  %.sroa.423.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.423.0..sroa_idx.i21, align 8, !noalias !1680
  %i.ek = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @233, ptr noundef nonnull %i.d) #43, !noalias !1679 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1680
  br label %bb.y

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit: ; preds = %.split.i.i
  %i.el = getelementptr i8, ptr %i.u, i64 700
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help:.lr.ph.split.preheader.i.i
  %i.qp = load ptr, ptr %i.qo, align 8, !alias.scope !6786, !noalias !6785
  %.not.not.i.i.i.i.i.i.i.i.i131.i = icmp ne ptr %i.qp, null
  %or.cond.not.i.i.i.i.i.i.i.i132.i = select i1 %i.qn, i1 %.not.not.i.i.i.i.i.i.i.i.i131.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i132.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qf, i64 592
  %.val.i.i.i.i.i.i.i.i.i.i.i133.i = load i32, ptr %i.qq, align 8, !alias.scope !6787, !noalias !6785, !noundef !10 ; 4 uses
  %i.qr = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i133.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i134.i = icmp eq i32 %i.qr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i134.i, label %bb.bt, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i
  %i.qs = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i133.i, 8192
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i135.i = icmp eq i32 %i.qs, 0
  %i.qt = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i133.i, 4096 ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i135.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %.not8.i.i.i.i.i.i.i.i.i.i.i.i159.i = icmp eq i32 %i.qt, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i160.i = or i1 %.not8.i.i.i.i.i.i.i.i.i.i.i.i159.i, %i.cp
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i160.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.qu = icmp ne i32 %i.qt, 0
  %brmerge.i.i.i.i.i.i.i.i.i.i.i.i136.i = or i1 %i.qu, %i.cp
  br i1 %brmerge.i.i.i.i.i.i.i.i.i.i.i.i136.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %i.qv = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i133.i, 8
  %.not.i.i.i.i.i.i.i.i.i158.i = icmp eq i32 %i.qv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i158.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i127.i
  %i.qw = icmp eq ptr %i.qg, %i.qe
  br i1 %i.qw, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i, label %.lr.ph.i.i.i.i.i.i127.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i, %bb.bv, %bb.bu
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !6788
  %i.qx = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #43, !noalias !6788 ; 4 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %bb.bw, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i

bb.bw:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #46, !noalias !6768
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i
  store ptr %i.qf, ptr %i.qx, align 8, !noalias !6768, !captures !21
  store i64 4, ptr %i.i, align 8, !noalias !6768
  store ptr %i.qx, ptr %.sroa.4.0..sroa_idx.i139.i, align 8, !noalias !6768
  store i64 1, ptr %.sroa.6.0..sroa_idx.i140.i, align 8, !noalias !6768
  call void @llvm.experimental.noalias.scope.decl(metadata !6789)
  call void @llvm.experimental.noalias.scope.decl(metadata !6790)
  %i.qz = icmp eq ptr %i.qg, %i.qe
  br i1 %i.qz, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i

.lr.ph.i.i.i.i.i.preheader.i.i.i141.i:            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i, %bb.bx
  %i.ra = phi ptr [ %i.sj, %bb.bx ], [ %i.qx, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i ]
  %i.rb = phi i64 [ %i.sl, %bb.bx ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i ] ; 7 uses
  %.lcssa1314.i.i.i142.i = phi ptr [ %.us-phi287.i, %bb.bx ], [ %i.qg, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i ] ; 2 uses
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i.i.i143.us.i, label %.lr.ph.i.i.i.i.i.i.i.i143.i

.lr.ph.i.i.i.i.i.i.i.i143.us.i:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i
  %i.rc = phi ptr [ %i.rd, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i ], [ %.lcssa1314.i.i.i142.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i ] ; 7 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 600 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 552
  %i.rf = load ptr, ptr %i.re, align 8, !alias.scope !6791, !noalias !6792, !noundef !10
  %.not.i.i.i.i.i.i.i.i.i.i144.us.i = icmp ne ptr %i.rf, null
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 584
  %i.rh = load i32, ptr %i.rg, align 8, !range !44, !alias.scope !6791, !noalias !6792
  %.not1.i.i.i.i.i.i.i.i.i.i145.us.i = icmp ne i32 %i.rh, -1
  %or.cond.i.i.i.i.i.i.i.i.i146.us.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i144.us.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i.i.i145.us.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i146.us.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.us.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i143.us.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 56
  %i.rj = load i64, ptr %i.ri, align 8, !range !13, !alias.scope !6793, !noalias !6792, !noundef !10
  %i.rk = trunc nuw i64 %i.rj to i1
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rc, i64 64
  %i.rm = load ptr, ptr %i.rl, align 8, !alias.scope !6793, !noalias !6792
  %.not.not.i.i.i.i.i.i.i.i.i.i.i147.us.i = icmp ne ptr %i.rm, null
  %or.cond.not.i.i.i.i.i.i.i.i.i.i148.us.i = select i1 %i.rk, i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i147.us.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i148.us.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.us.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rc, i64 592
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.us.i = load i32, ptr %i.rn, align 8, !alias.scope !6794, !noalias !6792, !noundef !10 ; 2 uses
  %i.ro = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.us.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.us.i = icmp ne i32 %i.ro, 0
  %i.rp = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.us.i, 8200
  %or.cond297.i = icmp eq i32 %i.rp, 8192
  %or.cond485.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.us.i, %or.cond297.i
  br i1 %or.cond485.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i, label %.split285.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.us.i, %.lr.ph.i.i.i.i.i.i.i.i143.us.i
  %i.rq = icmp eq ptr %i.rd, %i.qe
  br i1 %i.rq, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i143.us.i

.lr.ph.i.i.i.i.i.i.i.i143.i:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i
  %i.rr = phi ptr [ %i.rs, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i ], [ %.lcssa1314.i.i.i142.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i ] ; 7 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 600 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 552
  %i.ru = load ptr, ptr %i.rt, align 8, !alias.scope !6791, !noalias !6792, !noundef !10
  %.not.i.i.i.i.i.i.i.i.i.i144.i = icmp ne ptr %i.ru, null
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rr, i64 584
  %i.rw = load i32, ptr %i.rv, align 8, !range !44, !alias.scope !6791, !noalias !6792
  %.not1.i.i.i.i.i.i.i.i.i.i145.i = icmp ne i32 %i.rw, -1
  %or.cond.i.i.i.i.i.i.i.i.i146.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i144.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i.i.i145.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i146.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i143.i
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 56
  %i.ry = load i64, ptr %i.rx, align 8, !range !13, !alias.scope !6793, !noalias !6792, !noundef !10
  %i.rz = trunc nuw i64 %i.ry to i1
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rr, i64 64
  %i.sb = load ptr, ptr %i.sa, align 8, !alias.scope !6793, !noalias !6792
  %.not.not.i.i.i.i.i.i.i.i.i.i.i147.i = icmp ne ptr %i.sb, null
  %or.cond.not.i.i.i.i.i.i.i.i.i.i148.i = select i1 %i.rz, i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i147.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i148.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rr, i64 592
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.i = load i32, ptr %i.sc, align 8, !alias.scope !6794, !noalias !6792, !noundef !10 ; 2 uses
  %i.sd = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.i = icmp ne i32 %i.sd, 0
  %i.se = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.i, 4104
  %or.cond486.i = icmp eq i32 %i.se, 4096
  %or.cond299 = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.i, %or.cond486.i
  br i1 %or.cond299, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i, label %.split285.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i143.i
  %i.sf = icmp eq ptr %i.rs, %i.qe
  br i1 %i.sf, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i143.i

.split285.us.i:                                   ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i
  %.us-phi286.i = phi ptr [ %i.rc, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i ], [ %i.rr, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi287.i = phi ptr [ %i.rd, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i ], [ %i.rs, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sg = icmp samesign ult i64 %i.rb, 1152921504606846976
  call void @llvm.assume(i1 %i.sg)
  %i.sh = load i64, ptr %i.i, align 8, !range !11, !alias.scope !6795, !noalias !6768, !noundef !10
  %i.si = icmp eq i64 %i.rb, %i.sh
  br i1 %i.si, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i153.i, label %bb.bx

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i153.i: ; preds = %.split285.us.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.rb, i64 noundef 1, i64 noundef 8, i64 noundef 8) #43, !noalias !6796
  %.pre.i154.i = load ptr, ptr %.sroa.4.0..sroa_idx.i139.i, align 8, !alias.scope !6795, !noalias !6768
  br label %bb.bx

bb.bx:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i153.i, %.split285.us.i
  %i.sj = phi ptr [ %.pre.i154.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i153.i ], [ %i.ra, %.split285.us.i ] ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.rb
  store ptr %.us-phi286.i, ptr %i.sk, align 8, !noalias !6797, !captures !21
  %i.sl = add nuw nsw i64 %i.rb, 1                ; 3 uses
  store i64 %i.sl, ptr %.sroa.6.0..sroa_idx.i140.i, align 8, !alias.scope !6795, !noalias !6768
  %i.sm = icmp eq ptr %.us-phi287.i, %i.qe
  br i1 %i.sm, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i: ; preds = %bb.bx, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i
  %.sroa.8196.0.copyload.i = phi i64 [ %i.rb, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i ], [ %i.rb, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i ], [ %i.sl, %bb.bx ]
  %.sroa.0194.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !6798
  %.sroa.5195.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i139.i, align 8, !noalias !6798
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i
  %.sroa.0.0417.i = phi i64 [ %.sroa.0.0.i150610, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ %.sroa.0.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ %.sroa.0.0.i150610, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0416.i = phi ptr [ %.sroa.5.0.i609, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ %.sroa.5.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ %.sroa.5.0.i609, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0415.i = phi i64 [ %.sroa.8.0.i149608, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ %.sroa.8.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ %.sroa.8.0.i149608, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.8196.0.i = phi i64 [ %.sroa.8196.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ 0, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5195.0.i = phi ptr [ %.sroa.5195.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ inttoptr (i64 8 to ptr), %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0194.0.i = phi i64 [ %.sroa.0194.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ 0, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6768
  %.val.i151 = load ptr, ptr %i.cj, align 8, !noalias !6766, !nonnull !10, !noundef !10 ; 2 uses
  %.val97.i = load i64, ptr %i.ck, align 8, !noalias !6766, !noundef !10 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val97.i, 712
  %i.sn = getelementptr inbounds nuw i8, ptr %.val.i151, i64 %.idx.i.i
  %.not.i.i.i152 = icmp eq i64 %.val97.i, 0
  br i1 %.not.i.i.i152, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, label %.lr.ph.i.i.i153

.lr.ph.i.i.i153:                                  ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i
  %i.so = phi ptr [ %i.sp, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i ], [ %.val.i151, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i ] ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6799)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 568
  %i.sr = load i64, ptr %i.sq, align 8, !alias.scope !6799, !noalias !6800, !noundef !10
  %i.ss = icmp eq i64 %i.sr, 4
  br i1 %i.ss, label %bb.by, label %.split.i.i.i

bb.by:                                            ; preds = %.lr.ph.i.i.i153
  %i.st = getelementptr inbounds nuw i8, ptr %i.so, i64 560
  %i.su = load ptr, ptr %i.st, align 8, !alias.scope !6799, !noalias !6800, !nonnull !10, !noundef !10
  %i.sv = load i32, ptr %i.su, align 1
  %i.sw = icmp ne i32 %i.sv, 1886152040
  %i.sx = zext i1 %i.sw to i32
  %.not.i.i.i.i157 = icmp eq i32 %i.sx, 0
  br i1 %.not.i.i.i.i157, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.by, %.lr.ph.i.i.i153
  %i.sy = getelementptr inbounds nuw i8, ptr %i.so, i64 700
  %i.sz = load <2 x i32>, ptr %i.sy, align 4, !alias.scope !6799, !noalias !6800
  %.fr832 = freeze <2 x i32> %i.sz
  %3 = and <2 x i32> %.fr832, splat (i32 8388608)
  %.scalar = bitcast <2 x i32> %3 to i64
  %.sroa.01.0.i.i.i.i = icmp eq i64 %.scalar, 0
  br i1 %.sroa.01.0.i.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %bb.by
  %.not5.i.i.i = icmp eq ptr %i.sp, %i.sn
  br i1 %.not5.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, label %.lr.ph.i.i.i153

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i, %.split.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i
  %.lcssa.i.i.i = phi i1 [ false, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i ], [ false, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i ], [ true, %.split.i.i.i ] ; 2 uses
  %.val106.i = load ptr, ptr %i.cl, align 8, !noalias !6766, !nonnull !10, !noundef !10 ; 2 uses
  %.val107.i = load i64, ptr %i.cm, align 8, !noalias !6766, !noundef !10 ; 2 uses
  %.idx302.i = mul nuw nsw i64 %.val107.i, 600
  %i.ta = getelementptr inbounds nuw i8, ptr %.val106.i, i64 %.idx302.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6801
  store i64 0, ptr %i.h, align 8, !noalias !6801
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i161.i, align 8, !noalias !6801
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6801
  %i.tb = icmp eq i64 %.val107.i, 0
  br i1 %i.tb, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i
  %.sroa.0.0.i289.i = phi ptr [ %i.tg, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i ], [ %.val106.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ]
  %i.tc = phi ptr [ %i.ud, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ] ; 4 uses
  %i.td = phi i64 [ %i.uc, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i ], [ 0, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ] ; 7 uses
  br label %.lr.ph.i.i.i.i154

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i154
  %i.te = icmp eq ptr %i.tg, %i.ta
  br i1 %i.te, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split, label %.lr.ph.i.i.i.i154

.lr.ph.i.i.i.i154:                                ; preds = %bb.bz, %.lr.ph.i.i.i.preheader.i
  %i.tf = phi ptr [ %i.tg, %bb.bz ], [ %.sroa.0.0.i289.i, %.lr.ph.i.i.i.preheader.i ] ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 600 ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 56
  %i.ti = load i64, ptr %i.th, align 8, !range !13, !alias.scope !6802, !noalias !6803, !noundef !10
  %i.tj = trunc nuw i64 %i.ti to i1
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tf, i64 64
  %i.tl = load ptr, ptr %i.tk, align 8, !alias.scope !6802, !noalias !6803 ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne ptr %i.tl, null
  %i.tm = select i1 %i.tj, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %i.tm, label %bb.ca, label %bb.bz

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i154
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tf, i64 72
  %i.to = load i64, ptr %i.tn, align 8, !alias.scope !6802, !noalias !6803 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6804)
  %.idx.i.i.i = shl nuw nsw i64 %i.td, 4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tc, i64 %.idx.i.i.i
  %i.tq = icmp eq i64 %i.td, 0
  br i1 %i.tq, label %._crit_edge.i.i.i, label %.lr.ph.i.i162.i

.lr.ph.i.i162.i:                                  ; preds = %bb.ca, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i
  %.sroa.03.09.i.i.i = phi ptr [ %i.tu, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i ], [ %i.tc, %bb.ca ] ; 3 uses
  %i.tr = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 8
  %.sroa.03.0.val5.i.i.i = load i64, ptr %i.tr, align 8, !noalias !6805, !noundef !10
  %i.ts = icmp eq i64 %.sroa.03.0.val5.i.i.i, %i.to
  br i1 %i.ts, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %.lr.ph.i.i162.i
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.09.i.i.i, align 8, !noalias !6805, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.03.0.val.i.i.i, ptr nonnull readonly %i.tl, i64 %i.to), !alias.scope !6806, !noalias !6807
  %i.tt = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.tt, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i: ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %.lr.ph.i.i162.i
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 16 ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.tp
  br i1 %i.tv, label %._crit_edge.i.i.i, label %.lr.ph.i.i162.i

._crit_edge.i.i.i:                                ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !6808)
  %i.tw = load i64, ptr %i.h, align 8, !range !11, !alias.scope !6809, !noalias !6801, !noundef !10
  %i.tx = icmp eq i64 %i.td, %i.tw
  br i1 %i.tx, label %bb.cb, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

bb.cb:                                            ; preds = %._crit_edge.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #42, !noalias !6810
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i161.i, align 8, !alias.scope !6809, !noalias !6801
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.cb, %._crit_edge.i.i.i
  %i.ty = phi ptr [ %i.tc, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.cb ] ; 2 uses
  %i.tz = getelementptr inbounds nuw [16 x i8], ptr %i.ty, i64 %i.td ; 2 uses
  store ptr %i.tl, ptr %i.tz, align 8, !noalias !6811, !captures !21
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i64 %i.to, ptr %i.ua, align 8, !noalias !6812
  %i.ub = add i64 %i.td, 1                        ; 2 uses
  store i64 %i.ub, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !6809, !noalias !6801
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i: ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.uc = phi i64 [ %i.ub, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.td, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %i.ud = phi ptr [ %i.ty, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.tc, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.ue = icmp eq ptr %i.tg, %i.ta
  br i1 %i.ue, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split, label %.lr.ph.i.i.i.preheader.i

_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i, %bb.bz
  %.sroa.6206.0.copyload208.i.ph = phi i64 [ %i.td, %bb.bz ], [ %i.uc, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i ]
  %.sroa.0201.0.copyload202.i.pr = load i64, ptr %i.h, align 8, !noalias !6766
  br label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i

_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i: ; preds = %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i
  %.sroa.0201.0.copyload202.i = phi i64 [ %.sroa.0201.0.copyload202.i.pr, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split ], [ 0, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ] ; 4 uses
  %.sroa.6206.0.copyload208.i = phi i64 [ %.sroa.6206.0.copyload208.i.ph, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split ], [ 0, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ] ; 3 uses
  %.sroa.5203.0.copyload205.i = load ptr, ptr %.sroa.4.0..sroa_idx.i161.i, align 8, !noalias !6766 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6801
  %i.uf = load <2 x i32>, ptr %i.cq, align 4, !noalias !6766
  %.fr833 = freeze <2 x i32> %i.uf
  %4 = and <2 x i32> %.fr833, splat (i32 32768)
  %.scalar834 = bitcast <2 x i32> %4 to i64
  %.sroa.0.0.i.i.i = icmp ne i64 %.scalar834, 0   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6766
  store i8 1, ptr %i.t, align 1, !noalias !6766
  %.not.i155 = xor i1 %.lcssa.i.i.i, true
  %brmerge.i = or i1 %.sroa.0.0.i.i.i, %.not.i155
  br i1 %brmerge.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cf, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i
  %i.ug = phi i8 [ 1, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i ], [ 0, %bb.cf ] ; 2 uses
  %i.uh = icmp ult i64 %.sroa.8.0415.i, 1152921504606846976
  call void @llvm.assume(i1 %i.uh)
  %i.ui = icmp eq i64 %.sroa.8.0415.i, 0
  br i1 %i.ui, label %bb.ch, label %bb.cg

bb.cd:                                            ; preds = %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i
  store i8 0, ptr %i.t, align 1, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6766
  %.val110.i = load ptr, ptr %i.cr, align 8, !noalias !6766, !noundef !10 ; 2 uses
  %.not.i.i164.i = icmp eq ptr %.val110.i, null
  br i1 %.not.i.i164.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val111.i = load i64, ptr %i.cs, align 8, !noalias !6766
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.val110.sink.i = phi ptr [ %.val110.i, %bb.ce ], [ @167, %bb.cd ]
  %.val111.sink.i = phi i64 [ %.val111.i, %bb.ce ], [ 8, %bb.cd ]
  store ptr %.val110.sink.i, ptr %i.s, align 8, !noalias !6766, !captures !21
  store i64 %.val111.sink.i, ptr %i.ct, align 8, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6766
  store ptr %i.v, ptr %i.r, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !6766
  store ptr %i.s, ptr %i.cu, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !6766
  %i.uj = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @168, ptr noundef nonnull %i.r) #43, !noalias !6766 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6766
  %.val112.i = load ptr, ptr %i.cj, align 8, !noalias !6766, !nonnull !10, !noundef !10
  %.val113.i = load i64, ptr %i.ck, align 8, !noalias !6766, !noundef !10
  call fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate17write_subcommands(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %0, ptr nonnull %.val112.i, i64 %.val113.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6766
  br label %bb.cc

bb.cg:                                            ; preds = %bb.cc
  %i.uk = trunc nuw i8 %i.ug to i1
  br i1 %i.uk, label %._crit_edge364.i, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge364.i, %bb.cc
  %i.ul = phi i8 [ 0, %._crit_edge364.i ], [ %i.ug, %bb.cc ] ; 2 uses
  %i.um = icmp ult i64 %.sroa.8196.0.i, 1152921504606846976
  call void @llvm.assume(i1 %i.um)
  %i.un = icmp eq i64 %.sroa.8196.0.i, 0
  br i1 %i.un, label %bb.ck, label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !6813)
  call void @llvm.experimental.noalias.scope.decl(metadata !6814)
  %i.uo = load i64, ptr %i.bb, align 8, !alias.scope !6815, !noalias !6766, !noundef !10 ; 3 uses
  %i.up = load i64, ptr %i.ba, align 8, !range !11, !alias.scope !6815, !noalias !6766, !noundef !10
  %i.uq = sub i64 %i.up, %i.uo
  %i.ur = icmp ult i64 %i.uq, 2
  br i1 %i.ur, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156: ; preds = %bb.ci
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.uo, i64 noundef 2, i64 noundef 1, i64 noundef 1) #43, !noalias !6816
  %i.us = load i64, ptr %i.bb, align 8, !alias.scope !6817, !noalias !6766, !noundef !10
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156, %bb.ci
  %.sink487.i = phi i64 [ %i.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156 ], [ %i.uo, %bb.ci ] ; 3 uses
  %i.ut = icmp sgt i64 %.sink487.i, -1
  call void @llvm.assume(i1 %i.ut)
  %i.uu = load ptr, ptr %i.cg, align 8, !alias.scope !6817, !noalias !6766, !nonnull !10, !noundef !10
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 %.sink487.i
  store i16 2570, ptr %i.uv, align 1, !noalias !6818
  %i.uw = add nuw i64 %.sink487.i, 2
  store i64 %i.uw, ptr %i.bb, align 8, !alias.scope !6817, !noalias !6766
  br label %._crit_edge364.i

._crit_edge364.i:                                 ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i, %bb.cg
  store i8 0, ptr %i.t, align 1, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6766
  store ptr @169, ptr %i.q, align 8, !noalias !6766, !captures !21
  store i64 9, ptr %i.cv, align 8, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6766
  store ptr %i.v, ptr %i.p, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !6766
  store ptr %i.q, ptr %i.cw, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !6766
  %i.ux = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @168, ptr noundef nonnull %i.p) #43, !noalias !6766 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6766
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0416.i, i64 noundef %.sroa.8.0415.i, ptr noundef nonnull @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output13help_template19positional_sort_key) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6766
  br label %bb.ch

bb.cj:                                            ; preds = %bb.ch
  %i.uy = trunc nuw i8 %i.ul to i1
  br i1 %i.uy, label %._crit_edge367.i, label %bb.cl

bb.ck:                                            ; preds = %._crit_edge367.i, %bb.ch
  %.promoted411 = phi i8 [ 0, %._crit_edge367.i ], [ %i.ul, %bb.ch ]
  %i.uz = icmp ult i64 %.sroa.6206.0.copyload208.i, 576460752303423488
  call void @llvm.assume(i1 %i.uz)
  %i.va = icmp ne i64 %.sroa.6206.0.copyload208.i, 0 ; 2 uses
  br i1 %i.va, label %.lr.ph.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECsfu0rQaTkGUu_12clap_builder.exit.i

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !6819)
  call void @llvm.experimental.noalias.scope.decl(metadata !6820)
  %i.vb = load i64, ptr %i.bb, align 8, !alias.scope !6821, !noalias !6766, !noundef !10 ; 3 uses
  %i.vc = load i64, ptr %i.ba, align 8, !range !11, !alias.scope !6821, !noalias !6766, !noundef !10
  %i.vd = sub i64 %i.vc, %i.vb
  %i.ve = icmp ult i64 %i.vd, 2
  br i1 %i.ve, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i166.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit167.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i166.i: ; preds = %bb.cl
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.vb, i64 noundef 2, i64 noundef 1, i64 noundef 1) #43, !noalias !6822
  %i.vf = load i64, ptr %i.bb, align 8, !alias.scope !6823, !noalias !6766, !noundef !10
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit167.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit167.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i166.i, %bb.cl
  %.sink488.i = phi i64 [ %i.vf, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i166.i ], [ %i.vb, %bb.cl ] ; 3 uses
  %i.vg = icmp sgt i64 %.sink488.i, -1
  call void @llvm.assume(i1 %i.vg)
  %i.vh = load ptr, ptr %i.cg, align 8, !alias.scope !6823, !noalias !6766, !nonnull !10, !noundef !10
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 %.sink488.i
  store i16 2570, ptr %i.vi, align 1, !noalias !6824
  %i.vj = add nuw i64 %.sink488.i, 2
  store i64 %i.vj, ptr %i.bb, align 8, !alias.scope !6823, !noalias !6766
  br label %._crit_edge367.i

._crit_edge367.i:                                 ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit167.i, %bb.cj
  store i8 0, ptr %i.t, align 1, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6766
  store ptr @170, ptr %i.o, align 8, !noalias !6766, !captures !21
  store i64 7, ptr %i.cx, align 8, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6766
  store ptr %i.v, ptr %i.n, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !6766
  store ptr %i.o, ptr %i.cy, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !6766
  %i.vk = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @168, ptr noundef nonnull %i.n) #43, !noalias !6766 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6766
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5195.0.i, i64 noundef %.sroa.8196.0.i, ptr noundef nonnull @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output13help_template15option_sort_key) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6766
  br label %bb.ck

.lr.ph.i:                                         ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5203.0.copyload205.i) ]
  %.idx303.i = shl nuw nsw i64 %.sroa.6206.0.copyload208.i, 4
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.5203.0.copyload205.i, i64 %.idx303.i
  br label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1f_.exit.i, %.lr.ph.i
  %i.vm = phi i8 [ %.promoted411, %.lr.ph.i ], [ %i.yt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1f_.exit.i ] ; 2 uses
  %.sroa.4219.0295.i = phi ptr [ %.sroa.5203.0.copyload205.i, %.lr.ph.i ], [ %i.vn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1f_.exit.i ] ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.4219.0295.i, i64 16 ; 2 uses
  %i.vo = load ptr, ptr %.sroa.4219.0295.i, align 8, !noalias !6825, !nonnull !10, !noundef !10 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.4219.0295.i, i64 8
  %i.vq = load i64, ptr %i.vp, align 8, !noalias !6825, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6766
  store ptr %i.vo, ptr %i.m, align 8, !noalias !6766, !captures !21
  store i64 %i.vq, ptr %i.cz, align 8, !noalias !6766
  %.val104.i = load ptr, ptr %i.cl, align 8, !noalias !6766, !nonnull !10, !noundef !10 ; 2 uses
  %.val105.i = load i64, ptr %i.cm, align 8, !noalias !6766, !noundef !10 ; 2 uses
  %.idx249.i = mul nuw nsw i64 %.val105.i, 600
  %i.vr = getelementptr inbounds nuw i8, ptr %.val104.i, i64 %.idx249.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6826
  %i.vs = icmp eq i64 %.val105.i, 0
  br i1 %i.vs, label %.thread.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cm, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i
  %i.vt = phi ptr [ %i.vu, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i ], [ %.val104.i, %bb.cm ] ; 6 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 600 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6827)
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 56
  %i.vw = load i64, ptr %i.vv, align 8, !range !13, !alias.scope !6827, !noalias !6828, !noundef !10
  %i.vx = trunc nuw i64 %i.vw to i1
  br i1 %i.vx, label %bb.cn, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i

bb.cn:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vt, i64 64
  %i.vz = load ptr, ptr %i.vy, align 8, !alias.scope !6827, !noalias !6828, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vt, i64 72
  %i.wb = load i64, ptr %i.wa, align 8, !alias.scope !6827, !noalias !6828, !noundef !10
  %i.wc = icmp eq i64 %i.wb, %i.vq
  br i1 %i.wc, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i: ; preds = %bb.co
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.vz, ptr nonnull %i.vo, i64 %i.vq), !noalias !6829
  %i.wd = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.wd, label %bb.cp, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i

bb.cp:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.vt, i64 592
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.we, align 8, !alias.scope !6830, !noalias !6828, !noundef !10 ; 4 uses
  %i.wf = and i32 %.val.i.i.i.i.i.i.i.i.i.i, 4
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser12add_defaults:bb.a
_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit: ; preds = %bb.p, %bb.w
  %.sroa.0.1.i = phi ptr [ %i.ck, %bb.p ], [ %i.dk, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit11

.loopexit:                                        ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i37.i, %_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEIB1d_B29_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB2T_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB3F_3any5checkRB29_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5N_6Parser17add_default_value0E0E0B4z_EB5R_.exit.thread.i, %bb.q, %bb.x, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 600 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.i
  br i1 %i.dm, label %.loopexit11, label %bb.b

.loopexit11:                                      ; preds = %.loopexit, %bb.a, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1.i, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit ], [ null, %bb.a ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15match_arg_error(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree readonly captures(address) %.72.val, i64 %.80.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.47.i275 = alloca [31 x i8], align 1      ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [14 x i8], align 2                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [14 x i8], align 2                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [126 x i8], align 2              ; 36 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.9.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.9.i = alloca [16 x i8], align 8          ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [14 x i8], align 2               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 16              ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [14 x i8], align 2               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 9 uses
  %i.aq = alloca [16 x i8], align 16              ; 4 uses
  %i.ar = alloca [16 x i8], align 16              ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.418.i = alloca [31 x i8], align 1        ; 4 uses
  %.sroa.411.i = alloca [31 x i8], align 1        ; 4 uses
  %.sroa.47.i = alloca [31 x i8], align 1         ; 4 uses
  %i.au = alloca [120 x i8], align 8              ; 12 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [64 x i8], align 8               ; 11 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [14 x i8], align 2               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 9 uses
  %i.bg = alloca [16 x i8], align 16              ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [48 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.513 = alloca [16 x i8], align 8          ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 7 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 8 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 4 uses
  %i.ca = alloca [24 x i8], align 8               ; 7 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [24 x i8], align 8               ; 7 uses
  %i.cg = alloca [24 x i8], align 8               ; 4 uses
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 136
  %.val64 = load ptr, ptr %i.cj, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 144
  %.val65 = load i64, ptr %i.ck, align 8, !noundef !10 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val65, 600
  %i.cl = getelementptr inbounds nuw i8, ptr %.val64, i64 %.idx.i
  %i.cm = icmp eq i64 %.val65, 0
  br i1 %i.cm, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i
  %i.cn = phi ptr [ %i.co, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i ], [ %.val64, %bb.b ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 600 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 552
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !8094, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 584
  %i.cs = load i32, ptr %i.cr, align 8, !range !44, !noalias !8094, !noundef !10
  %.not1.i.i.i.i = icmp eq i32 %i.cs, -1
  br i1 %.not1.i.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i, %.lr.ph.i.i
  %i.ct = icmp eq ptr %i.co, %i.cl
  br i1 %i.ct, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.cu = call fastcc { ptr, i64 } @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.cg, i1 noundef zeroext %2) #43
  %i.cv = extractvalue { ptr, i64 } %i.cu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %.not34 = icmp eq ptr %i.cv, null
  br i1 %.not34, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %bb.e

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i
  %i.cw = tail call noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7is_long(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  br i1 %i.cw, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit
  %i.cx = tail call noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8is_short(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i, %bb.b, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit, %bb.c, %bb.d
  %.sroa.02.0 = phi i1 [ %i.cx, %bb.d ], [ true, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !10, !align !16, !noundef !10 ; 4 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 192
  %.val66 = load i64, ptr %i.da, align 8, !noundef !10 ; 2 uses
  %i.db = icmp ult i64 %.val66, 12954174209065697
  tail call void @llvm.assume(i1 %i.db)
  %.not = icmp eq i64 %.val66, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !10, !align !16, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.dh = load i64, ptr %i.dg, align 8            ; 7 uses
  %.not.i = icmp slt i64 %i.dh, 0
  br i1 %.not.i, label %bb.db, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread204, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.f
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8095
  %i.dj = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dh, i64 noundef range(i64 1, 9) 1) #43, !noalias !8095 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.db, label %bb.dq

bb.g:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread
  %i.dl = getelementptr i8, ptr %i.cz, i64 700
  %i.dm = load <2 x i32>, ptr %i.dl, align 4
  %.fr401 = freeze <2 x i32> %i.dm
  %4 = and <2 x i32> %.fr401, splat (i32 8192)
  %.scalar = bitcast <2 x i32> %4 to i64
  %.sroa.0.0.i = icmp ne i64 %.scalar, 0
  %brmerge.demorgan = and i1 %2, %.sroa.0.0.i
  br i1 %brmerge.demorgan, label %bb.l, label %bb.j

bb.h:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, %bb.be
  %i.dn = phi ptr [ %i.cz, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread ], [ %.pre266, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.do = load i64, ptr %i.bl, align 8, !range !12, !noundef !10 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8            ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.ds = load i64, ptr %i.dr, align 8            ; 7 uses
  %.not.i72 = icmp slt i64 %i.ds, 0
  br i1 %.not.i72, label %bb.bf, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit75.thread186, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i73

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i73: ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8096
  %i.du = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ds, i64 noundef range(i64 1, 9) 1) #43, !noalias !8096 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.bf, label %bb.bm

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.dz = load i64, ptr %i.dy, align 8            ; 8 uses
  %.not.i76 = icmp slt i64 %i.dz, 0
  br i1 %.not.i76, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.ea = icmp eq i64 %i.dz, 0                    ; 2 uses
  br i1 %i.ea, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77: ; preds = %bb.k
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8097
  %i.eb = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dz, i64 noundef range(i64 1, 9) 1) #43, !noalias !8097 ; 3 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.n, label %bb.ae

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.eg = load i64, ptr %i.ef, align 8            ; 7 uses
  %.not.i80 = icmp slt i64 %i.eg, 0
  br i1 %.not.i80, label %bb.bx, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit83.thread198, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i81

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i81: ; preds = %bb.m
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8098
  %i.ei = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.eg, i64 noundef range(i64 1, 9) 1) #43, !noalias !8098 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.bx, label %bb.da

bb.n:                                             ; preds = %bb.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77
  %.sroa.424.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i77 ], [ 0, %bb.j ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.424.0.ph, i64 %i.dz) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64: ; preds = %bb.k, %bb.ae
  %i.ek = phi ptr [ %i.eb, %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.k ] ; 3 uses
  %i.el = load ptr, ptr %i.cy, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 184
  %.val67 = load ptr, ptr %i.em, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.en = getelementptr i8, ptr %i.el, i64 192
  %.val68 = load i64, ptr %i.en, align 8, !noundef !10
  %i.eo = getelementptr inbounds nuw [712 x i8], ptr %.val67, i64 %.val68 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !8100
  store i64 0, ptr %i.bh, align 8, !noalias !8100
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ep, align 8, !noalias !8100
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  br label %.sink.split

.sink.split:                                      ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sink = phi i64 [ %i.if, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 14 uses
  %.ph = phi ptr [ %i.hz, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 3 uses
  %.sroa.26.0.i.ph = phi ptr [ %.sroa.26.2.ph.i.lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.val67, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 7 uses
  %.sroa.15.0.i.ph = phi ptr [ %.sroa.15.2.ph.i.lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ undef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 2 uses
  %.sroa.12.0.i.ph = phi ptr [ %.sroa.12.2.ph.i.lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ undef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ] ; 5 uses
  %.sroa.0.0.i85.ph = phi i1 [ false, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ true, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit79.thread64 ]
  store i64 %.sink, ptr %i.eq, align 8, !noalias !8100
  br i1 %.sroa.0.0.i85.ph, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.sink.split
  %.not.i.i.i.i.i.peel.i.i.i.peel = icmp eq ptr %.sroa.12.0.i.ph, null
  %i.er = icmp eq ptr %.sroa.12.0.i.ph, %.sroa.15.0.i.ph
  %or.cond.i.i.i.peel = select i1 %.not.i.i.i.i.i.peel.i.i.i.peel, i1 true, i1 %i.er
  br i1 %or.cond.i.i.i.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i.ph, i64 24
  %i.et = getelementptr i8, ptr %.sroa.12.0.i.ph, i64 8
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel

bb.q:                                             ; preds = %bb.o, %.sink.split
  %i.eu = icmp eq ptr %.sroa.26.0.i.ph, %i.eo
  br i1 %i.eu, label %.loopexit, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel: ; preds = %bb.q
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 712
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 560
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 568
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 64
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !8101, !noalias !8102, !nonnull !10, !noundef !10 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i.ph, i64 72
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !8101, !noalias !8102, !noundef !10
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %i.fb
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel, %bb.p
  %.sroa.26.2.ph.i.peel = phi ptr [ %.sroa.26.0.i.ph, %bb.p ], [ %i.ev, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ] ; 2 uses
  %.sroa.15.2.ph.i.peel = phi ptr [ %.sroa.15.0.i.ph, %bb.p ], [ %i.fc, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ] ; 2 uses
  %.sroa.12.2.ph.i.peel = phi ptr [ %i.es, %bb.p ], [ %i.ez, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ] ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i.in.peel = phi ptr [ %i.et, %bb.p ], [ %i.ex, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ]
  %.sroa.0.0.i.i.ph.i.in.peel = phi ptr [ %.sroa.12.0.i.ph, %bb.p ], [ %i.ew, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i.peel ]
  %.sroa.0.0.i.i.ph.i.peel = load ptr, ptr %.sroa.0.0.i.i.ph.i.in.peel, align 8, !noalias !8103, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i.peel = load i64, ptr %.sroa.3.0.i7.pn.i.i.ph.i.in.peel, align 8, !noalias !8103, !noundef !10 ; 2 uses
  %i.fd = call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.ph.i.peel, i64 noundef %.sroa.3.0.i7.pn.i.i.ph.i.peel) #43, !noalias !8104 ; 2 uses
  %i.fe = fcmp ogt double %i.fd, f0x3FE6666666666666
  br i1 %i.fe, label %.loopexit430, label %.sink.split.peel.newph

.sink.split.peel.newph:                           ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i
  %.sroa.26.0.i = phi ptr [ %.sroa.26.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %.sroa.26.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ] ; 7 uses
  %.sroa.15.0.i = phi ptr [ %.sroa.15.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %.sroa.15.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ] ; 2 uses
  %.sroa.12.0.i = phi ptr [ %.sroa.12.2.ph.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %.sroa.12.2.ph.i.peel, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.peel ] ; 4 uses
  %i.ff = icmp eq ptr %.sroa.12.0.i, %.sroa.15.0.i
  br i1 %i.ff, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.sink.split.peel.newph
  %i.fg = icmp eq ptr %.sroa.26.0.i, %i.eo
  br i1 %i.fg, label %.loopexit, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i: ; preds = %bb.r
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 712
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 560
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 568
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !8101, !noalias !8102, !nonnull !10, !noundef !10 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i, i64 72
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !8101, !noalias !8102, !noundef !10
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %i.fn
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %.sink.split.peel.newph
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i, i64 24
  %i.fq = getelementptr i8, ptr %.sroa.12.0.i, i64 8
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i: ; preds = %bb.s, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i
  %.sroa.26.2.ph.i = phi ptr [ %.sroa.26.0.i, %bb.s ], [ %i.fh, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ] ; 2 uses
  %.sroa.15.2.ph.i = phi ptr [ %.sroa.15.0.i, %bb.s ], [ %i.fo, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ] ; 2 uses
  %.sroa.12.2.ph.i = phi ptr [ %i.fp, %bb.s ], [ %i.fl, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ] ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i.in = phi ptr [ %i.fq, %bb.s ], [ %i.fj, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ]
  %.sroa.0.0.i.i.ph.i.in = phi ptr [ %.sroa.12.0.i, %bb.s ], [ %i.fi, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OnceReEB1w_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.loopexit.i.i.i ]
  %.sroa.0.0.i.i.ph.i = load ptr, ptr %.sroa.0.0.i.i.ph.i.in, align 8, !noalias !8103, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i = load i64, ptr %.sroa.3.0.i7.pn.i.i.ph.i.in, align 8, !noalias !8103, !noundef !10 ; 2 uses
  %i.fr = call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ek, i64 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.ph.i, i64 noundef %.sroa.3.0.i7.pn.i.i.ph.i) #43, !noalias !8104 ; 2 uses
  %i.fs = fcmp ogt double %i.fr, f0x3FE6666666666666
  br i1 %i.fs, label %.loopexit430, label %.sink.split.peel.newph, !llvm.loop !7865

.loopexit:                                        ; preds = %bb.q, %bb.r
  %i.ft = load ptr, ptr %i.ep, align 8, !noalias !8100, !nonnull !10, !noundef !10 ; 10 uses
  %i.fu = load i64, ptr %i.bh, align 8, !range !11, !noalias !8100, !noundef !10 ; 2 uses
  %i.fv = icmp samesign ult i64 %.sink, 288230376151711744
  call void @llvm.assume(i1 %i.fv)
  %.idx.i87 = shl nuw nsw i64 %.sink, 5           ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx.i87
  call void @llvm.experimental.noalias.scope.decl(metadata !8105)
  call void @llvm.experimental.noalias.scope.decl(metadata !8106)
  %i.fx = shl i64 %i.fu, 5                        ; 6 uses
  %i.fy = udiv i64 %i.fx, 24                      ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %.sink, 0
  br i1 %.not9.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.loopexit
  %i.fz = add nsw i64 %.idx.i87, -32              ; 2 uses
  %i.ga = lshr exact i64 %i.fz, 5
  %i.gb = add nuw nsw i64 %i.ga, 1
  %xtraiter = and i64 %i.gb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.010.i.i.i.i.i.i.prol = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15match_arg_error:bb.a
  %.sroa.13128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 124
  store i8 -1, ptr %.sroa.13128.0..sroa_idx.i, align 4, !noalias !8140
  %.sroa.14130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 128
  store i8 -1, ptr %.sroa.14130.0..sroa_idx.i, align 8, !noalias !8140
  %.sroa.15132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 132
  store i16 0, ptr %.sroa.15132.0..sroa_idx.i, align 4, !noalias !8140
  %.sroa.16.0..sroa_idx133.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx133.i, align 2, !noalias !8140
  %.sroa.17135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 138
  store i8 -1, ptr %.sroa.17135.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.18137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 142
  store i8 -1, ptr %.sroa.18137.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.19139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 146
  store i16 0, ptr %.sroa.19139.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx.i, align 4, !noalias !8140
  %.sroa.21140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 152
  store i8 -1, ptr %.sroa.21140.0..sroa_idx.i, align 8, !noalias !8140
  %.sroa.22141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 156
  store i8 -1, ptr %.sroa.22141.0..sroa_idx.i, align 4, !noalias !8140
  %.sroa.23142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 160
  store i16 0, ptr %.sroa.23142.0..sroa_idx.i, align 8, !noalias !8140
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.25143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 166
  store i8 -1, ptr %.sroa.25143.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.26144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 170
  store i8 -1, ptr %.sroa.26144.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.27145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 174
  store i16 0, ptr %.sroa.27145.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx.i, align 8, !noalias !8140
  %.sroa.29146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 180
  store i8 -1, ptr %.sroa.29146.0..sroa_idx.i, align 4, !noalias !8140
  %.sroa.30147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 184
  store i8 -1, ptr %.sroa.30147.0..sroa_idx.i, align 8, !noalias !8140
  %.sroa.31148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 188
  store i16 0, ptr %.sroa.31148.0..sroa_idx.i, align 4, !noalias !8140
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.33149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 194
  store i8 -1, ptr %.sroa.33149.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.34150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 198
  store i8 -1, ptr %.sroa.34150.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.35151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 202
  store i16 0, ptr %.sroa.35151.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx.i, align 4, !noalias !8140
  %.sroa.37152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 208
  store i8 -1, ptr %.sroa.37152.0..sroa_idx.i, align 8, !noalias !8140
  %.sroa.38153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 212
  store i8 -1, ptr %.sroa.38153.0..sroa_idx.i, align 4, !noalias !8140
  %.sroa.39154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 216
  store i16 0, ptr %.sroa.39154.0..sroa_idx.i, align 8, !noalias !8140
  %.sroa.40.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.41155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 222
  store i8 -1, ptr %.sroa.41155.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.42156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 226
  store i8 -1, ptr %.sroa.42156.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.43157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 230
  store i16 0, ptr %.sroa.43157.0..sroa_idx.i, align 2, !noalias !8140
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !8140
  %.sroa.45158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 2>, ptr %.sroa.45158.0..sroa_idx.i, align 2, !noalias !8140
  %i.mc = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.ma, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.ip) #43, !noalias !8142 ; 0 uses
  store i64 0, ptr %i.at, align 8, !noalias !8140
  %i.md = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.md, align 8, !noalias !8140
  %i.me = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store i64 0, ptr %i.me, align 8, !noalias !8140
  br i1 %.sroa.02.0, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !8140
  %.sroa.47.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.47.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.47.8..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !8143
  %.sroa.411.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.411.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.411.8..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !8144
  %.sroa.418.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.418.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.418.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !8140
  store i8 0, ptr %i.au, align 8, !noalias !8140
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !8140
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.47.i, i64 31, i1 false), !noalias !8140
  %i.mf = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i8 10, ptr %i.mf, align 8, !noalias !8140
  %.sroa.4.sroa.313.0..sroa.4.0..sroa_idx9.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i8 3, ptr %.sroa.4.sroa.313.0..sroa.4.0..sroa_idx9.sroa_idx.i, align 8, !noalias !8140
  %.sroa.4.sroa.414.0..sroa.4.0..sroa_idx9.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.414.0..sroa.4.0..sroa_idx9.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.411.i, i64 31, i1 false), !noalias !8140
  %i.mg = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store i8 14, ptr %i.mg, align 8, !noalias !8140
  %.sroa.4.sroa.320.0..sroa.4.0..sroa_idx16.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store i8 5, ptr %.sroa.4.sroa.320.0..sroa.4.0..sroa_idx16.sroa_idx.i, align 8, !noalias !8140
  %.sroa.4.sroa.421.0..sroa.4.0..sroa_idx16.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.421.0..sroa.4.0..sroa_idx16.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.418.i, i64 31, i1 false), !noalias !8140
  %i.mh = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj3_EB5_(ptr noalias noundef nonnull align 8 %i.ma, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.au) #42, !noalias !8145 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8140
  %.not117.i = icmp eq i64 %.sroa.011.0.copyload, -1
  br i1 %.not117.i, label %bb.az, label %bb.ay

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !8140
  store i64 0, ptr %i.ax, align 8, !noalias !8140
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.487.0..sroa_idx.i, align 8, !noalias !8140
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 0, ptr %.sroa.588.0..sroa_idx.i, align 8, !noalias !8140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !8140
  store ptr %i.bb, ptr %i.aw, align 8, !noalias !8140
  %.sroa.492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.492.0..sroa_idx.i, align 8, !noalias !8140
  %i.mi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.bv, ptr %i.mi, align 8, !noalias !8140
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.496.0..sroa_idx.i, align 8, !noalias !8140
  %i.mj = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.az, ptr %i.mj, align 8, !noalias !8140
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.4100.0..sroa_idx.i, align 8, !noalias !8140
  %i.mk = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store ptr %i.bs, ptr %i.mk, align 8, !noalias !8140
  %.sroa.4104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4104.0..sroa_idx.i, align 8, !noalias !8140
  %i.ml = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @103, ptr noundef nonnull %i.aw) #43, !noalias !8145 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !8140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !8140
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #42, !noalias !8145
  %i.mm = load ptr, ptr %i.md, align 8, !noalias !8140, !nonnull !10, !noundef !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mm, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !8146
  store i64 1, ptr %i.me, align 8, !noalias !8140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !8140
  br label %bb.ax

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8140
  %i.mn = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.011.0.copyload, ptr %i.mn, align 8, !noalias !8147
  %.sroa.513.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513, i64 16, i1 false), !noalias !8147
  store i8 4, ptr %i.as, align 8, !noalias !8140
  %i.mo = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.ma, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.as) #42, !noalias !8145 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8140
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !8140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !8140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !8140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !8140
  call void @llvm.experimental.noalias.scope.decl(metadata !8148)
  %.val.i.i = load i64, ptr %i.bs, align 8, !range !11, !alias.scope !8149, !noundef !10 ; 2 uses
  %i.mp = icmp eq i64 %.val.i.i, 0
  br i1 %i.mp, label %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18invalid_subcommandB4_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val1.i.i = load ptr, ptr %.sroa.422.0..sroa_idx, align 8, !alias.scope !8149, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8150
  br label %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18invalid_subcommandB4_.exit

_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18invalid_subcommandB4_.exit: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.418.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.411.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %.val56 = load i64, ptr %i.bu, align 8, !range !12, !noundef !10 ; 2 uses
  %i.mq = icmp sgt i64 %.val56, 0
  br i1 %i.mq, label %bb.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit129

bb.bb:                                            ; preds = %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18invalid_subcommandB4_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ir, i64 noundef %.val56, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8151
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit129

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit129: ; preds = %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18invalid_subcommandB4_.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

bb.bc:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i106
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jn, ptr nonnull align 1 %.sroa.0.0.i103, i64 %.sroa.3.0.i, i1 false)
  %.pre = load ptr, ptr %i.cy, align 8
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit108.thread175

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.bv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit202, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit129
  %.sroa.0.0 = phi ptr [ %i.ma, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit129 ], [ %i.pv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit202 ], [ %i.pv, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.bn

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i99
  %i.mr = getelementptr i8, ptr %i.ip, i64 700
  %i.ms = load <2 x i32>, ptr %i.mr, align 4
  %.fr402 = freeze <2 x i32> %i.ms
  %5 = and <2 x i32> %.fr402, splat (i32 256)
  %.scalar403 = bitcast <2 x i32> %5 to i64
  %.sroa.0.0.i131.not = icmp eq i64 %.scalar403, 0
  br i1 %.sroa.0.0.i131.not, label %bb.be, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101.thread

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101.thread: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i97, %bb.ah, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.mt = load i64, ptr %i.bp, align 8, !range !12, !noundef !10 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8            ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.mx = load i64, ptr %i.mw, align 8            ; 7 uses
  %.not.i132 = icmp slt i64 %i.mx, 0
  br i1 %.not.i132, label %bb.bo, label %bb.bd, !prof !20

bb.bd:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101.thread
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit136.thread192, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i134

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i134: ; preds = %bb.bd
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8152
  %i.mz = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.mx, i64 noundef range(i64 1, 9) 1) #43, !noalias !8152 ; 3 uses
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %bb.bo, label %bb.bw

bb.be:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bx) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.pre266 = load ptr, ptr %i.cy, align 8
  br label %bb.h

bb.bf:                                            ; preds = %bb.h, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i73
  %.sroa.440.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i73 ], [ 0, %bb.h ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.440.0.ph, i64 %i.ds) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit75.thread186: ; preds = %bb.i, %bb.bm
  %i.nb = phi ptr [ %i.du, %bb.bm ], [ inttoptr (i64 1 to ptr), %bb.i ]
  store i64 %i.ds, ptr %i.bm, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.nb, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.ds, ptr %.sroa.633.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store i64 -1, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.nc = load ptr, ptr %i.cy, align 8, !nonnull !10, !align !16, !noundef !10 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8153)
  call void @llvm.experimental.noalias.scope.decl(metadata !8154)
  call void @llvm.experimental.noalias.scope.decl(metadata !8155)
  call void @llvm.experimental.noalias.scope.decl(metadata !8156)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 232
  %i.ne = load ptr, ptr %i.nd, align 8, !alias.scope !8157, !nonnull !10, !noundef !10 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 240
  %i.ng = load i64, ptr %i.nf, align 8, !alias.scope !8157, !noundef !10 ; 2 uses
  %.idx398 = shl nuw nsw i64 %i.ng, 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.idx398
  %i.ni = icmp eq i64 %i.ng, 0
  br i1 %i.ni, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit147, label %.lr.ph391

bb.bg:                                            ; preds = %.lr.ph391
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i138390, i64 16 ; 2 uses
  %i.nk = add i64 %.sroa.8.0.i.i.i137389, 1
  %i.nl = icmp eq ptr %i.nj, %i.nh
  br i1 %i.nl, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit147, label %.lr.ph391

.lr.ph391:                                        ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit75.thread186, %bb.bg
  %.sroa.0.01.i.i.i138390 = phi ptr [ %i.nj, %bb.bg ], [ %i.ne, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit75.thread186 ] ; 2 uses
  %.sroa.8.0.i.i.i137389 = phi i64 [ %i.nk, %bb.bg ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit75.thread186 ] ; 4 uses
  %.val.i.i.i139 = load i128, ptr %.sroa.0.01.i.i.i138390, align 8, !noalias !8158
  %i.nm = icmp eq i128 %.val.i.i.i139, -100310019091698447603793328749864812255
  br i1 %i.nm, label %bb.bh, label %bb.bg

bb.bh:                                            ; preds = %.lr.ph391
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nc, i64 264
  %i.no = load i64, ptr %i.nn, align 8, !alias.scope !8157, !noundef !10 ; 2 uses
  %i.np = icmp ult i64 %.sroa.8.0.i.i.i137389, %i.no
  br i1 %i.np, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i137389, i64 noundef %i.no, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !8158
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nc, i64 256
  %i.nr = load ptr, ptr %i.nq, align 8, !alias.scope !8157, !nonnull !10, !noundef !10
  %i.ns = getelementptr inbounds nuw [32 x i8], ptr %i.nr, i64 %.sroa.8.0.i.i.i137389 ; 2 uses
  %.val5.i.i140 = load ptr, ptr %i.ns, align 8, !noalias !8159, !nonnull !10, !noundef !10
  %i.nt = getelementptr i8, ptr %i.ns, i64 8
  %.val6.i.i141 = load ptr, ptr %i.nt, align 8, !noalias !8159, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.val6.i.i141, i64 16
  %i.nv = load i64, ptr %i.nu, align 8, !range !17, !invariant.load !10, !noalias !8159
  %i.nw = add nsw i64 %i.nv, -1
  %i.nx = and i64 %i.nw, -16
  %i.ny = getelementptr inbounds nuw i8, ptr %.val5.i.i140, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !8159
  %i.oa = getelementptr inbounds nuw i8, ptr %.val6.i.i141, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8, !invariant.load !10, !noalias !8159, !nonnull !10
  call void %i.ob(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aq, ptr noundef nonnull %i.nz) #45, !noalias !8159, !inline_history !0
  %i.oc = load i128, ptr %i.aq, align 16, !noalias !8159, !noundef !10
  %.not.i.i142 = icmp eq i128 %i.oc, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8159
  br i1 %.not.i.i142, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit147, label %bb.bk, !prof !15

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !8159
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit147: ; preds = %bb.bg, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit75.thread186, %bb.bj
  %.sroa.0.0.i.i144 = phi ptr [ %i.nz, %bb.bj ], [ null, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit75.thread186 ], [ null, %bb.bg ] ; 2 uses
  %.not.i145 = icmp eq ptr %.sroa.0.0.i.i144, null
  %..i146 = select i1 %.not.i145, ptr @99, ptr %.sroa.0.0.i.i144 ; 5 uses
  store ptr %i.nc, ptr %i.bi, align 8, !alias.scope !8153
  %i.od = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %..i146, ptr %i.od, align 8, !alias.scope !8153
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr null, ptr %i.oe, align 8, !alias.scope !8153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !8160
  store i64 0, ptr %i.ap, align 8, !alias.scope !8161, !noalias !8160
  %.sroa.42.0..sroa_idx.i.i148 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i148, align 8, !alias.scope !8161, !noalias !8160
  %.sroa.53.0..sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i149, align 8, !alias.scope !8161, !noalias !8160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !8160
  %i.of = getelementptr inbounds nuw i8, ptr %..i146, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ao, ptr noundef nonnull align 2 dereferenceable(14) %i.of, i64 14, i1 false), !noalias !8160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8160
  %.sroa.0.0.copyload.i150 = load i8, ptr %i.of, align 2, !noalias !8160
  %.sroa.7.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %..i146, i64 32
  %.sroa.7.0.copyload.i152 = load i8, ptr %.sroa.7.0..sroa_idx.i151, align 2, !noalias !8160
  %.sroa.11.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %..i146, i64 36
  %.sroa.11.0.copyload.i154 = load i8, ptr %.sroa.11.0..sroa_idx.i153, align 2, !noalias !8160
  %.sroa.15.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %..i146, i64 40
  %.sroa.15.0.copyload.i156 = load i16, ptr %.sroa.15.0..sroa_idx.i155, align 2, !noalias !8160
  %.not.i.i157 = icmp eq i8 %.sroa.0.0.copyload.i150, -1
  %.not5.i.i158 = icmp eq i8 %.sroa.7.0.copyload.i152, -1
  %or.cond.i159 = select i1 %.not.i.i157, i1 %.not5.i.i158, i1 false
  %.not7.i.i160 = icmp eq i8 %.sroa.11.0.copyload.i154, -1
  %or.cond35.i161 = select i1 %or.cond.i159, i1 %.not7.i.i160, i1 false
  %i.og = icmp eq i16 %.sroa.15.0.copyload.i156, 0
  %or.cond36.i162 = select i1 %or.cond35.i161, i1 %i.og, i1 false ; 2 uses
  %spec.select.i163 = select i1 %or.cond36.i162, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i164 = select i1 %or.cond36.i162, i64 0, i64 4
  store ptr %spec.select.i163, ptr %i.an, align 8, !noalias !8160, !captures !21
  %i.oh = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %spec.select38.i164, ptr %i.oh, align 8, !noalias !8160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8160
  store ptr %i.ao, ptr %i.am, align 8, !noalias !8160
  %.sroa.48.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i165, align 8, !noalias !8160
  %i.oi = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.an, ptr %i.oi, align 8, !noalias !8160
  %.sroa.412.0..sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i166, align 8, !noalias !8160
  %i.oj = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.am) #43, !noalias !8160, !inline_history !22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8160
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #43, !noalias !8162, !inline_history !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !8163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8160
  %i.ok = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error16unknown_argumentB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.dn, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.bk, i1 noundef zeroext %.sroa.02.0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bj) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.ol = icmp sgt i64 %i.do, 0
  br i1 %i.ol, label %bb.bl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit169

bb.bl:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dq) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dq, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8164
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit169

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit169: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit147, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.bn

bb.bm:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i73
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.dq, i64 %i.ds, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit75.thread186

bb.bn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit244, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit304, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit169
  %.sroa.0.1 = phi ptr [ %i.yz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit304 ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit ], [ %i.ok, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit169 ], [ %i.wm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit244 ]
  ret ptr %.sroa.0.1

bb.bo:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i134
  %.sroa.436.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i134 ], [ 0, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit101.thread ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.436.0.ph, i64 %i.mx) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit136.thread192: ; preds = %bb.bd, %bb.bw
  %i.om = phi ptr [ %i.mz, %bb.bw ], [ inttoptr (i64 1 to ptr), %bb.bd ]
  store i64 %i.mx, ptr %i.bq, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.om, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %i.mx, ptr %.sroa.628.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %i.gi = icmp eq i64 %i.gh, 0
  %i.gj = select i1 %i.gi, i64 4, i64 %i.gh
  %n.vec = sub i64 %.val214.i, %i.gj              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.hd, %vector.body ]
  %vec.phi4592 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.he, %vector.body ]
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %.val213.i, i64 %index
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %.val213.i, i64 %index
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %.val213.i, i64 %index
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %.val213.i, i64 %index
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  %i.gr = load i32, ptr %i.gk, align 8, !alias.scope !10010, !noalias !10009
  %i.gs = load i32, ptr %i.gm, align 8, !alias.scope !10010, !noalias !10009
  %i.gt = insertelement <2 x i32> poison, i32 %i.gr, i64 0
  %i.gu = insertelement <2 x i32> %i.gt, i32 %i.gs, i64 1
  %i.gv = load i32, ptr %i.go, align 8, !alias.scope !10010, !noalias !10009
  %i.gw = load i32, ptr %i.gq, align 8, !alias.scope !10010, !noalias !10009
  %i.gx = insertelement <2 x i32> poison, i32 %i.gv, i64 0
  %i.gy = insertelement <2 x i32> %i.gx, i32 %i.gw, i64 1
  %i.gz = icmp eq <2 x i32> %i.gu, splat (i32 2)
  %i.ha = icmp eq <2 x i32> %i.gy, splat (i32 2)
  %i.hb = zext <2 x i1> %i.gz to <2 x i64>
  %i.hc = zext <2 x i1> %i.ha to <2 x i64>
  %i.hd = add <2 x i64> %vec.phi, %i.hb           ; 2 uses
  %i.he = add <2 x i64> %vec.phi4592, %i.hc       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !8344

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.he, %i.hd
  %i.hg = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.i.preheader5346

.preheader.i.preheader5346:                       ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.hg, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader5346, %.preheader.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.hl, %.preheader.i ], [ %.sroa.04.0.i.i.i.ph, %.preheader.i.preheader5346 ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.hk, %.preheader.i ], [ %.sroa.02.0.i.i.i.ph, %.preheader.i.preheader5346 ]
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %.val213.i, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i666 = load i32, ptr %i.hh, align 8, !range !30, !alias.scope !10010, !noalias !10009, !noundef !10
  %i.hi = icmp eq i32 %.val.i.i.i666, 2
  %i.hj = zext i1 %i.hi to i64
  %i.hk = add i64 %.sroa.02.0.i.i.i, %i.hj        ; 2 uses
  %i.hl = add nuw i64 %.sroa.04.0.i.i.i, 1        ; 2 uses
  %i.hm = icmp eq i64 %i.hl, %.val214.i
  br i1 %i.hm, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1K_NtB1K_7MKeyMap4keys0ENCNvMs_NtNtB1M_6parser6parserNtB35_6Parser5parse0ENtNtNtB9_6traits8iterator8Iterator5countB1M_.exit, label %.preheader.i, !llvm.loop !8345

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1K_NtB1K_7MKeyMap4keys0ENCNvMs_NtNtB1M_6parser6parserNtB35_6Parser5parse0ENtNtNtB9_6traits8iterator8Iterator5countB1M_.exit: ; preds = %.preheader.i, %bb.a
  %.sroa.0.0.i.i.i667 = phi i64 [ 0, %bb.a ], [ %i.hk, %.preheader.i ] ; 4 uses
  %i.hn = icmp ule i64 %.sroa.0.0.i.i.i667, %.val214.i
  tail call void @llvm.assume(i1 %i.hn), !noalias !10009
  %i.ho = getelementptr i8, ptr %i.gd, i64 136
  %.val211.i = load ptr, ptr %i.ho, align 8, !noalias !10009, !nonnull !10, !noundef !10 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.gd, i64 144
  %.val212.i = load i64, ptr %i.hp, align 8, !noalias !10009, !noundef !10 ; 2 uses
  %.idx4593 = mul nuw nsw i64 %.val212.i, 600
  %i.hq = getelementptr inbounds nuw i8, ptr %.val211.i, i64 %.idx4593
  %.not2.not.not.i.not.not.not4520.not = icmp eq i64 %.val212.i, 0
  br i1 %.not2.not.not.i.not.not.not4520.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit, label %.lr.ph4522

.lr.ph4522:                                       ; preds = %.lr.ph4522, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1K_NtB1K_7MKeyMap4keys0ENCNvMs_NtNtB1M_6parser6parserNtB35_6Parser5parse0ENtNtNtB9_6traits8iterator8Iterator5countB1M_.exit
  %i.hr = phi ptr [ %i.hu, %.lr.ph4522 ], [ %.val211.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1K_NtB1K_7MKeyMap4keys0ENCNvMs_NtNtB1M_6parser6parserNtB35_6Parser5parse0ENtNtNtB9_6traits8iterator8Iterator5countB1M_.exit ] ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 592
  %.val.i664 = load i32, ptr %i.hs, align 8, !noalias !10011, !noundef !10
  %i.ht = and i32 %.val.i664, 256
  %.not.i665 = icmp ne i32 %i.ht, 0               ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 600 ; 2 uses
  %.not2.not.not.i.not.not.not.not = icmp eq ptr %i.hu, %i.hq
  %or.cond6057 = select i1 %.not.i665, i1 true, i1 %.not2.not.not.i.not.not.not.not
  br i1 %or.cond6057, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit, label %.lr.ph4522

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit: ; preds = %.lr.ph4522, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1K_NtB1K_7MKeyMap4keys0ENCNvMs_NtNtB1M_6parser6parserNtB35_6Parser5parse0ENtNtNtB9_6traits8iterator8Iterator5countB1M_.exit
  %.not2.not.not.i.not.not.not.lcssa = phi i1 [ false, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1K_NtB1K_7MKeyMap4keys0ENCNvMs_NtNtB1M_6parser6parserNtB35_6Parser5parse0ENtNtNtB9_6traits8iterator8Iterator5countB1M_.exit ], [ %.not.i665, %.lr.ph4522 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.val216.i1811 = load i64, ptr %i.hw, align 8, !alias.scope !10008, !noundef !10
  %i.hx = icmp ult i64 %3, %.val216.i1811
  br i1 %i.hx, label %.lr.ph, label %_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs4next.exit.thread

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %.sroa.018.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.018.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.419.0..sroa_idx.i620 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.4.0..sroa_idx.i.i623 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %.sroa.64.0..sroa_idx.i.i624 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0..sroa_idx.i137.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i628 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i629 = getelementptr inbounds nuw i8, ptr %i.fv, i64 48 ; 2 uses
  %.sroa.661.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 3 uses
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 4 uses
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %.sroa.8.sroa.5.i.sroa.4.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.in = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fn, i64 32 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fn, i64 40 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.6.0..sroa_idx.i394 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.jd = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.je = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.457.0..sroa_idx.i395 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %.sroa.444.sroa.5.0..sroa.444.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %.sroa.56.0..sroa_idx.i.i281 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %.sroa.67.0..sroa_idx.i.i282 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.sroa.78.0..sroa_idx.i.i283 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %.sroa.89.0..sroa_idx.i.i284 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.sroa.910.0..sroa_idx.i.i285 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.sroa.1011.0..sroa_idx.i.i286 = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  br label %bb.b

_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs4next.exit.thread: ; preds = %.backedge, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit
  %.sroa.0686.0.lcssa = phi i8 [ 0, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit ], [ %.sroa.0686.0.be, %.backedge ]
  %.lcssa1542 = phi i64 [ %3, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit ], [ %i.bdo, %.backedge ]
  %i.jn = call i64 @llvm.uadd.sat.i64(i64 %.lcssa1542, i64 1)
  store i64 %i.jn, ptr %i.ga, align 8, !alias.scope !10012, !noalias !10006
  br label %bb.hu

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.jo = phi i64 [ %3, %.lr.ph ], [ %i.bdo, %.backedge ] ; 2 uses
  %i.jp = phi i64 [ 1, %.lr.ph ], [ %.be1010, %.backedge ] ; 14 uses
  %.sroa.013.0.i1818 = phi i8 [ 0, %.lr.ph ], [ %.sroa.013.0.i.be, %.backedge ] ; 2 uses
  %i.jq = phi i64 [ 0, %.lr.ph ], [ %.be, %.backedge ] ; 6 uses
  %.sroa.0.07971817 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.0797.be, %.backedge ] ; 5 uses
  %.sroa.12.01816 = phi ptr [ undef, %.lr.ph ], [ %.sroa.12.0.be, %.backedge ] ; 16 uses
  %.sroa.24.01815 = phi i64 [ undef, %.lr.ph ], [ %.sroa.24.0.be, %.backedge ] ; 24 uses
  %.sroa.0682.01814 = phi i64 [ 1, %.lr.ph ], [ %.sroa.0682.0.be, %.backedge ] ; 9 uses
  %.sroa.0686.01812 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0686.0.be, %.backedge ] ; 13 uses
  %.val215.i1819 = load ptr, ptr %i.hv, align 8, !alias.scope !10008, !nonnull !10, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !10012)
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %.val215.i1819, i64 %i.jo ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !10013, !nonnull !10, !noundef !10 ; 7 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !10013, !noundef !10 ; 20 uses
  %i.jw = add nuw i64 %i.jo, 1
  store i64 %i.jw, ptr %i.ga, align 8, !alias.scope !10012, !noalias !10006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !10009
  store ptr %i.jt, ptr %i.fy, align 8, !noalias !10009
  store i64 %i.jv, ptr %i.hy, align 8, !noalias !10009
  %i.jx = trunc nuw i8 %.sroa.013.0.i1818 to i1   ; 5 uses
  br i1 %i.jx, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.jy = load ptr, ptr %i.gc, align 8, !alias.scope !10006, !nonnull !10, !align !16, !noundef !10 ; 37 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 700    ; 3 uses
  %i.ka = getelementptr i8, ptr %i.jy, i64 704
  %i.kb = load <2 x i32>, ptr %i.jz, align 4, !noalias !10006
  %.fr4616 = freeze <2 x i32> %i.kb
  %4 = and <2 x i32> %.fr4616, splat (i32 16384)
  %.scalar = bitcast <2 x i32> %4 to i64
  %.sroa.0.0.i660 = icmp ne i64 %.scalar, 0
  %i.kc = icmp eq i64 %i.jq, 0
  %or.cond180.i = select i1 %.sroa.0.0.i660, i1 true, i1 %i.kc
  br i1 %or.cond180.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.fi, %bb.b
  %.sroa.0686.2 = phi i8 [ %.sroa.0686.01812, %bb.b ], [ %.sroa.0686.1, %bb.fi ] ; 2 uses
  %i.kd = add i64 %i.jp, 1                        ; 2 uses
  %i.ke = icmp eq i64 %i.kd, %.sroa.0.0.i.i.i667  ; 2 uses
  br i1 %i.ke, label %bb.iy, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread

default.unreachable:                              ; preds = %bb.fj, %bb.u, %bb.t, %bb.lr, %bb.lj
  unreachable

bb.e:                                             ; preds = %bb.gz, %bb.bt
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.c
  %i.kf = icmp eq i64 %i.jv, 2
  br i1 %i.kf, label %bb.r, label %bb.s

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !10009
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fy) #43, !noalias !10006, !inline_history !8350
  %i.kg = trunc nuw i8 %.sroa.0686.01812 to i1
  %i.kh = call fastcc { ptr, i64 } @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fx, i1 noundef zeroext %i.kg) #43, !inline_history !8350 ; 2 uses
  %i.ki = extractvalue { ptr, i64 } %i.kh, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !10009
  %.not153.i = icmp eq ptr %i.ki, null
  br i1 %.not153.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.kj = extractvalue { ptr, i64 } %i.kh, 1      ; 8 uses
  %i.kk = icmp eq i64 %i.kj, 4
  br i1 %i.kk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.kl = load i32, ptr %i.ki, align 1
  %i.km = icmp ne i32 %i.kl, 1886152040
  %i.kn = zext i1 %i.km to i32
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %bb.l, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656

bb.j:                                             ; preds = %bb.h
  %.not.i654 = icmp slt i64 %i.kj, 0
  br i1 %.not.i654, label %bb.n, label %bb.k, !prof !10014

bb.k:                                             ; preds = %bb.j
  %i.kp = icmp eq i64 %i.kj, 0
  br i1 %i.kp, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656: ; preds = %bb.l, %bb.i, %bb.k
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10015
  %i.kq = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.kj, i64 noundef range(i64 1, 9) 1) #43, !noalias !10015 ; 3 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %bb.n, label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.ks = load <2 x i32>, ptr %i.jz, align 4, !noalias !10006
  %.fr4618 = freeze <2 x i32> %i.ks
  %5 = and <2 x i32> %.fr4618, splat (i32 1048576)
  %.scalar4619 = bitcast <2 x i32> %5 to i64
  %.sroa.0.0.i653.not = icmp eq i64 %.scalar4619, 0
  br i1 %.sroa.0.0.i653.not, label %bb.m, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656

bb.m:                                             ; preds = %bb.l
  %i.kt = call { ptr, ptr } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ga) #43, !noalias !10006, !inline_history !8350 ; 2 uses
  %i.ku = extractvalue { ptr, ptr } %i.kt, 0
  %i.kv = extractvalue { ptr, ptr } %i.kt, 1
  %i.kw = call fastcc noundef nonnull align 8 ptr @_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3r_7RawArgs9remaining0EEB9_(ptr %i.jy, ptr noundef nonnull %i.ku, ptr noundef %i.kv) #43, !noalias !10006, !inline_history !8350
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEBH_.exit

bb.n:                                             ; preds = %bb.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656
  %.sroa.4750.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656 ], [ 0, %bb.j ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4750.0.ph, i64 %i.kj) #46, !noalias !10006, !inline_history !8350
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811: ; preds = %bb.k, %bb.p
  %i.kx = phi ptr [ %i.kq, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.k ]
  %.val200.i = load i64, ptr %i.fz, align 8, !range !12, !noalias !10009, !noundef !10 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.kz = icmp sgt i64 %.val200.i, 0
  br i1 %i.kz, label %bb.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651

bb.o:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811
  %.val201.i = load ptr, ptr %i.ky, align 8, !noalias !10009, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val201.i, i64 noundef %.val200.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10016
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811, %bb.o
  store i64 %i.kj, ptr %i.fz, align 8, !noalias !10009
  store ptr %i.kx, ptr %i.ky, align 8, !noalias !10009
  %.sroa.5112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %i.kj, ptr %.sroa.5112.0..sroa_idx.i, align 8, !noalias !10009
  br label %bb.q

bb.p:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i656
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kq, ptr nonnull align 1 %i.ki, i64 %i.kj, i1 false), !noalias !10006
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit658.thread811

bb.q:                                             ; preds = %bb.ht, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit580, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651
  %.sroa.0686.4 = phi i8 [ %.sroa.0686.9822, %bb.ht ], [ %.sroa.0686.10818, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit580 ], [ %.sroa.0686.01812, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651 ]
  %.sroa.064.0.i = phi i1 [ %i.awl, %bb.ht ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit580 ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit651 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !10009
  br label %bb.hu

bb.r:                                             ; preds = %bb.f
  %i.la = load i16, ptr %i.jt, align 1
  %i.lb = icmp ne i16 %i.la, 11565
  %i.lc = zext i1 %i.lb to i32
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !noalias !10009
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7to_long(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.fw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fy) #43, !noalias !10006, !inline_history !8350
  %i.le = load i64, ptr %i.fw, align 8, !range !14, !noalias !10009, !noundef !10 ; 2 uses
  %.not154.i = icmp eq i64 %i.le, 2
  br i1 %.not154.i, label %bb.bq, label %bb.u

bb.t:                                             ; preds = %bb.r
  switch i64 %i.jq, label %default.unreachable [
    i64 1, label %bb.ia
    i64 2, label %bb.ib
    i64 0, label %bb.ic
  ]

bb.u:                                             ; preds = %bb.s
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !10009 ; 17 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !10009 ; 38 uses
  %i.lf = load ptr, ptr %i.hz, align 8, !noalias !10009, !noundef !10 ; 4 uses
  %i.lg = load i64, ptr %i.ia, align 8, !noalias !10009 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !10009
  call void @llvm.experimental.noalias.scope.decl(metadata !10017)
  call void @llvm.experimental.noalias.scope.decl(metadata !10018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  switch i64 %.sroa.0.07971817, label %default.unreachable [
    i64 1, label %bb.v
    i64 2, label %bb.w
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !10019)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jy, i64 136
  %.val.i.i640 = load ptr, ptr %i.lh, align 8, !alias.scope !10019, !noalias !10020, !nonnull !10, !noundef !10 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %.val2.i.i641 = load i64, ptr %i.li, align 8, !alias.scope !10019, !noalias !10020, !noundef !10 ; 2 uses
  %.idx.i.i.i642 = mul nuw nsw i64 %.val2.i.i641, 600
  %i.lj = getelementptr inbounds nuw i8, ptr %.val.i.i640, i64 %.idx.i.i.i642
  %i.lk = icmp eq i64 %.val2.i.i641, 0
  br i1 %i.lk, label %.loopexit.i.i645, label %.lr.ph.i.i.i.i643

.lr.ph.i.i.i.i643:                                ; preds = %bb.v, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644
  %i.ll = phi ptr [ %i.lm, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644 ], [ %.val.i.i640, %bb.v ] ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 600 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 544
  %i.lo = load i64, ptr %i.ln, align 8, !noalias !10021, !noundef !10
  %i.lp = icmp eq i64 %i.lo, %.sroa.24.01815
  br i1 %i.lp, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i646, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i646: ; preds = %.lr.ph.i.i.i.i643
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 536
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !10021, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i647 = call i32 @bcmp(ptr nonnull %i.lr, ptr nonnull %.sroa.12.01816, i64 %.sroa.24.01815), !noalias !10021
  %i.ls = icmp eq i32 %bcmp.i.i.i.i.i647, 0
  br i1 %i.ls, label %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i648, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i646, %.lr.ph.i.i.i.i643
  %i.lt = icmp eq ptr %i.lm, %i.lj
  br i1 %i.lt, label %.loopexit.i.i645, label %.lr.ph.i.i.i.i643

.loopexit.i.i645:                                 ; preds = %bb.v, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i644
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #44, !noalias !10022
  unreachable

_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i648: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i646
  %i.lu = getelementptr i8, ptr %i.ll, i64 592
  %.val92.i = load i32, ptr %i.lu, align 8, !noalias !10020, !noundef !10
  %i.lv = and i32 %.val92.i, 32
  %.not245.i = icmp eq i32 %i.lv, 0
  br i1 %.not245.i, label %bb.x, label %.sink.split

bb.w:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !10023)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jy, i64 136
  %.val.i101.i = load ptr, ptr %i.lw, align 8, !alias.scope !10023, !noalias !10020, !nonnull !10, !noundef !10 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %.val2.i102.i = load i64, ptr %i.lx, align 8, !alias.scope !10023, !noalias !10020, !noundef !10 ; 2 uses
  %.idx.i.i103.i = mul nuw nsw i64 %.val2.i102.i, 600
  %i.ly = getelementptr inbounds nuw i8, ptr %.val.i101.i, i64 %.idx.i.i103.i
  %i.lz = icmp eq i64 %.val2.i102.i, 0
  br i1 %i.lz, label %.loopexit.i106.i, label %.lr.ph.i.i.i104.i

.lr.ph.i.i.i104.i:                                ; preds = %bb.w, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i
  %i.ma = phi ptr [ %i.mb, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i ], [ %.val.i101.i, %bb.w ] ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 600 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 544
  %i.md = load i64, ptr %i.mc, align 8, !noalias !10024, !noundef !10
  %i.me = icmp eq i64 %i.md, %.sroa.24.01815
  br i1 %i.me, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i107.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i107.i: ; preds = %.lr.ph.i.i.i104.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 536
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !10024, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i108.i = call i32 @bcmp(ptr nonnull %i.mg, ptr nonnull %.sroa.12.01816, i64 %.sroa.24.01815), !noalias !10024
  %i.mh = icmp eq i32 %bcmp.i.i.i.i108.i, 0
  br i1 %i.mh, label %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit109.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i107.i, %.lr.ph.i.i.i104.i
  %i.mi = icmp eq ptr %i.mb, %i.ly
  br i1 %i.mi, label %.loopexit.i106.i, label %.lr.ph.i.i.i104.i

.loopexit.i106.i:                                 ; preds = %bb.w, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i105.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #44, !noalias !10025
  unreachable

_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit109.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i107.i
  %i.mj = getelementptr i8, ptr %i.ma, i64 592
  %.val91.i = load i32, ptr %i.mj, align 8, !noalias !10020, !noundef !10
  %i.mk = and i32 %.val91.i, 32
  %.not.i639 = icmp eq i32 %i.mk, 0
  br i1 %.not.i639, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit109.i, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i648, %bb.u
  %i.ml = trunc nuw i64 %i.le to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br i1 %i.ml, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10020
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload) #43, !noalias !10020
  %i.mm = load i64, ptr %i.j, align 8, !range !12, !noalias !10020, !noundef !10 ; 2 uses
  %.not86.i = icmp eq i64 %i.mm, -1
  %i.mn = load ptr, ptr %i.il, align 8, !noalias !10020 ; 2 uses
  %i.mo = load i64, ptr %i.im, align 8, !noalias !10020 ; 8 uses
  br i1 %.not86.i, label %bb.bm, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit156.thread240.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !10026)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.jy, i64 160
  %i.mq = load ptr, ptr %i.mp, align 8, !alias.scope !10026, !noalias !10020, !nonnull !10, !noundef !10 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jy, i64 168
  %i.ms = load i64, ptr %i.mr, align 8, !alias.scope !10026, !noalias !10020, !noundef !10 ; 4 uses
  %.idx.i.i581 = shl nuw nsw i64 %i.ms, 5
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 %.idx.i.i581
  %i.mu = icmp eq i64 %i.ms, 0
  br i1 %i.mu, label %.loopexit255.i, label %.lr.ph.i.i.i582

.lr.ph.i.i.i582:                                  ; preds = %bb.z, %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.thread.i.i.i
  %i.mv = phi ptr [ %i.mw, %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.thread.i.i.i ], [ %i.mq, %bb.z ] ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10027)
  %i.mx = load i32, ptr %i.mv, align 8, !range !30, !alias.scope !10027, !noalias !10028, !noundef !10
  %i.my = icmp eq i32 %i.mx, 1
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !10027, !noalias !10028
  %i.nb = icmp eq i64 %i.na, %.sroa.8.0.copyload
  %or.cond.i.i.i.i.i583 = select i1 %i.my, i1 %i.nb, i1 false
  br i1 %or.cond.i.i.i.i.i583, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.i.i.i, label %_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.thread.i.i.i

_RNCINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB8_7MKeyMap3geteE0Ba_.exit.i.i.i: ; preds = %.lr.ph.i.i.i582
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !10027, !noalias !10028, !nonnull !10, !noundef !10
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !10006
  %i.beb = add i64 %i.jp, 1                       ; 2 uses
  br label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread

_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread: ; preds = %bb.id, %bb.ic, %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses0_0Ba_.exit.thread, %bb.iv
  %.sroa.0682.3 = phi i64 [ %.sroa.0682.01814, %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses0_0Ba_.exit.thread ], [ %i.beb, %bb.iv ], [ %.sroa.0682.01814, %bb.ic ], [ %.sroa.0682.01814, %bb.id ] ; 3 uses
  %i.bec = phi i64 [ %i.jp, %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses0_0Ba_.exit.thread ], [ %i.beb, %bb.iv ], [ %i.jp, %bb.ic ], [ %i.jp, %bb.id ] ; 3 uses
  %i.bed = load i64, ptr %1, align 8, !range !14, !alias.scope !10379, !noalias !10006, !noundef !10 ; 2 uses
  %.not.i263 = icmp eq i64 %i.bed, 2
  br i1 %.not.i263, label %.backedge, label %bb.iw

bb.iw:                                            ; preds = %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread
  %i.bee = load i64, ptr %.sroa.78.0..sroa_idx.i.i283, align 8, !alias.scope !10379, !noalias !10006, !noundef !10 ; 2 uses
  %i.bef = icmp ult i64 %i.bee, 384307168202282326
  call void @llvm.assume(i1 %i.bef), !noalias !10006
  %i.beg = trunc nuw i64 %i.bed to i1
  br i1 %i.beg, label %.backedge, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  store i64 1, ptr %1, align 8, !alias.scope !10380, !noalias !10006
  store i64 %i.bee, ptr %i.jl, align 8, !alias.scope !10380, !noalias !10006
  br label %.backedge

bb.iy:                                            ; preds = %bb.d
  %i.beh = load ptr, ptr %i.gc, align 8, !alias.scope !10006, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.bei = getelementptr i8, ptr %i.beh, i64 136
  %.val209.i = load ptr, ptr %i.bei, align 8, !noalias !10006, !nonnull !10, !noundef !10 ; 5 uses
  %i.bej = getelementptr i8, ptr %i.beh, i64 144
  %.val210.i = load i64, ptr %i.bej, align 8, !noalias !10006, !noundef !10 ; 6 uses
  %.idx952 = mul nuw nsw i64 %.val210.i, 600
  %i.bek = getelementptr inbounds nuw i8, ptr %.val209.i, i64 %.idx952
  %.not14.i = icmp eq i64 %.val210.i, 0
  br i1 %.not14.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.iy, %.backedge.i
  %i.bel = phi ptr [ %i.bem, %.backedge.i ], [ %.val209.i, %bb.iy ] ; 9 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 600 ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bel, i64 552
  %i.beo = load ptr, ptr %i.ben, align 8, !alias.scope !10381, !noalias !10382, !noundef !10
  %.not.i.i.i256 = icmp eq ptr %i.beo, null
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bel, i64 584
  %i.beq = load i32, ptr %i.bep, align 8, !range !44, !alias.scope !10381, !noalias !10382
  %.not1.i.i.i257 = icmp eq i32 %i.beq, -1
  %or.cond.i.i258 = select i1 %.not.i.i.i256, i1 %.not1.i.i.i257, i1 false
  br i1 %or.cond.i.i258, label %bb.iz, label %.backedge.i

bb.iz:                                            ; preds = %.lr.ph.i255
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bel, i64 16
  %.sroa.04.0.copyload.i.i.i.i = load i64, ptr %i.ber, align 8, !alias.scope !10383, !noalias !10382
  %i.bes = trunc nuw i64 %.sroa.04.0.copyload.i.i.i.i to i1
  %.sroa.5.0..sroa_idx.i.i.i.i259 = getelementptr inbounds nuw i8, ptr %i.bel, i64 32
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i259, align 8, !alias.scope !10383, !noalias !10382
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bel, i64 24
  %.sroa.45.0.copyload.i.i.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10383, !noalias !10382 ; 2 uses
  %i.bet = icmp ne i64 %.sroa.45.0.copyload.i.i.i.i, %.sroa.5.0.copyload.i.i.i.i
  %i.beu = icmp ugt i64 %.sroa.45.0.copyload.i.i.i.i, 1
  %i.bev = or i1 %i.bet, %i.beu
  %brmerge.i.i.i.i = select i1 %i.bes, i1 %i.bev, i1 false
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bel, i64 596
  %i.bex = load i8, ptr %i.bew, align 4, !range !52, !alias.scope !10383, !noalias !10382
  %i.bey = icmp eq i8 %i.bex, 1
  %or.cond.i.i.i.i260 = select i1 %brmerge.i.i.i.i, i1 true, i1 %i.bey
  br i1 %or.cond.i.i.i.i260, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %bb.iz
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bel, i64 40
  %i.bfa = load i64, ptr %i.bez, align 8, !range !13, !alias.scope !10383, !noalias !10382, !noundef !10
  %i.bfb = trunc nuw i64 %i.bfa to i1
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bel, i64 48
  %i.bfd = load i64, ptr %i.bfc, align 8, !alias.scope !10383, !noalias !10382
  %.sroa.01.0.i.i.i.i261 = select i1 %i.bfb, i64 %i.bfd, i64 0
  %.not.i262 = icmp eq i64 %.sroa.0.0.i.i.i667, %.sroa.01.0.i.i.i.i261
  br i1 %.not.i262, label %.backedge.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.split.i
  %xtraiter = and i64 %.val210.i, 1
  %i.bfe = icmp eq i64 %.val210.i, 1
  br i1 %i.bfe, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %.val210.i, -2
  br label %.preheader

.backedge.i:                                      ; preds = %.split.i, %bb.iz, %.lr.ph.i255
  %.not15.i = icmp eq ptr %i.bem, %i.bek
  br i1 %.not15.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %.lr.ph.i255

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bfq, %.preheader ] ; 3 uses
  %.sroa.02.0.i = phi ptr [ null, %.preheader.preheader.new ], [ %spec.select.i.i250.1, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.bff = getelementptr inbounds nuw [600 x i8], ptr %.val209.i, i64 %.sroa.04.0.i ; 3 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 552
  %i.bfh = load ptr, ptr %i.bfg, align 8, !alias.scope !10384, !noalias !10006, !noundef !10
  %.not.i.i.i247 = icmp eq ptr %i.bfh, null
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bff, i64 584
  %i.bfj = load i32, ptr %i.bfi, align 8, !range !44, !alias.scope !10384, !noalias !10006
  %.not1.i.i.i248 = icmp eq i32 %i.bfj, -1
  %or.cond.i.i249 = select i1 %.not.i.i.i247, i1 %.not1.i.i.i248, i1 false
  %spec.select.i.i250 = select i1 %or.cond.i.i249, ptr %i.bff, ptr %.sroa.02.0.i
  %i.bfk = getelementptr inbounds nuw [600 x i8], ptr %.val209.i, i64 %.sroa.04.0.i ; 3 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 600
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfk, i64 1152
  %i.bfn = load ptr, ptr %i.bfm, align 8, !alias.scope !10384, !noalias !10006, !noundef !10
  %.not.i.i.i247.1 = icmp eq ptr %i.bfn, null
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfk, i64 1184
  %i.bfp = load i32, ptr %i.bfo, align 8, !range !44, !alias.scope !10384, !noalias !10006
  %.not1.i.i.i248.1 = icmp eq i32 %i.bfp, -1
  %or.cond.i.i249.1 = select i1 %.not.i.i.i247.1, i1 %.not1.i.i.i248.1, i1 false
  %spec.select.i.i250.1 = select i1 %or.cond.i.i249.1, ptr %i.bfl, ptr %spec.select.i.i250 ; 3 uses
  %i.bfq = add nuw i64 %.sroa.04.0.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bfq, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi ptr [ null, %.preheader.preheader ], [ %spec.select.i.i250.1, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ]
  %lcmp.mod5351 = trunc i64 %.val210.i to i1
  call void @llvm.assume(i1 %lcmp.mod5351)
  %i.bfr = getelementptr inbounds nuw [600 x i8], ptr %.val209.i, i64 %.sroa.04.0.i.epil.init ; 3 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 552
  %i.bft = load ptr, ptr %i.bfs, align 8, !alias.scope !10384, !noalias !10006, !noundef !10
  %.not.i.i.i247.epil = icmp eq ptr %i.bft, null
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfr, i64 584
  %i.bfv = load i32, ptr %i.bfu, align 8, !range !44, !alias.scope !10384, !noalias !10006
  %.not1.i.i.i248.epil = icmp eq i32 %i.bfv, -1
  %or.cond.i.i249.epil = select i1 %.not.i.i.i247.epil, i1 %.not1.i.i.i248.epil, i1 false
  %spec.select.i.i250.epil = select i1 %or.cond.i.i249.epil, ptr %i.bfr, ptr %.sroa.02.0.i.epil.init
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, %.preheader.epil.preheader
  %spec.select.i.i250.lcssa = phi ptr [ %spec.select.i.i250.1, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ], [ %spec.select.i.i250.epil, %.preheader.epil.preheader ] ; 2 uses
  %.not165.i = icmp eq ptr %spec.select.i.i250.lcssa, null
  br i1 %.not165.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %bb.jc

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread: ; preds = %.backedge.i, %bb.iy, %bb.jc, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit, %bb.d
  %.sroa.073.0.i = phi i1 [ true, %bb.d ], [ true, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit ], [ %.not.i239, %bb.jc ], [ true, %bb.iy ], [ true, %.backedge.i ] ; 2 uses
  %i.bfw = load ptr, ptr %i.gc, align 8, !alias.scope !10006, !nonnull !10, !align !16, !noundef !10 ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10385)
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 160 ; 2 uses
  %i.bfy = load ptr, ptr %i.bfx, align 8, !alias.scope !10385, !nonnull !10, !noundef !10 ; 2 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfw, i64 168 ; 2 uses
  %i.bga = load i64, ptr %i.bfz, align 8, !alias.scope !10385, !noundef !10 ; 2 uses
  %.idx4608 = shl nuw nsw i64 %i.bga, 5
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfy, i64 %.idx4608
  %i.bgc = icmp eq i64 %i.bga, 0
  br i1 %i.bgc, label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread, label %.lr.ph4546

bb.ja:                                            ; preds = %.lr.ph4546
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgf, i64 32 ; 2 uses
  %i.bge = icmp eq ptr %i.bgd, %i.bgb
  br i1 %i.bge, label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread, label %.lr.ph4546

.lr.ph4546:                                       ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, %bb.ja
  %i.bgf = phi ptr [ %i.bgd, %bb.ja ], [ %i.bfy, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread ] ; 4 uses
  %.val.i.i.i241 = load i32, ptr %i.bgf, align 8, !range !30, !noalias !10386, !noundef !10
  %i.bgg = getelementptr i8, ptr %i.bgf, i64 8
  %.val1.i.i.i242 = load i64, ptr %i.bgg, align 8, !noalias !10386
  %i.bgh = icmp eq i32 %.val.i.i.i241, 2
  %i.bgi = icmp eq i64 %.val1.i.i.i242, %.sroa.0682.01814
  %.sroa.0.0.i.i.i.i243 = select i1 %i.bgh, i1 %i.bgi, i1 false
  br i1 %.sroa.0.0.i.i.i.i243, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i244, label %bb.ja

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i244: ; preds = %.lr.ph4546
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgf, i64 24
  %i.bgk = load i64, ptr %i.bgj, align 8, !noalias !10387, !noundef !10 ; 3 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bfw, i64 144
  %i.bgm = load i64, ptr %i.bgl, align 8, !alias.scope !10385, !noundef !10 ; 2 uses
  %i.bgn = icmp ult i64 %i.bgk, %i.bgm
  br i1 %i.bgn, label %bb.jd, label %bb.jb

bb.jb:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i244
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bgk, i64 noundef %i.bgm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #44, !noalias !10387
  unreachable

bb.jc:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit
  %i.bgo = getelementptr i8, ptr %spec.select.i.i250.lcssa, i64 592
  %.val252.i = load i32, ptr %i.bgo, align 8, !noalias !10006, !noundef !10
  %i.bgp = and i32 %.val252.i, 256
  %.not.i239 = icmp ne i32 %i.bgp, 0
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread

bb.jd:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i244
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bfw, i64 136
  %i.bgr = load ptr, ptr %i.bgq, align 8, !alias.scope !10385, !nonnull !10, !noundef !10
  %i.bgs = getelementptr inbounds nuw [600 x i8], ptr %i.bgr, i64 %i.bgk
  %i.bgt = getelementptr i8, ptr %i.bgs, i64 568
  %.val253.i = load ptr, ptr %i.bgt, align 8, !noalias !10006, !noundef !10
  %.not.i238 = icmp ne ptr %.val253.i, null
  br label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread

_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread: ; preds = %bb.ja, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, %bb.jd
  %.sroa.078.0.i = phi i1 [ %.not.i238, %bb.jd ], [ false, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread ], [ false, %bb.ja ] ; 2 uses
  %i.bgu = getelementptr i8, ptr %i.bfw, i64 700
  %i.bgv = load <2 x i32>, ptr %i.bgu, align 4, !noalias !10006
  %.fr4621 = freeze <2 x i32> %i.bgv
  %6 = and <2 x i32> %.fr4621, splat (i32 16)
  %.scalar4622 = bitcast <2 x i32> %6 to i64
  %.sroa.0.0.i237 = icmp ne i64 %.scalar4622, 0   ; 2 uses
  %brmerge.not.i = and i1 %i.ke, %.sroa.0.0.i237
  br i1 %brmerge.not.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread
  %brmerge181.i = or i1 %.sroa.073.0.i, %.sroa.078.0.i
  br i1 %brmerge181.i, label %bb.jg, label %bb.jh

bb.jf:                                            ; preds = %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread
  %or.cond.not.i = and i1 %.sroa.073.0.i, %i.jx
  %brmerge.i = or i1 %or.cond.not.i, %.sroa.078.0.i
  br i1 %brmerge.i, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf, %bb.je
  br i1 %i.jx, label %bb.jq, label %bb.jn

bb.jh:                                            ; preds = %bb.jf, %bb.je
  %i.bgw = call { ptr, i64 } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs4peek(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ga) #43, !noalias !10006, !inline_history !8350 ; 2 uses
  %i.bgx = extractvalue { ptr, i64 } %i.bgw, 0    ; 2 uses
  %.not.i = icmp eq ptr %i.bgx, null
  br i1 %.not.i, label %bb.jm, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bgy = extractvalue { ptr, i64 } %i.bgw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !noalias !10009
  store ptr %i.bgx, ptr %i.fd, align 8, !noalias !10009
  store i64 %i.bgy, ptr %i.jm, align 8, !noalias !10009
  %i.bgz = getelementptr i8, ptr %i.bfw, i64 136
  %.val205.i = load ptr, ptr %i.bgz, align 8, !noalias !10006, !nonnull !10, !noundef !10 ; 4 uses
  %i.bha = getelementptr i8, ptr %i.bfw, i64 144
  %.val206.i = load i64, ptr %i.bha, align 8, !noalias !10006, !noundef !10 ; 2 uses
  %.idx953 = mul nuw nsw i64 %.val206.i, 600
  %i.bhb = getelementptr inbounds nuw i8, ptr %.val205.i, i64 %.idx953 ; 3 uses
  %i.bhc = icmp eq i64 %.val206.i, 0
  br i1 %i.bhc, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread865, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ji, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i
  %i.bhd = phi ptr [ %i.bhe, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i ], [ %.val205.i, %bb.ji ] ; 7 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 600 ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhd, i64 552
  %i.bhg = load ptr, ptr %i.bhf, align 8, !alias.scope !10388, !noalias !10389, !noundef !10
  %.not.i.i.i233 = icmp eq ptr %i.bhg, null
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhd, i64 584
  %i.bhi = load i32, ptr %i.bhh, align 8, !range !44, !alias.scope !10388, !noalias !10389
  %.not1.i.i.i = icmp eq i32 %i.bhi, -1
  %or.cond.i.i234 = select i1 %.not.i.i.i233, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i234, label %bb.jj, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

bb.jj:                                            ; preds = %.lr.ph.i
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhd, i64 40
  %i.bhk = load i64, ptr %i.bhj, align 8, !range !13, !alias.scope !10390, !noalias !10389, !noundef !10
  %i.bhl = trunc nuw i64 %i.bhk to i1
  br i1 %i.bhl, label %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i: ; preds = %bb.jj
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhd, i64 48
  %i.bhn = load i64, ptr %i.bhm, align 8, !alias.scope !10390, !noalias !10389
  %.fr.i.i.i = freeze i64 %i.bhn
  %i.bho = icmp eq i64 %.fr.i.i.i, %.sroa.0682.01814
  br i1 %i.bho, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i: ; preds = %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i, %bb.jj, %.lr.ph.i
  %i.bhp = icmp eq ptr %i.bhe, %i.bhb
  br i1 %i.bhp, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread865, label %.lr.ph.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit: ; preds = %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i
  %i.bhq = getelementptr i8, ptr %i.bhd, i64 536
  %.val259.i = load ptr, ptr %i.bhq, align 8, !noalias !10006 ; 2 uses
  %i.bhr = getelementptr i8, ptr %i.bhd, i64 544
  %.val260.i = load i64, ptr %i.bhr, align 8, !noalias !10006 ; 4 uses
  br label %.lr.ph.i.i.i.i226

.lr.ph.i.i.i.i226:                                ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227
  %i.bhs = phi ptr [ %i.bht, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227 ], [ %.val205.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit ] ; 4 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 600 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhs, i64 544
  %i.bhv = load i64, ptr %i.bhu, align 8, !noalias !10391, !noundef !10
  %i.bhw = icmp eq i64 %i.bhv, %.val260.i
  br i1 %i.bhw, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i229, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i229: ; preds = %.lr.ph.i.i.i.i226
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhs, i64 536
  %i.bhy = load ptr, ptr %i.bhx, align 8, !noalias !10391, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i230 = call i32 @bcmp(ptr nonnull %i.bhy, ptr nonnull readonly %.val259.i, i64 %.val260.i), !noalias !10391
  %i.bhz = icmp eq i32 %bcmp.i.i.i.i.i230, 0
  br i1 %i.bhz, label %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i229, %.lr.ph.i.i.i.i226
  %i.bia = icmp eq ptr %i.bht, %i.bhb
  br i1 %i.bia, label %.loopexit.i.i228, label %.lr.ph.i.i.i.i226

.loopexit.i.i228:                                 ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #44, !noalias !10392
  unreachable

_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i229
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhs, i64 592
  %i.bic = load i32, ptr %i.bib, align 8, !noalias !10393, !noundef !10
  %i.bid = and i32 %i.bic, 32
  %.not.i231 = icmp eq i32 %i.bid, 0
  br i1 %.not.i231, label %.lr.ph.i.i.i5.i, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread

.lr.ph.i.i.i5.i:                                  ; preds = %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i6.i
  %i.bie = phi ptr [ %i.bif, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i6.i ], [ %.val205.i, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i ] ; 4 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 600 ; 2 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.bie, i64 544
  %i.bih = load i64, ptr %i.big, align 8, !noalias !10394, !noundef !10
  %i.bii = icmp eq i64 %i.bih, %.val260.i
  br i1 %i.bii, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i8.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i6.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i8.i: ; preds = %.lr.ph.i.i.i5.i
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bie, i64 536
  %i.bik = load ptr, ptr %i.bij, align 8, !noalias !10394, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i9.i = call i32 @bcmp(ptr nonnull %i.bik, ptr nonnull readonly %.val259.i, i64 %.val260.i), !noalias !10394
  %i.bil = icmp eq i32 %bcmp.i.i.i.i9.i, 0
  br i1 %i.bil, label %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit10.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i6.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i6.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i8.i, %.lr.ph.i.i.i5.i
  %i.bim = icmp eq ptr %i.bif, %i.bhb
  br i1 %i.bim, label %.loopexit.i7.i, label %.lr.ph.i.i.i5.i

.loopexit.i7.i:                                   ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i6.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #44, !noalias !10395
  unreachable

_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit10.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i8.i
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bie, i64 592
  %i.bio = load i32, ptr %i.bin, align 8, !noalias !10393, !noundef !10
  %i.bip = and i32 %i.bio, 64
  %.not1.i = icmp eq i32 %i.bip, 0
  br i1 %.not1.i, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit10.i
  %i.biq = call noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg18is_negative_number(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fd) #43, !noalias !10006
  br i1 %i.biq, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread, label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit10.i
  %i.bir = call noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7is_long(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fd) #43, !noalias !10006
  br i1 %i.bir, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread865, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit: ; preds = %bb.jl
  %i.bis = call noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8is_short(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fd) #43, !noalias !10006
  br i1 %i.bis, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread865, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread865: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i, %bb.jl, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !10009
  br label %bb.jm

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread: ; preds = %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i, %bb.jk, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !noalias !10009
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fd) #43, !noalias !10006, !inline_history !8350
  %i.bit = trunc nuw i8 %.sroa.0686.2 to i1
  %i.biu = call fastcc { ptr, i64 } @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fc, i1 noundef zeroext %i.bit) #43, !inline_history !8350
  %i.biv = extractvalue { ptr, i64 } %i.biu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !noalias !10009
  %.not169.i = icmp eq ptr %i.biv, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !10009
  br i1 %.not169.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread865, %bb.jh
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jq, %bb.jm, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread, %bb.jg
  %.sroa.072.0.i = phi i64 [ %i.jp, %bb.jg ], [ %i.jp, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread ], [ %i.kd, %bb.jm ], [ %spec.select.i, %bb.jq ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10396)
  %i.biw = load ptr, ptr %i.bfx, align 8, !alias.scope !10396, !nonnull !10, !noundef !10 ; 2 uses
  %i.bix = load i64, ptr %i.bfz, align 8, !alias.scope !10396, !noundef !10 ; 2 uses
  %.idx4609 = shl nuw nsw i64 %i.bix, 5
  %i.biy = getelementptr inbounds nuw i8, ptr %i.biw, i64 %.idx4609
  %i.biz = icmp eq i64 %i.bix, 0
  br i1 %i.biz, label %._crit_edge4549, label %.lr.ph4548

bb.jo:                                            ; preds = %.lr.ph4548
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bjc, i64 32 ; 2 uses
  %i.bjb = icmp eq ptr %i.bja, %i.biy
  br i1 %i.bjb, label %._crit_edge4549, label %.lr.ph4548

.lr.ph4548:                                       ; preds = %bb.jn, %bb.jo
  %i.bjc = phi ptr [ %i.bja, %bb.jo ], [ %i.biw, %bb.jn ] ; 4 uses
  %.val.i.i.i221 = load i32, ptr %i.bjc, align 8, !range !30, !noalias !10397, !noundef !10
  %i.bjd = getelementptr i8, ptr %i.bjc, i64 8
  %.val1.i.i.i222 = load i64, ptr %i.bjd, align 8, !noalias !10397
  %i.bje = icmp eq i32 %.val.i.i.i221, 2
  %i.bjf = icmp eq i64 %.val1.i.i.i222, %.sroa.072.0.i
  %.sroa.0.0.i.i.i.i = select i1 %i.bje, i1 %i.bjf, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i, label %bb.jo

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i: ; preds = %.lr.ph4548
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjc, i64 24
  %i.bjh = load i64, ptr %i.bjg, align 8, !noalias !10398, !noundef !10 ; 3 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bfw, i64 144
  %i.bjj = load i64, ptr %i.bji, align 8, !alias.scope !10396, !noundef !10 ; 2 uses
  %i.bjk = icmp ult i64 %i.bjh, %i.bjj
  br i1 %i.bjk, label %bb.jr, label %bb.jp

bb.jp:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bjh, i64 noundef %i.bjj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #44, !noalias !10398
  unreachable

bb.jq:                                            ; preds = %bb.jg
  %brmerge8.i = or i1 %.not2.not.not.i.not.not.not.lcssa, %.sroa.0.0.i237
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge, %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i
  %i.cry = phi ptr [ inttoptr (i64 8 to ptr), %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i ], [ %.be4711, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge ] ; 7 uses
  %i.crz = phi i64 [ 0, %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i ], [ %.be4712, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge ] ; 12 uses
  %.sroa.0277.0.i.i = phi ptr [ %.val69.i.i, %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i ], [ %i.csq, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge ] ; 5 uses
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i ], [ %.sroa.04.0.i.i.be, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge ] ; 11 uses
  br i1 %.not24.i.i.i, label %.split.us.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i

.split.us.i.i:                                    ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i
  %i.csa = icmp eq ptr %.sroa.0277.0.i.i, %i.crr
  br i1 %i.csa, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i, label %.loopexit351.split.us.i.i

.loopexit351.split.us.i.i:                        ; preds = %.split.us.i.i
  %i.csb = getelementptr inbounds nuw i8, ptr %.sroa.0277.0.i.i, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !10675)
  call void @llvm.experimental.noalias.scope.decl(metadata !10676)
  %.phi.trans.insert675.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0277.0.i.i, i64 24
  %.val49.pre.pre.pre.i.i = load ptr, ptr %.phi.trans.insert675.phi.trans.insert.i.i, align 8, !noalias !10662
  %.phi.trans.insert.i.phi.trans.insert.i = getelementptr i8, ptr %.sroa.0277.0.i.i, i64 32
  %.val50.pre.i.pre.i = load i64, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !noalias !10662
  br label %.loopexit348.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i, %bb.qi
  %.sroa.0277.1.i.i = phi ptr [ %i.csd, %bb.qi ], [ %.sroa.0277.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i ] ; 4 uses
  %i.csc = icmp eq ptr %.sroa.0277.1.i.i, %i.crr
  br i1 %i.csc, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i, label %.lr.ph.i.i.i152.preheader.i.i

.lr.ph.i.i.i152.preheader.i.i:                    ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i
  %i.csd = getelementptr inbounds nuw i8, ptr %.sroa.0277.1.i.i, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10675)
  %i.cse = getelementptr inbounds nuw i8, ptr %.sroa.0277.1.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !10676)
  %.val.i.i.i.i.i.i45.i = load ptr, ptr %i.cse, align 8, !alias.scope !10677, !noalias !10678 ; 4 uses
  %i.csf = getelementptr inbounds nuw i8, ptr %.sroa.0277.1.i.i, i64 32
  %.val1.i.i.i.i.i.i46.i = load i64, ptr %i.csf, align 8, !alias.scope !10677, !noalias !10678 ; 4 uses
  br label %.lr.ph.i.i.i152.i.i

.lr.ph.i.i.i152.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i, %.lr.ph.i.i.i152.preheader.i.i
  %.sroa.0.019.i.i.i153.i.i = phi ptr [ %i.csg, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ %i.ccb, %.lr.ph.i.i.i152.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i154.i.i = phi i64 [ %i.csh, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ 0, %.lr.ph.i.i.i152.preheader.i.i ] ; 4 uses
  %i.csg = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i153.i.i, i64 16 ; 2 uses
  %i.csh = add nuw nsw i64 %.sroa.8.08.i.i.i154.i.i, 1
  %i.csi = getelementptr i8, ptr %.sroa.0.019.i.i.i153.i.i, i64 8
  %.val7.i.i.i155.i.i = load i64, ptr %i.csi, align 8, !noalias !10679, !noundef !10
  %i.csj = icmp eq i64 %.val7.i.i.i155.i.i, %.val1.i.i.i.i.i.i46.i
  br i1 %i.csj, label %.split.i.i.i158.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i

.split.i.i.i158.i.i:                              ; preds = %.lr.ph.i.i.i152.i.i
  %.val.i.i.i159.i.i = load ptr, ptr %.sroa.0.019.i.i.i153.i.i, align 8, !noalias !10679, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i45.i) ], !noalias !10680
  %bcmp.i.i.i.i.i160.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i159.i.i, ptr nonnull readonly %.val.i.i.i.i.i.i45.i, i64 %.val1.i.i.i.i.i.i46.i), !noalias !10679
  %i.csk = icmp eq i32 %bcmp.i.i.i.i.i160.i.i, 0
  br i1 %i.csk, label %bb.qg, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i: ; preds = %.split.i.i.i158.i.i, %.lr.ph.i.i.i152.i.i
  %i.csl = icmp eq ptr %i.csg, %i.cce
  br i1 %i.csl, label %.loopexit348.i.i, label %.lr.ph.i.i.i152.i.i

bb.qg:                                            ; preds = %.split.i.i.i158.i.i
  %i.csm = icmp ult i64 %.sroa.8.08.i.i.i154.i.i, %i.cci
  br i1 %i.csm, label %bb.qi, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i154.i.i, i64 noundef %i.cci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10679
  unreachable

bb.qi:                                            ; preds = %bb.qg
  %i.csn = getelementptr inbounds nuw [104 x i8], ptr %i.ccg, i64 %.sroa.8.08.i.i.i154.i.i
  %i.cso = getelementptr inbounds nuw i8, ptr %i.csn, i64 97
  %i.csp = load i8, ptr %i.cso, align 1, !range !38, !alias.scope !10681, !noalias !10682, !noundef !10
  %cond.i.i161.i.i = icmp eq i8 %i.csp, 0
  br i1 %cond.i.i161.i.i, label %.loopexit348.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i

.loopexit348.i.i:                                 ; preds = %bb.qi, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i, %.loopexit351.split.us.i.i
  %.val50.pre.i.i = phi i64 [ %.val1.i.i.i.i.i.i46.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ %.val50.pre.i.pre.i, %.loopexit351.split.us.i.i ], [ %.val1.i.i.i.i.i.i46.i, %bb.qi ] ; 7 uses
  %.val49.pre.i.i = phi ptr [ %.val.i.i.i.i.i.i45.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ %.val49.pre.pre.pre.i.i, %.loopexit351.split.us.i.i ], [ %.val.i.i.i.i.i.i45.i, %bb.qi ] ; 2 uses
  %i.csq = phi ptr [ %i.csd, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ %i.csb, %.loopexit351.split.us.i.i ], [ %i.csd, %bb.qi ]
  %i.csr = load ptr, ptr %i.cby, align 8, !alias.scope !10660, !nonnull !10, !align !16, !noundef !10 ; 9 uses
  %i.css = getelementptr i8, ptr %i.csr, i64 136
  %.val.i47.i = load ptr, ptr %i.css, align 8, !noalias !10662, !nonnull !10, !noundef !10 ; 2 uses
  %i.cst = getelementptr i8, ptr %i.csr, i64 144
  %.val46.i.i = load i64, ptr %i.cst, align 8, !noalias !10662, !noundef !10 ; 2 uses
  %.idx.i86.i.i = mul nuw nsw i64 %.val46.i.i, 600
  %i.csu = getelementptr inbounds nuw i8, ptr %.val.i47.i, i64 %.idx.i86.i.i
  %i.csv = icmp eq i64 %.val46.i.i, 0
  br i1 %i.csv, label %.loopexit350.i.i, label %.lr.ph.i.i87.i.i

.lr.ph.i.i87.i.i:                                 ; preds = %.loopexit348.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i
  %i.csw = phi ptr [ %i.csx, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i ], [ %.val.i47.i, %.loopexit348.i.i ] ; 8 uses
  %i.csx = getelementptr inbounds nuw i8, ptr %i.csw, i64 600 ; 2 uses
  %i.csy = getelementptr i8, ptr %i.csw, i64 544
  %i.csz = load i64, ptr %i.csy, align 8, !noalias !10683, !noundef !10
  %i.cta = icmp eq i64 %i.csz, %.val50.pre.i.i
  br i1 %i.cta, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i: ; preds = %.lr.ph.i.i87.i.i
  %i.ctb = getelementptr i8, ptr %i.csw, i64 536
  %i.ctc = load ptr, ptr %i.ctb, align 8, !noalias !10683, !nonnull !10, !noundef !10 ; 3 uses
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ctc, ptr nonnull %.val49.pre.i.i, i64 %.val50.pre.i.i), !noalias !10683
  %i.ctd = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ctd, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i, %.lr.ph.i.i87.i.i
  %i.cte = icmp eq ptr %i.csx, %i.csu
  br i1 %i.cte, label %.loopexit350.i.i, label %.lr.ph.i.i87.i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i: ; preds = %.split.us.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i
  %i.ctf = load ptr, ptr %i.cby, align 8, !alias.scope !10660, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.ctg = getelementptr i8, ptr %i.ctf, i64 136
  %.val63.i.i = load ptr, ptr %i.ctg, align 8, !noalias !10662, !nonnull !10, !noundef !10 ; 2 uses
  %i.cth = getelementptr i8, ptr %i.ctf, i64 144
  %.val64.i.i = load i64, ptr %i.cth, align 8, !noalias !10662, !noundef !10
  %i.cti = getelementptr inbounds nuw [600 x i8], ptr %.val63.i.i, i64 %.val64.i.i ; 2 uses
  %i.ctj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.cto = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.not.i50.i = xor i1 %.lcssa15.i.i.i, true
  br label %.outer

.outer:                                           ; preds = %bb.tj, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i
  %.sroa.0281.0.i.i.ph = phi ptr [ %i.dik, %bb.tj ], [ %.val63.i.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i ]
  %.sroa.04.1.i.i.ph = phi i64 [ %..i.i.i, %bb.tj ], [ %.sroa.04.0.i.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i ] ; 3 uses
  br label %bb.qj

bb.qj:                                            ; preds = %.backedge4674, %.outer
  %.sroa.0281.0.i.i = phi ptr [ %.sroa.0281.0.i.i.ph, %.outer ], [ %i.dik, %.backedge4674 ] ; 6 uses
  br i1 %.not24.i.i.i, label %.split483.us.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i

.split483.us.i.i:                                 ; preds = %bb.qj
  %i.ctr = icmp eq ptr %.sroa.0281.0.i.i, %i.cti
  br i1 %i.ctr, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i, label %._crit_edge.i.thread.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i: ; preds = %bb.qj, %bb.qm
  %i.cts = phi ptr [ %i.ctu, %bb.qm ], [ %.sroa.0281.0.i.i, %bb.qj ] ; 14 uses
  %i.ctt = icmp eq ptr %i.cts, %i.cti
  br i1 %i.ctt, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i, label %.lr.ph.i.i.i164.preheader.i.i

.lr.ph.i.i.i164.preheader.i.i:                    ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.cts, i64 600 ; 7 uses
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.cts, i64 536
  %.val.i.i.i.i.i = load ptr, ptr %i.ctv, align 8, !noalias !10684 ; 2 uses
  %i.ctw = getelementptr i8, ptr %i.cts, i64 544
  %.val1.i.i.i.i.i = load i64, ptr %i.ctw, align 8, !noalias !10684 ; 2 uses
  br label %.lr.ph.i.i.i164.i.i

.lr.ph.i.i.i164.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i, %.lr.ph.i.i.i164.preheader.i.i
  %.sroa.0.019.i.i.i165.i.i = phi ptr [ %i.ctx, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i ], [ %i.ccb, %.lr.ph.i.i.i164.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i166.i.i = phi i64 [ %i.cty, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i ], [ 0, %.lr.ph.i.i.i164.preheader.i.i ] ; 4 uses
  %i.ctx = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i165.i.i, i64 16 ; 2 uses
  %i.cty = add nuw nsw i64 %.sroa.8.08.i.i.i166.i.i, 1
  %i.ctz = getelementptr i8, ptr %.sroa.0.019.i.i.i165.i.i, i64 8
  %.val7.i.i.i167.i.i = load i64, ptr %i.ctz, align 8, !noalias !10685, !noundef !10
  %i.cua = icmp eq i64 %.val7.i.i.i167.i.i, %.val1.i.i.i.i.i
  br i1 %i.cua, label %.split.i.i.i170.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i

.split.i.i.i170.i.i:                              ; preds = %.lr.ph.i.i.i164.i.i
  %.val.i.i.i171.i.i = load ptr, ptr %.sroa.0.019.i.i.i165.i.i, align 8, !noalias !10685, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ], !noalias !10686
  %bcmp.i.i.i.i.i172.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i171.i.i, ptr nonnull readonly %.val.i.i.i.i.i, i64 %.val1.i.i.i.i.i), !noalias !10685
  %i.cub = icmp eq i32 %bcmp.i.i.i.i.i172.i.i, 0
  br i1 %i.cub, label %bb.qk, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i: ; preds = %.split.i.i.i170.i.i, %.lr.ph.i.i.i164.i.i
  %i.cuc = icmp eq ptr %i.ctx, %i.cce
  br i1 %i.cuc, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i, label %.lr.ph.i.i.i164.i.i

bb.qk:                                            ; preds = %.split.i.i.i170.i.i
  %i.cud = icmp ult i64 %.sroa.8.08.i.i.i166.i.i, %i.cci
  br i1 %i.cud, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i166.i.i, i64 noundef %i.cci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10685
  unreachable

bb.qm:                                            ; preds = %bb.qk
  %i.cue = getelementptr inbounds nuw [104 x i8], ptr %i.ccg, i64 %.sroa.8.08.i.i.i166.i.i
  %i.cuf = getelementptr inbounds nuw i8, ptr %i.cue, i64 97
  %i.cug = load i8, ptr %i.cuf, align 1, !range !38, !alias.scope !10687, !noalias !10688, !noundef !10
  %cond.i.i173.i.i = icmp eq i8 %i.cug, 0
  br i1 %cond.i.i173.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i: ; preds = %bb.qm, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.cts, i64 208
  %i.cui = load ptr, ptr %i.cuh, align 8, !noalias !10662, !nonnull !10, !noundef !10 ; 2 uses
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.cts, i64 216
  %i.cuk = load i64, ptr %i.cuj, align 8, !noalias !10662, !noundef !10 ; 2 uses
  %.idx510.i.i = shl nuw nsw i64 %i.cuk, 5
  %i.cul = getelementptr inbounds nuw i8, ptr %i.cui, i64 %.idx510.i.i
  %i.cum = icmp eq i64 %i.cuk, 0
  br i1 %i.cum, label %._crit_edge.i.i, label %.lr.ph.i.i.i113.preheader.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i: ; preds = %.split483.us.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i
  %i.cun = load ptr, ptr %i.cby, align 8, !alias.scope !10660, !nonnull !10, !align !16, !noundef !10 ; 3 uses
  %i.cuo = getelementptr i8, ptr %i.cun, i64 700
  %i.cup = load <2 x i32>, ptr %i.cuo, align 4, !noalias !10662
  %.fr4627 = freeze <2 x i32> %i.cup
  %7 = and <2 x i32> %.fr4627, splat (i32 16)
  %.scalar4628 = bitcast <2 x i32> %7 to i64
  %.sroa.0.0.i92.i.i.not = icmp eq i64 %.scalar4628, 0
  br i1 %.sroa.0.0.i92.i.i.not, label %bb.qn, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i

bb.qn:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i
  %i.cuq = getelementptr i8, ptr %i.cun, i64 136
  %.val61.i.i = load ptr, ptr %i.cuq, align 8, !noalias !10662, !nonnull !10, !noundef !10 ; 2 uses
  %i.cur = getelementptr i8, ptr %i.cun, i64 144
  %.val62.i.i = load i64, ptr %i.cur, align 8, !noalias !10662, !noundef !10 ; 2 uses
  %.idx516.i.i = mul nuw nsw i64 %.val62.i.i, 600
  %i.cus = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 %.idx516.i.i ; 3 uses
  %i.cut = icmp eq i64 %.val62.i.i, 0
  br i1 %i.cut, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i, label %.lr.ph.i94.preheader.i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i: ; preds = %bb.qt, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i, %bb.qn, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i
  %i.cuu = load i64, ptr %i.cpp, align 8, !noalias !10659, !noundef !10 ; 5 uses
  %i.cuv = icmp ult i64 %i.cuu, 576460752303423488
  call void @llvm.assume(i1 %i.cuv)
  %i.cuw = icmp eq i64 %i.cuu, 0
  br i1 %i.cuw, label %bb.sf, label %bb.qu

.lr.ph.i94.preheader.i.i:                         ; preds = %bb.qn, %bb.qt
  %.sroa.0286.0507.i.i = phi ptr [ %i.cvy, %bb.qt ], [ %.val61.i.i, %bb.qn ] ; 2 uses
  br i1 %.not24.i.i.i, label %.lr.ph.i94.us.i.i, label %.lr.ph.i94.i.i

.lr.ph.i94.us.i.i:                                ; preds = %.lr.ph.i94.preheader.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i
  %i.cux = phi ptr [ %i.cuy, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i ], [ %.sroa.0286.0507.i.i, %.lr.ph.i94.preheader.i.i ] ; 4 uses
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.cux, i64 600 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10689)
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.cux, i64 552
  %i.cva = load ptr, ptr %i.cuz, align 8, !alias.scope !10689, !noalias !10690, !noundef !10
  %.not.i.i.i.us.i.i = icmp eq ptr %i.cva, null
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.cux, i64 584
  %i.cvc = load i32, ptr %i.cvb, align 8, !range !44, !alias.scope !10689, !noalias !10690
  %.not1.i.i.i.us.i.i = icmp eq i32 %i.cvc, -1
  %or.cond.i.i.us.i.i = select i1 %.not.i.i.i.us.i.i, i1 %.not1.i.i.i.us.i.i, i1 false
  br i1 %or.cond.i.i.us.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.loopexit337.split.us.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.loopexit337.split.us.i.i: ; preds = %.lr.ph.i94.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10691)
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i: ; preds = %.lr.ph.i94.us.i.i
  %i.cvd = icmp eq ptr %i.cuy, %i.cus
  br i1 %i.cvd, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i, label %.lr.ph.i94.us.i.i

.lr.ph.i94.i.i:                                   ; preds = %.lr.ph.i94.preheader.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i
  %i.cve = phi ptr [ %i.cvf, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i ], [ %.sroa.0286.0507.i.i, %.lr.ph.i94.preheader.i.i ] ; 7 uses
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.cve, i64 600 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10689)
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cve, i64 552
  %i.cvh = load ptr, ptr %i.cvg, align 8, !alias.scope !10689, !noalias !10690, !noundef !10
  %.not.i.i.i.i.i = icmp eq ptr %i.cvh, null
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.cve, i64 584
  %i.cvj = load i32, ptr %i.cvi, align 8, !range !44, !alias.scope !10689, !noalias !10690
  %.not1.i.i.i.i.i = icmp eq i32 %i.cvj, -1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not1.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %.lr.ph.i.i.i176.preheader.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i

.lr.ph.i.i.i176.preheader.i.i:                    ; preds = %.lr.ph.i94.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10691)
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.cve, i64 536
  %.val.i.i.i.i.i98.i.i = load ptr, ptr %i.cvk, align 8, !alias.scope !10692, !noalias !10690 ; 2 uses
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cve, i64 544
  %.val1.i.i.i.i.i99.i.i = load i64, ptr %i.cvl, align 8, !alias.scope !10692, !noalias !10690 ; 2 uses
  br label %.lr.ph.i.i.i176.i.i

.lr.ph.i.i.i176.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i, %.lr.ph.i.i.i176.preheader.i.i
  %.sroa.0.019.i.i.i177.i.i = phi ptr [ %i.cvm, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i ], [ %i.ccb, %.lr.ph.i.i.i176.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i178.i.i = phi i64 [ %i.cvn, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i ], [ 0, %.lr.ph.i.i.i176.preheader.i.i ] ; 4 uses
  %i.cvm = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i177.i.i, i64 16 ; 2 uses
  %i.cvn = add nuw nsw i64 %.sroa.8.08.i.i.i178.i.i, 1
  %i.cvo = getelementptr i8, ptr %.sroa.0.019.i.i.i177.i.i, i64 8
  %.val7.i.i.i179.i.i = load i64, ptr %i.cvo, align 8, !noalias !10693, !noundef !10
  %i.cvp = icmp eq i64 %.val7.i.i.i179.i.i, %.val1.i.i.i.i.i99.i.i
  br i1 %i.cvp, label %.split.i.i.i182.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i

.split.i.i.i182.i.i:                              ; preds = %.lr.ph.i.i.i176.i.i
  %.val.i.i.i183.i.i = load ptr, ptr %.sroa.0.019.i.i.i177.i.i, align 8, !noalias !10693, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i98.i.i) ], !noalias !10694
  %bcmp.i.i.i.i.i184.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i183.i.i, ptr nonnull readonly %.val.i.i.i.i.i98.i.i, i64 %.val1.i.i.i.i.i99.i.i), !noalias !10693
  %i.cvq = icmp eq i32 %bcmp.i.i.i.i.i184.i.i, 0
  br i1 %i.cvq, label %bb.qo, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i: ; preds = %.split.i.i.i182.i.i, %.lr.ph.i.i.i176.i.i
  %i.cvr = icmp eq ptr %i.cvm, %i.cce
  br i1 %i.cvr, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.i.i, label %.lr.ph.i.i.i176.i.i

bb.qo:                                            ; preds = %.split.i.i.i182.i.i
  %i.cvs = icmp ult i64 %.sroa.8.08.i.i.i178.i.i, %i.cci
  br i1 %i.cvs, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i178.i.i, i64 noundef %i.cci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10693
  unreachable

bb.qq:                                            ; preds = %bb.qo
  %i.cvt = getelementptr inbounds nuw [104 x i8], ptr %i.ccg, i64 %.sroa.8.08.i.i.i178.i.i
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cvt, i64 97
  %i.cvv = load i8, ptr %i.cvu, align 1, !range !38, !alias.scope !10695, !noalias !10696, !noundef !10
  %cond.i.i185.i.i = icmp eq i8 %i.cvv, 0
  br i1 %cond.i.i185.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i: ; preds = %bb.qq, %.lr.ph.i94.i.i
  %i.cvw = icmp eq ptr %i.cvf, %i.cus
  br i1 %i.cvw, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i, label %.lr.ph.i94.i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.i.i: ; preds = %bb.qq, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.loopexit337.split.us.i.i
  %i.cvx = phi ptr [ %i.cve, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i ], [ %i.cux, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.loopexit337.split.us.i.i ], [ %i.cve, %bb.qq ] ; 4 uses
  %i.cvy = phi ptr [ %i.cvf, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i ], [ %i.cuy, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.loopexit337.split.us.i.i ], [ %i.cvf, %bb.qq ] ; 2 uses
  %i.cvz = getelementptr i8, ptr %i.cvx, i64 40
  %.val75.i.i = load i64, ptr %i.cvz, align 8, !range !13, !noalias !10662, !noundef !10
  %i.cwa = getelementptr i8, ptr %i.cvx, i64 48
  %.val76.i.i = load i64, ptr %i.cwa, align 8, !noalias !10662
  %i.cwb = trunc nuw i64 %.val75.i.i to i1
  %i.cwc = icmp uge i64 %.val76.i.i, %.sroa.04.1.i.i.ph
  %.sroa.040.0.not.i.i = select i1 %i.cwb, i1 %i.cwc, i1 false
  br i1 %.sroa.040.0.not.i.i, label %bb.qt, label %bb.qr

bb.qr:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.i.i
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.cvx, i64 536
  %.val57.i.i = load ptr, ptr %i.cwd, align 8, !noalias !10662, !nonnull !10, !noundef !10
  %i.cwe = getelementptr i8, ptr %i.cvx, i64 544
  %.val58.i.i = load i64, ptr %i.cwe, align 8, !noalias !10662, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !10697)
  %i.cwf = load i64, ptr %i.cpp, align 8, !alias.scope !10697, !noalias !10659, !noundef !10 ; 3 uses
  %i.cwg = load i64, ptr %i.ed, align 8, !range !11, !alias.scope !10697, !noalias !10659, !noundef !10
  %i.cwh = icmp eq i64 %i.cwf, %i.cwg
  br i1 %i.cwh, label %bb.qs, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i

bb.qs:                                            ; preds = %bb.qr
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed) #42, !noalias !10698
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i: ; preds = %bb.qs, %bb.qr
  %i.cwi = load ptr, ptr %i.cpo, align 8, !alias.scope !10697, !noalias !10659, !nonnull !10, !noundef !10
  %i.cwj = getelementptr inbounds nuw [16 x i8], ptr %i.cwi, i64 %i.cwf ; 2 uses
  store ptr %.val57.i.i, ptr %i.cwj, align 8, !noalias !10699
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwj, i64 8
  store i64 %.val58.i.i, ptr %i.cwk, align 8, !noalias !10700
  %i.cwl = add i64 %i.cwf, 1
  store i64 %i.cwl, ptr %i.cpp, align 8, !alias.scope !10697, !noalias !10659
  br label %bb.qt

bb.qt:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.i.i
  %i.cwm = icmp eq ptr %i.cvy, %i.cus
  br i1 %i.cwm, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i, label %.lr.ph.i94.preheader.i.i

bb.qu:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i
  %.sroa.0289.0.copyload.i.i = load i64, ptr %i.ed, align 8, !noalias !10659 ; 2 uses
  %.sroa.4290.0.copyload.i.i = load ptr, ptr %i.cpo, align 8, !noalias !10659 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !10702
  %i.cwn = load ptr, ptr %i.cby, align 8, !alias.scope !10703, !nonnull !10, !align !16, !noundef !10 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10704)
  call void @llvm.experimental.noalias.scope.decl(metadata !10705)
  call void @llvm.experimental.noalias.scope.decl(metadata !10706)
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cwn, i64 232
  %i.cwp = load ptr, ptr %i.cwo, align 8, !alias.scope !10707, !noalias !10708, !nonnull !10, !noundef !10 ; 2 uses
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwn, i64 240
  %i.cwr = load i64, ptr %i.cwq, align 8, !alias.scope !10707, !noalias !10708, !noundef !10 ; 2 uses
  %.idx4613 = shl nuw nsw i64 %i.cwr, 4
  %i.cws = getelementptr inbounds nuw i8, ptr %i.cwp, i64 %.idx4613
  %i.cwt = icmp eq i64 %i.cwr, 0
  br i1 %i.cwt, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit.i.i.i, label %.lr.ph4588

bb.qv:                                            ; preds = %.lr.ph4588
  %i.cwu = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i4586, i64 16 ; 2 uses
  %i.cwv = add i64 %.sroa.8.0.i.i.i.i.i.i4585, 1
  %i.cww = icmp eq ptr %i.cwu, %i.cws
  br i1 %i.cww, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit.i.i.i, label %.lr.ph4588

.lr.ph4588:                                       ; preds = %bb.qu, %bb.qv
  %.sroa.0.01.i.i.i.i.i.i4586 = phi ptr [ %i.cwu, %bb.qv ], [ %i.cwp, %bb.qu ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i4585 = phi i64 [ %i.cwv, %bb.qv ], [ 0, %bb.qu ] ; 4 uses
  %.val.i.i.i.i100.i.i = load i128, ptr %.sroa.0.01.i.i.i.i.i.i4586, align 8, !noalias !10709
  %i.cwx = icmp eq i128 %.val.i.i.i.i100.i.i, -100310019091698447603793328749864812255
  br i1 %i.cwx, label %bb.qw, label %bb.qv

bb.qw:                                            ; preds = %.lr.ph4588
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwn, i64 264
  %i.cwz = load i64, ptr %i.cwy, align 8, !alias.scope !10707, !noalias !10710, !noundef !10 ; 2 uses
  %i.cxa = icmp ult i64 %.sroa.8.0.i.i.i.i.i.i4585, %i.cwz
  br i1 %i.cxa, label %bb.qy, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i.i.i4585, i64 noundef %i.cwz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10709
  unreachable

bb.qy:                                            ; preds = %bb.qw
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cwn, i64 256
  %i.cxc = load ptr, ptr %i.cxb, align 8, !alias.scope !10707, !noalias !10710, !nonnull !10, !noundef !10
  %i.cxd = getelementptr inbounds nuw [32 x i8], ptr %i.cxc, i64 %.sroa.8.0.i.i.i.i.i.i4585 ; 2 uses
  %.val5.i.i.i.i.i = load ptr, ptr %i.cxd, align 8, !noalias !10711, !nonnull !10, !noundef !10
  %i.cxe = getelementptr i8, ptr %i.cxd, i64 8
  %.val6.i.i.i101.i.i = load ptr, ptr %i.cxe, align 8, !noalias !10711, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.cxf = getelementptr inbounds nuw i8, ptr %.val6.i.i.i101.i.i, i64 16
  %i.cxg = load i64, ptr %i.cxf, align 8, !range !17, !invariant.load !10, !noalias !10711
  %i.cxh = add nsw i64 %i.cxg, -1
  %i.cxi = and i64 %i.cxh, -16
  %i.cxj = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i, i64 %i.cxi
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cxj, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !10712
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit.i: ; preds = %bb.uu, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_7flatten7FlatMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1W_5chain5ChainINtNtNtB1Y_7sources4once4OnceReEIB1S_IB35_TNtNtB3z_3str3StrbEENCNvMs2_B3x_B3v_15get_all_aliases0EENCNvMs5_B3x_B3v_20all_subcommand_names0ENCNvMNtNtB3B_6parser9validatorNtB76_9Validator8validates_0EE9from_iterB3B_.exit.i, %bb.ux
  %.sroa.0.0.i.i69.i = phi ptr [ %i.dsa, %bb.ux ], [ null, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_7flatten7FlatMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEINtNtB1W_5chain5ChainINtNtNtB1Y_7sources4once4OnceReEIB1S_IB35_TNtNtB3z_3str3StrbEENCNvMs2_B3x_B3v_15get_all_aliases0EENCNvMs5_B3x_B3v_20all_subcommand_names0ENCNvMNtNtB3B_6parser9validatorNtB76_9Validator8validates_0EE9from_iterB3B_.exit.i ], [ null, %bb.uu ] ; 2 uses
  %.not.i70.i = icmp eq ptr %.sroa.0.0.i.i69.i, null
  %..i.i = select i1 %.not.i70.i, ptr @99, ptr %.sroa.0.0.i.i69.i ; 5 uses
  store ptr %i.drd, ptr %i.eg, align 8, !alias.scope !10876, !noalias !10553
  %.sroa.4130.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %..i.i, ptr %.sroa.4130.0..sroa_idx.i14, align 8, !alias.scope !10876, !noalias !10553
  %.sroa.5131.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store ptr %i.gb, ptr %.sroa.5131.0..sroa_idx.i15, align 8, !alias.scope !10876, !noalias !10553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !10877
  store i64 0, ptr %i.db, align 8, !alias.scope !10878, !noalias !10877
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !10878, !noalias !10877
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !10878, !noalias !10877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !10877
  %i.dse = getelementptr inbounds nuw i8, ptr %..i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.da, ptr noundef nonnull align 2 dereferenceable(14) %i.dse, i64 14, i1 false), !noalias !10879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !10877
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.dse, align 2, !noalias !10879
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !noalias !10879
  %.sroa.11.0..sroa_idx.i71.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 36
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i71.i, align 2, !noalias !10879
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 40
  %.sroa.15.0.copyload.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i, align 2, !noalias !10879
  %.not.i.i72.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  %.not5.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, -1
  %or.cond.i73.i = select i1 %.not.i.i72.i, i1 %.not5.i.i.i, i1 false
  %.not7.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i, -1
  %or.cond35.i.i = select i1 %or.cond.i73.i, i1 %.not7.i.i.i, i1 false
  %i.dsf = icmp eq i16 %.sroa.15.0.copyload.i.i, 0
  %or.cond36.i.i = select i1 %or.cond35.i.i, i1 %i.dsf, i1 false ; 2 uses
  %spec.select.i74.i = select i1 %or.cond36.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i = select i1 %or.cond36.i.i, i64 0, i64 4
  store ptr %spec.select.i74.i, ptr %i.cz, align 8, !noalias !10877, !captures !21
  %i.dsg = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %spec.select38.i.i, ptr %i.dsg, align 8, !noalias !10877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !10877
  store ptr %i.da, ptr %i.cy, align 8, !noalias !10877
  %.sroa.48.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i75.i, align 8, !noalias !10877
  %i.dsh = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.cz, ptr %i.dsh, align 8, !noalias !10877
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !10877
  %i.dsi = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.cy) #43, !noalias !10879, !inline_history !22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !10877
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg, ptr noalias nofree noundef align 8 dereferenceable(24) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #43, !noalias !10880, !inline_history !22
  %.sroa.0125.0.copyload.i = load i64, ptr %i.db, align 8, !noalias !10881 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5127.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !10881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !10877
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10882
  %i.dsj = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !10882 ; 47 uses
  %i.dsk = icmp eq ptr %i.dsj, null
  br i1 %i.dsk, label %bb.uz, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i.i, !prof !32

bb.uz:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !10882
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit.i
  store i64 2, ptr %i.dsj, align 8, !noalias !10883
  %.sroa.472.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 32
  store i64 0, ptr %.sroa.472.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.5.0..sroa_idx.i76.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i76.i, align 8, !noalias !10883
  %.sroa.6.0..sroa_idx73.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 48
  %.sroa.8.0..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx73.i.i, i8 0, i64 16, i1 false), !noalias !10883
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx75.i.i, align 8, !noalias !10883
  %.sroa.9.0..sroa_idx76.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx76.i.i, align 8, !noalias !10883
  %.sroa.10.0..sroa_idx77.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx77.i.i, align 8, !noalias !10883
  %.sroa.1179.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 104
  store ptr null, ptr %.sroa.1179.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.1281.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 120
  store i8 -1, ptr %.sroa.1281.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.1382.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 124
  store i8 -1, ptr %.sroa.1382.0..sroa_idx.i.i, align 4, !noalias !10883
  %.sroa.1484.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 128
  store i8 -1, ptr %.sroa.1484.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.1586.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 132
  store i16 0, ptr %.sroa.1586.0..sroa_idx.i.i, align 4, !noalias !10883
  %.sroa.16.0..sroa_idx87.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx87.i.i, align 2, !noalias !10883
  %.sroa.1789.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 138
  store i8 -1, ptr %.sroa.1789.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.1891.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 142
  store i8 -1, ptr %.sroa.1891.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.1993.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 146
  store i16 0, ptr %.sroa.1993.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx.i.i, align 4, !noalias !10883
  %.sroa.2194.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 152
  store i8 -1, ptr %.sroa.2194.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.2295.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 156
  store i8 -1, ptr %.sroa.2295.0..sroa_idx.i.i, align 4, !noalias !10883
  %.sroa.2396.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 160
  store i16 0, ptr %.sroa.2396.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.2597.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 166
  store i8 -1, ptr %.sroa.2597.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.2698.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 170
  store i8 -1, ptr %.sroa.2698.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.2799.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 174
  store i16 0, ptr %.sroa.2799.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.29100.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 180
  store i8 -1, ptr %.sroa.29100.0..sroa_idx.i.i, align 4, !noalias !10883
  %.sroa.30101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 184
  store i8 -1, ptr %.sroa.30101.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.31102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 188
  store i16 0, ptr %.sroa.31102.0..sroa_idx.i.i, align 4, !noalias !10883
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.33103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 194
  store i8 -1, ptr %.sroa.33103.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.34104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 198
  store i8 -1, ptr %.sroa.34104.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.35105.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 202
  store i16 0, ptr %.sroa.35105.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.36.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx.i.i, align 4, !noalias !10883
  %.sroa.37106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 208
  store i8 -1, ptr %.sroa.37106.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.38107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 212
  store i8 -1, ptr %.sroa.38107.0..sroa_idx.i.i, align 4, !noalias !10883
  %.sroa.39108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 216
  store i16 0, ptr %.sroa.39108.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.40.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.41109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 222
  store i8 -1, ptr %.sroa.41109.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.42110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 226
  store i8 -1, ptr %.sroa.42110.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.43111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 230
  store i16 0, ptr %.sroa.43111.0..sroa_idx.i.i, align 2, !noalias !10883
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !10883
  %.sroa.45113.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dsj, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 10>, ptr %.sroa.45113.0..sroa_idx.i.i, align 2, !noalias !10883
  %i.dsl = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.dsj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cdj) #43, !noalias !10884 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !10885
  store i8 0, ptr %i.cx, align 8, !noalias !10885
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10885
  %.sroa.45.i.sroa.3.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %.sroa.3.0.i36.i, ptr %.sroa.45.i.sroa.3.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !10885
  %.sroa.45.i.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.doo, ptr %.sroa.45.i.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !10885
  %.sroa.45.i.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store i64 %.sroa.3.0.i36.i, ptr %.sroa.45.i.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx.i, align 8, !noalias !10885
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store i8 3, ptr %i.dsm, align 8, !noalias !10885
  %.sroa.4.sroa.311.0..sroa.4.0..sroa_idx7.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  store i8 3, ptr %.sroa.4.sroa.311.0..sroa.4.0..sroa_idx7.sroa_idx.i.i, align 8, !noalias !10885
  %.sroa.49.i.sroa.3.0..sroa.4.sroa.412.0..sroa.4.0..sroa_idx7.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  store i64 %.sroa.0108.0.i, ptr %.sroa.49.i.sroa.3.0..sroa.4.sroa.412.0..sroa.4.0..sroa_idx7.sroa_idx.i.sroa_idx.i, align 8, !noalias !10885
  %.sroa.49.i.sroa.4.0..sroa.4.sroa.412.0..sroa.4.0..sroa_idx7.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  store ptr %.sroa.5110.0.i, ptr %.sroa.49.i.sroa.4.0..sroa.4.sroa.412.0..sroa.4.0..sroa_idx7.sroa_idx.i.sroa_idx.i, align 8, !noalias !10885
  %.sroa.49.i.sroa.5.0..sroa.4.sroa.412.0..sroa.4.0..sroa_idx7.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  store i64 %.sroa.6112.0.i, ptr %.sroa.49.i.sroa.5.0..sroa.4.sroa.412.0..sroa.4.0..sroa_idx7.sroa_idx.i.sroa_idx.i, align 8, !noalias !10885
  %i.dsn = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias noundef nonnull align 8 %i.dsj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.cx) #42, !noalias !10883 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !10885
  %.not.i78.i = icmp eq i64 %.sroa.0125.0.copyload.i, -1
  br i1 %.not.i78.i, label %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_.exit.i, label %bb.va

bb.va:                                            ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !10885
  %i.dso = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %.sroa.0125.0.copyload.i, ptr %i.dso, align 8, !noalias !10886
  %.sroa.5127.0..sroa_idx128.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5127.0..sroa_idx128.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5127.i, i64 16, i1 false), !noalias !10886
  store i8 4, ptr %i.cw, align 8, !noalias !10885
  %i.dsp = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.dsj, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cw) #42, !noalias !10883 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !10885
  br label %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_.exit.i

_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_.exit.i: ; preds = %bb.va, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5127.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !10553
  br label %bb.oy

bb.vb:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cfn, ptr nonnull align 1 %.sroa.0.0.i35.i, i64 %.sroa.3.0.i36.i, i1 false), !noalias !10552
  %.pre.i = load ptr, ptr %i.cby, align 8, !alias.scope !10551
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread155.i

bb.vc:                                            ; preds = %bb.pc
  %i.dsq = load ptr, ptr %i.cby, align 8, !alias.scope !10551, !nonnull !10, !align !16, !noundef !10
  %i.dsr = getelementptr i8, ptr %i.dsq, i64 700
  %i.dss = load <2 x i32>, ptr %i.dsr, align 4, !noalias !10552
  %.fr4624 = freeze <2 x i32> %i.dss
  %8 = and <2 x i32> %.fr4624, splat (i32 4096)
  %.scalar4625 = bitcast <2 x i32> %8 to i64
  %.sroa.0.0.i80.i.not = icmp eq i64 %.scalar4625, 0
  br i1 %.sroa.0.0.i80.i.not, label %bb.pg, label %bb.vd

bb.vd:                                            ; preds = %bb.vc, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator17validate_required.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10887)
  call void @llvm.experimental.noalias.scope.decl(metadata !10888)
  call void @llvm.experimental.noalias.scope.decl(metadata !10889)
  %.val.i.i.i81.i = load i64, ptr %i.ei, align 8, !range !11, !alias.scope !10890, !noalias !10553, !noundef !10 ; 2 uses
  %i.dst = icmp eq i64 %.val.i.i.i81.i, 0
  br i1 %i.dst, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i83.i, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.dsu = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.val1.i.i.i82.i = load ptr, ptr %i.dsu, align 8, !alias.scope !10890, !noalias !10553, !nonnull !10, !noundef !10
  %i.dsv = shl nuw i64 %.val.i.i.i81.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i82.i, i64 noundef %i.dsv, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10891
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i83.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i83.i: ; preds = %bb.ve, %bb.vd
  %i.dsw = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !10892)
  %i.dsx = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %.val.i1.i.i84.i = load ptr, ptr %i.dsx, align 8, !alias.scope !10893, !noalias !10553, !nonnull !10, !noundef !10 ; 2 uses
  %i.dsy = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %.val1.i2.i.i85.i = load i64, ptr %i.dsy, align 8, !alias.scope !10893, !noalias !10553, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10894)
  %i.dsz = icmp eq i64 %.val1.i2.i.i85.i, 0
  br i1 %i.dsz, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i91.i, label %.lr.ph.i.i.i.i.i86.i

.lr.ph.i.i.i.i.i86.i:                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i83.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i90.i
  %.sroa.0.03.i.i.i.i.i87.i = phi i64 [ %i.dtb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i90.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i83.i ] ; 2 uses
  %i.dta = getelementptr inbounds nuw [24 x i8], ptr %.val.i1.i.i84.i, i64 %.sroa.0.03.i.i.i.i.i87.i ; 2 uses
  %i.dtb = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i87.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10895)
  %.val.i.i.i.i.i.i88.i = load i64, ptr %i.dta, align 8, !range !11, !alias.scope !10896, !noalias !10897, !noundef !10 ; 2 uses
  %i.dtc = icmp eq i64 %.val.i.i.i.i.i.i88.i, 0
  br i1 %i.dtc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i90.i, label %bb.vf

bb.vf:                                            ; preds = %.lr.ph.i.i.i.i.i86.i
  %i.dtd = getelementptr inbounds nuw i8, ptr %i.dta, i64 8
  %.val1.i.i.i.i.i.i89.i = load ptr, ptr %i.dtd, align 8, !alias.scope !10896, !noalias !10897, !nonnull !10, !noundef !10
  %i.dte = shl nuw i64 %.val.i.i.i.i.i.i88.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i89.i, i64 noundef %i.dte, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10898
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i90.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i90.i: ; preds = %bb.vf, %.lr.ph.i.i.i.i.i86.i
  %i.dtf = icmp eq i64 %i.dtb, %.val1.i2.i.i85.i
  br i1 %i.dtf, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i91.i, label %.lr.ph.i.i.i.i.i86.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i91.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i90.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i83.i
  %.val2.i.i.i92.i = load i64, ptr %i.dsw, align 8, !range !11, !alias.scope !10893, !noalias !10553, !noundef !10 ; 2 uses
  %i.dtg = icmp eq i64 %.val2.i.i.i92.i, 0
  br i1 %i.dtg, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit.sink.split

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit.sink.split: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i91.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i
  %.val2.i.i.i.i.sink = phi i64 [ %.val2.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i ], [ %.val2.i.i.i92.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i91.i ]
  %.val.i1.i.i.i.sink = phi ptr [ %.val.i1.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i ], [ %.val.i1.i.i84.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i91.i ]
  %.sroa.0.2.i13.ph = phi ptr [ %.sroa.0.0.i12, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i ], [ null, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i91.i ]
  %i.dth = mul nuw i64 %.val2.i.i.i.i.sink, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i.i.i.sink, i64 noundef %i.dth, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10552
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit.sink.split, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i91.i
  %.sroa.0.2.i13 = phi ptr [ null, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i91.i ], [ %.sroa.0.0.i12, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i ], [ %.sroa.0.2.i13.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !10553
  call void @llvm.experimental.noalias.scope.decl(metadata !10899)
  call void @llvm.experimental.noalias.scope.decl(metadata !10900)
  call void @llvm.experimental.noalias.scope.decl(metadata !10901)
  %i.dti = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.val.i.i.i17 = load ptr, ptr %i.dti, align 8, !alias.scope !10902, !nonnull !10, !noundef !10 ; 2 uses
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %.val1.i.i.i18 = load i64, ptr %i.dtj, align 8, !alias.scope !10902, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10903)
  %i.dtk = icmp eq i64 %.val1.i.i.i18, 0
  br i1 %i.dtk, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i = phi i64 [ %i.dtm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i ], [ 0, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit ] ; 2 uses
  %i.dtl = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i17, i64 %.sroa.0.04.i.i.i.i.i ; 2 uses
  %i.dtm = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i20 = load i64, ptr %i.dtl, align 8, !range !11, !alias.scope !10903, !noalias !10902, !noundef !10 ; 2 uses
  %i.dtn = icmp eq i64 %.val.i.i.i.i.i20, 0
  br i1 %i.dtn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i, label %bb.vg

bb.vg:                                            ; preds = %.lr.ph.i.i.i.i.i19
  %i.dto = getelementptr i8, ptr %i.dtl, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.dto, align 8, !alias.scope !10903, !noalias !10902, !nonnull !10, !noundef !10
  %i.dtp = shl nuw i64 %.val.i.i.i.i.i20, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.dtp, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10904
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i: ; preds = %bb.vg, %.lr.ph.i.i.i.i.i19
  %i.dtq = icmp eq i64 %i.dtm, %.val1.i.i.i18
  br i1 %i.dtq, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i, label %.lr.ph.i.i.i.i.i19

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBG_2id2IdEEBI_.exit.i.i.i.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit
  %.val2.i.i.i21 = load i64, ptr %i.gb, align 8, !range !11, !alias.scope !10902, !noundef !10 ; 2 uses
  %i.dtr = icmp eq i64 %.val2.i.i.i21, 0
  br i1 %i.dtr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator9ValidatorEBH_.exit, label %bb.vh

bb.vh:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i
  %i.dts = mul nuw i64 %.val2.i.i.i21, 40
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i17, i64 noundef %i.dts, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10902
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator9ValidatorEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator9ValidatorEBH_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_.exit.i.i.i, %bb.vh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit.thread

_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit.thread: ; preds = %bb.ok, %bb.oj, %bb.oi, %bb.ol, %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator9ValidatorEBH_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.2.i13, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator9ValidatorEBH_.exit ], [ %i.cbw, %bb.ol ], [ %i.cbv, %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit ], [ %.sroa.0.6.i, %bb.oi ], [ %.sroa.0.6.i, %bb.oj ], [ %.sroa.0.6.i, %bb.ok ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %2, i8 noundef range(i8 0, 3) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [104 x i8], align 8               ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = icmp eq i8 %3, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10986)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10985, !nonnull !10, !noundef !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10985, !noundef !10 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.l, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.0.029.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.j, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i, i64 16 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.029.i, align 8, !noalias !10987
  %i.p = getelementptr i8, ptr %.sroa.0.029.i, i64 8
  %.sroa.0.0.val16.i = load i64, ptr %i.p, align 8, !noalias !10987
  %i.q = tail call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.0.0.val.i, i64 %.sroa.0.0.val16.i) #43, !noalias !10985 ; 0 uses
  %i.r = icmp eq ptr %i.o, %i.m
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10987
  store i64 0, ptr %i.e, align 8, !noalias !10987
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !10987
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !10987
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !10986, !nonnull !10, !noundef !10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !10986, !noundef !10 ; 2 uses
  %.idx38.i = shl nuw nsw i64 %i.x, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx38.i
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16remove_overrides.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 536
  %.val12.i = load ptr, ptr %i.ab, align 8, !alias.scope !10985
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 544
  %.val13.i = load i64, ptr %i.ac, align 8, !alias.scope !10985 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !noalias !10987, !nonnull !10, !align !16, !noundef !10
  %i.ae = getelementptr i8, ptr %i.ad, i64 144
  %i.af = load i64, ptr %i.ae, align 8, !noalias !10987, !noundef !10
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16remove_overrides.exit, label %.lr.ph32.split.i

.lr.ph32.split.i:                                 ; preds = %.lr.ph32.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.thread.i
  %i.ah = phi ptr [ %i.bu, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.thread.i ], [ inttoptr (i64 8 to ptr), %.lr.ph32.i ] ; 5 uses
  %i.ai = phi i64 [ %i.bv, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.thread.i ], [ 0, %.lr.ph32.i ] ; 7 uses
  %.sroa.02.030.i = phi ptr [ %i.aj, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.thread.i ], [ %i.v, %.lr.ph32.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aa, align 8, !noalias !10987, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 136
  %.val.i = load ptr, ptr %i.al, align 8, !noalias !10987, !nonnull !10, !noundef !10 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 144
  %.val11.i = load i64, ptr %i.am, align 8, !noalias !10987, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10988)
  %.idx.i.i = mul nuw nsw i64 %.val11.i, 600
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i
  %i.ao = icmp eq i64 %.val11.i, 0
  br i1 %i.ao, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph32.split.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !10988, !noalias !10989, !noundef !10 ; 2 uses
  %i.ar = load ptr, ptr %.sroa.02.030.i, align 8, !alias.scope !10988, !noalias !10987, !nonnull !10
  br label %bb.c

bb.c:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.as = phi ptr [ %.val.i, %.lr.ph.i.i.i ], [ %i.at, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 600 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react:bb.a

bb.bq:                                            ; preds = %.lr.ph
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jv, i64 264
  %i.kh = load i64, ptr %i.kg, align 8, !alias.scope !11411, !noalias !11321, !noundef !10 ; 2 uses
  %i.ki = icmp ult i64 %.sroa.8.0.i.i.i128.i373, %i.kh
  br i1 %i.ki, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i128.i373, i64 noundef %i.kh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !11412
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 256
  %i.kk = load ptr, ptr %i.kj, align 8, !alias.scope !11411, !noalias !11321, !nonnull !10, !noundef !10
  %i.kl = getelementptr inbounds nuw [32 x i8], ptr %i.kk, i64 %.sroa.8.0.i.i.i128.i373 ; 2 uses
  %.val5.i.i131.i = load ptr, ptr %i.kl, align 8, !noalias !11413, !nonnull !10, !noundef !10
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  %.val6.i.i132.i = load ptr, ptr %i.km, align 8, !noalias !11413, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.val6.i.i132.i, i64 16
  %i.ko = load i64, ptr %i.kn, align 8, !range !17, !invariant.load !10, !noalias !11413
  %i.kp = add nsw i64 %i.ko, -1
  %i.kq = and i64 %i.kp, -16
  %i.kr = getelementptr inbounds nuw i8, ptr %.val5.i.i131.i, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11413
  %i.kt = getelementptr inbounds nuw i8, ptr %.val6.i.i132.i, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !invariant.load !10, !noalias !11413, !nonnull !10
  call void %i.ku(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull %i.ks) #45, !noalias !11413, !inline_history !11191
  %i.kv = load i128, ptr %i.m, align 16, !noalias !11413, !noundef !10
  %.not.i.i133.i = icmp eq i128 %i.kv, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11413
  br i1 %.not.i.i133.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit137.i, label %bb.bt, !prof !15

bb.bt:                                            ; preds = %bb.bs
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !11413
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit137.i: ; preds = %bb.bp, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit127.i, %bb.bs
  %.sroa.0.0.i.i134.i = phi ptr [ %i.ks, %bb.bs ], [ null, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit127.i ], [ null, %bb.bp ] ; 2 uses
  %.not.i135.i = icmp eq ptr %.sroa.0.0.i.i134.i, null
  %..i136.i = select i1 %.not.i135.i, ptr @99, ptr %.sroa.0.0.i.i134.i ; 5 uses
  store ptr %i.jv, ptr %i.am, align 8, !alias.scope !11407, !noalias !11321
  %i.kw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %..i136.i, ptr %i.kw, align 8, !alias.scope !11407, !noalias !11321
  %i.kx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr null, ptr %i.kx, align 8, !alias.scope !11407, !noalias !11321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11414
  store i64 0, ptr %i.l, align 8, !alias.scope !11415, !noalias !11414
  %.sroa.42.0..sroa_idx.i.i138.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i138.i, align 8, !alias.scope !11415, !noalias !11414
  %.sroa.53.0..sroa_idx.i.i139.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i139.i, align 8, !alias.scope !11415, !noalias !11414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11414
  %i.ky = getelementptr inbounds nuw i8, ptr %..i136.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.k, ptr noundef nonnull align 2 dereferenceable(14) %i.ky, i64 14, i1 false), !noalias !11414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11414
  %.sroa.0.0.copyload.i140.i = load i8, ptr %i.ky, align 2, !noalias !11414
  %.sroa.7.0..sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %..i136.i, i64 32
  %.sroa.7.0.copyload.i142.i = load i8, ptr %.sroa.7.0..sroa_idx.i141.i, align 2, !noalias !11414
  %.sroa.11.0..sroa_idx.i143.i = getelementptr inbounds nuw i8, ptr %..i136.i, i64 36
  %.sroa.11.0.copyload.i144.i = load i8, ptr %.sroa.11.0..sroa_idx.i143.i, align 2, !noalias !11414
  %.sroa.15.0..sroa_idx.i145.i = getelementptr inbounds nuw i8, ptr %..i136.i, i64 40
  %.sroa.15.0.copyload.i146.i = load i16, ptr %.sroa.15.0..sroa_idx.i145.i, align 2, !noalias !11414
  %.not.i.i147.i = icmp eq i8 %.sroa.0.0.copyload.i140.i, -1
  %.not5.i.i148.i = icmp eq i8 %.sroa.7.0.copyload.i142.i, -1
  %or.cond.i149.i = select i1 %.not.i.i147.i, i1 %.not5.i.i148.i, i1 false
  %.not7.i.i150.i = icmp eq i8 %.sroa.11.0.copyload.i144.i, -1
  %or.cond35.i151.i = select i1 %or.cond.i149.i, i1 %.not7.i.i150.i, i1 false
  %i.kz = icmp eq i16 %.sroa.15.0.copyload.i146.i, 0
  %or.cond36.i152.i = select i1 %or.cond35.i151.i, i1 %i.kz, i1 false ; 2 uses
  %spec.select.i153.i = select i1 %or.cond36.i152.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i154.i = select i1 %or.cond36.i152.i, i64 0, i64 4
  store ptr %spec.select.i153.i, ptr %i.j, align 8, !noalias !11414, !captures !21
  %i.la = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %spec.select38.i154.i, ptr %i.la, align 8, !noalias !11414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11414
  store ptr %i.k, ptr %i.i, align 8, !noalias !11414
  %.sroa.48.0..sroa_idx.i155.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i155.i, align 8, !noalias !11414
  %i.lb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.lb, align 8, !noalias !11414
  %.sroa.412.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i156.i, align 8, !noalias !11414
  %i.lc = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.i) #43, !noalias !11414, !inline_history !22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11414
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #43, !noalias !11416, !inline_history !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !11417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11414
  %i.ld = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error15too_many_valuesB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cc, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.an) #43, !noalias !11321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !11321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !11321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !11321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !11321
  br label %bb.bu

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit: ; preds = %._RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit_crit_edge, %bb.aw, %bb.al, %bb.d
  %i.le = phi i64 [ %.pre, %._RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit_crit_edge ], [ %i.ca, %bb.aw ], [ %i.ca, %bb.al ], [ %i.ca, %bb.d ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.lg = icmp ult i64 %i.le, 384307168202282326
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = icmp eq i64 %i.le, 0
  br i1 %i.lh, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit137.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit.i, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error22wrong_number_of_valuesB4_.exit.i, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error14too_few_valuesB4_.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.is, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error14too_few_valuesB4_.exit.i ], [ %i.gy, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error22wrong_number_of_valuesB4_.exit.i ], [ %i.ep, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit.i ], [ %i.ld, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit137.i ]
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.li, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.dw

bb.bv:                                            ; preds = %bb.bw, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 588
  %.val128 = load i32, ptr %i.lj, align 4, !range !44, !noundef !10 ; 2 uses
  %.not95 = icmp eq i32 %.val128, -1
  br i1 %.not95, label %bb.cy, label %bb.cc

bb.bw:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.ll = load i64, ptr %i.lk, align 8, !noundef !10 ; 5 uses
  %i.lm = icmp ult i64 %i.ll, 576460752303423488
  tail call void @llvm.assume(i1 %i.lm)
  %i.ln = icmp eq i64 %i.ll, 0
  br i1 %i.ln, label %bb.bv, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lo = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.lp = load ptr, ptr %i.lo, align 8, !nonnull !10, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11418)
  %i.lq = load i64, ptr %5, align 8, !range !11, !alias.scope !11419, !noundef !10
  %i.lr = icmp samesign ugt i64 %i.ll, %i.lq
  br i1 %i.lr, label %bb.by, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, !prof !18

bb.by:                                            ; preds = %bb.bx
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 0, i64 noundef %i.ll, i64 noundef 8, i64 noundef 24) #43
  %.pre.i154 = load i64, ptr %i.lf, align 8, !alias.scope !11418
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.by, %bb.bx
  %i.ls = phi i64 [ 0, %bb.bx ], [ %.pre.i154, %bb.by ]
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !alias.scope !11418, !nonnull !10, !noundef !10
  br label %.preheader.i

.preheader.i:                                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i
  %i.lv = phi i64 [ %i.md, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i ], [ %i.ls, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.me, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %.val11.i.i.i.i = load ptr, ptr %i.lw, align 8, !noalias !11420, !nonnull !10, !noundef !10
  %i.lx = getelementptr i8, ptr %i.lw, i64 8
  %.val12.i.i.i.i = load i64, ptr %i.lx, align 8, !noalias !11420, !noundef !10 ; 7 uses
  %.not.i.i.i.i.i.i.i151 = icmp slt i64 %.val12.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i151, label %bb.ca, label %bb.bz, !prof !20

bb.bz:                                            ; preds = %.preheader.i
  %i.ly = icmp eq i64 %.val12.i.i.i.i, 0
  br i1 %i.ly, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152: ; preds = %bb.bz
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11421
  %i.lz = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !11421 ; 3 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152, %.preheader.i
  %.sroa.4.0.ph.i.i.i.i.i.i153 = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152 ], [ 0, %.preheader.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i153, i64 %.val12.i.i.i.i) #46, !noalias !11422
  unreachable

bb.cb:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lz, ptr nonnull readonly align 1 %.val11.i.i.i.i, i64 %.val12.i.i.i.i, i1 false), !noalias !11422
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i: ; preds = %bb.cb, %bb.bz
  %i.mb = phi ptr [ %i.lz, %bb.cb ], [ inttoptr (i64 1 to ptr), %bb.bz ]
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %i.lv ; 3 uses
  store i64 %.val12.i.i.i.i, ptr %i.mc, align 8, !noalias !11423
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store ptr %i.mb, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !11423
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store i64 %.val12.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !11423
  %i.md = add i64 %i.lv, 1                        ; 3 uses
  %i.me = add nuw nsw i64 %.sroa.01.0.i.i.i.i, 1  ; 2 uses
  %i.mf = icmp eq i64 %i.me, %i.ll
  br i1 %i.mf, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit, label %.preheader.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser5react0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4q_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i
  store i64 %i.md, ptr %i.lf, align 8, !alias.scope !11418, !noalias !11424
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 588
  %.val127 = load i32, ptr %i.mg, align 4, !range !44, !noundef !10 ; 2 uses
  %.not94 = icmp eq i32 %.val127, -1
  br i1 %.not94, label %bb.cy, label %bb.cd

bb.cc:                                            ; preds = %bb.bv
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !nonnull !10, !align !16, !noundef !10
  %i.mj = getelementptr i8, ptr %i.mi, i64 700
  %i.mk = load <2 x i32>, ptr %i.mj, align 4
  %.fr385 = freeze <2 x i32> %i.mk
  %9 = and <2 x i32> %.fr385, splat (i32 64)
  %.scalar = bitcast <2 x i32> %9 to i64
  %.sroa.0.0.i157 = icmp ne i64 %.scalar, 0
  %i.ml = trunc nuw i64 %6 to i1
  %i.mm = icmp eq i64 %7, 0
  %i.mn = and i1 %.sroa.0.0.i157, %i.ml
  %or.cond109 = select i1 %i.mn, i1 %i.mm, i1 false
  br i1 %or.cond109, label %bb.cy, label %bb.cd

bb.cd:                                            ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit, %bb.cc
  %i.mo = phi i64 [ %i.le, %bb.cc ], [ %i.md, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit ] ; 4 uses
  %.sroa.028.1 = phi i32 [ %.val128, %bb.cc ], [ %.val127, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit ] ; 8 uses
  %.sroa.4.1 = phi i64 [ %7, %bb.cc ], [ undef, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit ]
  %.sroa.013.1 = phi i64 [ %6, %bb.cc ], [ 0, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store i32 0, ptr %i.bu, align 4
  %i.mp = icmp samesign ult i32 %.sroa.028.1, 128
  br i1 %i.mp, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mq = icmp samesign ult i32 %.sroa.028.1, 2048
  %i.mr = trunc i32 %.sroa.028.1 to i8
  %i.ms = and i8 %i.mr, 63
  %i.mt = or disjoint i8 %i.ms, -128              ; 3 uses
  %i.mu = lshr i32 %.sroa.028.1, 6
  %i.mv = trunc i32 %i.mu to i8                   ; 2 uses
  %i.mw = and i8 %i.mv, 63
  %i.mx = or disjoint i8 %i.mw, -128              ; 2 uses
  %i.my = lshr i32 %.sroa.028.1, 12
  %i.mz = trunc i32 %i.my to i8                   ; 2 uses
  %i.na = and i8 %i.mz, 63
  %i.nb = or disjoint i8 %i.na, -128
  %i.nc = lshr i32 %.sroa.028.1, 18
  %i.nd = trunc nuw nsw i32 %i.nc to i8
  %i.ne = or disjoint i8 %i.nd, -16
  br i1 %i.mq, label %bb.cg, label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.nf = trunc nuw nsw i32 %.sroa.028.1 to i8
  store i8 %i.nf, ptr %i.bu, align 4, !alias.scope !11425
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit

bb.cg:                                            ; preds = %bb.ce
  %i.ng = or disjoint i8 %i.mv, -64
  store i8 %i.ng, ptr %i.bu, align 4, !alias.scope !11425
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.mt, ptr %i.nh, align 1, !alias.scope !11425
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit

bb.ch:                                            ; preds = %bb.ce
  %i.ni = icmp samesign ult i32 %.sroa.028.1, 65536
  br i1 %i.ni, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.nj = or disjoint i8 %i.mz, -32
  store i8 %i.nj, ptr %i.bu, align 4, !alias.scope !11425
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.mx, ptr %i.nk, align 1, !alias.scope !11425
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 %i.mt, ptr %i.nl, align 2, !alias.scope !11425
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit

bb.cj:                                            ; preds = %bb.ch
  store i8 %i.ne, ptr %i.bu, align 4, !alias.scope !11425
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.nb, ptr %i.nm, align 1, !alias.scope !11425
  %i.nn = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 %i.mx, ptr %i.nn, align 2, !alias.scope !11425
  %i.no = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 %i.mt, ptr %i.no, align 1, !alias.scope !11425
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.cf, %bb.cg, %bb.ci, %bb.cj
  %.sroa.0.05.i = phi i64 [ 1, %bb.cf ], [ 2, %bb.cg ], [ 3, %bb.ci ], [ 4, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.np = icmp ult i64 %i.mo, 384307168202282326
  tail call void @llvm.assume(i1 %i.np)
  %i.nq = mul nuw nsw i64 %i.mo, 24               ; 4 uses
  %i.nr = icmp eq i64 %i.mo, 0
  br i1 %i.nr, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit
  store i64 0, ptr %i.bt, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 0, ptr %i.nt, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.nw = load i64, ptr %5, align 8, !range !11, !noundef !10
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nq
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11426
  %i.ny = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.nq, i64 noundef range(i64 1, 9) 8) #43, !noalias !11426 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.ck, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph

bb.ck:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.nq) #46
  unreachable

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.mo, ptr %i.bt, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  store ptr %i.ny, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 5 uses
  store i64 0, ptr %i.ob, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.oe = load i64, ptr %5, align 8, !range !11, !noundef !10 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.nq ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oh = trunc nuw i64 %.sroa.013.1 to i1
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit
  %.sroa.4.0267 = phi ptr [ %i.od, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph ], [ %i.oi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 4 uses
  %.sroa.13.0266 = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i.lr.ph ], [ %i.oj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.4.0267, i64 24 ; 3 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %.sroa.4.0267, align 8, !noalias !11427 ; 4 uses
  %.not.i160 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i160, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge, label %bb.cl

bb.cl:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0267, i64 8
  %.sroa.9.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !11428, !nonnull !10, !noundef !10 ; 4 uses
  %.sroa.9.sroa.5.0..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.0267, i64 16
  %.sroa.9.sroa.5.0.copyload = load i64, ptr %.sroa.9.sroa.5.0..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !11428 ; 3 uses
  %i.oj = add nuw nsw i64 %.sroa.13.0266, 1
  %i.ok = call noundef zeroext i1 @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt8contains(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.9.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %.sroa.0.05.i) #43
  br i1 %i.ok, label %bb.co, label %bb.cp

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread
  %i.ol = phi ptr [ %i.nx, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.of, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.om = phi i64 [ %i.nw, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.oe, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.on = phi ptr [ %i.nv, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.od, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %.sroa.4.2.ph = phi ptr [ %i.nv, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread ], [ %i.oi, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 3 uses
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = ptrtoint ptr %.sroa.4.2.ph to i64
  %i.oq = sub nuw i64 %i.oo, %i.op
  %i.or = udiv exact i64 %i.oq, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !11429)
  %i.os = icmp eq ptr %i.ol, %.sroa.4.2.ph
  br i1 %i.os, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i163

.lr.ph.i.i.i.i163:                                ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i164 = phi i64 [ %i.ou, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ] ; 2 uses
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.2.ph, i64 %.sroa.0.03.i.i.i.i164 ; 2 uses
  %i.ou = add nuw nsw i64 %.sroa.0.03.i.i.i.i164, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11430)
  %.val.i.i.i.i.i165 = load i64, ptr %i.ot, align 8, !range !11, !alias.scope !11431, !noalias !11432, !noundef !10 ; 2 uses
  %i.ov = icmp eq i64 %.val.i.i.i.i.i165, 0
  br i1 %i.ov, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %.val1.i.i.i.i.i166 = load ptr, ptr %i.ow, align 8, !alias.scope !11431, !noalias !11432, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i166, i64 noundef %.val.i.i.i.i.i165, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11433
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.cm, %.lr.ph.i.i.i.i163
  %i.ox = icmp eq i64 %i.ou, %i.or
  br i1 %i.ox, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i163

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge
  %i.oy = phi ptr [ %i.on, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.on, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ], [ %i.od, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ]
  %i.oz = phi i64 [ %i.om, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.om, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ], [ %i.oe, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.pa = icmp eq i64 %i.oz, 0
  br i1 %i.pa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.pb = mul nuw i64 %i.oz, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oy, i64 noundef %i.pb, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11432
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.cy

bb.co:                                            ; preds = %bb.cl
  %i.pc = load ptr, ptr %i.og, align 8, !nonnull !10, !align !16, !noundef !10
  %i.pd = getelementptr i8, ptr %i.pc, i64 700
  %i.pe = load <2 x i32>, ptr %i.pd, align 4
  %.fr386 = freeze <2 x i32> %i.pe
  %10 = and <2 x i32> %.fr386, splat (i32 64)
  %.scalar387 = bitcast <2 x i32> %10 to i64
  %.sroa.0.0.i168 = icmp ne i64 %.scalar387, 0
  %i.pf = icmp eq i64 %.sroa.4.1, %.sroa.13.0266
  %i.pg = and i1 %.sroa.0.0.i168, %i.oh
  %or.cond111 = select i1 %i.pg, i1 %i.pf, i1 false
  br i1 %or.cond111, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %i.ph = load i64, ptr %i.ob, align 8, !alias.scope !11434, !noundef !10 ; 3 uses
  %i.pi = load i64, ptr %i.bt, align 8, !range !11, !alias.scope !11434, !noundef !10
  %i.pj = icmp eq i64 %i.ph, %i.pi
  br i1 %i.pj, label %bb.cq, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt) #42, !noalias !11435
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.cp, %bb.cq
  %i.pk = load ptr, ptr %i.oa, align 8, !alias.scope !11434, !nonnull !10, !noundef !10
  %i.pl = getelementptr inbounds nuw [24 x i8], ptr %i.pk, i64 %i.ph ; 3 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.pl, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  store ptr %.sroa.9.sroa.0.0.copyload, ptr %.sroa.4209.0..sroa_idx, align 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  store i64 %.sroa.9.sroa.5.0.copyload, ptr %.sroa.5210.0..sroa_idx, align 8
  %i.pm = add i64 %i.ph, 1
  store i64 %i.pm, ptr %i.ob, align 8, !alias.scope !11434
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt5split(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.9.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %.sroa.0.05.i) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !11436)
  %i.pn = call { ptr, i64 } @_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #43, !noalias !11437 ; 2 uses
  %i.po = extractvalue { ptr, i64 } %i.pn, 0      ; 2 uses
  %.not.i14.i = icmp eq ptr %i.po, null
  br i1 %.not.i14.i, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cr, %bb.cw
  %i.pp = phi ptr [ %i.qd, %bb.cw ], [ %i.po, %bb.cr ]
  %i.pq = phi { ptr, i64 } [ %i.qc, %bb.cw ], [ %i.pn, %bb.cr ]
  %i.pr = extractvalue { ptr, i64 } %i.pq, 1      ; 7 uses
  %.not.i.i.i.i = icmp slt i64 %i.pr, 0
  br i1 %.not.i.i.i.i, label %bb.ct, label %bb.cs, !prof !20

bb.cs:                                            ; preds = %.lr.ph.i
  %i.ps = icmp eq i64 %i.pr, 0
  br i1 %i.ps, label %bb.cv, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169: ; preds = %bb.cs
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11438
  %i.pt = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.pr, i64 noundef range(i64 1, 9) 1) #43, !noalias !11438 ; 3 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169, %.lr.ph.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169 ], [ 0, %.lr.ph.i ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.pr) #46, !noalias !11439
  unreachable

bb.cu:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pt, ptr nonnull readonly align 1 %i.pp, i64 %i.pr, i1 false), !noalias !11440
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %.sroa.7.0.ph.i = phi ptr [ %i.pt, %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.cs ]
  %i.pv = load i64, ptr %i.ob, align 8, !alias.scope !11436, !noundef !10 ; 5 uses
  %i.pw = icmp ult i64 %i.pv, 384307168202282326
  call void @llvm.assume(i1 %i.pw)
  %i.px = load i64, ptr %i.bt, align 8, !range !11, !alias.scope !11436, !noundef !10
  %i.py = icmp eq i64 %i.pv, %i.px
  br i1 %i.py, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171, label %bb.cw

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171: ; preds = %bb.cv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %i.pv, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43
  br label %bb.cw

bb.cw:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171, %bb.cv
  %i.pz = load ptr, ptr %i.oa, align 8, !alias.scope !11436, !nonnull !10, !noundef !10
  %i.qa = getelementptr inbounds nuw [24 x i8], ptr %i.pz, i64 %i.pv ; 3 uses
  store i64 %i.pr, ptr %i.qa, align 8, !noalias !11436
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !11436
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  store i64 %i.pr, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !11436
  %i.qb = add nuw nsw i64 %i.pv, 1
  store i64 %i.qb, ptr %i.ob, align 8, !alias.scope !11436
  %i.qc = call { ptr, i64 } @_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #43, !noalias !11437 ; 2 uses
  %i.qd = extractvalue { ptr, i64 } %i.qc, 0      ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i170, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, label %.lr.ph.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit: ; preds = %bb.cw, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.qe = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  br i1 %i.qe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.cx

bb.cx:                                            ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11441
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.cx, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit
  %i.qf = icmp eq ptr %i.oi, %i.of
  br i1 %i.qf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i

bb.cy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit, %bb.cc, %bb.bv, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 596
  %i.qh = load i8, ptr %i.qg, align 4, !range !52, !alias.scope !11442, !noundef !10
  switch i8 %i.qh, label %default.unreachable336 [
    i8 0, label %bb.cz
    i8 1, label %bb.da
    i8 2, label %bb.db
    i8 3, label %bb.dc
    i8 4, label %bb.dd
    i8 5, label %bb.de
    i8 6, label %bb.df
    i8 7, label %bb.dg
    i8 8, label %bb.dh
    i8 -1, label %bb.cz
  ]

bb.cz:                                            ; preds = %bb.cy, %bb.cy
  br i1 %.not252, label %switch.early.test, label %bb.dq

switch.early.test:                                ; preds = %bb.cz
  switch i8 %2, label %bb.dr [
    i8 -1, label %bb.dq
    i8 2, label %bb.dq
  ]

bb.da:                                            ; preds = %bb.cy
  br i1 %.not252, label %switch.early.test118, label %bb.eb

switch.early.test118:                             ; preds = %bb.da
  switch i8 %2, label %bb.ec [
    i8 -1, label %bb.eb
    i8 2, label %bb.eb
  ]

bb.db:                                            ; preds = %bb.cy
  %i.qi = load i64, ptr %i.lf, align 8, !noundef !10 ; 2 uses
  %i.qj = icmp ult i64 %i.qi, 384307168202282326
  call void @llvm.assume(i1 %i.qj)
  %i.qk = icmp eq i64 %i.qi, 0
  br i1 %i.qk, label %bb.eg, label %bb.ef

bb.dc:                                            ; preds = %bb.cy
  %i.ql = load i64, ptr %i.lf, align 8, !noundef !10 ; 2 uses
  %i.qm = icmp ult i64 %i.ql, 384307168202282326
  call void @llvm.assume(i1 %i.qm)
  %i.qn = icmp eq i64 %i.ql, 0
  br i1 %i.qn, label %bb.es, label %bb.er

bb.dd:                                            ; preds = %bb.cy
  %i.qo = load i64, ptr %i.lf, align 8, !noundef !10 ; 2 uses
  %i.qp = icmp ult i64 %i.qo, 384307168202282326
  call void @llvm.assume(i1 %i.qp)
  %i.qq = icmp eq i64 %i.qo, 0
  %i.qr = getelementptr inbounds nuw i8, ptr %4, i64 536 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 544 ; 2 uses
  br i1 %i.qq, label %bb.fc, label %bb.fb

bb.de:                                            ; preds = %bb.cy
  %i.qt = icmp ne i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !nonnull !10, !align !16, !noundef !10
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.qv, i1 noundef zeroext %i.qt) #43
  %i.qw = load ptr, ptr %i.qu, align 8, !nonnull !10, !align !16, !noundef !10
  %i.qx = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.qw, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.sink.split

bb.df:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !nonnull !10, !align !16, !noundef !10
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.qz, i1 noundef zeroext false) #43
  %i.ra = load ptr, ptr %i.qy, align 8, !nonnull !10, !align !16, !noundef !10
  %i.rb = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.ra, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.sink.split

bb.dg:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !nonnull !10, !align !16, !noundef !10
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.rd, i1 noundef zeroext true) #43
  %i.re = load ptr, ptr %i.rc, align 8, !nonnull !10, !align !16, !noundef !10
  %i.rf = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.re, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

bb.dh:                                            ; preds = %bb.cy
  %.not251 = icmp eq i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !nonnull !10, !align !16, !noundef !10 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11443)
  call void @llvm.experimental.noalias.scope.decl(metadata !11444)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11445
  br i1 %.not251, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 608
  %i.rj = load ptr, ptr %i.ri, align 8, !alias.scope !11446, !noundef !10 ; 3 uses
  %.not.i.i.i174 = icmp eq ptr %i.rj, null        ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 616
  %i.rl = load i64, ptr %i.rk, align 8, !alias.scope !11446 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 624
  %i.rn = load ptr, ptr %i.rm, align 8, !alias.scope !11446, !noundef !10 ; 2 uses
  %.not33.i.i.i = icmp eq ptr %i.rn, null
  br i1 %.not33.i.i.i, label %bb.dl, label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rh, i64 624
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !11446, !noundef !10 ; 3 uses
  %.not37.i.i.i = icmp eq ptr %i.rp, null         ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rh, i64 632
  %i.rr = load i64, ptr %i.rq, align 8, !alias.scope !11446 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rh, i64 608
  %i.rt = load ptr, ptr %i.rs, align 8, !alias.scope !11446, !noundef !10 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.rt, null
  br i1 %.not38.i.i.i, label %bb.do, label %bb.dn

bb.dk:                                            ; preds = %bb.di
  br i1 %.not.i.i.i174, label %bb.dm, label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dl:                                            ; preds = %bb.di
  %spec.select.i.i.i = select i1 %.not.i.i.i174, i64 0, i64 %i.rl
  %spec.select44.i.i.i = select i1 %.not.i.i.i174, ptr inttoptr (i64 1 to ptr), ptr %i.rj
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dm:                                            ; preds = %bb.dk
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rh, i64 632
  %i.rv = load i64, ptr %i.ru, align 8, !alias.scope !11446, !noundef !10
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dn:                                            ; preds = %bb.dj
  br i1 %.not37.i.i.i, label %bb.dp, label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.do:                                            ; preds = %bb.dj
  %spec.select57.i.i.i = select i1 %.not37.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.rp
  %spec.select58.i.i.i = select i1 %.not37.i.i.i, i64 0, i64 %i.rr
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dp:                                            ; preds = %bb.dn
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rh, i64 616
  %i.rx = load i64, ptr %i.rw, align 8, !alias.scope !11446, !noundef !10
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit: ; preds = %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp
  %.sink53.i.i.i = phi ptr [ %i.rn, %bb.dm ], [ %spec.select57.i.i.i, %bb.do ], [ %i.rp, %bb.dn ], [ %i.rt, %bb.dp ], [ %spec.select44.i.i.i, %bb.dl ], [ %i.rj, %bb.dk ]
  %.sink51.i.i.i = phi i64 [ %i.rv, %bb.dm ], [ %spec.select58.i.i.i, %bb.do ], [ %i.rr, %bb.dn ], [ %i.rx, %bb.dp ], [ %spec.select.i.i.i, %bb.dl ], [ %i.rl, %bb.dk ]
  store ptr %.sink53.i.i.i, ptr %i.d, align 8, !noalias !11445, !captures !21
  %i.ry = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sink51.i.i.i, ptr %i.ry, align 8, !noalias !11445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11445
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rh, i64 272
  %i.sa = load i64, ptr %i.rz, align 8, !range !12, !alias.scope !11446, !noundef !10
  %.not42.i.i.i = icmp eq i64 %i.sa, -1           ; 2 uses
  %..i.i.i = select i1 %.not42.i.i.i, i64 560, i64 280
  %.56.i.i.i = select i1 %.not42.i.i.i, i64 568, i64 288
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rh, i64 %..i.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rh, i64 %.56.i.i.i
  %.sink.i.i.i = load i64, ptr %i.sc, align 8, !alias.scope !11446, !noundef !10
  %.sink47.i.i.i = load ptr, ptr %i.sb, align 8, !alias.scope !11446, !nonnull !10, !noundef !10
  store ptr %.sink47.i.i.i, ptr %i.c, align 8, !noalias !11445
  %i.sd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink.i.i.i, ptr %i.sd, align 8, !noalias !11445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11445
  store ptr %i.c, ptr %i.b, align 8, !noalias !11445
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !11445
  %i.se = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.se, align 8, !noalias !11445
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !11445
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @202, ptr noundef nonnull %i.b) #43, !noalias !11443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11445
  %i.sf = load ptr, ptr %i.rg, align 8, !nonnull !10, !align !16, !noundef !10
  %i.sg = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.sf, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.sink.split

bb.dq:                                            ; preds = %switch.early.test, %switch.early.test, %bb.cz, %bb.dr
  %i.sh = getelementptr inbounds nuw i8, ptr %4, i64 536
  %.val141 = load ptr, ptr %i.sh, align 8         ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %4, i64 544
  %.val142 = load i64, ptr %i.si, align 8         ; 2 uses
  %i.sj = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr %.val141, i64 %.val142) #43
  br i1 %i.sj, label %bb.ds, label %bb.dt

bb.dr:                                            ; preds = %switch.early.test
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 8, !noundef !10
  %i.sm = add i64 %i.sl, 1
  store i64 %i.sm, ptr %i.sk, align 8
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dq
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.sp = getelementptr i8, ptr %i.so, i64 700
  %i.sq = load <2 x i32>, ptr %i.sp, align 4
  %.fr392 = freeze <2 x i32> %i.sq
  %11 = and <2 x i32> %.fr392, splat (i32 8)
  %.scalar393 = bitcast <2 x i32> %11 to i64
  %.sroa.0.0.i176.not = icmp eq i64 %.scalar393, 0
  br i1 %.sroa.0.0.i176.not, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.du, %bb.ds, %bb.dq
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3) #43
  %i.sr = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %5, i8 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(120) %8) #43 ; 2 uses
  %.not107 = icmp eq ptr %i.sr, null
  br i1 %.not107, label %bb.ea, label %bb.dz

bb.du:                                            ; preds = %bb.ds
  %i.ss = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.st = load ptr, ptr %i.ss, align 8, !nonnull !10, !noundef !10
  %i.su = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.sv = load i64, ptr %i.su, align 8, !noundef !10
  %i.sw = call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr %.val141, i64 %.val142, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.st, i64 noundef %i.sv) #43
  br i1 %i.sw, label %bb.dt, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call fastcc void @_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.sx = call fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call fastcc void @_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sx, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  store i64 1, ptr %i.bp, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.sx, ptr %i.sy, align 8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 1, ptr %i.sz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.ta = load ptr, ptr %i.sn, align 8, !nonnull !10, !align !16, !noundef !10
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.ta) #43
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  %i.tb = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.so, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bn) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tb, ptr %i.tc, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.eq, %bb.dv, %bb.bu, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !11447)
  %i.td = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val2.i = load ptr, ptr %i.td, align 8, !alias.scope !11447, !nonnull !10, !noundef !10 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val3.i = load i64, ptr %i.te, align 8, !alias.scope !11447, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11448)
  %i.tf = icmp eq i64 %.val3.i, 0
  br i1 %i.tf, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.th, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 0, %bb.dw ] ; 2 uses
  %i.tg = getelementptr inbounds nuw [24 x i8], ptr %.val2.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.th = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11449)
  %.val.i.i.i.i177 = load i64, ptr %i.tg, align 8, !range !11, !alias.scope !11450, !noalias !11447, !noundef !10 ; 2 uses
  %i.ti = icmp eq i64 %.val.i.i.i.i177, 0
  br i1 %i.ti, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.tj, align 8, !alias.scope !11450, !noalias !11447, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i177, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11451
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.dx, %.lr.ph.i.i.i
  %i.tk = icmp eq i64 %i.th, %.val3.i
  br i1 %i.tk, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.dw
  %.val.i178 = load i64, ptr %5, align 8, !range !11, !alias.scope !11447, !noundef !10 ; 2 uses
  %i.tl = icmp eq i64 %.val.i178, 0
  br i1 %i.tl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.dy

bb.dy:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %i.tm = mul nuw i64 %.val.i178, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.tm, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11447
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.dz:                                            ; preds = %bb.dt
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.sr, ptr %i.tn, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.ea:                                            ; preds = %bb.dt
  store i64 -9223372036854775806, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.eb:                                            ; preds = %switch.early.test118, %switch.early.test118, %bb.da, %bb.ec
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3) #43
  %i.to = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %5, i8 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(120) %8) #43 ; 2 uses
  %.not105 = icmp eq ptr %i.to, null
  br i1 %.not105, label %bb.ee, label %bb.ed

bb.ec:                                            ; preds = %switch.early.test118
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !noundef !10
  %i.tr = add i64 %i.tq, 1
  store i64 %i.tr, ptr %i.tp, align 8
  br label %bb.eb

bb.ed:                                            ; preds = %bb.eb
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.to, ptr %i.ts, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.ee:                                            ; preds = %bb.eb
  store i64 -9223372036854775806, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.fl, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i196, %bb.dy, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.dz, %bb.ed, %bb.ea, %bb.ee, %bb.eq, %bb.ep
  ret void

bb.ef:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %bb.eh

bb.eg:                                            ; preds = %bb.db
  %i.tt = call fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #45 ; 4 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11452
  %i.tu = call noundef dereferenceable_or_null(4) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #43, !noalias !11452 ; 3 uses
  %i.tv = icmp eq ptr %i.tu, null
  br i1 %i.tv, label %bb.ei, label %bb.ej

bb.eh:                                            ; preds = %bb.ej, %bb.ef
  %.sroa.063.2 = phi i8 [ 1, %bb.ej ], [ 0, %bb.ef ] ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %4, i64 536
  %.val139 = load ptr, ptr %i.tw, align 8         ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %4, i64 544
  %.val140 = load i64, ptr %i.tx, align 8         ; 2 uses
  %i.ty = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr %.val139, i64 %.val140) #43
  br i1 %i.ty, label %bb.ek, label %bb.el

bb.ei:                                            ; preds = %bb.eg
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #46
  unreachable

bb.ej:                                            ; preds = %bb.eg
  store i32 1702195828, ptr %i.tu, align 1
  store i64 4, ptr %i.tt, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store ptr %i.tu, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store i64 4, ptr %.sroa.573.0..sroa_idx, align 8
  store i64 1, ptr %i.bg, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.tt, ptr %i.tz, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 1, ptr %i.ua, align 8
  br label %bb.eh

bb.ek:                                            ; preds = %bb.eh
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.ud = getelementptr i8, ptr %i.uc, i64 700
  %i.ue = load <2 x i32>, ptr %i.ud, align 4
  %.fr390 = freeze <2 x i32> %i.ue
  %12 = and <2 x i32> %.fr390, splat (i32 8)
  %.scalar391 = bitcast <2 x i32> %12 to i64
  %.sroa.0.0.i183.not = icmp eq i64 %.scalar391, 0
  br i1 %.sroa.0.0.i183.not, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.em, %bb.ek, %bb.eh
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3) #43
  %i.uf = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bg, i8 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(120) %8) #43 ; 2 uses
  %.not103 = icmp eq ptr %i.uf, null
  br i1 %.not103, label %bb.ep, label %bb.eo

bb.em:                                            ; preds = %bb.ek
  %i.ug = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.uh = load ptr, ptr %i.ug, align 8, !nonnull !10, !noundef !10
  %i.ui = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.uj = load i64, ptr %i.ui, align 8, !noundef !10
  %i.uk = call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr %.val139, i64 %.val140, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.uh, i64 noundef %i.uj) #43
  br i1 %i.uk, label %bb.el, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call fastcc void @_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.ul = call fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call fastcc void @_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ul, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  store i64 1, ptr %i.bk, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.ul, ptr %i.um, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 1, ptr %i.un, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.uo = load ptr, ptr %i.ub, align 8, !nonnull !10, !align !16, !noundef !10
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.uo) #43
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  %i.up = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.uc, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bl, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bi) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.up, ptr %i.uq, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #43
  br label %bb.eq

bb.eo:                                            ; preds = %bb.el
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.uf, ptr %i.ur, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.eq

bb.ep:                                            ; preds = %bb.el, %bb.fd, %bb.ex
  %.sroa.063.3 = phi i8 [ %.sroa.063.6, %bb.fd ], [ %.sroa.063.5, %bb.ex ], [ %.sroa.063.2, %bb.el ]
  store i64 -9223372036854775806, ptr %0, align 8
  %i.us = trunc nuw i8 %.sroa.063.3 to i1
  br i1 %i.us, label %bb.fj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.eq:                                            ; preds = %bb.ez, %bb.fa, %bb.en, %bb.eo, %bb.fi
  %.sroa.063.4 = phi i8 [ %.sroa.063.6, %bb.fi ], [ %.sroa.063.2, %bb.en ], [ %.sroa.063.2, %bb.eo ], [ %.sroa.063.5, %bb.fa ], [ %.sroa.063.5, %bb.ez ]
  %i.ut = trunc nuw i8 %.sroa.063.4 to i1
  br i1 %i.ut, label %bb.dw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.er:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %bb.et

bb.es:                                            ; preds = %bb.dc
  %i.uu = call fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #45 ; 4 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11453
  %i.uv = call noundef dereferenceable_or_null(5) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 5, i64 noundef range(i64 1, 9) 1) #43, !noalias !11453 ; 3 uses
  %i.uw = icmp eq ptr %i.uv, null
  br i1 %i.uw, label %bb.eu, label %bb.ev

bb.et:                                            ; preds = %bb.ev, %bb.er
  %.sroa.063.5 = phi i8 [ 1, %bb.ev ], [ 0, %bb.er ] ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %4, i64 536
  %.val137 = load ptr, ptr %i.ux, align 8         ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %4, i64 544
  %.val138 = load i64, ptr %i.uy, align 8         ; 2 uses
  %i.uz = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr %.val137, i64 %.val138) #43
  br i1 %i.uz, label %bb.ew, label %bb.ex

bb.eu:                                            ; preds = %bb.es
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #46
  unreachable

bb.ev:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.uv, ptr noundef nonnull align 1 dereferenceable(5) @55, i64 5, i1 false)
  store i64 5, ptr %i.uu, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store ptr %i.uv, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  store i64 5, ptr %.sroa.582.0..sroa_idx, align 8
  store i64 1, ptr %i.ba, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.uu, ptr %i.va, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 1, ptr %i.vb, align 8
  br label %bb.et

bb.ew:                                            ; preds = %bb.et
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.ve = getelementptr i8, ptr %i.vd, i64 700
  %i.vf = load <2 x i32>, ptr %i.ve, align 4
  %.fr388 = freeze <2 x i32> %i.vf
  %13 = and <2 x i32> %.fr388, splat (i32 8)
  %.scalar389 = bitcast <2 x i32> %13 to i64
  %.sroa.0.0.i188.not = icmp eq i64 %.scalar389, 0
  br i1 %.sroa.0.0.i188.not, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ey, %bb.ew, %bb.et
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3) #43
  %i.vg = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ba, i8 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(120) %8) #43 ; 2 uses
  %.not102 = icmp eq ptr %i.vg, null
  br i1 %.not102, label %bb.ep, label %bb.fa

bb.ey:                                            ; preds = %bb.ew
  %i.vh = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.vi = load ptr, ptr %i.vh, align 8, !nonnull !10, !noundef !10
  %i.vj = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.vk = load i64, ptr %i.vj, align 8, !noundef !10
  %i.vl = call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr %.val137, i64 %.val138, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.vi, i64 noundef %i.vk) #43
  br i1 %i.vl, label %bb.ex, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call fastcc void @_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.vm = call fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call fastcc void @_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vm, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i64 1, ptr %i.be, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.vm, ptr %i.vn, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 1, ptr %i.vo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.vp = load ptr, ptr %i.vc, align 8, !nonnull !10, !align !16, !noundef !10
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.vp) #43
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  %i.vq = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.vd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.be, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bc) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.vq, ptr %i.vr, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #43
  br label %bb.eq

bb.fa:                                            ; preds = %bb.ex
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.vg, ptr %i.vs, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.eq

bb.fb:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %.val135.pre = load ptr, ptr %i.qr, align 8
  %.val136.pre = load i64, ptr %i.qs, align 8
  br label %bb.fd

bb.fc:                                            ; preds = %bb.dd
  %i.vt = getelementptr inbounds nuw i8, ptr %8, i64 64
  %.val149 = load ptr, ptr %i.qr, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %.val150 = load i64, ptr %i.qs, align 8, !noundef !10 ; 2 uses
  %i.vu = call fastcc noundef ptr @_RINvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB3_10ArgMatches7get_onehEB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.vt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val149, i64 noundef %.val150) #43 ; 2 uses
  %.not99 = icmp eq ptr %i.vu, null
  %. = select i1 %.not99, ptr @85, ptr %i.vu
  %i.vv = load i8, ptr %., align 1, !noundef !10
  %i.vw = call i8 @llvm.uadd.sat.i8(i8 %i.vv, i8 1)
  %i.vx = call fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.vy = call { ptr, i64 } @_RNvMs0_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imph4__fmt(i8 noundef %i.vw, ptr noalias nofree noundef nonnull %i.ay, i64 noundef 3) #43 ; 2 uses
  %i.vz = extractvalue { ptr, i64 } %i.vy, 0
  %i.wa = extractvalue { ptr, i64 } %i.vy, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ax, i64 noundef %i.wa, i64 noundef 1, i64 noundef 1) #43
  %i.wb = load i64, ptr %i.ax, align 8, !range !13, !noundef !10
  %i.wc = trunc nuw i64 %i.wb to i1
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.we = load i64, ptr %i.wd, align 8, !range !29, !noundef !10 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  br i1 %i.wc, label %bb.fe, label %bb.ff, !prof !18

bb.fd:                                            ; preds = %bb.fg, %bb.fb
  %.val136 = phi i64 [ %.val150, %bb.fg ], [ %.val136.pre, %bb.fb ]
  %.val135 = phi ptr [ %.val149, %bb.fg ], [ %.val135.pre, %bb.fb ]
  %.sroa.063.6 = phi i8 [ 1, %bb.fg ], [ 0, %bb.fb ] ; 2 uses
  %i.wg = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr %.val135, i64 %.val136) #43 ; 0 uses
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3) #43
  %i.wh = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.az, i8 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(120) %8) #43 ; 2 uses
  %.not101 = icmp eq ptr %i.wh, null
  br i1 %.not101, label %bb.ep, label %bb.fi

bb.fe:                                            ; preds = %bb.fc
  %i.wi = load i64, ptr %i.wf, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.we, i64 %i.wi) #46
  unreachable

bb.ff:                                            ; preds = %bb.fc
  %i.wj = load ptr, ptr %i.wf, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.wk = icmp ule i64 %i.wa, %i.we
  call void @llvm.assume(i1 %i.wk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %.not100 = icmp eq i64 %i.wa, 0
  br i1 %.not100, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.fh, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  store i64 %i.we, ptr %i.vx, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  store ptr %i.wj, ptr %.sroa.490.0..sroa_idx, align 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store i64 %i.wa, ptr %.sroa.591.0..sroa_idx, align 8
  store i64 1, ptr %i.az, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.vx, ptr %i.wl, align 8
  %i.wm = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 1, ptr %i.wm, align 8
  br label %bb.fd

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wj, ptr align 1 %i.vz, i64 %i.wa, i1 false)
  br label %bb.fg

bb.fi:                                            ; preds = %bb.fd
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.wh, ptr %i.wn, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.eq

.sink.split:                                      ; preds = %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit, %bb.de, %bb.dg, %bb.df
  %.sink = phi ptr [ %i.rb, %bb.df ], [ %i.rf, %bb.dg ], [ %i.qx, %bb.de ], [ %i.sg, %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit ]
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.wo, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.fj

bb.fj:                                            ; preds = %.sink.split, %bb.ep
  call void @llvm.experimental.noalias.scope.decl(metadata !11454)
  %i.wp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val2.i189 = load ptr, ptr %i.wp, align 8, !alias.scope !11454, !nonnull !10, !noundef !10 ; 2 uses
  %.val3.i190 = load i64, ptr %i.lf, align 8, !alias.scope !11454, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11455)
  %i.wq = icmp eq i64 %.val3.i190, 0
  br i1 %i.wq, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i196, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %bb.fj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i195
  %.sroa.0.03.i.i.i192 = phi i64 [ %i.ws, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i195 ], [ 0, %bb.fj ] ; 2 uses
  %i.wr = getelementptr inbounds nuw [24 x i8], ptr %.val2.i189, i64 %.sroa.0.03.i.i.i192 ; 2 uses
  %i.ws = add nuw nsw i64 %.sroa.0.03.i.i.i192, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11456)
  %.val.i.i.i.i193 = load i64, ptr %i.wr, align 8, !range !11, !alias.scope !11457, !noalias !11454, !noundef !10 ; 2 uses
  %i.wt = icmp eq i64 %.val.i.i.i.i193, 0
  br i1 %i.wt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i195, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i191
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %.val1.i.i.i.i194 = load ptr, ptr %i.wu, align 8, !alias.scope !11457, !noalias !11454, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i194, i64 noundef %.val.i.i.i.i193, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11458
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i195

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i195: ; preds = %bb.fk, %.lr.ph.i.i.i191
  %i.wv = icmp eq i64 %i.ws, %.val3.i190
  br i1 %i.wv, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i196, label %.lr.ph.i.i.i191

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i196: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i195, %bb.fj
  %.val.i197 = load i64, ptr %5, align 8, !range !11, !alias.scope !11454, !noundef !10 ; 2 uses
  %i.ww = icmp eq i64 %.val.i197, 0
  br i1 %i.ww, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.fl

bb.fl:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i196
  %i.wx = mul nuw i64 %.val.i197, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i189, i64 noundef %i.wx, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11454
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts16gather_conflicts(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11486)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !11487, !nonnull !10, !noundef !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !11487, !noundef !10 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.h, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i ; 2 uses
  %i.j = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %i.j, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i
  %.sroa.0.019.i.i = phi ptr [ %i.k, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %.sroa.8.08.i.i = phi i64 [ %i.l, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 16 ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.8.08.i.i, 1
end_hunk_8
begin_hunk_9_@_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output4help10write_help:bb.a

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr16trim_start_lines.exit: ; preds = %.preheader.i.i.i.i, %bb.f, %bb.h, %bb.g, %_RINvMNtCsj6eKBz9Db1c_4core3stre4findcECsfu0rQaTkGUu_12clap_builder.exit.i, %_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsfu0rQaTkGUu_12clap_builder.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i
  tail call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11861)
  %i.fr = load i64, ptr %i.y, align 8, !alias.scope !11862, !noundef !10 ; 3 uses
  %i.fs = load i64, ptr %0, align 8, !range !11, !alias.scope !11862, !noundef !10
  %i.ft = icmp eq i64 %i.fs, %i.fr
  br i1 %i.ft, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i12, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i12: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr16trim_start_lines.exit
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.fr, i64 noundef 1, i64 noundef 1, i64 noundef 1) #43, !noalias !11863
  %i.fu = load i64, ptr %i.y, align 8, !alias.scope !11864, !noundef !10
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr16trim_start_lines.exit, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i12
  %.sink85 = phi i64 [ %i.fu, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i12 ], [ %i.fr, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr16trim_start_lines.exit ] ; 3 uses
  %i.fv = icmp sgt i64 %.sink85, -1
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = load ptr, ptr %i.w, align 8, !alias.scope !11864, !nonnull !10, !noundef !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.sink85
  store i8 10, ptr %i.fx, align 1, !noalias !11864
  %i.fy = add nuw i64 %.sink85, 1
  store i64 %i.fy, ptr %i.y, align 8, !alias.scope !11864
  ret void

bb.ak:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i1 noundef zeroext %3) #43
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.val6 = load ptr, ptr %i.fz, align 8, !nonnull !10, !noundef !10
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.val7 = load i64, ptr %i.ga, align 8, !noundef !10
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val6, i64 noundef %.val7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.al:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i1 noundef zeroext %3) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11865)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !11865, !nonnull !10, !align !16, !noundef !10 ; 4 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 136
  %.val7.i = load ptr, ptr %i.gd, align 8, !noalias !11865, !nonnull !10, !noundef !10 ; 5 uses
  %i.ge = getelementptr i8, ptr %i.gc, i64 144
  %.val8.i = load i64, ptr %i.ge, align 8, !noalias !11865, !noundef !10 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val8.i, 600
  %i.gf = getelementptr inbounds nuw i8, ptr %.val7.i, i64 %.idx.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11866)
  %.not26.i.i = icmp eq i64 %.val8.i, 0
  br i1 %.not26.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs5_NtBN_7commandNtB41_7Command19get_non_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5i_8AutoHelp10write_helps_0E0E0B3c_EBP_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.al
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.gh = load i8, ptr %i.gg, align 1, !range !33, !alias.scope !11867
  %.fr27.i.i = freeze i8 %i.gh
  %i.gi = trunc i8 %.fr27.i.i to i1               ; 2 uses
  br i1 %i.gi, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.backedge.us.i.i
  %i.gj = phi ptr [ %i.gk, %.backedge.us.i.i ], [ %.val7.i, %.lr.ph.i.i ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 600 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 552
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !11868, !noalias !11869, !noundef !10
  %.not.i.i.us.i.i = icmp eq ptr %i.gm, null
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 584
  %i.go = load i32, ptr %i.gn, align 8, !range !44, !alias.scope !11868, !noalias !11869
  %.not1.i.i.us.i.i = icmp eq i32 %i.go, -1
  %or.cond.i.us.i.i = select i1 %.not.i.i.us.i.i, i1 %.not1.i.i.us.i.i, i1 false
  br i1 %or.cond.i.us.i.i, label %bb.am, label %.backedge.us.i.i

bb.am:                                            ; preds = %.lr.ph.split.us.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 592
  %.val4.i.us.i.i = load i32, ptr %i.gp, align 8, !alias.scope !11868, !noalias !11869, !noundef !10 ; 2 uses
  %i.gq = and i32 %.val4.i.us.i.i, 4
  %.not.i.i.i.i.us.i.i = icmp ne i32 %i.gq, 0
  %i.gr = and i32 %.val4.i.us.i.i, 8200
  %or.cond.i.i = icmp eq i32 %i.gr, 8192
  %or.cond.i = or i1 %.not.i.i.i.i.us.i.i, %or.cond.i.i
  br i1 %or.cond.i, label %.backedge.us.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtBN_7commandNtB41_7Command15get_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5e_8AutoHelp10write_help0E0E0B3c_EBP_.exit.i

.backedge.us.i.i:                                 ; preds = %bb.am, %.lr.ph.split.us.i.i
  %.not30.i.i = icmp eq ptr %i.gk, %i.gf
  br i1 %.not30.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtBN_7commandNtB41_7Command15get_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5e_8AutoHelp10write_help0E0E0B3c_EBP_.exit.i, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.gs = phi ptr [ %i.gt, %.backedge.i.i ], [ %.val7.i, %.lr.ph.i.i ] ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 600 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 552
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !11868, !noalias !11869, !noundef !10
  %.not.i.i.i.i13 = icmp eq ptr %i.gv, null
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 584
  %i.gx = load i32, ptr %i.gw, align 8, !range !44, !alias.scope !11868, !noalias !11869
  %.not1.i.i.i.i = icmp eq i32 %i.gx, -1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i13, i1 %.not1.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.an, label %.backedge.i.i

bb.an:                                            ; preds = %.lr.ph.split.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 592
  %.val4.i.i.i = load i32, ptr %i.gy, align 8, !alias.scope !11868, !noalias !11869, !noundef !10 ; 2 uses
  %i.gz = and i32 %.val4.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp ne i32 %i.gz, 0
  %i.ha = and i32 %.val4.i.i.i, 4104
  %or.cond54.i.i = icmp eq i32 %i.ha, 4096
  %or.cond48.i = or i1 %.not.i.i.i.i.i.i, %or.cond54.i.i
  br i1 %or.cond48.i, label %.backedge.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtBN_7commandNtB41_7Command15get_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5e_8AutoHelp10write_help0E0E0B3c_EBP_.exit.i

.backedge.i.i:                                    ; preds = %bb.an, %.lr.ph.split.i.i
  %.not29.i.i = icmp eq ptr %i.gt, %i.gf
  br i1 %.not29.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtBN_7commandNtB41_7Command15get_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5e_8AutoHelp10write_help0E0E0B3c_EBP_.exit.i, label %.lr.ph.split.i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtBN_7commandNtB41_7Command15get_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5e_8AutoHelp10write_help0E0E0B3c_EBP_.exit.i: ; preds = %.backedge.i.i, %bb.an, %.backedge.us.i.i, %bb.am
  %.lcssa.i.i = phi i1 [ true, %bb.am ], [ false, %.backedge.us.i.i ], [ true, %bb.an ], [ false, %.backedge.i.i ] ; 2 uses
  br i1 %i.gi, label %.lr.ph.split.us.i28.i, label %.lr.ph.split.i15.i

.lr.ph.split.us.i28.i:                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtBN_7commandNtB41_7Command15get_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5e_8AutoHelp10write_help0E0E0B3c_EBP_.exit.i, %.backedge.us.i32.i
  %i.hb = phi ptr [ %i.hc, %.backedge.us.i32.i ], [ %.val7.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtBN_7commandNtB41_7Command15get_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5e_8AutoHelp10write_help0E0E0B3c_EBP_.exit.i ] ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 600 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 552
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !11870, !noalias !11871, !noundef !10
  %.not.i.i.us.i29.i = icmp ne ptr %i.he, null
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 584
  %i.hg = load i32, ptr %i.hf, align 8, !range !44, !alias.scope !11870, !noalias !11871
  %.not1.i.i.us.i30.i = icmp ne i32 %i.hg, -1
  %or.cond.i.us.i31.i = select i1 %.not.i.i.us.i29.i, i1 true, i1 %.not1.i.i.us.i30.i
  br i1 %or.cond.i.us.i31.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.us.i.i, label %.backedge.us.i32.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.us.i.i: ; preds = %.lr.ph.split.us.i28.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 592
  %.val4.i.us.i34.i = load i32, ptr %i.hh, align 8, !alias.scope !11870, !noalias !11871, !noundef !10 ; 2 uses
  %i.hi = and i32 %.val4.i.us.i34.i, 4
  %.not.i.i.i.i.us.i35.i = icmp ne i32 %i.hi, 0
  %i.hj = and i32 %.val4.i.us.i34.i, 8200
  %or.cond.i36.i = icmp eq i32 %i.hj, 8192
  %or.cond49.i = or i1 %.not.i.i.i.i.us.i35.i, %or.cond.i36.i
  br i1 %or.cond49.i, label %.backedge.us.i32.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs5_NtBN_7commandNtB41_7Command19get_non_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5i_8AutoHelp10write_helps_0E0E0B3c_EBP_.exit.i

.backedge.us.i32.i:                               ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.us.i.i, %.lr.ph.split.us.i28.i
  %.not30.i33.i = icmp eq ptr %i.hc, %i.gf
  br i1 %.not30.i33.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs5_NtBN_7commandNtB41_7Command19get_non_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5i_8AutoHelp10write_helps_0E0E0B3c_EBP_.exit.i, label %.lr.ph.split.us.i28.i

.lr.ph.split.i15.i:                               ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtBN_7commandNtB41_7Command15get_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5e_8AutoHelp10write_help0E0E0B3c_EBP_.exit.i, %.backedge.i19.i
  %i.hk = phi ptr [ %i.hl, %.backedge.i19.i ], [ %.val7.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtBN_7commandNtB41_7Command15get_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5e_8AutoHelp10write_help0E0E0B3c_EBP_.exit.i ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 600 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 552
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !11870, !noalias !11871, !noundef !10
  %.not.i.i.i16.i = icmp ne ptr %i.hn, null
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 584
  %i.hp = load i32, ptr %i.ho, align 8, !range !44, !alias.scope !11870, !noalias !11871
  %.not1.i.i.i17.i = icmp ne i32 %i.hp, -1
  %or.cond.i.i18.i = select i1 %.not.i.i.i16.i, i1 true, i1 %.not1.i.i.i17.i
  br i1 %or.cond.i.i18.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i, label %.backedge.i19.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i: ; preds = %.lr.ph.split.i15.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 592
  %.val4.i.i25.i = load i32, ptr %i.hq, align 8, !alias.scope !11870, !noalias !11871, !noundef !10 ; 2 uses
  %i.hr = and i32 %.val4.i.i25.i, 4
  %.not.i.i.i.i.i26.i = icmp ne i32 %i.hr, 0
  %i.hs = and i32 %.val4.i.i25.i, 4104
  %or.cond54.i27.i = icmp eq i32 %i.hs, 4096
  %or.cond50.i = or i1 %.not.i.i.i.i.i26.i, %or.cond54.i27.i
  br i1 %or.cond50.i, label %.backedge.i19.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs5_NtBN_7commandNtB41_7Command19get_non_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5i_8AutoHelp10write_helps_0E0E0B3c_EBP_.exit.i

.backedge.i19.i:                                  ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i, %.lr.ph.split.i15.i
  %.not29.i20.i = icmp eq ptr %i.hl, %i.gf
  br i1 %.not29.i20.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs5_NtBN_7commandNtB41_7Command19get_non_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5i_8AutoHelp10write_helps_0E0E0B3c_EBP_.exit.i, label %.lr.ph.split.i15.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs5_NtBN_7commandNtB41_7Command19get_non_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5i_8AutoHelp10write_helps_0E0E0B3c_EBP_.exit.i: ; preds = %.backedge.i19.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i, %.backedge.us.i32.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.us.i.i, %bb.al
  %.lcssa.i44.i = phi i1 [ true, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.us.i.i ], [ false, %bb.al ], [ %.lcssa.i.i, %.backedge.us.i32.i ], [ true, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i ], [ %.lcssa.i.i, %.backedge.i19.i ]
  %i.ht = getelementptr i8, ptr %i.gc, i64 184
  %.val.i = load ptr, ptr %i.ht, align 8, !noalias !11865, !nonnull !10, !noundef !10 ; 2 uses
  %i.hu = getelementptr i8, ptr %i.gc, i64 192
  %.val4.i = load i64, ptr %i.hu, align 8, !noalias !11865, !noundef !10 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val4.i, 712
  %i.hv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i
  %.not.i.i.i = icmp eq i64 %.val4.i, 0
  br i1 %.not.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs5_NtBN_7commandNtB41_7Command19get_non_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5i_8AutoHelp10write_helps_0E0E0B3c_EBP_.exit.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i
  %i.hw = phi ptr [ %i.hx, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i ], [ %.val.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs5_NtBN_7commandNtB41_7Command19get_non_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5i_8AutoHelp10write_helps_0E0E0B3c_EBP_.exit.i ] ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 712 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11872)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 568
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !11872, !noalias !11873, !noundef !10
  %i.ia = icmp eq i64 %i.hz, 4
  br i1 %i.ia, label %bb.ao, label %.split.i.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 560
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !11872, !noalias !11873, !nonnull !10, !noundef !10
  %i.id = load i32, ptr %i.ic, align 1
  %i.ie = icmp ne i32 %i.id, 1886152040
  %i.if = zext i1 %i.ie to i32
  %.not.i.i.i38.i = icmp eq i32 %i.if, 0
  br i1 %.not.i.i.i38.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ao, %.lr.ph.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 700
  %i.ih = load <2 x i32>, ptr %i.ig, align 4, !alias.scope !11872, !noalias !11873
  %.fr102 = freeze <2 x i32> %i.ih
  %4 = and <2 x i32> %.fr102, splat (i32 8388608)
  %.scalar = bitcast <2 x i32> %4 to i64
  %.sroa.01.0.i.i.i.i = icmp eq i64 %.scalar, 0
  br i1 %.sroa.01.0.i.i.i.i, label %.split3.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %bb.ao
  %.not5.i.i.i = icmp eq ptr %i.hx, %i.hv
  br i1 %.not5.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, label %.lr.ph.i.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs5_NtBN_7commandNtB41_7Command19get_non_positionals0NCINvNvB1y_3any5checkB37_NCNvMNtNtBP_6output13help_templateNtB5i_8AutoHelp10write_helps_0E0E0B3c_EBP_.exit.i
  br i1 %.lcssa.i44.i, label %.split3.i, label %.split.i

.split3.i:                                        ; preds = %.split.i.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 81) #43
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB2_8AutoHelp10write_help.exit

.split.i:                                         ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 69) #43
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB2_8AutoHelp10write_help.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB2_8AutoHelp10write_help.exit: ; preds = %.split3.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23gather_direct_conflicts(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %1, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val5 = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val5, 600
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.e = icmp eq i64 %.val5, 0
  br i1 %i.e, label %.loopexit6, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i
  %i.f = phi ptr [ %i.g, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ], [ %.val, %bb.a ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 544
  %i.i = load i64, ptr %i.h, align 8, !noalias !11949, !noundef !10
  %i.j = icmp eq i64 %i.i, %.8.val
  br i1 %i.j, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 536
  %i.l = load ptr, ptr %i.k, align 8, !noalias !11949, !nonnull !10, !noundef !10 ; 3 uses
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.l, ptr nonnull %.0.val, i64 %.8.val), !noalias !11949
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.m, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, %.lr.ph.i.i
  %i.n = icmp eq ptr %i.g, %i.d
  br i1 %i.n, label %.loopexit6, label %.lr.ph.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val10 = load ptr, ptr %i.o, align 8           ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val11 = load i64, ptr %i.p, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11951
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.val17.i = load ptr, ptr %i.q, align 8, !alias.scope !11950, !nonnull !10, !noundef !10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.val18.i = load i64, ptr %i.r, align 8, !alias.scope !11950, !noundef !10 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11954)
  %i.s = shl nuw nsw i64 %.val18.i, 4             ; 2 uses
  %i.t = icmp eq i64 %.val18.i, 0
  br i1 %i.t, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11955
  %i.u = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.s, i64 noundef range(i64 1, 9) 8) #43, !noalias !11955 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %.lr.ph.preheader.i.i.i

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.s) #46, !noalias !11956
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val17.i, i64 %.val18.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %.sroa.0.022.i.i.i = phi ptr [ %i.aa, %bb.c ], [ %.val17.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.sroa.7.021.i.i.i = phi i64 [ %i.z, %bb.c ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.020.i.i.i = phi i64 [ %i.y, %bb.c ], [ %.val18.i, %.lr.ph.preheader.i.i.i ]
  %i.x = icmp eq ptr %.sroa.0.022.i.i.i, %i.w
  br i1 %i.x, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = add nsw i64 %.sroa.10.020.i.i.i, -1      ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.7.021.i.i.i, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.7.021.i.i.i ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i, align 8, !alias.scope !11954, !noalias !11957, !nonnull !10, !noundef !10
  %i.ac = getelementptr i8, ptr %.sroa.0.022.i.i.i, i64 8
  %.val13.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !11954, !noalias !11957, !noundef !10
  store ptr %.val.i.i.i, ptr %i.ab, align 8, !noalias !11956
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.val13.i.i.i, ptr %i.ad, align 8, !noalias !11956
  %i.ae = icmp eq i64 %i.y, 0
  br i1 %i.ae, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %.lr.ph.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i: ; preds = %bb.c, %.lr.ph.i.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit
  %.sroa.10.0.i30.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit ], [ %i.u, %.lr.ph.i.i.i ], [ %i.u, %bb.c ] ; 2 uses
  store i64 %.val18.i, ptr %i.a, align 8, !alias.scope !11958, !noalias !11951
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %.sroa.10.0.i30.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !11958, !noalias !11951
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  store i64 %.val18.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !11958, !noalias !11951
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %.idx.i14 = mul nuw nsw i64 %.val11, 96
  %i.af = getelementptr inbounds nuw i8, ptr %.val10, i64 %.idx.i14 ; 3 uses
  %i.ag = icmp eq i64 %.val11, 0
  br i1 %i.ag, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, %.loopexit.i
  %i.ah = phi ptr [ %i.dx, %.loopexit.i ], [ %.sroa.10.0.i30.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 2 uses
  %i.ai = phi i64 [ %i.dy, %.loopexit.i ], [ %.val18.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 5 uses
  %.sroa.0.018.i = phi ptr [ %i.ak, %.loopexit.i ], [ %.val10, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ]
  br label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %.loopexit.i.i, %.lr.ph.i.preheader.i
  %i.aj = phi ptr [ %i.ak, %.loopexit.i.i ], [ %.sroa.0.018.i, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !11959, !nonnull !10, !noundef !10 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !11959, !noundef !10 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i15, %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i
  %i.aq = phi ptr [ %i.ar, %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i15 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.as, align 8, !noalias !11960, !noundef !10
  %i.at = icmp eq i64 %.val3.i.i.i.i.i, %.8.val
  br i1 %i.at, label %.split.i.i.i.i.i, label %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  %.val2.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !11960, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i.i, ptr nonnull readonly %i.l, i64 %.8.val), !noalias !11960
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i, label %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i

_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.not7.i.i.i.i.i = icmp eq ptr %i.ar, %i.ap
  br i1 %.not7.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i:                                    ; preds = %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i, %.lr.ph.i.i15
  %i.av = icmp eq ptr %i.ak, %i.af
  br i1 %i.av, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i, label %.lr.ph.i.i15

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i: ; preds = %.split.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !11951, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.az = load i64, ptr %i.ay, align 8, !noalias !11951, !noundef !10 ; 2 uses
  br label %.lr.ph.i.i20.i

.lr.ph.i.i20.i:                                   ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i
  %i.ba = phi ptr [ %i.bb, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i ], [ %.val10, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !11961, !noundef !10
  %i.be = icmp eq i64 %i.bd, %i.az
  br i1 %i.be, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i: ; preds = %.lr.ph.i.i20.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !11961, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull readonly %i.ax, i64 %i.az), !noalias !11961
  %i.bh = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bh, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i, %.lr.ph.i.i20.i
  %i.bi = icmp eq ptr %i.bb, %i.af
  br i1 %i.bi, label %.loopexit7.i, label %.lr.ph.i.i20.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i: ; preds = %.loopexit.i, %.loopexit.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i
  %i.bj = phi i64 [ %i.ai, %.loopexit.i.i ], [ %.val18.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ], [ %i.dy, %.loopexit.i ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !11950, !nonnull !10, !noundef !10 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !11950, !noundef !10 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11962)
  %i.bo = load i64, ptr %i.a, align 8, !range !11, !alias.scope !11963, !noalias !11951, !noundef !10
  %i.bp = sub i64 %i.bo, %i.bj
  %i.bq = icmp ugt i64 %i.bn, %i.bp
  br i1 %i.bq, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bj, i64 noundef %i.bn, i64 noundef 8, i64 noundef 16) #43, !noalias !11951
end_hunk_9
