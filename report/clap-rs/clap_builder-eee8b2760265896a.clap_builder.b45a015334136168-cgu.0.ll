Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command13render_usage_:bb.a
  %i.o = icmp eq ptr %i.m, %i.k
  br i1 %i.o, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i.i.i7 = phi ptr [ %i.m, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.8.0.i.i.i6 = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i.i.i = load i128, ptr %.sroa.0.01.i.i.i7, align 8, !noalias !2477
  %i.p = icmp eq i128 %.val.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.p, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2476, !noalias !2465, !noundef !13 ; 2 uses
  %i.s = icmp ult i64 %.sroa.8.0.i.i.i6, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i6, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !2477
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2476, !noalias !2465, !nonnull !13, !noundef !13
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.8.0.i.i.i6 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.v, align 8, !noalias !2478, !nonnull !13, !noundef !13
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val6.i.i = load ptr, ptr %i.w, align 8, !noalias !2478, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !240, !invariant.load !13, !noalias !2478
  %i.z = add nsw i64 %i.y, -1
  %i.aa = and i64 %i.z, -16
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2478
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !13, !noalias !2478, !nonnull !13
  call void %i.ae(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.ac) #45, !noalias !2478, !inline_history !345
  %i.af = load i128, ptr %i.e, align 16, !noalias !2478, !noundef !13
  %.not.i.i = icmp eq i128 %i.af, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2478
  br i1 %.not.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %bb.f, !prof !159

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !2478
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit: ; preds = %bb.b, %bb.a, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  %..i = select i1 %.not.i, ptr @99, ptr %.sroa.0.0.i.i ; 5 uses
  store ptr %1, ptr %i.f, align 8, !alias.scope !2465, !noalias !2468
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %..i, ptr %i.ag, align 8, !alias.scope !2465, !noalias !2468
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.ah, align 8, !alias.scope !2465, !noalias !2468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2479
  store i64 0, ptr %i.d, align 8, !alias.scope !2484, !noalias !2479
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !2484, !noalias !2479
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !2484, !noalias !2479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2479
  %i.ai = getelementptr inbounds nuw i8, ptr %..i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.c, ptr noundef nonnull align 2 dereferenceable(14) %i.ai, i64 14, i1 false), !noalias !2479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2479
  %.sroa.0.0.copyload.i = load i8, ptr %i.ai, align 2, !noalias !2479
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 32
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 2, !noalias !2479
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 36
  %.sroa.11.0.copyload.i = load i8, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !2479
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 40
  %.sroa.15.0.copyload.i = load i16, ptr %.sroa.15.0..sroa_idx.i, align 2, !noalias !2479
  %.not.i.i1 = icmp eq i8 %.sroa.0.0.copyload.i, -1
  %.not5.i.i = icmp eq i8 %.sroa.7.0.copyload.i, -1
  %or.cond.i = select i1 %.not.i.i1, i1 %.not5.i.i, i1 false
  %.not7.i.i = icmp eq i8 %.sroa.11.0.copyload.i, -1
  %or.cond35.i = select i1 %or.cond.i, i1 %.not7.i.i, i1 false
  %i.aj = icmp eq i16 %.sroa.15.0.copyload.i, 0
  %or.cond36.i = select i1 %or.cond35.i, i1 %i.aj, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond36.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i = select i1 %or.cond36.i, i64 0, i64 4
  store ptr %spec.select.i, ptr %i.b, align 8, !noalias !2479, !captures !354
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %spec.select38.i, ptr %i.ak, align 8, !noalias !2479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2479
  store ptr %i.c, ptr %i.a, align 8, !noalias !2479
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !2479
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.al, align 8, !noalias !2479
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !2479
  %i.am = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.a) #43, !noalias !2479, !inline_history !355 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2479
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #43, !noalias !2487, !inline_history !355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command14render_version(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2492
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2489, !noalias !2494, !noundef !13 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2489, !noalias !2494 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2489, !noalias !2494, !noundef !13 ; 2 uses
  %.not33.i = icmp eq ptr %i.i, null
  br i1 %.not33.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15__render_version.exit

bb.c:                                             ; preds = %bb.a
  %spec.select.i = select i1 %.not.i, i64 0, i64 %i.g
  %spec.select44.i = select i1 %.not.i, ptr inttoptr (i64 1 to ptr), ptr %i.e
  br label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15__render_version.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2489, !noalias !2494, !noundef !13
  br label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15__render_version.exit

_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15__render_version.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink53.i = phi ptr [ %i.i, %bb.d ], [ %i.e, %bb.b ], [ %spec.select44.i, %bb.c ]
  %.sink51.i = phi i64 [ %i.k, %bb.d ], [ %i.g, %bb.b ], [ %spec.select.i, %bb.c ]
  store ptr %.sink53.i, ptr %i.c, align 8, !noalias !2492, !captures !354
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink51.i, ptr %i.l, align 8, !noalias !2492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2492
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.n = load i64, ptr %i.m, align 8, !range !127, !alias.scope !2489, !noalias !2494, !noundef !13
  %.not42.i = icmp eq i64 %i.n, -1                ; 2 uses
  %..i = select i1 %.not42.i, i64 560, i64 280
  %.56.i = select i1 %.not42.i, i64 568, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.56.i
  %.sink.i = load i64, ptr %i.p, align 8, !alias.scope !2489, !noalias !2494, !noundef !13
  %.sink47.i = load ptr, ptr %i.o, align 8, !alias.scope !2489, !noalias !2494, !nonnull !13, !noundef !13
  store ptr %.sink47.i, ptr %i.b, align 8, !noalias !2492
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink.i, ptr %i.q, align 8, !noalias !2492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2492
  store ptr %i.b, ptr %i.a, align 8, !noalias !2492
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !2492
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.r, align 8, !noalias !2492
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !2492
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @202, ptr noundef nonnull %i.a) #43, !noalias !2489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2492
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command15get_matches_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(712) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %.sroa.4.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.4.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  %.sroa.09.0.copyload.i.i = load ptr, ptr %i.i, align 8, !alias.scope !2507, !noalias !2511 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2507, !noalias !2511, !nonnull !13, !noundef !13 ; 5 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.510.0.copyload.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !2507, !noalias !2511 ; 4 uses
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.611.0.copyload.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !alias.scope !2507, !noalias !2511, !nonnull !13, !noundef !13 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2512
  %i.k = icmp eq ptr %.sroa.4.0.copyload.i.i, %.sroa.611.0.copyload.i.i
  br i1 %i.k, label %bb.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i.i, align 8, !noalias !2519 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i, i64 16, i1 false), !noalias !2512
  %i.m = ptrtoint ptr %.sroa.611.0.copyload.i.i to i64 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub nuw i64 %i.m, %i.n                   ; 2 uses
  %i.p = udiv exact i64 %i.o, 24
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.p, i64 3) ; 2 uses
  %..i.i.i.i.i = add nuw nsw i64 %i.q, 1          ; 2 uses
  %i.r = mul i64 %..i.i.i.i.i, 24                 ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.o, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i, label %bb.d, label %bb.c, !prof !321

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2527
  %i.t = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.r, i64 noundef range(i64 1, 9) 8) #43, !noalias !2527 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.b ]
  %.sroa.10.0.ph.i.i.i.i.i = phi i64 [ %i.r, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ undef, %bb.b ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i) #46, !noalias !2512
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.c
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %..i.i.i.i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.t, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ] ; 4 uses
  %i.v = icmp samesign ult i64 %i.q, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.v)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i, align 8, !noalias !2512
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i, i64 16, i1 false), !noalias !2512
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !2512
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2512
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !2512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  %i.w = icmp eq ptr %i.l, %.sroa.611.0.copyload.i.i
  br i1 %i.w, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %bb.h
  %i.x = phi ptr [ %i.ap, %bb.h ], [ %.sroa.10.0.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ]
  %i.y = phi i64 [ %i.ar, %bb.h ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 6 uses
  %.val1011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %i.l, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %.val1011.i.i.i.i.i.i, align 8, !noalias !2536 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !2546
  %i.aa = icmp samesign ult i64 %i.y, 384307168202282326
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %i.e, align 8, !range !14, !alias.scope !2547, !noalias !2548, !noundef !13
  %i.ac = icmp eq i64 %i.y, %i.ab
  br i1 %i.ac, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i, label %bb.h

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i: ; preds = %bb.h, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i
  %.sroa.6.0.copyload512.i.i = phi i64 [ %i.ar, %bb.h ], [ %i.y, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i ]
  %.pre18.i.i.i.i = ptrtoint ptr %i.z to i64
  %.pre19.i.i.i.i = sub nuw i64 %i.m, %.pre18.i.i.i.i
  %.pre21.i.i.i.i = udiv exact i64 %.pre19.i.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %.sroa.6.0.copyload5.i.i = phi i64 [ %.sroa.6.0.copyload512.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ]
  %.pre-phi22.i.i.i.i = phi i64 [ %.pre21.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i ], [ %i.l, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  %i.ad = icmp eq ptr %.sroa.611.0.copyload.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !range !14, !alias.scope !2555, !noalias !2556, !noundef !13 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !2555, !noalias !2556, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !2567
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = icmp eq i64 %i.af, %.pre-phi22.i.i.i.i
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i
  %i.aj = icmp eq i64 %.sroa.510.0.copyload.i.i, 0
  br i1 %i.aj, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i) ]
  %i.ak = mul nuw i64 %.sroa.510.0.copyload.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !2556
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.al = ptrtoint ptr %i.z to i64
  %i.am = sub nuw i64 %i.m, %i.al
  %i.an = udiv exact i64 %i.am, 24
  %i.ao = add nuw nsw i64 %i.an, 1
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.y, i64 noundef %i.ao, i64 noundef 8, i64 noundef 24) #43, !noalias !2548
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2547, !noalias !2548
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i, %bb.e
  %i.ap = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.y ; 2 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %i.aq, align 8, !noalias !2546
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i, i64 16, i1 false), !noalias !2546
  %i.ar = add nuw nsw i64 %i.y, 1                 ; 3 uses
  store i64 %i.ar, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2547, !noalias !2548
  %i.as = icmp eq ptr %i.z, %.sroa.611.0.copyload.i.i
  br i1 %i.as, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.e, align 8, !noalias !2568
  %.sroa.5.0.copyload3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2512
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsfu0rQaTkGUu_12clap_builder.exit.i

bb.i:                                             ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %bb.a
  %.val.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2512
  %i.at = ptrtoint ptr %.sroa.611.0.copyload.i.i to i64
  %i.au = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.av = sub nuw i64 %i.at, %i.au
  %i.aw = udiv exact i64 %i.av, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2569)
  %i.ax = icmp eq ptr %.sroa.611.0.copyload.i.i, %.val.i.i.i.i.i.i.i.i.i
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.az = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2572)
  %.val.i.i.i.i.i.i.i3.i.i.i.i = load i64, ptr %i.ay, align 8, !range !14, !alias.scope !2575, !noalias !2576, !noundef !13 ; 2 uses
  %i.ba = icmp eq i64 %.val.i.i.i.i.i.i.i3.i.i.i.i, 0
  br i1 %i.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !2575, !noalias !2576, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i3.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !2587
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bc = icmp eq i64 %i.az, %i.aw
  br i1 %i.bc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.bd = icmp eq i64 %.sroa.510.0.copyload.i.i, 0
  br i1 %i.bd, label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i) ]
  %i.be = mul nuw i64 %.sroa.510.0.copyload.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !2576
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsfu0rQaTkGUu_12clap_builder.exit.i

_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %.sroa.6.0.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.6.0.copyload5.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %.sroa.5.0.copyload3.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.k ], [ %.sroa.0.0.copyload1.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  store i64 %.sroa.0.0.i.i, ptr %i.h, align 8, !alias.scope !2502, !noalias !2588
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2502, !noalias !2588
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 9 uses
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2502, !noalias !2588
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 700
  %.val51.i = load i32, ptr %i.bf, align 4, !alias.scope !2495, !noalias !2589, !noundef !13 ; 2 uses
  %i.bg = and i32 %.val51.i, 2048
  %.not101.i = icmp eq i32 %i.bg, 0
  br i1 %.not101.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsfu0rQaTkGUu_12clap_builder.exit.i
  %.not.i = icmp eq i64 %.sroa.6.0.i.i, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.l, %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsfu0rQaTkGUu_12clap_builder.exit.i
  %i.bh = phi i64 [ 0, %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsfu0rQaTkGUu_12clap_builder.exit.i ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.l ] ; 5 uses
  %i.bi = and i32 %.val51.i, 67108864
  %.not102.i = icmp eq i32 %i.bi, 0
  br i1 %.not102.i, label %bb.ap, label %bb.as

bb.n:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !2500, !nonnull !13, !noundef !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !2500, !noundef !13
  %i.bn = tail call { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm) #43, !noalias !2500 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 2 uses
  %.not41.i = icmp eq ptr %i.bo, null
  br i1 %.not41.i, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2590
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bp) #43, !noalias !2500
  %i.bq = load i64, ptr %i.d, align 8, !range !142, !noalias !2590, !noundef !13
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !2590, !nonnull !13
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !2590 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2590
  br i1 %i.br, label %bb.m, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2500
  %.not.i.i = icmp slt i64 %i.bv, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !321

bb.q:                                             ; preds = %bb.p
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread84.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.q
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2593
  %i.bx = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bv, i64 noundef range(i64 1, 9) 1) #43, !noalias !2593 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.r, label %bb.ao

bb.r:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.p
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.p ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.bv) #46, !noalias !2500
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread84.i: ; preds = %bb.ao, %bb.q
  %i.bz = phi ptr [ %i.bx, %bb.ao ], [ inttoptr (i64 1 to ptr), %bb.q ] ; 2 uses
  store i64 %i.bv, ptr %i.g, align 8, !noalias !2500
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.bz, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !2500
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %i.bv, ptr %.sroa.624.0..sroa_idx.i, align 8, !noalias !2500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  %i.ca = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2610, !noalias !2611, !noundef !13 ; 6 uses
  %i.cb = icmp ult i64 %i.ca, 384307168202282326
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %bb.s, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsfu0rQaTkGUu_12clap_builder.exit.i.i, !prof !269

bb.s:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread84.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef range(i64 0, 384307168202282326) 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @301) #44, !noalias !2613
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread84.i
  %i.cd = ptrtoint ptr %i.g to i64
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2610, !noalias !2611
  %i.ce = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2610, !noalias !2611, !nonnull !13, !noundef !13 ; 3 uses
  %i.cf = add nsw i64 %i.ca, -1                   ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2600, !noalias !2616
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 7 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !2600, !noalias !2616
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.cf, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !2600, !noalias !2616
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  store i64 0, ptr %i.cg, align 8, !alias.scope !2617, !noalias !2618
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 1, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !2617, !noalias !2618
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.cd, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !2617, !noalias !2618
  call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !2625, !noalias !2599
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2625, !noalias !2599
  %i.ch = icmp eq i64 %i.ca, 1
  br i1 %i.ch, label %bb.t, label %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

bb.t:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsfu0rQaTkGUu_12clap_builder.exit.i.i
  call fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 dereferenceable(24) %i.cg) #43, !noalias !2500
  br label %_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

bb.u:                                             ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.thread6.peel.i37.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2626
  br label %bb.w

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2626
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2633
  %i.ci = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #43, !noalias !2633 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 24) #46, !noalias !2636
  unreachable

_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsfu0rQaTkGUu_12clap_builder.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  %i.ck = load i64, ptr %i.h, align 8, !range !14, !alias.scope !2596, !noalias !2640, !noundef !13
  %i.cl = icmp eq i64 %i.ck, %i.ca
  br i1 %i.cl, label %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.thread.i, !prof !269

_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.thread.i: ; preds = %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.co = mul nuw nsw i64 %i.cf, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.cm, i64 %i.co, i1 false), !noalias !2640
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !2641, !noalias !2599
  br label %.lr.ph.i29.i.i.i.i

_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ca, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43, !noalias !2640
  %.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2596, !noalias !2640 ; 3 uses
  %.pre.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2596, !noalias !2642 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 48
  %i.cr = mul nuw nsw i64 %i.cf, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr nonnull align 8 %i.cp, i64 %i.cr, i1 false), !noalias !2640
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !2641, !noalias !2599
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  %.not19.i27.i.i.not.not.i.i = icmp ugt i64 %.pre.i, 1
  br i1 %.not19.i27.i.i.not.not.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i, label %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge

_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge: ; preds = %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %.val.i.peel.i32.i.i.i.i.pre = load ptr, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !2646, !noalias !2649
  %.val2.i.peel.i33.i.i.i.i.pre = load i64, ptr %.sroa.624.0..sroa_idx.i, align 8, !alias.scope !2646, !noalias !2649
  br label %.lr.ph.i29.i.i.i.i

.lr.ph.i29.i.i.i.i:                               ; preds = %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.thread.i
  %.val2.i.peel.i33.i.i.i.i = phi i64 [ %i.bv, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.thread.i ], [ %.val2.i.peel.i33.i.i.i.i.pre, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge ] ; 7 uses
  %.val.i.peel.i32.i.i.i.i = phi ptr [ %i.bz, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.thread.i ], [ %.val.i.peel.i32.i.i.i.i.pre, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge ]
  %i.cs = phi ptr [ %i.ce, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.thread.i ], [ %.pre.i.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge ]
  %i.ct = phi i64 [ 1, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.thread.i ], [ %.pre.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  store i64 1, ptr %i.cg, align 8, !alias.scope !2657, !noalias !2662
  %i.cu = icmp eq i64 %.val2.i.peel.i33.i.i.i.i, 0
  br i1 %i.cu, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.thread6.peel.i37.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.peel.i34.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.peel.i34.i.i.i.i: ; preds = %.lr.ph.i29.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2663
  %i.cv = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.peel.i33.i.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !2663 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.loopexit.i44.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.peel.i35.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.peel.i35.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.peel.i34.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull readonly align 1 %.val.i.peel.i32.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.peel.i33.i.i.i.i, i1 false), !noalias !2678
  %.not.peel.i36.i.i.i.i = icmp eq i64 %.val2.i.peel.i33.i.i.i.i, -1
  br i1 %.not.peel.i36.i.i.i.i, label %_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.thread6.peel.i37.i.i.i_crit_edge.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.thread6.peel.i37.i.i.i_crit_edge.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.peel.i35.i.i.i.i
  %.pre107.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2596, !noalias !2642
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.thread6.peel.i37.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.thread6.peel.i37.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.thread6.peel.i37.i.i.i_crit_edge.i, %.lr.ph.i29.i.i.i.i
  %i.cx = phi ptr [ %.pre107.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.thread6.peel.i37.i.i.i_crit_edge.i ], [ %i.cs, %.lr.ph.i29.i.i.i.i ]
  %.sroa.7.112.peel.i38.i.i.i.i = phi ptr [ %i.cv, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.thread6.peel.i37.i.i.i_crit_edge.i ], [ inttoptr (i64 1 to ptr), %.lr.ph.i29.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.ct ; 3 uses
  store i64 %.val2.i.peel.i33.i.i.i.i, ptr %i.cy, align 8, !noalias !2642
  %.sroa.4.0..sroa_idx.peel.i39.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %.sroa.7.112.peel.i38.i.i.i.i, ptr %.sroa.4.0..sroa_idx.peel.i39.i.i.i.i, align 8, !noalias !2642
  %.sroa.5.0..sroa_idx.peel.i40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 %.val2.i.peel.i33.i.i.i.i, ptr %.sroa.5.0..sroa_idx.peel.i40.i.i.i.i, align 8, !noalias !2642
  %i.cz = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2596, !noalias !2642, !noundef !13
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2596, !noalias !2642
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBT_:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !6195, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6195
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !6195
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !6195
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8grow_oneBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6198)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6198
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !6198
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8) #43, !noalias !6198
  %i.f = load i64, ptr %i.a, align 8, !range !142, !noalias !6198, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1159, !noalias !6198, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !6198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6198
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !6198, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6198
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !6198
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !6198
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE8grow_oneBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6201)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6201
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !6201
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8) #43, !noalias !6201
  %i.f = load i64, ptr %i.a, align 8, !range !142, !noalias !6201, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1159, !noalias !6201, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !6201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6201
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !6201, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6201
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !6201
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !6201
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6204)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6204
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !6204
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16) #43, !noalias !6204
  %i.f = load i64, ptr %i.a, align 8, !range !142, !noalias !6204, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1159, !noalias !6204, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !6204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6204
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !6204, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6204
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !6204
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !6204
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6207)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6207
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !6207
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32) #43, !noalias !6207
  %i.f = load i64, ptr %i.a, align 8, !range !142, !noalias !6207, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1159, !noalias !6207, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !6207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6207
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !6207, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6207
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !6207
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !6207
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6210)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6210
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !6210
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8) #43, !noalias !6210
  %i.f = load i64, ptr %i.a, align 8, !range !142, !noalias !6210, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !1159, !noalias !6210, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !6210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6210
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !6210, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6210
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !6210
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !6210
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder5errorNtB5_7Message6format(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 16 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.k = load i64, ptr %0, align 8, !range !142, !noundef !13
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit_crit_edge, label %bb.d

._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit_crit_edge: ; preds = %bb.a
  %.pre = load i64, ptr %2, align 8, !range !127, !alias.scope !6213
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit_crit_edge, %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error7MessageEBF_.exit
  %i.m = phi i64 [ %.pre, %._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit_crit_edge ], [ %i.au, %bb.p ], [ %i.au, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error7MessageEBF_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6213)
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !6216)
  call void @llvm.experimental.noalias.scope.decl(metadata !6219)
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !6222, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !6222
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !6223, !noalias !6226 ; 2 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !6223, !noalias !6226
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.r, align 8, !alias.scope !6228, !noalias !6230
  store i64 1, ptr %i.r, align 8, !alias.scope !6228, !noalias !6230
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.2.i.i = load i64, ptr %i.s, align 8, !alias.scope !6232, !noalias !6234 ; 5 uses
  store i64 0, ptr %i.s, align 8, !alias.scope !6232, !noalias !6234
  %i.t = inttoptr i64 %.sroa.0.0.copyload.i.i.i.1.i.i to ptr ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6239)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !6242, !nonnull !13, !noundef !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !6242, !noundef !13 ; 2 uses
  %.idx = shl nuw nsw i64 %i.x, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i22, i64 16 ; 2 uses
  %i.ab = add i64 %.sroa.8.0.i.i21, 1
  %i.ac = icmp eq ptr %i.aa, %i.y
  br i1 %i.ac, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.01.i.i22 = phi ptr [ %i.aa, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %.sroa.8.0.i.i21 = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.01.i.i22, align 8, !noalias !6242
  %i.ad = icmp eq i128 %.val.i.i, -100310019091698447603793328749864812255
  br i1 %i.ad, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !6242, !noundef !13 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.8.0.i.i21, %i.af
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i21, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !6242
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !6242, !nonnull !13, !noundef !13
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %.sroa.8.0.i.i21 ; 2 uses
  %.val5.i = load ptr, ptr %i.aj, align 8, !noalias !6236, !nonnull !13, !noundef !13
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val6.i = load ptr, ptr %i.ak, align 8, !noalias !6236, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !240, !invariant.load !13, !noalias !6236
  %i.an = add nsw i64 %i.am, -1
  %i.ao = and i64 %i.an, -16
  %i.ap = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6236
  %i.ar = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !13, !noalias !6236, !nonnull !13
  call void %i.as(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull %i.aq) #45, !noalias !6236, !inline_history !1422
  %i.at = load i128, ptr %i.j, align 16, !noalias !6236, !noundef !13
  %.not.i = icmp eq i128 %i.at, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6236
  br i1 %.not.i, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, label %bb.i, !prof !159

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !6236
  unreachable

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit: ; preds = %bb.e, %bb.d, %bb.h
  %.sroa.0.0.i = phi ptr [ %i.aq, %bb.h ], [ null, %bb.d ], [ null, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, ptr @99, ptr %.sroa.0.0.i ; 2 uses
  %i.au = load i64, ptr %2, align 8, !range !127, !noundef !13 ; 3 uses
  %.not7 = icmp eq i64 %i.au, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !6243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6246
  store i64 0, ptr %i.i, align 8, !noalias !6246
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !6246
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 11 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !6246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6251
  %i.av = getelementptr inbounds nuw i8, ptr %., i64 14
  store ptr %i.av, ptr %i.f, align 8, !noalias !6251
  store ptr %i.f, ptr %i.g, align 8, !noalias !6251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6251
  store ptr %i.g, ptr %i.e, align 8, !noalias !6251
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6251
  %i.aw = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @266, ptr noundef nonnull %i.e) #43, !noalias !6255 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6251
  call void @llvm.experimental.noalias.scope.decl(metadata !6256)
  call void @llvm.experimental.noalias.scope.decl(metadata !6259)
  %i.ax = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6262, !noalias !6265, !noundef !13 ; 5 uses
  %i.ay = load i64, ptr %i.i, align 8, !range !14, !alias.scope !6262, !noalias !6265, !noundef !13
  %i.az = sub i64 %i.ay, %i.ax
  %i.ba = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.2.i.i, %i.az
  br i1 %i.ba, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ax, i64 noundef %.sroa.0.0.copyload.i.i.i.2.i.i, i64 noundef 1, i64 noundef 1) #43, !noalias !6267
  %i.bb = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6268, !noalias !6265, !noundef !13 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  call void @llvm.assume(i1 %i.bc)
  br label %bb.j

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit
  %i.bd = icmp sgt i64 %i.ax, -1
  call void @llvm.assume(i1 %i.bd)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i
  %i.be = phi i64 [ %i.bb, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i ], [ %i.ax, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %i.bf = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !6268, !noalias !6265, !nonnull !13, !noundef !13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.t, i64 %.sroa.0.0.copyload.i.i.i.2.i.i, i1 false), !noalias !6269
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i: ; preds = %bb.j, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.bh = phi i64 [ %i.be, %bb.j ], [ %i.ax, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.bi = add i64 %i.bh, %.sroa.0.0.copyload.i.i.i.2.i.i ; 5 uses
  store i64 %i.bi, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6268, !noalias !6265
  br i1 %.not7, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val16.i = load ptr, ptr %i.bj, align 8, !alias.scope !6243, !noalias !6270 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val17.i = load i64, ptr %i.bk, align 8, !alias.scope !6243, !noalias !6270 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6271)
  call void @llvm.experimental.noalias.scope.decl(metadata !6274)
  call void @llvm.experimental.noalias.scope.decl(metadata !6277)
  %i.bl = load i64, ptr %i.i, align 8, !range !14, !alias.scope !6280, !noalias !6283, !noundef !13 ; 2 uses
  %i.bm = sub i64 %i.bl, %i.bi
  %i.bn = icmp ult i64 %i.bm, 2
  br i1 %i.bn, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i: ; preds = %bb.k
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bi, i64 noundef 2, i64 noundef 1, i64 noundef 1) #43, !noalias !6285
  %i.bo = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6286, !noalias !6283, !noundef !13 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  call void @llvm.assume(i1 %i.bp)
  %.pre.i.i = load i64, ptr %i.i, align 8, !range !14, !alias.scope !6287, !noalias !6246
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.k
  %i.bq = icmp sgt i64 %i.bi, -1
  call void @llvm.assume(i1 %i.bq)
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i
  %i.br = phi i64 [ %.pre.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i ], [ %i.bl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ]
  %i.bs = phi i64 [ %i.bo, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i ], [ %i.bi, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 2 uses
  %i.bt = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !6286, !noalias !6283, !nonnull !13, !noundef !13 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i16 2570, ptr %i.bu, align 1, !noalias !6294
  %i.bv = add nuw i64 %i.bs, 2                    ; 6 uses
  store i64 %i.bv, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6286, !noalias !6283
  call void @llvm.experimental.noalias.scope.decl(metadata !6295)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6296)
  %i.bw = sub i64 %i.br, %i.bv
  %i.bx = icmp ugt i64 %.val17.i, %i.bw
  br i1 %i.bx, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i3.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i2.i.i, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i3.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bv, i64 noundef %.val17.i, i64 noundef 1, i64 noundef 1) #43, !noalias !6255
  %i.by = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6297, !noalias !6246, !noundef !13 ; 2 uses
  %i.bz = icmp sgt i64 %i.by, -1
  call void @llvm.assume(i1 %i.bz)
  %.pre1.i.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !6297, !noalias !6246
  br label %bb.l

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i2.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.i
  %i.ca = icmp sgt i64 %i.bv, -1
  call void @llvm.assume(i1 %i.ca)
  %.not.i.i.i.i = icmp eq i64 %.val17.i, 0
  br i1 %.not.i.i.i.i, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format9put_usage.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i2.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i3.i.i
  %i.cb = phi ptr [ %.pre1.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i3.i.i ], [ %i.bt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i2.i.i ]
  %i.cc = phi i64 [ %i.by, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i3.i.i ], [ %i.bv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i2.i.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr nonnull readonly align 1 %.val16.i, i64 %.val17.i, i1 false), !noalias !6298
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format9put_usage.exit.i

_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format9put_usage.exit.i: ; preds = %bb.l, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i2.i.i
  %i.ce = phi i64 [ %i.cc, %bb.l ], [ %i.bv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i2.i.i ]
  %i.cf = add i64 %i.ce, %.val17.i
  store i64 %i.cf, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6297, !noalias !6246
  br label %bb.m

bb.m:                                             ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format9put_usage.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6246
  call void @_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format13get_help_flag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) dereferenceable_or_null(712) %1) #43, !noalias !6299
  %i.cg = load i64, ptr %i.h, align 8, !range !612, !noalias !6246, !noundef !13 ; 3 uses
  %cond.i = icmp eq i64 %i.cg, -2
  br i1 %cond.i, label %bb.n, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format8try_help.exit.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !6300)
  call void @llvm.experimental.noalias.scope.decl(metadata !6303)
  call void @llvm.experimental.noalias.scope.decl(metadata !6306)
  %i.ch = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6309, !noalias !6312, !noundef !13 ; 3 uses
  %i.ci = load i64, ptr %i.i, align 8, !range !14, !alias.scope !6309, !noalias !6312, !noundef !13
  %i.cj = icmp eq i64 %i.ci, %i.ch
  br i1 %i.cj, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i19.i, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format8try_help.exit.thread.i, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i19.i: ; preds = %bb.n
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ch, i64 noundef 1, i64 noundef 1, i64 noundef 1) #43, !noalias !6316
  %i.ck = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6317, !noalias !6312, !noundef !13
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format8try_help.exit.thread.i

_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format8try_help.exit.thread.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i19.i, %bb.n
  %.sink22.i.i = phi i64 [ %i.ck, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i19.i ], [ %i.ch, %bb.n ] ; 3 uses
  %i.cl = icmp sgt i64 %.sink22.i.i, -1
  call void @llvm.assume(i1 %i.cl)
  %i.cm = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !6317, !noalias !6312, !nonnull !13, !noundef !13
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sink22.i.i
  store i8 10, ptr %i.cn, align 1, !noalias !6318
  %i.co = add nuw i64 %.sink22.i.i, 1
  store i64 %i.co, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6317, !noalias !6312
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error7MessageEBF_.exit

_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format8try_help.exit.i: ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !6246, !nonnull !13, !noundef !13 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !6246, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6319
  store ptr %i.cq, ptr %i.d, align 8, !noalias !6319, !captures !354
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !6319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6319
  %i.cu = getelementptr inbounds nuw i8, ptr %., i64 42
  store ptr %i.cu, ptr %i.b, align 8, !noalias !6319
  store ptr %i.b, ptr %i.c, align 8, !noalias !6319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6319
  store ptr %i.c, ptr %i.a, align 8, !noalias !6319
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !6319
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.cv, align 8, !noalias !6319
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !6319
  %i.cw = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @298, ptr noundef nonnull %i.a) #43, !noalias !6255 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6319
  %i.cx = icmp sgt i64 %i.cg, 0
  br i1 %i.cx, label %bb.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error7MessageEBF_.exit

bb.o:                                             ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format8try_help.exit.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cq, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !6320
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error7MessageEBF_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error7MessageEBF_.exit: ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format8try_help.exit.thread.i, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format8try_help.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6246
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6246
  store i64 1, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.cy = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %i.cy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error7MessageEBF_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !6323
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder5errorNtB5_7Message9formatted(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(126) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = load i64, ptr %1, align 8, !range !142, !noundef !13
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6326
  store i64 0, ptr %i.d, align 8, !noalias !6326
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !6326
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !6326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6333
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 14
  store ptr %i.m, ptr %i.b, align 8, !noalias !6333
  store ptr %i.b, ptr %i.c, align 8, !noalias !6333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6333
  store ptr %i.c, ptr %i.a, align 8, !noalias !6333
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6333
  %i.n = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @266, ptr noundef nonnull %i.a) #43, !noalias !6337 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6333
  call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  call void @llvm.experimental.noalias.scope.decl(metadata !6341)
  %i.o = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6344, !noalias !6347, !noundef !13 ; 5 uses
  %i.p = load i64, ptr %i.d, align 8, !range !14, !alias.scope !6344, !noalias !6347, !noundef !13
  %i.q = sub i64 %i.p, %i.o
  %i.r = icmp ugt i64 %i.l, %i.q
  br i1 %i.r, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i: ; preds = %bb.c
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.o, i64 noundef %i.l, i64 noundef 1, i64 noundef 1) #43, !noalias !6349
  %i.s = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6350, !noalias !6347, !noundef !13 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  br label %bb.d

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.c
  %i.u = icmp sgt i64 %i.o, -1
  call void @llvm.assume(i1 %i.u)
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format20format_error_message.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i
  %i.v = phi i64 [ %i.s, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i ], [ %i.o, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !6350, !noalias !6347, !nonnull !13, !noundef !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %i.j, i64 %i.l, i1 false), !noalias !6351
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format20format_error_message.exit

_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format20format_error_message.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.d
  %i.y = phi i64 [ %i.v, %bb.d ], [ %i.o, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.z = add i64 %i.y, %i.l
  store i64 %i.z, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !6350, !noalias !6347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6326
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format20format_error_message.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap14remove_by_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([600 x i8]) align 8 captures(none) dereferenceable(600) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [592 x i8], align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !13 ; 6 uses
  %.idx = mul nuw nsw i64 %i.d, 600
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.thread.i
  %.sroa.02.010.i = phi i64 [ %i.m, %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.thread.i ], [ 0, %bb.a ] ; 5 uses
  %i.g = phi ptr [ %i.h, %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.thread.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 600 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 544
  %.val7.i = load i64, ptr %i.i, align 8, !noalias !6352, !noundef !13
  %i.j = icmp eq i64 %.val7.i, %3
  br i1 %i.j, label %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.i, label %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.thread.i

_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.i: ; preds = %.lr.ph.i
  %i.k = getelementptr i8, ptr %i.g, i64 536
  %.val6.i = load ptr, ptr %i.k, align 8, !noalias !6352, !nonnull !13, !noundef !13
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val6.i, ptr nonnull %2, i64 %3), !noalias !6352
  %i.l = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.l, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10try_removeBK_.exit.i, label %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.thread.i

_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.thread.i: ; preds = %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.i, %.lr.ph.i
  %i.m = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.n = icmp eq ptr %i.h, %i.e
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10try_removeBK_.exit.i: ; preds = %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.i
  %i.o = icmp samesign ult i64 %.sroa.02.010.i, %i.d
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6356)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6359)
  %i.p = icmp ult i64 %i.d, 15372286728091294
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [600 x i8], ptr %i.b, i64 %.sroa.02.010.i ; 4 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %i.q, align 8, !noalias !6362 ; 2 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.6.0..sroa_idx2.i, i64 592, i1 false), !noalias !6362
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 600
  %i.s = xor i64 %.sroa.02.010.i, -1
  %i.t = add nsw i64 %i.d, %i.s
  %i.u = mul nuw nsw i64 %i.t, 600
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.r, i64 %i.u, i1 false), !noalias !6364
  %i.v = add nsw i64 %i.d, -1                     ; 2 uses
  store i64 %i.v, ptr %i.c, align 8, !alias.scope !6366, !noalias !6367
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, 2
  br i1 %.not.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10try_removeBK_.exit.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6removeBK_.exit, !prof !1893

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10try_removeBK_.exit.thread.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10try_removeBK_.exit.i
  tail call void @_RNvNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.010.i, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #44, !noalias !6368
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6removeBK_.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10try_removeBK_.exit.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.6.i, i64 592, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.thread.i, %bb.a, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6removeBK_.exit
  %storemerge = phi i64 [ %.sroa.0.0.copyload1.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6removeBK_.exit ], [ 2, %bb.a ], [ 2, %_RNCNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB7_7MKeyMap14remove_by_name0B9_.exit.thread.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap4push(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(600) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6369)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6369, !noalias !6372, !noundef !13 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !14, !alias.scope !6369, !noalias !6372, !noundef !13
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBL_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #42, !noalias !6372
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBL_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE8push_mutBL_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !6369, !noalias !6372, !nonnull !13, !noundef !13
  %i.g = getelementptr inbounds nuw [600 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(600) %1, i64 600, i1 false), !noalias !6369
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !6369, !noalias !6372
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 713) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !321
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !321

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15match_arg_error:bb.a
  %.val.i.i.i4.i.i.i = load i64, ptr %i.u, align 8, !range !14, !alias.scope !8393, !noalias !8369, !noundef !13 ; 2 uses
  %i.tn = icmp eq i64 %.val.i.i.i4.i.i.i, 0
  br i1 %i.tn, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i5.i, i64 noundef %.val.i.i.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8394
  %.sroa.514.0.copyload.pre.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !8395
  br label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i

_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i: ; preds = %bb.cf, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit.i.i.i.i
  %.sroa.514.0.copyload.i.i.i = phi i64 [ %i.tm, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit.i.i.i.i ], [ %.sroa.514.0.copyload.pre.i.i.i, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !8369
  %.sroa.012.0.copyload.i.i.i = load i64, ptr %i.z, align 8, !noalias !8395 ; 2 uses
  %.sroa.413.0.copyload.i.i.i = load ptr, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !8395, !nonnull !13, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8369
  br label %bb.cg

bb.cg:                                            ; preds = %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i
  %.sroa.015.0.i.i.i = phi ptr [ %.sroa.413.0.copyload.i.i.i, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i ], [ %i.uz, %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.514.0.copyload.i.i.i, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i ], [ %i.uy, %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i ] ; 5 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 %.sroa.6.0.i.i.i ; 2 uses
  %i.tp = icmp samesign eq i64 %.sroa.6.0.i.i.i, 0
  br i1 %i.tp, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %.lr.ph.i.i3.i.i.i

.lr.ph.i.i3.i.i.i:                                ; preds = %bb.cg, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.tq = phi ptr [ %i.tt, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ %.sroa.015.0.i.i.i, %bb.cg ] ; 2 uses
  %i.tr = phi i8 [ %spec.select.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 12, %bb.cg ] ; 2 uses
  %i.ts = phi i64 [ %i.uf, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 0, %bb.cg ] ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 1 ; 2 uses
  %.val7.i.i.i.i.i = load i8, ptr %i.tq, align 1, !noalias !8396, !noundef !13 ; 3 uses
  %i.tu = zext i8 %.val7.i.i.i.i.i to i64         ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr @262, i64 %i.tu
  %i.tw = load i8, ptr %i.tv, align 1, !noalias !8396, !noundef !13 ; 2 uses
  %i.tx = icmp eq i8 %i.tw, 0
  br i1 %i.tx, label %bb.ch, label %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %.lr.ph.i.i3.i.i.i
  %i.ty = zext nneg i8 %i.tr to i64
  %i.tz = getelementptr inbounds nuw [256 x i8], ptr @262, i64 %i.ty
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.tu
  %i.ub = load i8, ptr %i.ua, align 1, !noalias !8396, !noundef !13
  br label %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i

_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ch, %.lr.ph.i.i3.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ub, %bb.ch ], [ %i.tw, %.lr.ph.i.i3.i.i.i ] ; 2 uses
  %i.uc = and i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 15 ; 2 uses
  %i.ud = lshr i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.uc, 0
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i8 %i.tr, i8 %i.uc
  switch i8 %i.ud, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i [
    i8 12, label %bb.ci
    i8 15, label %bb.ck
    i8 5, label %bb.cj
  ]

bb.ci:                                            ; preds = %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i
  %i.ue = icmp eq i8 %.val7.i.i.i.i.i, 127
  br i1 %i.ue, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %bb.ck

bb.cj:                                            ; preds = %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i
  switch i8 %.val7.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i [
    i8 9, label %bb.ck
    i8 10, label %bb.ck
    i8 12, label %bb.ck
    i8 13, label %bb.ck
    i8 32, label %bb.ck
  ]

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %bb.cj, %bb.ci, %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i
  %i.uf = add nuw i64 %i.ts, 1
  %i.ug = icmp eq ptr %i.tt, %i.to
  br i1 %i.ug, label %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i, label %.lr.ph.i.i3.i.i.i

bb.ck:                                            ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.ci, %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp ugt i64 %i.ts, %.sroa.6.0.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.cl, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, !prof !5813

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #44, !noalias !8406
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.ck, %bb.cg
  %.sroa.02.045.i.i.i.i = phi i64 [ %i.ts, %bb.ck ], [ 0, %bb.cg ] ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 %.sroa.02.045.i.i.i.i ; 3 uses
  %i.ui = sub nuw nsw i64 %.sroa.6.0.i.i.i, %.sroa.02.045.i.i.i.i ; 3 uses
  %i.uj = icmp samesign eq i64 %.sroa.02.045.i.i.i.i, %.sroa.6.0.i.i.i
  br i1 %i.uj, label %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i

.lr.ph.i17.i.i.i.i:                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.uk = phi ptr [ %i.um, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ %i.uh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 2 uses
  %i.ul = phi i64 [ %i.uv, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 1 ; 2 uses
  %.val6.i.i.i.i.i = load i8, ptr %i.uk, align 1, !noalias !8410, !noundef !13 ; 4 uses
  %i.un = zext i8 %.val6.i.i.i.i.i to i64         ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr @262, i64 %i.un
  %i.up = load i8, ptr %i.uo, align 1, !noalias !8410, !noundef !13 ; 2 uses
  %i.uq = icmp eq i8 %i.up, 0
  br i1 %i.uq, label %bb.cm, label %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i

bb.cm:                                            ; preds = %.lr.ph.i17.i.i.i.i
  %i.ur = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @262, i64 3072), i64 %i.un
  %i.us = load i8, ptr %i.ur, align 1, !noalias !8410, !noundef !13
  br label %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i

_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i: ; preds = %bb.cm, %.lr.ph.i17.i.i.i.i
  %.sroa.0.0.i.i.i.i.i19.i.i.i.i = phi i8 [ %i.us, %bb.cm ], [ %i.up, %.lr.ph.i17.i.i.i.i ]
  %i.ut = lshr i8 %.sroa.0.0.i.i.i.i.i19.i.i.i.i, 4
  switch i8 %i.ut, label %_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i [
    i8 12, label %bb.cn
    i8 15, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 5, label %bb.co
  ]

bb.cn:                                            ; preds = %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i
  %i.uu = icmp eq i8 %.val6.i.i.i.i.i, 127
  br i1 %i.uu, label %bb.cp, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

bb.co:                                            ; preds = %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i
  switch i8 %.val6.i.i.i.i.i, label %_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i [
    i8 9, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 10, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 12, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 13, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 32, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  ]

_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i: ; preds = %bb.co, %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = icmp sgt i8 %.val6.i.i.i.i.i, -65
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.cp, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i, %bb.co, %bb.co, %bb.co, %bb.co, %bb.co, %bb.cn, %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i
  %i.uv = add nuw i64 %i.ul, 1
  %i.uw = icmp eq ptr %i.um, %i.to
  br i1 %i.uw, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i, label %.lr.ph.i17.i.i.i.i

bb.cp:                                            ; preds = %_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i, %bb.cn
  %.not.i25.i.i.i.i = icmp ugt i64 %i.ul, %i.ui
  br i1 %.not.i25.i.i.i.i, label %bb.cq, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i, !prof !5822

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #44, !noalias !8414
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, %bb.cp
  %.sroa.05.054.i.i.i.i = phi i64 [ %i.ul, %bb.cp ], [ %i.ui, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.05.054.fr.i.i.i.i = freeze i64 %.sroa.05.054.i.i.i.i ; 4 uses
  %i.ux = icmp eq i64 %.sroa.05.054.fr.i.i.i.i, 0
  br i1 %i.ux, label %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i, label %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i

_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i
  %i.uy = sub nuw nsw i64 %i.ui, %.sroa.05.054.fr.i.i.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uh, i64 %.sroa.05.054.fr.i.i.i.i
  %i.va = call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uh, i64 noundef %.sroa.05.054.fr.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #43, !noalias !8418
  br i1 %i.va, label %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i, label %bb.cg

_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i: ; preds = %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %.not.not.not.not.i.not.not.not.i20.i.i.i = phi i1 [ false, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ true, %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i ]
  %i.vb = icmp eq i64 %.sroa.012.0.copyload.i.i.i, 0
  br i1 %i.vb, label %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.413.0.copyload.i.i.i, i64 noundef %.sroa.012.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8419
  br label %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i

_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i: ; preds = %bb.cr, %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8362
  br i1 %.not.not.not.not.i.not.not.not.i20.i.i.i, label %bb.cs, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i.i.i.i.i.i, !prof !269

bb.cs:                                            ; preds = %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !8358
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i
  %.sroa.0.0.copyload5.i.i.i = load i64, ptr %i.ad, align 8, !noalias !8424 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !8425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !8358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !8358
  %i.vc = icmp eq i64 %.sroa.0.0.copyload5.i.i.i, -1
  br i1 %i.vc, label %.backedge.i.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser15match_arg_error0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i
  %i.vd = icmp eq ptr %i.sg, %i.qi
  br i1 %i.vd, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB37_6parser6parserNtB3S_6Parser15match_arg_error0EE11spec_extendB37_.exit.i, label %.lr.ph.split.i.i.ithread-pre-split.i.i, !llvm.loop !8327

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser15match_arg_error0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i: ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i.i.i.i.i.i
  %i.ve = icmp samesign ult i64 %i.sb, 384307168202282326
  call void @llvm.assume(i1 %i.ve)
  %i.vf = load i64, ptr %i.ag, align 8, !range !14, !alias.scope !8426, !noalias !8427, !noundef !13
  %i.vg = icmp eq i64 %i.sb, %i.vf
  br i1 %i.vg, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.ct

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser15match_arg_error0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.sb, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43, !noalias !8427
  %.pre.i211 = load ptr, ptr %.sroa.4.0..sroa_idx.i207, align 8, !alias.scope !8426, !noalias !8427
  br label %bb.ct

bb.ct:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser15match_arg_error0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i
  %i.vh = phi ptr [ %.pre.i211, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.sa, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser15match_arg_error0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i ] ; 2 uses
  %i.vi = getelementptr inbounds nuw [24 x i8], ptr %i.vh, i64 %i.sb ; 2 uses
  store i64 %.sroa.0.0.copyload5.i.i.i, ptr %i.vi, align 8, !noalias !8425
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i, i64 16, i1 false), !noalias !8425
  %i.vj = add nuw nsw i64 %i.sb, 1                ; 2 uses
  store i64 %i.vj, ptr %.sroa.6.0..sroa_idx.i208, align 8, !alias.scope !8426, !noalias !8427
  %i.vk = icmp eq ptr %i.sg, %i.qi
  br i1 %i.vk, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB37_6parser6parserNtB3S_6Parser15match_arg_error0EE11spec_extendB37_.exit.i, label %.lr.ph.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB37_6parser6parserNtB3S_6Parser15match_arg_error0EE11spec_extendB37_.exit.i: ; preds = %bb.ct, %.lr.ph.i.i.i.i.i, %.backedge.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !8428
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser15match_arg_error0EE9from_iterB3q_.exit

.loopexit.i:                                      ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i205, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit83.thread197
  store i64 0, ptr %i.ca, align 8, !alias.scope !8297, !noalias !8428
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.vl, align 8, !alias.scope !8297, !noalias !8428
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 0, ptr %i.vm, align 8, !alias.scope !8297, !noalias !8428
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser15match_arg_error0EE9from_iterB3q_.exit

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser15match_arg_error0EE9from_iterB3q_.exit: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB37_6parser6parserNtB3S_6Parser15match_arg_error0EE11spec_extendB37_.exit.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8300
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.vn = load ptr, ptr %i.cy, align 8, !nonnull !13, !align !239, !noundef !13 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8429)
  call void @llvm.experimental.noalias.scope.decl(metadata !8432)
  call void @llvm.experimental.noalias.scope.decl(metadata !8434)
  call void @llvm.experimental.noalias.scope.decl(metadata !8437)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 232
  %i.vp = load ptr, ptr %i.vo, align 8, !alias.scope !8440, !noalias !8429, !nonnull !13, !noundef !13 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 240
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !8440, !noalias !8429, !noundef !13 ; 2 uses
  %.idx396 = shl nuw nsw i64 %i.vr, 4
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.idx396
  %i.vt = icmp eq i64 %i.vr, 0
  br i1 %i.vt, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit222, label %.lr.ph387

bb.cu:                                            ; preds = %.lr.ph387
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i213386, i64 16 ; 2 uses
  %i.vv = add i64 %.sroa.8.0.i.i.i212385, 1
  %i.vw = icmp eq ptr %i.vu, %i.vs
  br i1 %i.vw, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit222, label %.lr.ph387

.lr.ph387:                                        ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser15match_arg_error0EE9from_iterB3q_.exit, %bb.cu
  %.sroa.0.01.i.i.i213386 = phi ptr [ %i.vu, %bb.cu ], [ %i.vp, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser15match_arg_error0EE9from_iterB3q_.exit ] ; 2 uses
  %.sroa.8.0.i.i.i212385 = phi i64 [ %i.vv, %bb.cu ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser15match_arg_error0EE9from_iterB3q_.exit ] ; 4 uses
  %.val.i.i.i214 = load i128, ptr %.sroa.0.01.i.i.i213386, align 8, !noalias !8441
  %i.vx = icmp eq i128 %.val.i.i.i214, -100310019091698447603793328749864812255
  br i1 %i.vx, label %bb.cv, label %bb.cu

bb.cv:                                            ; preds = %.lr.ph387
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vn, i64 264
  %i.vz = load i64, ptr %i.vy, align 8, !alias.scope !8440, !noalias !8429, !noundef !13 ; 2 uses
  %i.wa = icmp ult i64 %.sroa.8.0.i.i.i212385, %i.vz
  br i1 %i.wa, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i212385, i64 noundef %i.vz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !8441
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vn, i64 256
  %i.wc = load ptr, ptr %i.wb, align 8, !alias.scope !8440, !noalias !8429, !nonnull !13, !noundef !13
  %i.wd = getelementptr inbounds nuw [32 x i8], ptr %i.wc, i64 %.sroa.8.0.i.i.i212385 ; 2 uses
  %.val5.i.i215 = load ptr, ptr %i.wd, align 8, !noalias !8442, !nonnull !13, !noundef !13
  %i.we = getelementptr i8, ptr %i.wd, i64 8
  %.val6.i.i216 = load ptr, ptr %i.we, align 8, !noalias !8442, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.val6.i.i216, i64 16
  %i.wg = load i64, ptr %i.wf, align 8, !range !240, !invariant.load !13, !noalias !8442
  %i.wh = add nsw i64 %i.wg, -1
  %i.wi = and i64 %i.wh, -16
  %i.wj = getelementptr inbounds nuw i8, ptr %.val5.i.i215, i64 %i.wi
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !8442
  %i.wl = getelementptr inbounds nuw i8, ptr %.val6.i.i216, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8, !invariant.load !13, !noalias !8442, !nonnull !13
  call void %i.wm(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noundef nonnull %i.wk) #45, !noalias !8442, !inline_history !345
  %i.wn = load i128, ptr %i.t, align 16, !noalias !8442, !noundef !13
  %.not.i.i217 = icmp eq i128 %i.wn, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8442
  br i1 %.not.i.i217, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit222, label %bb.cy, !prof !159

bb.cy:                                            ; preds = %bb.cx
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !8442
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit222: ; preds = %bb.cu, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser15match_arg_error0EE9from_iterB3q_.exit, %bb.cx
  %.sroa.0.0.i.i219 = phi ptr [ %i.wk, %bb.cx ], [ null, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser15match_arg_error0EE9from_iterB3q_.exit ], [ null, %bb.cu ] ; 2 uses
  %.not.i220 = icmp eq ptr %.sroa.0.0.i.i219, null
  %..i221 = select i1 %.not.i220, ptr @99, ptr %.sroa.0.0.i.i219 ; 5 uses
  store ptr %i.vn, ptr %i.by, align 8, !alias.scope !8429, !noalias !8432
  %i.wo = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %..i221, ptr %i.wo, align 8, !alias.scope !8429, !noalias !8432
  %i.wp = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr null, ptr %i.wp, align 8, !alias.scope !8429, !noalias !8432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8443
  store i64 0, ptr %i.s, align 8, !alias.scope !8448, !noalias !8443
  %.sroa.42.0..sroa_idx.i.i223 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i223, align 8, !alias.scope !8448, !noalias !8443
  %.sroa.53.0..sroa_idx.i.i224 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i224, align 8, !alias.scope !8448, !noalias !8443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8443
  %i.wq = getelementptr inbounds nuw i8, ptr %..i221, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.r, ptr noundef nonnull align 2 dereferenceable(14) %i.wq, i64 14, i1 false), !noalias !8443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8443
  %.sroa.0.0.copyload.i225 = load i8, ptr %i.wq, align 2, !noalias !8443
  %.sroa.7.0..sroa_idx.i226 = getelementptr inbounds nuw i8, ptr %..i221, i64 32
  %.sroa.7.0.copyload.i227 = load i8, ptr %.sroa.7.0..sroa_idx.i226, align 2, !noalias !8443
  %.sroa.11.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %..i221, i64 36
  %.sroa.11.0.copyload.i229 = load i8, ptr %.sroa.11.0..sroa_idx.i228, align 2, !noalias !8443
  %.sroa.15.0..sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %..i221, i64 40
  %.sroa.15.0.copyload.i231 = load i16, ptr %.sroa.15.0..sroa_idx.i230, align 2, !noalias !8443
  %.not.i.i232 = icmp eq i8 %.sroa.0.0.copyload.i225, -1
  %.not5.i.i233 = icmp eq i8 %.sroa.7.0.copyload.i227, -1
  %or.cond.i234 = select i1 %.not.i.i232, i1 %.not5.i.i233, i1 false
  %.not7.i.i235 = icmp eq i8 %.sroa.11.0.copyload.i229, -1
  %or.cond35.i236 = select i1 %or.cond.i234, i1 %.not7.i.i235, i1 false
  %i.wr = icmp eq i16 %.sroa.15.0.copyload.i231, 0
  %or.cond36.i237 = select i1 %or.cond35.i236, i1 %i.wr, i1 false ; 2 uses
  %spec.select.i238 = select i1 %or.cond36.i237, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i239 = select i1 %or.cond36.i237, i64 0, i64 4
  store ptr %spec.select.i238, ptr %i.q, align 8, !noalias !8443, !captures !354
  %i.ws = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %spec.select38.i239, ptr %i.ws, align 8, !noalias !8443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8443
  store ptr %i.r, ptr %i.p, align 8, !noalias !8443
  %.sroa.48.0..sroa_idx.i240 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i240, align 8, !noalias !8443
  %i.wt = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.wt, align 8, !noalias !8443
  %.sroa.412.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i241, align 8, !noalias !8443
  %i.wu = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.p) #43, !noalias !8443, !inline_history !355 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8443
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias nofree noundef align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #43, !noalias !8451, !inline_history !355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !8452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8443
  %i.wv = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error19subcommand_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cz, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ca, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bz) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %.val50 = load i64, ptr %i.cb, align 8, !range !127, !noundef !13 ; 2 uses
  %i.ww = icmp sgt i64 %.val50, 0
  br i1 %i.ww, label %bb.cz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit244

bb.cz:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit222
  %.val51 = load ptr, ptr %i.eh, align 8, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51, i64 noundef %.val50, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !8453
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit244

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit244: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit222, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %bb.bn

bb.da:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i81
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr nonnull align 1 %i.ei, i64 %i.ek, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit83.thread197

bb.db:                                            ; preds = %bb.e, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.416.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.e ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph, i64 %i.dh) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread203: ; preds = %bb.f, %bb.dq
  %i.wx = phi ptr [ %i.dj, %bb.dq ], [ inttoptr (i64 1 to ptr), %bb.f ]
  store i64 %i.dh, ptr %i.cf, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.wx, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.dh, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.wy = load ptr, ptr %i.dc, align 8, !nonnull !13, !align !239, !noundef !13 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8456)
  call void @llvm.experimental.noalias.scope.decl(metadata !8459)
  call void @llvm.experimental.noalias.scope.decl(metadata !8461)
  call void @llvm.experimental.noalias.scope.decl(metadata !8464)
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 232
  %i.xa = load ptr, ptr %i.wz, align 8, !alias.scope !8467, !noalias !8456, !nonnull !13, !noundef !13 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 240
  %i.xc = load i64, ptr %i.xb, align 8, !alias.scope !8467, !noalias !8456, !noundef !13 ; 2 uses
  %.idx391 = shl nuw nsw i64 %i.xc, 4
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 %.idx391
  %i.xe = icmp eq i64 %i.xc, 0
  br i1 %i.xe, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit255, label %.lr.ph

bb.dc:                                            ; preds = %.lr.ph
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i246372, i64 16 ; 2 uses
  %i.xg = add i64 %.sroa.8.0.i.i.i245371, 1
  %i.xh = icmp eq ptr %i.xf, %i.xd
  br i1 %i.xh, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit255, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread203, %bb.dc
  %.sroa.0.01.i.i.i246372 = phi ptr [ %i.xf, %bb.dc ], [ %i.xa, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread203 ] ; 2 uses
  %.sroa.8.0.i.i.i245371 = phi i64 [ %i.xg, %bb.dc ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread203 ] ; 4 uses
  %.val.i.i.i247 = load i128, ptr %.sroa.0.01.i.i.i246372, align 8, !noalias !8468
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %.val.i.i.i4.i.i.i = load i64, ptr %i.cb, align 8, !range !14, !alias.scope !10080, !noalias !10056, !noundef !13 ; 2 uses
  %i.bxt = icmp eq i64 %.val.i.i.i4.i.i.i, 0
  br i1 %i.bxt, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i, label %bb.mt

bb.mt:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i5.i, i64 noundef %.val.i.i.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10081
  %.sroa.514.0.copyload.pre.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !10082
  br label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i

_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i: ; preds = %bb.mt, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit.i.i.i.i
  %.sroa.514.0.copyload.i.i.i = phi i64 [ %i.bxs, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit.i.i.i.i ], [ %.sroa.514.0.copyload.pre.i.i.i, %bb.mt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !10056
  %.sroa.012.0.copyload.i.i.i = load i64, ptr %i.cg, align 8, !noalias !10082 ; 2 uses
  %.sroa.413.0.copyload.i.i.i = load ptr, ptr %.sroa.46.0..sroa_idx.i.i.i.i61, align 8, !noalias !10082, !nonnull !13, !noundef !13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !10056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !10056
  br label %bb.mu

bb.mu:                                            ; preds = %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i
  %.sroa.015.0.i.i.i = phi ptr [ %.sroa.413.0.copyload.i.i.i, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i ], [ %i.bzf, %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i ] ; 3 uses
  %.sroa.6.0.i.i.i70 = phi i64 [ %.sroa.514.0.copyload.i.i.i, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized.exit.i.i.i ], [ %i.bze, %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i ] ; 5 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 %.sroa.6.0.i.i.i70 ; 2 uses
  %i.bxv = icmp samesign eq i64 %.sroa.6.0.i.i.i70, 0
  br i1 %i.bxv, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %.lr.ph.i.i3.i.i.i

.lr.ph.i.i3.i.i.i:                                ; preds = %bb.mu, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.bxw = phi ptr [ %i.bxz, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ %.sroa.015.0.i.i.i, %bb.mu ] ; 2 uses
  %i.bxx = phi i8 [ %spec.select.i.i.i.i73, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 12, %bb.mu ] ; 2 uses
  %i.bxy = phi i64 [ %i.byl, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 0, %bb.mu ] ; 3 uses
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxw, i64 1 ; 2 uses
  %.val7.i.i.i.i.i71 = load i8, ptr %i.bxw, align 1, !noalias !10083, !noundef !13 ; 3 uses
  %i.bya = zext i8 %.val7.i.i.i.i.i71 to i64      ; 2 uses
  %i.byb = getelementptr inbounds nuw i8, ptr @262, i64 %i.bya
  %i.byc = load i8, ptr %i.byb, align 1, !noalias !10083, !noundef !13 ; 2 uses
  %i.byd = icmp eq i8 %i.byc, 0
  br i1 %i.byd, label %bb.mv, label %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i

bb.mv:                                            ; preds = %.lr.ph.i.i3.i.i.i
  %i.bye = zext nneg i8 %i.bxx to i64
  %i.byf = getelementptr inbounds nuw [256 x i8], ptr @262, i64 %i.bye
  %i.byg = getelementptr inbounds nuw i8, ptr %i.byf, i64 %i.bya
  %i.byh = load i8, ptr %i.byg, align 1, !noalias !10083, !noundef !13
  br label %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i

_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i: ; preds = %bb.mv, %.lr.ph.i.i3.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.byh, %bb.mv ], [ %i.byc, %.lr.ph.i.i3.i.i.i ] ; 2 uses
  %i.byi = and i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 15 ; 2 uses
  %i.byj = lshr i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i72 = icmp eq i8 %i.byi, 0
  %spec.select.i.i.i.i73 = select i1 %.not.i.i.i.i.i.i.i.i72, i8 %i.bxx, i8 %i.byi
  switch i8 %i.byj, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i [
    i8 12, label %bb.mw
    i8 15, label %bb.my
    i8 5, label %bb.mx
  ]

bb.mw:                                            ; preds = %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i
  %i.byk = icmp eq i8 %.val7.i.i.i.i.i71, 127
  br i1 %i.byk, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %bb.my

bb.mx:                                            ; preds = %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i
  switch i8 %.val7.i.i.i.i.i71, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i [
    i8 9, label %bb.my
    i8 10, label %bb.my
    i8 12, label %bb.my
    i8 13, label %bb.my
    i8 32, label %bb.my
  ]

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %bb.mx, %bb.mw, %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i
  %i.byl = add nuw i64 %i.bxy, 1
  %i.bym = icmp eq ptr %i.bxz, %i.bxu
  br i1 %i.bym, label %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i, label %.lr.ph.i.i3.i.i.i

bb.my:                                            ; preds = %bb.mx, %bb.mx, %bb.mx, %bb.mx, %bb.mx, %bb.mw, %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i74 = icmp ugt i64 %i.bxy, %.sroa.6.0.i.i.i70
  br i1 %.not.i.i.i.i.i74, label %bb.mz, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, !prof !5813

bb.mz:                                            ; preds = %bb.my
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #44, !noalias !10093
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.my, %bb.mu
  %.sroa.02.045.i.i.i.i = phi i64 [ %i.bxy, %bb.my ], [ 0, %bb.mu ] ; 3 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 %.sroa.02.045.i.i.i.i ; 3 uses
  %i.byo = sub nuw nsw i64 %.sroa.6.0.i.i.i70, %.sroa.02.045.i.i.i.i ; 3 uses
  %i.byp = icmp samesign eq i64 %.sroa.02.045.i.i.i.i, %.sroa.6.0.i.i.i70
  br i1 %i.byp, label %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i, label %.lr.ph.i17.i.i.i.i

.lr.ph.i17.i.i.i.i:                               ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.byq = phi ptr [ %i.bys, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ %i.byn, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 2 uses
  %i.byr = phi i64 [ %i.bzb, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 3 uses
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byq, i64 1 ; 2 uses
  %.val6.i.i.i.i.i75 = load i8, ptr %i.byq, align 1, !noalias !10097, !noundef !13 ; 4 uses
  %i.byt = zext i8 %.val6.i.i.i.i.i75 to i64      ; 2 uses
  %i.byu = getelementptr inbounds nuw i8, ptr @262, i64 %i.byt
  %i.byv = load i8, ptr %i.byu, align 1, !noalias !10097, !noundef !13 ; 2 uses
  %i.byw = icmp eq i8 %i.byv, 0
  br i1 %i.byw, label %bb.na, label %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i

bb.na:                                            ; preds = %.lr.ph.i17.i.i.i.i
  %i.byx = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @262, i64 3072), i64 %i.byt
  %i.byy = load i8, ptr %i.byx, align 1, !noalias !10097, !noundef !13
  br label %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i

_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i: ; preds = %bb.na, %.lr.ph.i17.i.i.i.i
  %.sroa.0.0.i.i.i.i.i19.i.i.i.i = phi i8 [ %i.byy, %bb.na ], [ %i.byv, %.lr.ph.i17.i.i.i.i ]
  %i.byz = lshr i8 %.sroa.0.0.i.i.i.i.i19.i.i.i.i, 4
  switch i8 %i.byz, label %_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i [
    i8 12, label %bb.nb
    i8 15, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 5, label %bb.nc
  ]

bb.nb:                                            ; preds = %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i
  %i.bza = icmp eq i8 %.val6.i.i.i.i.i75, 127
  br i1 %i.bza, label %bb.nd, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

bb.nc:                                            ; preds = %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i
  switch i8 %.val6.i.i.i.i.i75, label %_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i [
    i8 9, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 10, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 12, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 13, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
    i8 32, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  ]

_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i: ; preds = %bb.nc, %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i77 = icmp sgt i8 %.val6.i.i.i.i.i75, -65
  br i1 %spec.select.i.i.i.i.i.i.i.i77, label %bb.nd, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i, %bb.nc, %bb.nc, %bb.nc, %bb.nc, %bb.nc, %bb.nb, %_RNvNtCs7wAOxhvDpAl_13anstyle_parse5state12state_change.exit.i.i.i.i18.i.i.i.i
  %i.bzb = add nuw i64 %i.byr, 1
  %i.bzc = icmp eq ptr %i.bys, %i.bxu
  br i1 %i.bzc, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i, label %.lr.ph.i17.i.i.i.i

bb.nd:                                            ; preds = %_RNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.i, %bb.nb
  %.not.i25.i.i.i.i = icmp ugt i64 %i.byr, %i.byo
  br i1 %.not.i25.i.i.i.i, label %bb.ne, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i, !prof !5822

bb.ne:                                            ; preds = %bb.nd
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #44, !noalias !10101
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, %bb.nd
  %.sroa.05.054.i.i.i.i = phi i64 [ %i.byr, %bb.nd ], [ %i.byo, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_strs_0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %.sroa.05.054.fr.i.i.i.i = freeze i64 %.sroa.05.054.i.i.i.i ; 4 uses
  %i.bzd = icmp eq i64 %.sroa.05.054.fr.i.i.i.i, 0
  br i1 %i.bzd, label %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i, label %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i

_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i
  %i.bze = sub nuw nsw i64 %i.byo, %.sroa.05.054.fr.i.i.i.i
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.byn, i64 %.sroa.05.054.fr.i.i.i.i
  %i.bzg = call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.byn, i64 noundef %.sroa.05.054.fr.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cj) #43, !noalias !10105
  br i1 %i.bzg, label %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i, label %bb.mu

_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i: ; preds = %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %.not.not.not.not.i.not.not.not.i20.i.i.i = phi i1 [ false, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str0E0E0Csfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ true, %_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str.exit.i.i.i ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsfu0rQaTkGUu_12clap_builder.exit29.i.i.i.i ]
  %i.bzh = icmp eq i64 %.sroa.012.0.copyload.i.i.i, 0
  br i1 %i.bzh, label %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i, label %bb.nf

bb.nf:                                            ; preds = %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.413.0.copyload.i.i.i, i64 noundef %.sroa.012.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10106
  br label %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i

_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i: ; preds = %bb.nf, %_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !10049
  br i1 %.not.not.not.not.i.not.not.not.i20.i.i.i, label %bb.ng, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i.i.i.i.i.i, !prof !269

bb.ng:                                            ; preds = %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !10045
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.exit.i.i.i
  %.sroa.0.0.copyload5.i.i.i = load i64, ptr %i.ck, align 8, !noalias !10111 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !10112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !10045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !10045
  %i.bzi = icmp eq i64 %.sroa.0.0.copyload5.i.i.i, -1
  br i1 %i.bzi, label %.backedge.i.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser5parses6_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i
  %i.bzj = icmp eq ptr %i.bwm, %i.bup
  br i1 %i.bzj, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB37_6parser6parserNtB3S_6Parser5parses6_0EE11spec_extendB37_.exit.i, label %.lr.ph.split.i.i.ithread-pre-split.i.i, !llvm.loop !10014

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser5parses6_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i: ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i.i.i.i.i.i
  %i.bzk = icmp samesign ult i64 %i.bwh, 384307168202282326
  call void @llvm.assume(i1 %i.bzk)
  %i.bzl = load i64, ptr %i.cn, align 8, !range !14, !alias.scope !10113, !noalias !10114, !noundef !13
  %i.bzm = icmp eq i64 %i.bwh, %i.bzl
  br i1 %i.bzm, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.nh

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser5parses6_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, i64 noundef %i.bwh, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43, !noalias !10114
  %.pre.i76 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10113, !noalias !10114
  br label %bb.nh

bb.nh:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser5parses6_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i
  %i.bzn = phi ptr [ %.pre.i76, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.bwg, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB1G_6parser6parserNtB2r_6Parser5parses6_0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i ] ; 2 uses
  %i.bzo = getelementptr inbounds nuw [24 x i8], ptr %i.bzn, i64 %i.bwh ; 2 uses
  store i64 %.sroa.0.0.copyload5.i.i.i, ptr %i.bzo, align 8, !noalias !10112
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bzo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i, i64 16, i1 false), !noalias !10112
  %i.bzp = add nuw nsw i64 %i.bwh, 1              ; 2 uses
  store i64 %i.bzp, ptr %.sroa.6.0..sroa_idx.i60, align 8, !alias.scope !10113, !noalias !10114
  %i.bzq = icmp eq ptr %i.bwm, %i.bup
  br i1 %i.bzq, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB37_6parser6parserNtB3S_6Parser5parses6_0EE11spec_extendB37_.exit.i, label %.lr.ph.i.i.i.i.i62

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB37_6parser6parserNtB3S_6Parser5parses6_0EE11spec_extendB37_.exit.i: ; preds = %bb.nh, %.lr.ph.i.i.i.i.i62, %.backedge.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !10115
  %.pre = load ptr, ptr %i.gc, align 8, !alias.scope !8587, !noalias !8595
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser5parses6_0EE9from_iterB3q_.exit

.loopexit.i:                                      ; preds = %.backedge.i.i.i58, %.lr.ph.i.i.i49, %bb.ml
  store i64 0, ptr %i.el, align 8, !alias.scope !9984, !noalias !10115
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bzr, align 8, !alias.scope !9984, !noalias !10115
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 0, ptr %i.bzs, align 8, !alias.scope !9984, !noalias !10115
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser5parses6_0EE9from_iterB3q_.exit

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser5parses6_0EE9from_iterB3q_.exit: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB37_6parser6parserNtB3S_6Parser5parses6_0EE11spec_extendB37_.exit.i, %.loopexit.i
  %i.bzt = phi ptr [ %.pre, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB37_6parser6parserNtB3S_6Parser5parses6_0EE11spec_extendB37_.exit.i ], [ %i.btf, %.loopexit.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !9987
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !8594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !8594
  call void @llvm.experimental.noalias.scope.decl(metadata !10116)
  call void @llvm.experimental.noalias.scope.decl(metadata !10119)
  call void @llvm.experimental.noalias.scope.decl(metadata !10121)
  call void @llvm.experimental.noalias.scope.decl(metadata !10124)
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 232
  %i.bzv = load ptr, ptr %i.bzu, align 8, !alias.scope !10127, !noalias !10116, !nonnull !13, !noundef !13 ; 2 uses
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzt, i64 240
  %i.bzx = load i64, ptr %i.bzw, align 8, !alias.scope !10127, !noalias !10116, !noundef !13 ; 2 uses
  %.idx7051 = shl nuw nsw i64 %i.bzx, 4
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzv, i64 %.idx7051
  %i.bzz = icmp eq i64 %i.bzx, 0
  br i1 %i.bzz, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph7021

bb.ni:                                            ; preds = %.lr.ph7021
  %i.caa = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i7020, i64 16 ; 2 uses
  %i.cab = add i64 %.sroa.8.0.i.i.i7019, 1
  %i.cac = icmp eq ptr %i.caa, %i.bzy
  br i1 %i.cac, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph7021

.lr.ph7021:                                       ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser5parses6_0EE9from_iterB3q_.exit, %bb.ni
  %.sroa.0.01.i.i.i7020 = phi ptr [ %i.caa, %bb.ni ], [ %i.bzv, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser5parses6_0EE9from_iterB3q_.exit ] ; 2 uses
  %.sroa.8.0.i.i.i7019 = phi i64 [ %i.cab, %bb.ni ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser5parses6_0EE9from_iterB3q_.exit ] ; 4 uses
  %.val.i.i.i45 = load i128, ptr %.sroa.0.01.i.i.i7020, align 8, !noalias !10128
  %i.cad = icmp eq i128 %.val.i.i.i45, -100310019091698447603793328749864812255
  br i1 %i.cad, label %bb.nj, label %bb.ni

bb.nj:                                            ; preds = %.lr.ph7021
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bzt, i64 264
  %i.caf = load i64, ptr %i.cae, align 8, !alias.scope !10127, !noalias !10116, !noundef !13 ; 2 uses
  %i.cag = icmp ult i64 %.sroa.8.0.i.i.i7019, %i.caf
  br i1 %i.cag, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i7019, i64 noundef %i.caf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10128
  unreachable

bb.nl:                                            ; preds = %bb.nj
  %i.cah = getelementptr inbounds nuw i8, ptr %i.bzt, i64 256
  %i.cai = load ptr, ptr %i.cah, align 8, !alias.scope !10127, !noalias !10116, !nonnull !13, !noundef !13
  %i.caj = getelementptr inbounds nuw [32 x i8], ptr %i.cai, i64 %.sroa.8.0.i.i.i7019 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.caj, align 8, !noalias !10129, !nonnull !13, !noundef !13
  %i.cak = getelementptr i8, ptr %i.caj, i64 8
  %.val6.i.i = load ptr, ptr %i.cak, align 8, !noalias !10129, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.cal = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.cam = load i64, ptr %i.cal, align 8, !range !240, !invariant.load !13, !noalias !10129
  %i.can = add nsw i64 %i.cam, -1
  %i.cao = and i64 %i.can, -16
  %i.cap = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 %i.cao
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !10129
  %i.car = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.cas = load ptr, ptr %i.car, align 8, !invariant.load !13, !noalias !10129, !nonnull !13
  call void %i.cas(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.co, ptr noundef nonnull %i.caq) #45, !noalias !10129, !inline_history !8918
  %i.cat = load i128, ptr %i.co, align 16, !noalias !10129, !noundef !13
  %.not.i.i46 = icmp eq i128 %i.cat, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !10129
  br i1 %.not.i.i46, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %bb.nm, !prof !159

bb.nm:                                            ; preds = %bb.nl
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !10129
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit: ; preds = %bb.ni, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser5parses6_0EE9from_iterB3q_.exit, %bb.nl
  %.sroa.0.0.i.i47 = phi ptr [ %i.caq, %bb.nl ], [ null, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMs_NtNtB3q_6parser6parserNtB4b_6Parser5parses6_0EE9from_iterB3q_.exit ], [ null, %bb.ni ] ; 2 uses
  %.not.i48 = icmp eq ptr %.sroa.0.0.i.i47, null
  %..i = select i1 %.not.i48, ptr @99, ptr %.sroa.0.0.i.i47 ; 5 uses
  store ptr %i.bzt, ptr %i.ej, align 8, !alias.scope !10116, !noalias !10119
  %i.cau = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %..i, ptr %i.cau, align 8, !alias.scope !10116, !noalias !10119
  %i.cav = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr null, ptr %i.cav, align 8, !alias.scope !10116, !noalias !10119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !10130
  store i64 0, ptr %i.cs, align 8, !alias.scope !10135, !noalias !10130
  %.sroa.42.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i40, align 8, !alias.scope !10135, !noalias !10130
  %.sroa.53.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i41, align 8, !alias.scope !10135, !noalias !10130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !10130
  %i.caw = getelementptr inbounds nuw i8, ptr %..i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.cr, ptr noundef nonnull align 2 dereferenceable(14) %i.caw, i64 14, i1 false), !noalias !10130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !10130
  %.sroa.0.0.copyload.i = load i8, ptr %i.caw, align 2, !noalias !10130
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 32
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 2, !noalias !10130
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 36
  %.sroa.11.0.copyload.i = load i8, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !10130
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 40
  %.sroa.15.0.copyload.i = load i16, ptr %.sroa.15.0..sroa_idx.i, align 2, !noalias !10130
  %.not.i.i42 = icmp eq i8 %.sroa.0.0.copyload.i, -1
  %.not5.i.i = icmp eq i8 %.sroa.7.0.copyload.i, -1
  %or.cond.i43 = select i1 %.not.i.i42, i1 %.not5.i.i, i1 false
  %.not7.i.i = icmp eq i8 %.sroa.11.0.copyload.i, -1
  %or.cond35.i = select i1 %or.cond.i43, i1 %.not7.i.i, i1 false
  %i.cax = icmp eq i16 %.sroa.15.0.copyload.i, 0
  %or.cond36.i = select i1 %or.cond35.i, i1 %i.cax, i1 false ; 2 uses
  %spec.select.i44 = select i1 %or.cond36.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i = select i1 %or.cond36.i, i64 0, i64 4
  store ptr %spec.select.i44, ptr %i.cq, align 8, !noalias !10130, !captures !354
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %spec.select38.i, ptr %i.cay, align 8, !noalias !10130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !10130
  store ptr %i.cr, ptr %i.cp, align 8, !noalias !10130
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !10130
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.cq, ptr %i.caz, align 8, !noalias !10130
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !10130
  %i.cba = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.cp) #43, !noalias !10130, !inline_history !8928 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !10130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !10130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !10130
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ej, ptr noalias nofree noundef align 8 dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cs) #43, !noalias !10138, !inline_history !8928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !noalias !10139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !10130
  %i.cbb = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error19subcommand_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.btf, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.em, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.el, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ek) #43, !inline_history !8609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !8594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !8594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !8594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !8594
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit25

_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringEBa_.exit.loopexit: ; preds = %.split.i.i.i.i.i86
  %.phi.trans.insert = getelementptr i8, ptr %i.btu, i64 560
  %.val267.i.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringEBa_.exit

_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringEBa_.exit: ; preds = %bb.mj, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringEBa_.exit.loopexit
  %.val267.i = phi ptr [ %.val267.i.pre, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringEBa_.exit.loopexit ], [ %i.bua, %bb.mj ]
  %.not.i38 = icmp slt i64 %i.btx, 0
  br i1 %.not.i38, label %bb.no, label %bb.nn, !prof !321

bb.nn:                                            ; preds = %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringEBa_.exit
  %i.cbc = icmp eq i64 %i.btx, 0                  ; 3 uses
  br i1 %i.cbc, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread933, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.nn
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10140
  %i.cbd = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.btx, i64 noundef range(i64 1, 9) 1) #43, !noalias !10140 ; 3 uses
  %i.cbe = icmp eq ptr %i.cbd, null
  br i1 %i.cbe, label %bb.no, label %bb.od

.loopexit:                                        ; preds = %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Bc_.exit.i.i, %bb.mi
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #44, !inline_history !8609
  unreachable

bb.no:                                            ; preds = %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringEBa_.exit, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4777.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringEBa_.exit ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4777.0.ph, i64 %i.btx) #46, !inline_history !8609
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread933: ; preds = %bb.nn, %bb.od
  %.val10.i = phi i32 [ %.val10.i.pre, %bb.od ], [ %.val187.i, %bb.nn ]
  %.val.i26 = phi i32 [ %.val.i26.pre, %bb.od ], [ %.val186.i, %bb.nn ]
  %i.cbf = phi ptr [ %i.cbd, %bb.od ], [ inttoptr (i64 1 to ptr), %bb.nn ] ; 3 uses
  %i.cbg = load i64, ptr %i.ga, align 8, !noalias !8594, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !10143)
  call void @llvm.experimental.noalias.scope.decl(metadata !10146)
  %.not.i.i27 = trunc i32 %.val.i26 to i1
  %i.cbh = trunc i32 %.val10.i to i1
  %.sroa.0.0.i.i = select i1 %.not.i.i27, i1 true, i1 %i.cbh
  %i.cbi = call fastcc noundef align 8 ptr @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command17__build_subcommand(ptr noalias nofree noundef align 8 dereferenceable(712) %i.btf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cbf, i64 noundef %i.btx) #43, !noalias !10148, !inline_history !10150 ; 4 uses
  %.not.i28 = icmp eq ptr %i.cbi, null
  br i1 %.not.i28, label %bb.og, label %bb.np

bb.np:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !10151
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  store i64 0, ptr %i.cbj, align 8, !alias.scope !10153, !noalias !10151
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !10153, !noalias !10151
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !10153, !noalias !10151
end_hunk_3
begin_hunk_4_@_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width:bb.a

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel: ; preds = %.lr.ph
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %i.a
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.ph33, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !12383, !noundef !13
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel
  %i.p = icmp ne ptr %i.i, %i.a
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.010.ph33, i64 3 ; 3 uses
  %i.r = load i8, ptr %i.i, align 1, !noalias !12383, !noundef !13
  %i.s = shl nuw nsw i32 %i.m, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.g, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.d, -17
  br i1 %i.y, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel
  %i.z = icmp ne ptr %i.q, %i.a
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.ph33, i64 4
  %i.ab = load i8, ptr %i.q, align 1, !noalias !12383, !noundef !13
  %i.ac = shl nuw nsw i32 %i.g, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aj = zext nneg i8 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel
  %.sroa.0.111.ph.peel = phi ptr [ %i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel ], [ %i.q, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel ], [ %i.aa, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel ], [ %i.c, %bb.b ] ; 8 uses
  %.sroa.4.0.i.ph.peel = phi i32 [ %i.n, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel ], [ %i.x, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel ], [ %i.ai, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel ], [ %i.aj, %bb.b ] ; 4 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.0.i.ph.peel, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ult i32 %.sroa.4.0.i.ph.peel, 32
  %i.am = icmp eq i32 %.sroa.4.0.i.ph.peel, 127
  %or.cond2.peel = or i1 %i.al, %i.am
  br i1 %or.cond2.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = icmp eq i32 %.sroa.4.0.i.ph.peel, 109
  %or.cond1.peel = and i1 %.sroa.04.0.ph34, %i.an
  br i1 %or.cond1.peel, label %.peel.next, label %.loopexit27

.peel.next:                                       ; preds = %bb.d
  %i.ao = icmp eq ptr %.sroa.0.111.ph.peel, %i.a
  br i1 %i.ao, label %.loopexit26, label %bb.e

bb.e:                                             ; preds = %.peel.next
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.111.ph.peel, i64 1 ; 3 uses
  %i.aq = load i8, ptr %.sroa.0.111.ph.peel, align 1, !noalias !12383, !noundef !13 ; 5 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  br i1 %i.ar, label %bb.f, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i: ; preds = %bb.e
  %i.as = and i8 %i.aq, 31
  %i.at = zext nneg i8 %i.as to i32               ; 3 uses
  %i.au = icmp ne ptr %i.ap, %i.a
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.111.ph.peel, i64 2 ; 3 uses
  %i.aw = load i8, ptr %i.ap, align 1, !noalias !12383, !noundef !13
  %i.ax = shl nuw nsw i32 %i.at, 6
  %i.ay = and i8 %i.aw, 63
  %i.az = zext nneg i8 %i.ay to i32               ; 2 uses
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = icmp samesign ugt i8 %i.aq, -33
  br i1 %i.bb, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.aq to i32
  br label %bb.g

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i
  %i.bd = icmp ne ptr %i.av, %i.a
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.111.ph.peel, i64 3 ; 3 uses
  %i.bf = load i8, ptr %i.av, align 1, !noalias !12383, !noundef !13
  %i.bg = shl nuw nsw i32 %i.az, 6
  %i.bh = and i8 %i.bf, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi            ; 2 uses
  %i.bk = shl nuw nsw i32 %i.at, 12
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %i.bm = icmp samesign ugt i8 %i.aq, -17
  br i1 %i.bm, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i, label %bb.g

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i
  %i.bn = icmp ne ptr %i.be, %i.a
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.111.ph.peel, i64 4
  %i.bp = load i8, ptr %i.be, align 1, !noalias !12383, !noundef !13
  %i.bq = shl nuw nsw i32 %i.at, 18
  %i.br = and i32 %i.bq, 1835008
  %i.bs = shl nuw nsw i32 %i.bj, 6
  %i.bt = and i8 %i.bp, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = or disjoint i32 %i.bv, %i.br
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i
  %.sroa.0.111.ph = phi ptr [ %i.av, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i ], [ %i.be, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i ], [ %i.bo, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i ], [ %i.ap, %bb.f ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.ba, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i ], [ %i.bl, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i ], [ %i.bw, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i ], [ %i.bc, %bb.f ] ; 3 uses
  %i.bx = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = icmp samesign ult i32 %.sroa.4.0.i.ph, 32
  %i.bz = icmp eq i32 %.sroa.4.0.i.ph, 127
  %or.cond2 = or i1 %i.by, %i.bz
  br i1 %or.cond2, label %.loopexit, label %.loopexit27

.loopexit26:                                      ; preds = %.peel.next, %.loopexit, %bb.a
  %.sroa.0.0.ph.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.ph35, %.peel.next ], [ %.sroa.0.1, %.loopexit ]
  ret i64 %.sroa.0.0.ph.lcssa

.loopexit27:                                      ; preds = %bb.g, %bb.d
  %.sroa.0.111.ph.lcssa23 = phi ptr [ %.sroa.0.111.ph.peel, %bb.d ], [ %.sroa.0.111.ph, %bb.g ]
  %.sroa.04.0.lcssa22 = phi i1 [ %.sroa.04.0.ph34, %bb.d ], [ false, %bb.g ] ; 2 uses
  %not..sroa.04.0 = xor i1 %.sroa.04.0.lcssa22, true
  %i.ca = zext i1 %not..sroa.04.0 to i64
  %spec.select9 = add i64 %.sroa.0.0.ph35, %i.ca
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.g, %.loopexit27
  %.sroa.0.111.ph24 = phi ptr [ %.sroa.0.111.ph.lcssa23, %.loopexit27 ], [ %.sroa.0.111.ph.peel, %bb.c ], [ %.sroa.0.111.ph, %bb.g ] ; 2 uses
  %.sroa.04.1 = phi i1 [ %.sroa.04.0.lcssa22, %.loopexit27 ], [ true, %bb.c ], [ true, %bb.g ]
  %.sroa.0.1 = phi i64 [ %spec.select9, %.loopexit27 ], [ %.sroa.0.0.ph35, %bb.c ], [ %.sroa.0.0.ph35, %bb.g ] ; 2 uses
  %i.cb = icmp eq ptr %.sroa.0.111.ph24, %i.a
  br i1 %i.cb, label %.loopexit26, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @307, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCsaKJjC64KgbL_3std4path7PathBufNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @192, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @308, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB2_3Any7type_idBx_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @246, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anybNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @6, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyhNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyxNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @309, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 3 uses
  %3 = alloca [24 x i8], align 8                  ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !13, !noalias !12386, !nonnull !13 ; 3 uses
  call void %i.f(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noundef nonnull %1) #45, !inline_history !12389
  %i.g = load i64, ptr %i.c, align 8, !range !127, !noundef !13
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !13, !noalias !12390, !nonnull !13 ; 2 uses
  call void %i.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %3, ptr noundef nonnull %1) #45, !inline_history !12393
  %i.j = load i64, ptr %3, align 8, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.k = call i64 @llvm.uadd.sat.i64(i64 %i.j, i64 1) ; 2 uses
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.k, i64 4) ; 3 uses
  %i.l = mul i64 %..i, 72                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.k, 128102389400760775
  br i1 %or.cond.i.i, label %bb.d, label %bb.c, !prof !321

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.c
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12394
  %i.n = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 1, 9) 8) #43, !noalias !12394 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.b ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.l) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.c
  %.sroa.4.0.i = phi i64 [ 0, %bb.c ], [ %..i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ] ; 3 uses
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.n, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ] ; 3 uses
  %i.p = icmp ule i64 %..i, %.sroa.4.0.i
  call void @llvm.assume(i1 %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0.i, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  store i64 %.sroa.4.0.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12397)
  call void @llvm.experimental.noalias.scope.decl(metadata !12400)
  call void @llvm.experimental.noalias.scope.decl(metadata !12402)
  call void @llvm.experimental.noalias.scope.decl(metadata !12405)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12407
  call void %i.f(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull %1) #45, !noalias !12408, !inline_history !12409
  %i.q = load i64, ptr %i.a, align 8, !range !127, !noalias !12408, !noundef !13
  %.not6.i.i = icmp eq i64 %i.q, -1
  br i1 %.not6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit, %bb.g
  %i.r = phi ptr [ %i.ae, %bb.g ], [ %.sroa.10.0.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit ]
  %i.s = phi i64 [ %i.af, %bb.g ], [ %.sroa.4.0.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit ] ; 3 uses
  %i.t = phi i64 [ %i.ah, %bb.g ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit ] ; 4 uses
  %i.u = icmp samesign ult i64 %i.t, 128102389400760776
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, %i.s
  br i1 %i.v, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueE7reserveBK_.exit.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit
  %i.w = load ptr, ptr %2, align 8, !invariant.load !13, !alias.scope !12410, !noalias !12411 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  call void %i.w(ptr noundef nonnull %1) #45, !noalias !12408, !inline_history !12412
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !13, !alias.scope !12410, !noalias !12411 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEINtB2_10SpecExtendBR_INtNtB6_5boxed3BoxDNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendBX_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !240, !invariant.load !13, !alias.scope !12410, !noalias !12411
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #43, !noalias !12408
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEINtB2_10SpecExtendBR_INtNtB6_5boxed3BoxDNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendBX_.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueE7reserveBK_.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12408
  call void %i.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %1) #45, !noalias !12408, !inline_history !12413
  %i.ac = load i64, ptr %i.b, align 8, !noalias !12408, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12408
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %i.ac, i64 1)
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.s, i64 noundef range(i64 1, 0) %i.ad, i64 noundef 8, i64 noundef 72) #43, !noalias !12410
  %.pre7.i.i = load i64, ptr %i.d, align 8, !range !14, !alias.scope !12411, !noalias !12410
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !12411, !noalias !12410
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueE7reserveBK_.exit.i.i, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.r, %.lr.ph.i.i ], [ %.pre, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueE7reserveBK_.exit.i.i ] ; 2 uses
  %i.af = phi i64 [ %i.s, %.lr.ph.i.i ], [ %.pre7.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueE7reserveBK_.exit.i.i ]
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !12408
  %i.ah = add nuw nsw i64 %i.t, 1                 ; 2 uses
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !12411, !noalias !12410
  call void %i.f(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull %1) #45, !noalias !12408, !inline_history !12409
  %i.ai = load i64, ptr %i.a, align 8, !range !127, !noalias !12408, !noundef !13
  %.not.i.i7 = icmp eq i64 %i.ai, -1
  br i1 %.not.i.i7, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEINtB2_10SpecExtendBR_INtNtB6_5boxed3BoxDNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendBX_.exit: ; preds = %bb.f, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEL_EEB22_.exit

bb.h:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.al = load ptr, ptr %2, align 8, !invariant.load !13 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void %i.al(ptr noundef nonnull %1) #45, !inline_history !12414
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !14, !invariant.load !13 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEL_EEB22_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !240, !invariant.load !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) %i.aq) #43
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEL_EEB22_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEL_EEB22_.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i, %bb.j, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEINtB2_10SpecExtendBR_INtNtB6_5boxed3BoxDNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendBX_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtNtCsfu0rQaTkGUu_12clap_builder5error6formatNtB2_13KindFormatterNtB2_14ErrorFormatter12format_error(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12415
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 134
  store ptr %i.h, ptr %i.b, align 8, !noalias !12415
  store ptr %i.b, ptr %i.c, align 8, !noalias !12415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12415
  store ptr %i.c, ptr %i.a, align 8, !noalias !12415
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12415
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @266, ptr noundef nonnull %i.a) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12415
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 249
  %i.k = load i8, ptr %i.j, align 1, !range !1490, !noundef !13
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.n
    i8 13, label %bb.n
    i8 14, label %bb.n
    i8 15, label %bb.n
    i8 16, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.18.0.i.ph = phi i64 [ 51, %bb.l ], [ 49, %bb.k ], [ 48, %bb.j ], [ 76, %bb.i ], [ 42, %bb.h ], [ 36, %bb.g ], [ 38, %bb.f ], [ 38, %bb.e ], [ 61, %bb.d ], [ 23, %bb.c ], [ 25, %bb.b ], [ 45, %bb.a ] ; 4 uses
  %.sroa.0.0.i.ph = phi ptr [ @121, %bb.l ], [ @120, %bb.k ], [ @119, %bb.j ], [ @118, %bb.i ], [ @117, %bb.h ], [ @116, %bb.g ], [ @115, %bb.f ], [ @114, %bb.e ], [ @113, %bb.d ], [ @112, %bb.c ], [ @111, %bb.b ], [ @110, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12419)
  call void @llvm.experimental.noalias.scope.decl(metadata !12422)
  %i.l = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12425, !noalias !12428, !noundef !13 ; 3 uses
  %i.m = load i64, ptr %i.f, align 8, !range !14, !alias.scope !12425, !noalias !12428, !noundef !13
  %i.n = sub i64 %i.m, %i.l
  %i.o = icmp ugt i64 %.sroa.18.0.i.ph, %i.n
  br i1 %i.o, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %bb.m
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.l, i64 noundef %.sroa.18.0.i.ph, i64 noundef 1, i64 noundef 1) #43, !noalias !12428
  %i.p = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12430, !noalias !12428, !noundef !13
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit: ; preds = %bb.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %.sink35 = phi i64 [ %i.p, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.l, %bb.m ] ; 3 uses
  %i.q = icmp sgt i64 %.sink35, -1
  call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !12430, !noalias !12428, !nonnull !13, !noundef !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sink35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.0.i.ph, i64 %.sroa.18.0.i.ph, i1 false), !noalias !12430
  %i.t = add nuw i64 %.sink35, %.sroa.18.0.i.ph   ; 2 uses
  store i64 %i.t, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12430, !noalias !12428
  br label %bb.o

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noundef !13
  %.not23 = icmp eq ptr %i.v, null
  br i1 %.not23, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit29, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit
  %i.w = phi i64 [ %.pre, %bb.p ], [ %i.an, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit29 ], [ %i.t, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12431)
  call void @llvm.experimental.noalias.scope.decl(metadata !12434)
  %i.x = load i64, ptr %i.f, align 8, !range !14, !alias.scope !12437, !noalias !12440, !noundef !13
  %i.y = icmp eq i64 %i.x, %i.w
  br i1 %i.y, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i25, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit26, !prof !269

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i25: ; preds = %bb.o
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.w, i64 noundef 1, i64 noundef 1, i64 noundef 1) #43, !noalias !12440
  %i.z = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12442, !noalias !12440, !noundef !13
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit26

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit26: ; preds = %bb.o, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i25
  %.sink36 = phi i64 [ %i.z, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i25 ], [ %i.w, %bb.o ] ; 3 uses
  %i.aa = icmp sgt i64 %.sink36, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !12442, !noalias !12440, !nonnull !13, !noundef !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink36
  store i8 10, ptr %i.ac, align 1, !noalias !12442
  %i.ad = add nuw i64 %.sink36, 1
  store i64 %i.ad, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12442, !noalias !12440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
end_hunk_4
begin_hunk_5_@_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice3cmpINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsfu0rQaTkGUu_12clap_builder:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsfu0rQaTkGUu_12clap_builder(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val5 = load i64, ptr %i.e, align 8, !noundef !13 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val7 = load i64, ptr %i.f, align 8, !noundef !13
  %i.g = icmp eq i64 %.val5, %.val7
  br i1 %i.g, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val6 = load ptr, ptr %i.h, align 8, !nonnull !13, !noundef !13
  %i.i = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val6, i64 %.val5)
  %.not = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not, label %bb.b, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val5 = load i64, ptr %i.e, align 8, !noundef !13 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val7 = load i64, ptr %i.f, align 8, !noundef !13
  %i.g = icmp eq i64 %.val5, %.val7
  br i1 %i.g, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit: ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val6 = load ptr, ptr %i.h, align 8, !nonnull !13, !noundef !13
  %i.i = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val6, i64 %.val5)
  %.not = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not, label %bb.b, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB5_10MatchedArgNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.b = load i8, ptr %i.a, align 1, !range !1779, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2 = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  %i.e = shl nuw nsw i64 %.val2, 3                ; 3 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13001
  %i.g = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, 9) 8) #43, !noalias !13001 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #46, !noalias !13009
  unreachable

bb.c:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr nonnull readonly align 8 %.val, i64 %i.e, i1 false), !noalias !13010
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.c
  %.sroa.523.0 = phi ptr [ %i.g, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.i = load i64, ptr %1, align 8, !range !142, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit, %bb.d
  %.sroa.01.0 = phi i64 [ 1, %bb.d ], [ 0, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3 = load ptr, ptr %i.l, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val4 = load i64, ptr %i.m, align 8, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13011)
  %i.n = mul nuw nsw i64 %.val4, 24               ; 2 uses
  %i.o = icmp eq i64 %.val4, 0
  br i1 %i.o, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBP_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i7

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i7: ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13014
  %i.p = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 1, 9) 8) #43, !noalias !13014 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %.lr.ph.preheader.i.i

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i7
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.n) #46, !noalias !13020
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i7
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.val3, i64 %.val4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.036.i.i = phi ptr [ %i.u, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ %.val3, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.10.035.i.i = phi i64 [ %i.s, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ %.val4, %.lr.ph.preheader.i.i ]
  %.sroa.7.034.i.i = phi i64 [ %i.v, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.s = add nsw i64 %.sroa.10.035.i.i, -1        ; 2 uses
  %i.t = icmp eq ptr %.sroa.0.036.i.i, %i.r
  br i1 %i.t, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBP_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i.i, i64 24
  %i.v = add nuw nsw i64 %.sroa.7.034.i.i, 1
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.7.034.i.i ; 3 uses
  %i.x = getelementptr i8, ptr %.sroa.0.036.i.i, i64 8
  %.val.i.i = load ptr, ptr %i.x, align 8, !alias.scope !13011, !noalias !13021, !nonnull !13, !noundef !13 ; 2 uses
  %i.y = getelementptr i8, ptr %.sroa.0.036.i.i, i64 16
  %.val13.i.i = load i64, ptr %i.y, align 8, !alias.scope !13011, !noalias !13021, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13022)
  %i.z = icmp eq i64 %.val13.i.i, 0
  br i1 %i.z, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.aa = shl nuw nsw i64 %.val13.i.i, 5          ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13025
  %i.ab = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 9) 8) #43, !noalias !13025 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %.lr.ph.preheader.i.i.i.i

bb.h:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aa) #46, !noalias !13031
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.val13.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.0.033.i.i.i.i = phi ptr [ %i.ak, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val.i.i, %.lr.ph.preheader.i.i.i.i ] ; 5 uses
  %.sroa.10.032.i.i.i.i = phi i64 [ %i.ae, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val13.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.7.031.i.i.i.i = phi i64 [ %i.aj, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.ae = add nsw i64 %.sroa.10.032.i.i.i.i, -1   ; 2 uses
  %i.af = icmp eq ptr %.sroa.0.033.i.i.i.i, %i.ad
  br i1 %i.af, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13032)
  %i.ag = load ptr, ptr %.sroa.0.033.i.i.i.i, align 8, !alias.scope !13035, !noalias !13036, !nonnull !13, !noundef !13 ; 2 uses
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !13038
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.i
  %i.aj = add nuw nsw i64 %.sroa.7.031.i.i.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.sroa.7.031.i.i.i.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !13035, !noalias !13036, !nonnull !13, !align !239, !noundef !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i.i.i, i64 16
  store ptr %i.ag, ptr %i.al, align 8, !noalias !13031
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.an, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !noalias !13031
  %.sroa.523.0..sroa_idx.i.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx.i.i.i.i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !noalias !13039
  %i.ap = icmp eq i64 %i.ae, 0
  br i1 %i.ap, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i: ; preds = %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g
  %.sroa.10.0.i43.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.ab, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ]
  store i64 %.val13.i.i, ptr %i.w, align 8, !noalias !13020
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.10.0.i43.i.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !13020
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.val13.i.i, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !13020
  %i.aq = icmp eq i64 %i.s, 0
  br i1 %i.aq, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBP_.exit, label %.lr.ph.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBP_.exit: ; preds = %.lr.ph.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, %bb.e
  %.sroa.10.0.i50.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.p, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ %i.p, %.lr.ph.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val5 = load ptr, ptr %i.ar, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val6 = load i64, ptr %i.as, align 8, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13040)
  %i.at = mul nuw nsw i64 %.val6, 24              ; 2 uses
  %i.au = icmp eq i64 %.val6, 0
  br i1 %i.au, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i8

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i8: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBP_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13043
  %i.av = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.at, i64 noundef range(i64 1, 9) 8) #43, !noalias !13043 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %.lr.ph.preheader.i.i9

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.at) #46, !noalias !13049
  unreachable

.lr.ph.preheader.i.i9:                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i8
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.val5, i64 %.val6
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i, %.lr.ph.preheader.i.i9
  %.sroa.0.036.i.i11 = phi ptr [ %i.ba, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %.val5, %.lr.ph.preheader.i.i9 ] ; 4 uses
  %.sroa.10.035.i.i12 = phi i64 [ %i.ay, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %.val6, %.lr.ph.preheader.i.i9 ]
  %.sroa.7.034.i.i13 = phi i64 [ %i.bb, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ 0, %.lr.ph.preheader.i.i9 ] ; 2 uses
  %i.ay = add nsw i64 %.sroa.10.035.i.i12, -1     ; 2 uses
  %i.az = icmp eq ptr %.sroa.0.036.i.i11, %i.ax
  br i1 %i.az, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i10
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i.i11, i64 24
  %i.bb = add nuw nsw i64 %.sroa.7.034.i.i13, 1
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.sroa.7.034.i.i13 ; 3 uses
  %i.bd = getelementptr i8, ptr %.sroa.0.036.i.i11, i64 8
  %.val.i.i14 = load ptr, ptr %i.bd, align 8, !alias.scope !13040, !noalias !13050, !nonnull !13, !noundef !13 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.0.036.i.i11, i64 16
  %.val13.i.i15 = load i64, ptr %i.be, align 8, !alias.scope !13040, !noalias !13050, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13051)
  %i.bf = icmp eq i64 %.val13.i.i15, 0
  br i1 %i.bf, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i16

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i16: ; preds = %bb.l
  %i.bg = mul nuw nsw i64 %.val13.i.i15, 24       ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13054
  %i.bh = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bg, i64 noundef range(i64 1, 9) 8) #43, !noalias !13054 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.m, label %.lr.ph.preheader.i.i.i.i17

bb.m:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i16
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bg) #46, !noalias !13060
  unreachable

.lr.ph.preheader.i.i.i.i17:                       ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i16
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i14, i64 %.val13.i.i15
  br label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %_RNvXs6_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i17
  %.sroa.0.034.i.i.i.i = phi ptr [ %i.bm, %_RNvXs6_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val.i.i14, %.lr.ph.preheader.i.i.i.i17 ] ; 4 uses
  %.sroa.10.033.i.i.i.i = phi i64 [ %i.bk, %_RNvXs6_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val13.i.i15, %.lr.ph.preheader.i.i.i.i17 ]
  %.sroa.7.032.i.i.i.i = phi i64 [ %i.bn, %_RNvXs6_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i17 ] ; 2 uses
  %i.bk = add nsw i64 %.sroa.10.033.i.i.i.i, -1   ; 2 uses
  %i.bl = icmp eq ptr %.sroa.0.034.i.i.i.i, %i.bj
  br i1 %i.bl, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i18
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i.i.i, i64 24
  %i.bn = add nuw nsw i64 %.sroa.7.032.i.i.i.i, 1
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.7.032.i.i.i.i ; 3 uses
  %i.bp = getelementptr i8, ptr %.sroa.0.034.i.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !13051, !noalias !13061, !nonnull !13, !noundef !13
  %i.bq = getelementptr i8, ptr %.sroa.0.034.i.i.i.i, i64 16
  %.val13.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !13051, !noalias !13061, !noundef !13 ; 6 uses
  %i.br = icmp eq i64 %.val13.i.i.i.i, 0
  br i1 %i.br, label %_RNvXs6_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13062
  %i.bs = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val13.i.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !13062 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val13.i.i.i.i) #46, !noalias !13072
  unreachable

bb.p:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %.val.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val13.i.i.i.i, i1 false), !noalias !13073
  br label %_RNvXs6_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXs6_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.p, %bb.n
  %.sroa.5.0.i.i.i.i.i = phi ptr [ %i.bs, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.n ]
  store i64 %.val13.i.i.i.i, ptr %i.bo, align 8, !noalias !13060
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 8, !noalias !13060
  %.sroa.524.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %.val13.i.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i.i, align 8, !noalias !13060
  %i.bu = icmp eq i64 %i.bk, 0
  br i1 %i.bu, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i, label %.lr.ph.i.i.i.i18

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs6_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i, %.lr.ph.i.i.i.i18, %bb.l
  %.sroa.10.0.i45.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.l ], [ %i.bh, %.lr.ph.i.i.i.i18 ], [ %i.bh, %_RNvXs6_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i ]
  store i64 %.val13.i.i15, ptr %i.bc, align 8, !noalias !13049
  %.sroa.423.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sroa.10.0.i45.i.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i19, align 8, !noalias !13049
  %.sroa.524.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %.val13.i.i15, ptr %.sroa.524.0..sroa_idx.i.i20, align 8, !noalias !13049
  %i.bv = icmp eq i64 %i.ay, 0
  br i1 %i.bv, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit, label %.lr.ph.i.i10

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %.lr.ph.i.i10, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBP_.exit
  %.sroa.10.0.i51.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBP_.exit ], [ %i.av, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.av, %.lr.ph.i.i10 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bx = load i8, ptr %i.bw, align 8, !range !1313, !noundef !13
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %i.b, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val2, ptr %i.bz, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.523.0, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val2, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %.sroa.01.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.val4, ptr %i.ca, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.10.0.i50.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.val4, ptr %.sroa.525.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.val6, ptr %i.cb, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.10.0.i51.i.i, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.val6, ptr %.sroa.528.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.bx, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13082)
  %.val13.i.i = load ptr, ptr %0, align 8, !alias.scope !13084, !noalias !13085, !noundef !13 ; 2 uses
  %.val14.i.i = load ptr, ptr %1, align 8, !alias.scope !13085, !noalias !13084, !noundef !13 ; 2 uses
  %i.a = icmp ult ptr %.val13.i.i, %.val14.i.i
  %i.b = icmp ne ptr %.val13.i.i, %.val14.i.i
  %..i.i.i.i = zext i1 %i.b to i8
  %.sroa.0.0.i.i.i.i = select i1 %i.a, i8 -1, i8 %..i.i.i.i ; 2 uses
  %i.c = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.c, label %bb.b, label %_RNvXs5_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val13.1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !13084, !noalias !13085, !noundef !13 ; 2 uses
  %.val14.1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !13085, !noalias !13084, !noundef !13 ; 2 uses
  %i.f = icmp ult ptr %.val13.1.i.i, %.val14.1.i.i
  %i.g = icmp ne ptr %.val13.1.i.i, %.val14.1.i.i
  %..i.i.1.i.i = zext i1 %i.g to i8
  %.sroa.0.0.i.i.1.i.i = select i1 %i.f, i8 -1, i8 %..i.i.1.i.i
  br label %_RNvXs5_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit

_RNvXs5_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i.i, %bb.a ], [ %.sroa.0.0.i.i.1.i.i, %bb.b ]
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromRReE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13086
  store i64 0, ptr %i.a, align 8, !noalias !13086
end_hunk_5
begin_hunk_6_@_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.049.i.i, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.ib, align 8, !alias.scope !14435, !noalias !14436, !nonnull !13, !noundef !13 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.049.i.i, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !14435, !noalias !14436, !noundef !13 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14438)
  %i.id = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.id, label %_RNvYTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB9_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBQ_6os_str5OsStrEEENtNtB1B_5clone5Clone5cloneB9_.exit.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.ie = shl nuw nsw i64 %.val1.i.i.i.i, 4       ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14441
  %i.if = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ie, i64 noundef range(i64 1, 9) 8) #43, !noalias !14441 ; 4 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ai, label %.lr.ph.preheader.i.i.i.i.i.i

bb.ai:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ie) #46, !noalias !14447
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %.val1.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aj, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %i.il, %bb.aj ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.021.i.i.i.i.i.i = phi i64 [ %i.ij, %bb.aj ], [ %.val1.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.7.020.i.i.i.i.i.i = phi i64 [ %i.ik, %bb.aj ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ii = icmp eq ptr %.sroa.0.022.i.i.i.i.i.i, %i.ih
  br i1 %i.ii, label %_RNvYTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB9_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBQ_6os_str5OsStrEEENtNtB1B_5clone5Clone5cloneB9_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ij = add nsw i64 %.sroa.10.021.i.i.i.i.i.i, -1 ; 2 uses
  %i.ik = add nuw nsw i64 %.sroa.7.020.i.i.i.i.i.i, 1
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %.sroa.7.020.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !14438, !noalias !14448, !nonnull !13, !noundef !13
  %i.in = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %i.in, align 8, !alias.scope !14438, !noalias !14448, !noundef !13
  store ptr %.val.i.i.i.i.i.i, ptr %i.im, align 8, !noalias !14447
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %i.io, align 8, !noalias !14447
  %i.ip = icmp eq i64 %i.ij, 0
  br i1 %i.ip, label %_RNvYTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB9_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBQ_6os_str5OsStrEEENtNtB1B_5clone5Clone5cloneB9_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvYTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB9_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBQ_6os_str5OsStrEEENtNtB1B_5clone5Clone5cloneB9_.exit.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i, %bb.ah, %bb.ag
  %.sroa.716.0.i.i = phi i64 [ 0, %bb.ah ], [ -1, %bb.ag ], [ %.val1.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val1.i.i.i.i, %bb.aj ]
  %.sroa.9.1.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ah ], [ %.sroa.9.045.i.i, %bb.ag ], [ %i.if, %.lr.ph.i.i.i.i.i.i ], [ %i.if, %bb.aj ] ; 2 uses
  %.sroa.1017.1.i.i = phi i64 [ 0, %bb.ah ], [ %.sroa.1017.048.i.i, %bb.ag ], [ %.val1.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val1.i.i.i.i, %bb.aj ] ; 2 uses
  store ptr %.val.i.i.i189, ptr %i.hv, align 8, !noalias !14425
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %.val1.i.i.i190, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !14425
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %.val2.i.i.i191, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !14425
  %.sroa.634.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store i64 %.sroa.3.0.i.i.i.i194, ptr %.sroa.634.0..sroa_idx.i.i, align 8, !noalias !14425
  %.sroa.735.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  store i64 %.sroa.716.0.i.i, ptr %.sroa.735.0..sroa_idx.i.i, align 8, !noalias !14425
  %.sroa.836.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  store ptr %.sroa.9.1.i.i, ptr %.sroa.836.0..sroa_idx.i.i, align 8, !noalias !14425
  %.sroa.937.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  store i64 %.sroa.1017.1.i.i, ptr %.sroa.937.0..sroa_idx.i.i, align 8, !noalias !14425
  %i.iq = icmp eq i64 %i.hr, 0
  br i1 %i.iq, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtB2e_5clone5Clone5cloneBM_.exit, label %.lr.ph.i.i188

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtB2e_5clone5Clone5cloneBM_.exit: ; preds = %.lr.ph.i.i188, %_RNvYTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB9_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBQ_6os_str5OsStrEEENtNtB1B_5clone5Clone5cloneB9_.exit.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit
  %.sroa.10.0.i61.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit ], [ %i.ho, %_RNvYTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB9_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBQ_6os_str5OsStrEEENtNtB1B_5clone5Clone5cloneB9_.exit.i.i ], [ %i.ho, %.lr.ph.i.i188 ]
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val59 = load ptr, ptr %i.ir, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 432
  %.val60 = load i64, ptr %i.is, align 8, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14449)
  %i.it = shl nuw nsw i64 %.val60, 4              ; 2 uses
  %i.iu = icmp eq i64 %.val60, 0
  br i1 %i.iu, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit208, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i197

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i197: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtB2e_5clone5Clone5cloneBM_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14452
  %i.iv = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.it, i64 noundef range(i64 1, 9) 8) #43, !noalias !14452 ; 4 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.ak, label %.lr.ph.preheader.i.i198

bb.ak:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i197
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.it) #46, !noalias !14458
  unreachable

.lr.ph.preheader.i.i198:                          ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i197
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %.val59, i64 %.val60
  br label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %bb.al, %.lr.ph.preheader.i.i198
  %.sroa.0.022.i.i200 = phi ptr [ %i.jb, %bb.al ], [ %.val59, %.lr.ph.preheader.i.i198 ] ; 4 uses
  %.sroa.10.021.i.i201 = phi i64 [ %i.iz, %bb.al ], [ %.val60, %.lr.ph.preheader.i.i198 ]
  %.sroa.7.020.i.i202 = phi i64 [ %i.ja, %bb.al ], [ 0, %.lr.ph.preheader.i.i198 ] ; 2 uses
  %i.iy = icmp eq ptr %.sroa.0.022.i.i200, %i.ix
  br i1 %i.iy, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit208, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i199
  %i.iz = add nsw i64 %.sroa.10.021.i.i201, -1    ; 2 uses
  %i.ja = add nuw nsw i64 %.sroa.7.020.i.i202, 1
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i200, i64 16
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %.sroa.7.020.i.i202 ; 2 uses
  %.val.i.i203 = load ptr, ptr %.sroa.0.022.i.i200, align 8, !alias.scope !14449, !noalias !14459, !nonnull !13, !noundef !13
  %i.jd = getelementptr i8, ptr %.sroa.0.022.i.i200, i64 8
  %.val13.i.i204 = load i64, ptr %i.jd, align 8, !alias.scope !14449, !noalias !14459, !noundef !13
  store ptr %.val.i.i203, ptr %i.jc, align 8, !noalias !14458
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %.val13.i.i204, ptr %i.je, align 8, !noalias !14458
  %i.jf = icmp eq i64 %i.iz, 0
  br i1 %i.jf, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit208, label %.lr.ph.i.i199

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit208: ; preds = %.lr.ph.i.i199, %bb.al, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtB2e_5clone5Clone5cloneBM_.exit
  %.sroa.10.0.i31.i.i205 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtB2e_5clone5Clone5cloneBM_.exit ], [ %i.iv, %bb.al ], [ %i.iv, %.lr.ph.i.i199 ]
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.jh = load ptr, ptr %i.jg, align 8, !noundef !13 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jl = load i64, ptr %i.jk, align 8, !range !142, !noundef !13 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jn = load i64, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jp = load i64, ptr %i.jo, align 8, !range !142, !noundef !13 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val65 = load ptr, ptr %i.jq, align 8          ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val66 = load i64, ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 448
  %.val67 = load ptr, ptr %i.js, align 8, !nonnull !13, !noundef !13
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 456
  %.val68 = load i64, ptr %i.jt, align 8, !noundef !13 ; 4 uses
  %i.ju = shl nuw nsw i64 %.val68, 4              ; 3 uses
  %i.jv = icmp eq i64 %.val68, 0
  br i1 %i.jv, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i209

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i209: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit208
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14460
  %i.jw = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ju, i64 noundef range(i64 1, 9) 8) #43, !noalias !14460 ; 3 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i209
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ju) #46, !noalias !14468
  unreachable

bb.an:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i209
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jw, ptr nonnull readonly align 8 %.val67, i64 %i.ju, i1 false), !noalias !14469
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit208, %bb.an
  %.sroa.5259.0 = phi ptr [ %i.jw, %bb.an ], [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit208 ]
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val69 = load ptr, ptr %i.jy, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 480
  %.val70 = load i64, ptr %i.jz, align 8, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14470)
  %i.ka = shl nuw nsw i64 %.val70, 5              ; 2 uses
  %i.kb = icmp eq i64 %.val70, 0
  br i1 %i.kb, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i211

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i211: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14473
  %i.kc = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ka, i64 noundef range(i64 1, 9) 8) #43, !noalias !14473 ; 4 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.ao, label %.lr.ph.preheader.i.i212

bb.ao:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i211
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ka) #46, !noalias !14479
  unreachable

.lr.ph.preheader.i.i212:                          ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i211
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %.val69, i64 %.val70
  br label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %.lr.ph.preheader.i.i212
  %.sroa.0.033.i.i = phi ptr [ %i.kl, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.val69, %.lr.ph.preheader.i.i212 ] ; 5 uses
  %.sroa.10.032.i.i = phi i64 [ %i.kf, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.val70, %.lr.ph.preheader.i.i212 ]
  %.sroa.7.031.i.i = phi i64 [ %i.kk, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ 0, %.lr.ph.preheader.i.i212 ] ; 2 uses
  %i.kf = add nsw i64 %.sroa.10.032.i.i, -1       ; 2 uses
  %i.kg = icmp eq ptr %.sroa.0.033.i.i, %i.ke
  br i1 %i.kg, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14480)
  %i.kh = load ptr, ptr %.sroa.0.033.i.i, align 8, !alias.scope !14483, !noalias !14484, !nonnull !13, !noundef !13 ; 2 uses
  %i.ki = atomicrmw add ptr %i.kh, i64 1 monotonic, align 8, !noalias !14486
  %i.kj = icmp slt i64 %i.ki, 0
  br i1 %i.kj, label %bb.aq, label %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.trap()
  unreachable

_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ap
  %i.kk = add nuw nsw i64 %.sroa.7.031.i.i, 1
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i, i64 32
  %i.km = getelementptr inbounds nuw [32 x i8], ptr %i.kc, i64 %.sroa.7.031.i.i ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !alias.scope !14483, !noalias !14484, !nonnull !13, !align !239, !noundef !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i, i64 16
  store ptr %i.kh, ptr %i.km, align 8, !noalias !14479
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store ptr %i.ko, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !14479
  %.sroa.523.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx.i.i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.kp, i64 16, i1 false), !noalias !14487
  %i.kq = icmp eq i64 %i.kf, 0
  br i1 %i.kq, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %.lr.ph.i.i213

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %.lr.ph.i.i213, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit
  %.sroa.10.0.i43.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit ], [ %i.kc, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.kc, %.lr.ph.i.i213 ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kt = trunc nuw i64 %i.jp to i1               ; 2 uses
  %.sroa.525.0 = select i1 %i.kt, ptr %.val65, ptr undef
  %.not.i = icmp ne ptr %.val65, null
  %i.ku = select i1 %i.kt, i1 %.not.i, i1 false
  %.sroa.626.0 = select i1 %i.ku, i64 %.val66, i64 undef
  %i.kv = trunc nuw i64 %i.jl to i1
  %.sroa.523.0 = select i1 %i.kv, i64 %i.jn, i64 undef
  %.not36 = icmp eq ptr %i.jh, null
  %.sroa.521.0 = select i1 %.not36, i64 undef, i64 %i.jj
  %i.kw = trunc nuw i64 %i.go to i1               ; 2 uses
  %.sroa.518.0 = select i1 %i.kw, i64 %i.gq, i64 undef
  %.sroa.6.0 = select i1 %i.kw, i64 %i.gs, i64 undef
  %i.kx = trunc nuw i64 %i.fv to i1
  %.sroa.516.0 = select i1 %i.kx, i64 %i.fx, i64 undef
  %.not34 = icmp eq ptr %i.ew, null
  %.sroa.514.0 = select i1 %.not34, i64 undef, i64 %i.ey
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.d, ptr %i.ky, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.f, ptr %i.kz, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %.sroa.0.0, ptr %i.la, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %i.kr, i64 16, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %.sroa.03.0, ptr %i.lb, align 8
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %i.ks, i64 16, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 596
  store i8 %i.l, ptr %i.lc, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.n, ptr %i.ld, align 8
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.510.sroa.0.0, ptr %.sroa.510.0..sroa_idx11, align 8
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.510.sroa.4.0, ptr %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx11.sroa_idx, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.val52, ptr %i.le, align 8
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.10.0.i31.i.i, ptr %.sroa.4216.0..sroa_idx, align 8
  %.sroa.5217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.val52, ptr %.sroa.5217.0..sroa_idx, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 %i.ao, ptr %i.lf, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.val50, ptr %i.lg, align 8
  %.sroa.4219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.10.0.i31.i.i79, ptr %.sroa.4219.0..sroa_idx, align 8
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.val50, ptr %.sroa.5220.0..sroa_idx, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.val48, ptr %i.lh, align 8
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.10.0.i31.i.i91, ptr %.sroa.4222.0..sroa_idx, align 8
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.val48, ptr %.sroa.5223.0..sroa_idx, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.val54, ptr %i.li, align 8
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.sroa.10.0.i45.i.i, ptr %.sroa.4225.0..sroa_idx, align 8
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.val54, ptr %.sroa.5226.0..sroa_idx, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.val58, ptr %i.lj, align 8
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sroa.10.0.i44.i.i, ptr %.sroa.4228.0..sroa_idx, align 8
  %.sroa.5229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.val58, ptr %.sroa.5229.0..sroa_idx, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.val56, ptr %i.lk, align 8
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.sroa.10.0.i44.i.i122, ptr %.sroa.4231.0..sroa_idx, align 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.val56, ptr %.sroa.5232.0..sroa_idx, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %.val46, ptr %i.ll, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.sroa.10.0.i31.i.i134, ptr %.sroa.4234.0..sroa_idx, align 8
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.val46, ptr %.sroa.5235.0..sroa_idx, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %.val44, ptr %i.lm, align 8
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.sroa.10.0.i31.i.i146, ptr %.sroa.4237.0..sroa_idx, align 8
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.val44, ptr %.sroa.5238.0..sroa_idx, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 %i.eu, ptr %i.ln, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %i.ew, ptr %i.lo, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i64 %.sroa.514.0, ptr %i.lp, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %.val40, ptr %i.lq, align 8
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %.sroa.10.0.i44.i.i160, ptr %.sroa.4240.0..sroa_idx, align 8
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %.val40, ptr %.sroa.5241.0..sroa_idx, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %.val42, ptr %i.lr, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %.sroa.5243.0, ptr %.sroa.5243.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %.val42, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.fv, ptr %0, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.516.0, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %.val38, ptr %i.lt, align 8
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %.sroa.10.0.i31.i.i172, ptr %.sroa.4245.0..sroa_idx, align 8
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %.val38, ptr %.sroa.5246.0..sroa_idx, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.go, ptr %i.lu, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.518.0, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i32 %i.gu, ptr %i.lv, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %.val62, ptr %i.lw, align 8
  %.sroa.4248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %.sroa.10.0.i31.i.i183, ptr %.sroa.4248.0..sroa_idx, align 8
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %.val62, ptr %.sroa.5249.0..sroa_idx, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %.val64, ptr %i.lx, align 8
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %.sroa.10.0.i61.i.i, ptr %.sroa.4251.0..sroa_idx, align 8
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %.val64, ptr %.sroa.5252.0..sroa_idx, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %.val60, ptr %i.ly, align 8
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %.sroa.10.0.i31.i.i205, ptr %.sroa.4254.0..sroa_idx, align 8
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %.val60, ptr %.sroa.5255.0..sroa_idx, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.jh, ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 %.sroa.521.0, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.jl, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.523.0, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.jp, ptr %i.md, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.525.0, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.626.0, ptr %.sroa.626.0..sroa_idx, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %.val68, ptr %i.me, align 8
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %.sroa.5259.0, ptr %.sroa.4266.0..sroa_idx, align 8
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %.val68, ptr %.sroa.5267.0..sroa_idx, align 8
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %.val70, ptr %.sroa.6268.0..sroa_idx, align 8
  %.sroa.6268.sroa.4.0..sroa.6268.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %.sroa.10.0.i43.i.i, ptr %.sroa.6268.sroa.4.0..sroa.6268.0..sroa_idx.sroa_idx, align 8
  %.sroa.6268.sroa.5.0..sroa.6268.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 %.val70, ptr %.sroa.6268.sroa.5.0..sroa.6268.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsd_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [712 x i8], align 8               ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [600 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.s = load i64, ptr %i.r, align 8, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.u = load ptr, ptr %i.t, align 8, !noundef !13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 584
end_hunk_6
begin_hunk_7_@_RNvXsd_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.am
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14558, !inline_history !14564
  %i.et = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.eq, i64 noundef range(i64 1, 9) 8) #43, !noalias !14558, !inline_history !14564 ; 5 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.an, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i

bb.an:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_.exit ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.eq) #46, !noalias !14565, !inline_history !14564
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.ev = getelementptr inbounds nuw [712 x i8], ptr %i.eo, i64 %i.ep
  %i.ew = icmp eq i64 %i.ep, 0
  br i1 %i.ew, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.ao
  %.sroa.10.0213 = phi i64 [ %i.ey, %bb.ao ], [ %i.ep, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i ]
  %.sroa.7204.0212 = phi i64 [ %i.ez, %bb.ao ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %.sroa.0202.0211 = phi ptr [ %i.fa, %bb.ao ], [ %i.eo, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 3 uses
  %i.ex = icmp eq ptr %.sroa.0202.0211, %i.ev
  br i1 %i.ex, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.ey = add nsw i64 %.sroa.10.0213, -1          ; 2 uses
  %i.ez = add nuw nsw i64 %.sroa.7204.0212, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0202.0211, i64 712
  %i.fb = getelementptr inbounds nuw [712 x i8], ptr %i.et, i64 %.sroa.7204.0212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsd_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(712) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %.sroa.0202.0211) #45, !noalias !14566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.fb, ptr noundef nonnull align 8 dereferenceable(712) %i.a, i64 712, i1 false), !noalias !14566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fc = icmp eq i64 %i.ey, 0
  br i1 %i.fc, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %.lr.ph

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %bb.ao, %.lr.ph, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.thread, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sroa.10.0.i.i238 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.thread ], [ %i.et, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.et, %.lr.ph ], [ %i.et, %bb.ao ]
  %.sroa.4.0.i.i237 = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.thread ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.ep, %.lr.ph ], [ %i.ep, %bb.ao ]
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val122 = load ptr, ptr %i.fd, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val123 = load i64, ptr %i.fe, align 8, !noundef !13 ; 6 uses
  %i.ff = mul nuw nsw i64 %.val123, 96            ; 2 uses
  %i.fg = icmp eq i64 %.val123, 0
  br i1 %i.fg, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i149

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i149: ; preds = %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14567
  %i.fh = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ff, i64 noundef range(i64 1, 9) 8) #43, !noalias !14567 ; 4 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.ap, label %.lr.ph.preheader.i.i150

bb.ap:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i149
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ff) #46, !noalias !14575
  unreachable

.lr.ph.preheader.i.i150:                          ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i149
  %i.fj = getelementptr inbounds nuw [96 x i8], ptr %.val122, i64 %.val123
  br label %.lr.ph.i.i151

.lr.ph.i.i151:                                    ; preds = %bb.aq, %.lr.ph.preheader.i.i150
  %.sroa.0.021.i.i152 = phi ptr [ %i.fn, %bb.aq ], [ %.val122, %.lr.ph.preheader.i.i150 ] ; 3 uses
  %.sroa.10.020.i.i153 = phi i64 [ %i.fl, %bb.aq ], [ %.val123, %.lr.ph.preheader.i.i150 ]
  %.sroa.7.019.i.i154 = phi i64 [ %i.fm, %bb.aq ], [ 0, %.lr.ph.preheader.i.i150 ] ; 2 uses
  %i.fk = icmp eq ptr %.sroa.0.021.i.i152, %i.fj
  br i1 %i.fk, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i151
  %i.fl = add nsw i64 %.sroa.10.020.i.i153, -1    ; 2 uses
  %i.fm = add nuw nsw i64 %.sroa.7.019.i.i154, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i152, i64 96
  %i.fo = getelementptr inbounds nuw [96 x i8], ptr %i.fh, i64 %.sroa.7.019.i.i154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14575
  call fastcc void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_groupNtB5_8ArgGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.021.i.i152) #45, !noalias !14576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fo, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14575
  %i.fp = icmp eq i64 %i.fl, 0
  br i1 %i.fp, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %.lr.ph.i.i151

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %.lr.ph.i.i151, %bb.aq, %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit
  %.sroa.10.0.i30.i.i155 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit ], [ %i.fh, %bb.aq ], [ %i.fh, %.lr.ph.i.i151 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.fr = load ptr, ptr %i.fq, align 8, !noundef !13 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !range !142, !noundef !13 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.fz = load ptr, ptr %i.fy, align 8, !noundef !13 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.gd = load ptr, ptr %i.gc, align 8, !noundef !13 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gh = load i64, ptr %i.gg, align 8, !range !547, !noundef !13 ; 3 uses
  %.not107 = icmp eq i64 %i.gh, -1
  br i1 %.not107, label %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %bb.ar

bb.ar:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14577)
  %i.gi = icmp eq i64 %i.gh, 4
  br i1 %i.gi, label %bb.as, label %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.as:                                            ; preds = %bb.ar
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !14577, !noalias !14580, !nonnull !13, !noundef !13
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !14577, !noalias !14580, !nonnull !13, !align !239, !noundef !13
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.go = load ptr, ptr %i.gn, align 8, !invariant.load !13, !noalias !14582, !nonnull !13
  %i.gp = tail call { ptr, ptr } %i.go(ptr noundef nonnull %i.gk) #45, !noalias !14582, !inline_history !14268 ; 2 uses
  %i.gq = extractvalue { ptr, ptr } %i.gp, 0
  %i.gr = extractvalue { ptr, ptr } %i.gp, 1
  br label %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.as, %bb.ar, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit
  %.sroa.568.sroa.0.0 = phi ptr [ undef, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit ], [ %i.gq, %bb.as ], [ undef, %bb.ar ]
  %.sroa.568.sroa.4.0 = phi ptr [ undef, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit ], [ %i.gr, %bb.as ], [ undef, %bb.ar ]
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 708
  %i.gt = load i8, ptr %i.gs, align 4, !range !1313, !noundef !13
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.gv = load ptr, ptr %i.gu, align 8, !noundef !13
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val114 = load ptr, ptr %i.gw, align 8, !nonnull !13, !noundef !13
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val115 = load i64, ptr %i.gx, align 8, !noundef !13 ; 4 uses
  %i.gy = shl nuw nsw i64 %.val115, 4             ; 3 uses
  %i.gz = icmp eq i64 %.val115, 0
  br i1 %i.gz, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i158

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i158: ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14583
  %i.ha = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gy, i64 noundef range(i64 1, 9) 8) #43, !noalias !14583 ; 3 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i158
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.gy) #46, !noalias !14591
  unreachable

bb.au:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i158
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull readonly align 8 %.val114, i64 %i.gy, i1 false), !noalias !14592
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.au
  %.sroa.5189.0 = phi ptr [ %i.ha, %bb.au ], [ inttoptr (i64 8 to ptr), %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val116 = load ptr, ptr %i.hc, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val117 = load i64, ptr %i.hd, align 8, !noundef !13 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14593)
  %i.he = shl nuw nsw i64 %.val117, 5             ; 2 uses
  %i.hf = icmp eq i64 %.val117, 0
  br i1 %i.hf, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i160

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i160: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14596
  %i.hg = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.he, i64 noundef range(i64 1, 9) 8) #43, !noalias !14596 ; 4 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.av, label %.lr.ph.preheader.i.i161

bb.av:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i160
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.he) #46, !noalias !14602
  unreachable

.lr.ph.preheader.i.i161:                          ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i160
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %.val116, i64 %.val117
  br label %.lr.ph.i.i162

.lr.ph.i.i162:                                    ; preds = %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %.lr.ph.preheader.i.i161
  %.sroa.0.033.i.i = phi ptr [ %i.hp, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.val116, %.lr.ph.preheader.i.i161 ] ; 5 uses
  %.sroa.10.032.i.i = phi i64 [ %i.hj, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.val117, %.lr.ph.preheader.i.i161 ]
  %.sroa.7.031.i.i = phi i64 [ %i.ho, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ 0, %.lr.ph.preheader.i.i161 ] ; 2 uses
  %i.hj = add nsw i64 %.sroa.10.032.i.i, -1       ; 2 uses
  %i.hk = icmp eq ptr %.sroa.0.033.i.i, %i.hi
  br i1 %i.hk, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14603)
  %i.hl = load ptr, ptr %.sroa.0.033.i.i, align 8, !alias.scope !14606, !noalias !14607, !nonnull !13, !noundef !13 ; 2 uses
  %i.hm = atomicrmw add ptr %i.hl, i64 1 monotonic, align 8, !noalias !14609
  %i.hn = icmp slt i64 %i.hm, 0
  br i1 %i.hn, label %bb.ax, label %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  tail call void @llvm.trap()
  unreachable

_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.aw
  %i.ho = add nuw nsw i64 %.sroa.7.031.i.i, 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i, i64 32
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.hg, i64 %.sroa.7.031.i.i ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !14606, !noalias !14607, !nonnull !13, !align !239, !noundef !13
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i.i, i64 16
  store ptr %i.hl, ptr %i.hq, align 8, !noalias !14602
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %i.hs, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !14602
  %.sroa.523.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx.i.i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i64 16, i1 false), !noalias !14610
  %i.hu = icmp eq i64 %i.hj, 0
  br i1 %i.hu, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %.lr.ph.i.i162

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %.lr.ph.i.i162, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit
  %.sroa.10.0.i43.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit ], [ %i.hg, %_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_8AnyValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.hg, %.lr.ph.i.i162 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.not106 = icmp eq ptr %i.gd, null
  %.sroa.565.0 = select i1 %.not106, i64 undef, i64 %i.gf
  %.not105 = icmp eq ptr %i.fz, null
  %.sroa.563.0 = select i1 %.not105, i64 undef, i64 %i.gb
  %i.ih = trunc nuw i64 %i.fv to i1
  %.sroa.561.0 = select i1 %i.ih, i64 %i.fx, i64 undef
  %.not104 = icmp eq ptr %i.fr, null
  %.sroa.559.0 = select i1 %.not104, i64 undef, i64 %i.ft
  %i.ii = trunc nuw i64 %i.ct to i1
  %.sroa.553.0 = select i1 %i.ii, i64 %i.cv, i64 undef
  %.not93 = icmp eq ptr %i.am, null
  %.sroa.515.0 = select i1 %.not93, i64 undef, i64 %i.ao
  %.not92 = icmp eq ptr %i.ai, null
  %.sroa.513.0 = select i1 %.not92, i64 undef, i64 %i.ak
  %.not91 = icmp eq ptr %i.ae, null
  %.sroa.511.0 = select i1 %.not91, i64 undef, i64 %i.ag
  %.not = icmp eq ptr %i.u, null
  %.sroa.5.0 = select i1 %.not, i64 undef, i64 %i.w
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.q, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 %i.s, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %i.u, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 %.sroa.5.0, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 %i.y, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %.sroa.02.0, ptr %i.io, align 8
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %.sroa.06.0, ptr %i.ip, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.ae, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 %.sroa.511.0, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %i.ai, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 %.sroa.513.0, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr %i.am, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 %.sroa.515.0, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %.sroa.016.0, ptr %i.iw, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx19, ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i64 16, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %.sroa.020.0, ptr %i.ix, align 8
  %.sroa.522.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i64 16, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %.sroa.024.0, ptr %i.iy, align 8
  %.sroa.526.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.526.0..sroa_idx27, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 16, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %.sroa.028.0, ptr %i.iz, align 8
  %.sroa.530.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx31, ptr noundef nonnull align 8 dereferenceable(16) %i.ia, i64 16, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %.sroa.032.0, ptr %i.ja, align 8
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534.0..sroa_idx35, ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i64 16, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %.sroa.036.0, ptr %i.jb, align 8
  %.sroa.538.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.538.0..sroa_idx39, ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i64 16, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.val111, ptr %i.jc, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.10.0.i44.i.i, ptr %.sroa.4165.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.val111, ptr %.sroa.5.0..sroa_idx, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.val113, ptr %i.jd, align 8
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.5167.0, ptr %.sroa.5167.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.val113, ptr %.sroa.7.0..sroa_idx, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.val109, ptr %i.je, align 8
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.10.0.i44.i.i135, ptr %.sroa.4169.0..sroa_idx, align 8
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.val109, ptr %.sroa.5170.0..sroa_idx, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %.sroa.040.0, ptr %i.jf, align 8
  %.sroa.542.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx43, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %.sroa.044.0, ptr %i.jg, align 8
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.546.0..sroa_idx47, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 16, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %.sroa.048.0, ptr %i.jh, align 8
  %.sroa.550.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.550.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(16) %i.if, i64 16, i1 false)
  store i64 %i.ct, ptr %0, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.553.0, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %.sroa.054.0, ptr %i.jj, align 8
  %.sroa.556.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %0, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i64 16, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 700
  store <2 x i32> %i.cz, ptr %i.jk, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.val119, ptr %i.jl, align 8
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.10.0.i30.i.i, ptr %.sroa.4181.0..sroa_idx, align 8
  %.sroa.5182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.val119, ptr %.sroa.5182.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.val121, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.10.0.i50.i.i, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.val121, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.4.0.i.i237, ptr %i.jm, align 8
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.sroa.10.0.i.i238, ptr %.sroa.4172.0..sroa_idx, align 8
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ep, ptr %.sroa.5173.0..sroa_idx, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.val123, ptr %i.jn, align 8
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sroa.10.0.i30.i.i155, ptr %.sroa.4175.0..sroa_idx, align 8
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.val123, ptr %.sroa.5176.0..sroa_idx, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr %i.fr, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 %.sroa.559.0, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fv, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.561.0, ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %i.fz, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i64 %.sroa.563.0, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %i.gd, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i64 %.sroa.565.0, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gh, ptr %i.jw, align 8
  %.sroa.568.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.568.sroa.0.0, ptr %.sroa.568.0..sroa_idx69, align 8
  %.sroa.568.sroa.4.0..sroa.568.0..sroa_idx69.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.568.sroa.4.0, ptr %.sroa.568.sroa.4.0..sroa.568.0..sroa_idx69.sroa_idx, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i8 %i.gt, ptr %i.jx, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.gv, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.val115, ptr %i.jz, align 8
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.sroa.5189.0, ptr %.sroa.4196.0..sroa_idx, align 8
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.val115, ptr %.sroa.5197.0..sroa_idx, align 8
  %.sroa.6198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %.val117, ptr %.sroa.6198.0..sroa_idx, align 8
  %.sroa.6198.sroa.4.0..sroa.6198.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.sroa.10.0.i43.i.i, ptr %.sroa.6198.sroa.4.0..sroa.6198.0..sroa_idx.sroa_idx, align 8
  %.sroa.6198.sroa.5.0..sroa.6198.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.val117, ptr %.sroa.6198.sroa.5.0..sroa.6198.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @436, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @437, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @346) #43
end_hunk_7
