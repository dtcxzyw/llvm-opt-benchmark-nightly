Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/stdio_fixture.stdio_fixture.8f70a030548dc77a-cgu.0?download=true
inline.NumInlined: 654
inline.NumDeleted: 466
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvCscjwHxV1jUiA_13stdio_fixture4main:bb.a

_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j2_ECscjwHxV1jUiA_13stdio_fixture.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.0416.sroa.0, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.0425, i64 320, i1 false), !alias.scope !985, !noalias !987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8423.sroa.5, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.10434.sroa.4, i64 344, i1 false), !alias.scope !985, !noalias !987
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0425)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10434.sroa.4)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !990
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 23, 41) 40) #19, !noalias !991
  %i.gi = load i64, ptr %i.q, align 8, !range !7, !noalias !990, !noundef !6 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.i111.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i112, align 8
  %.sroa.5.i111.sroa.4.0..sroa.4.0..sroa_idx.i112.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.i111.sroa.4.0.copyload = load i64, ptr %.sroa.5.i111.sroa.4.0..sroa.4.0..sroa_idx.i112.sroa_idx, align 8
  %.sroa.5.i111.sroa.0.0 = select i1 %i.gj, ptr undef, ptr %.sroa.5.i111.sroa.0.0.copyload
  %.sroa.5.i111.sroa.4.0 = select i1 %i.gj, i64 undef, i64 %.sroa.5.i111.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !990
  %i.gk = icmp sgt i64 %.sroa.8432.0.copyload, 0
  br i1 %i.gk, label %bb.j, label %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116

bb.j:                                             ; preds = %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReECscjwHxV1jUiA_13stdio_fixture.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9433.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9433.0.copyload, i64 noundef %.sroa.8432.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !992
  br label %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116

_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116: ; preds = %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command5aboutReECscjwHxV1jUiA_13stdio_fixture.exit, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ax, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.0416.sroa.0, i64 320, i1 false), !alias.scope !991, !noalias !993
  %.sroa.0416.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 320
  store i64 %i.gf, ptr %.sroa.0416.sroa.4.0..sroa_idx, align 8, !alias.scope !991, !noalias !993
  %.sroa.0416.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 328
  store ptr %.sroa.5.i106.sroa.0.0, ptr %.sroa.0416.sroa.5.0..sroa_idx, align 8, !alias.scope !991, !noalias !993
  %.sroa.0416.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 336
  store i64 %.sroa.5.i106.sroa.4.0, ptr %.sroa.0416.sroa.6.0..sroa_idx, align 8, !alias.scope !991, !noalias !993
  %.sroa.4417.0..sroa_idx418 = getelementptr inbounds nuw i8, ptr %i.ax, i64 344
  store i64 %i.gi, ptr %.sroa.4417.0..sroa_idx418, align 8, !alias.scope !991, !noalias !993
  %.sroa.6420.0..sroa_idx421 = getelementptr inbounds nuw i8, ptr %i.ax, i64 352
  store ptr %.sroa.5.i111.sroa.0.0, ptr %.sroa.6420.0..sroa_idx421, align 8, !alias.scope !991, !noalias !993
  %.sroa.8423.0..sroa_idx424 = getelementptr inbounds nuw i8, ptr %i.ax, i64 360
  store i64 %.sroa.5.i111.sroa.4.0, ptr %.sroa.8423.0..sroa_idx424, align 8, !alias.scope !991, !noalias !993
  %.sroa.8423.sroa.5.0..sroa.8423.0..sroa_idx424.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8423.sroa.5.0..sroa.8423.0..sroa_idx424.sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8423.sroa.5, i64 344, i1 false), !alias.scope !991, !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0416.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8423.sroa.5)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.ax) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %.sroa.7447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7447.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.9449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9449.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.14454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14454.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.16456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16456.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.18458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18458.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.23463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23463.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !996
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef range(i64 23, 41) 33) #19, !noalias !997
  %i.gl = load i64, ptr %i.p, align 8, !range !7, !noalias !996, !noundef !6 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.i135.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i136, align 8
  %.sroa.5.i135.sroa.4.0..sroa.4.0..sroa_idx.i136.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.i135.sroa.4.0.copyload = load i64, ptr %.sroa.5.i135.sroa.4.0..sroa.4.0..sroa_idx.i136.sroa_idx, align 8
  %.sroa.5.i135.sroa.0.0 = select i1 %i.gm, ptr undef, ptr %.sroa.5.i135.sroa.0.0.copyload
  %.sroa.5.i135.sroa.4.0 = select i1 %i.gm, i64 undef, i64 %.sroa.5.i135.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !996
  store i64 0, ptr %i.au, align 8, !alias.scope !997, !noalias !998
  %.sroa.2441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 1, ptr %.sroa.2441.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.3442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 0, ptr %.sroa.3442.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.4443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 -1, ptr %.sroa.4443.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.5445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i64 0, ptr %.sroa.5445.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.6446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6446.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.8448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.8448.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.10450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 112 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10450.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.11451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 120 ; 4 uses
  %.sroa.13453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11451.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13453.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.15455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15455.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.17457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17457.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.19459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19459.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.20460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %.sroa.22462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20460.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22462.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.24464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24464.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.25465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 264
  store i64 0, ptr %.sroa.25465.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.26466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 272
  store i64 -1, ptr %.sroa.26466.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.27468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 296
  store i64 -1, ptr %.sroa.27468.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.28470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 320
  store i64 %i.gl, ptr %.sroa.28470.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.31471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 328
  store ptr %.sroa.5.i135.sroa.0.0, ptr %.sroa.31471.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.33472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 336
  store i64 %.sroa.5.i135.sroa.4.0, ptr %.sroa.33472.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.33473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 344
  store i64 -1, ptr %.sroa.33473.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.34475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 368
  store i64 -1, ptr %.sroa.34475.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.35477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 392
  store i64 -1, ptr %.sroa.35477.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.36479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 416
  store i64 -1, ptr %.sroa.36479.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.37481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 440
  store i64 -1, ptr %.sroa.37481.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.38483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 464
  store i64 -1, ptr %.sroa.38483.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.39485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 488
  store i64 -1, ptr %.sroa.39485.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.40487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 512
  store i64 -1, ptr %.sroa.40487.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.41489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 536
  store i64 -1, ptr %.sroa.41489.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.42491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 560
  store ptr @19, ptr %.sroa.42491.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 568
  store i64 6, ptr %.sroa.43.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.44492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 576
  store ptr @11, ptr %.sroa.44492.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 584
  store i64 4, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.47493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 592
  store ptr null, ptr %.sroa.47493.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.48495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 608
  store ptr null, ptr %.sroa.48495.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.49497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 624
  store ptr null, ptr %.sroa.49497.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.50499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 640
  store ptr null, ptr %.sroa.50499.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.51501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 656
  store ptr null, ptr %.sroa.51501.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.52503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 672
  store ptr null, ptr %.sroa.52503.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.53505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 688
  store ptr null, ptr %.sroa.53505.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.54506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 696
  store i32 -1, ptr %.sroa.54506.0..sroa_idx, align 8, !alias.scope !997, !noalias !998
  %.sroa.55507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 700
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.au, i64 104 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.55507.0..sroa_idx, i8 0, i64 9, i1 false)
  %i.go = load i64, ptr %i.gn, align 8, !range !5, !alias.scope !1003, !noalias !1004, !noundef !6 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.k, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i

bb.k:                                             ; preds = %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gn) #21, !noalias !1004
  %.pre = load ptr, ptr %.sroa.10450.0..sroa_idx, align 8, !alias.scope !1003, !noalias !1004
  %.pre1090 = load i64, ptr %i.gn, align 8, !range !5, !alias.scope !1005, !noalias !1006
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i: ; preds = %bb.k, %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116
  %i.gq = phi i64 [ %.pre1090, %bb.k ], [ %i.go, %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116 ] ; 2 uses
  %i.gr = phi ptr [ %.pre, %bb.k ], [ inttoptr (i64 8 to ptr), %_RINvMs0_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command10long_aboutReECscjwHxV1jUiA_13stdio_fixture.exit116 ] ; 4 uses
  store ptr @21, ptr %i.gr, align 8, !noalias !1007
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 7, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1008
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1008
  store i64 1, ptr %.sroa.11451.0..sroa_idx, align 8, !alias.scope !1003, !noalias !1004
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.gs = icmp eq i64 %i.gq, 1
  br i1 %i.gs, label %bb.l, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i

bb.l:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gn) #21, !noalias !1006
  %.pre1091 = load ptr, ptr %.sroa.10450.0..sroa_idx, align 8, !alias.scope !1005, !noalias !1006
  %.pre1092 = load i64, ptr %i.gn, align 8, !range !5, !alias.scope !1011, !noalias !1012
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i: ; preds = %bb.l, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i
  %i.gt = phi i64 [ %.pre1092, %bb.l ], [ %i.gq, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i ]
  %i.gu = phi ptr [ %.pre1091, %bb.l ], [ %i.gr, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store ptr @22, ptr %i.gv, align 8, !noalias !1013
  %.sroa.4.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  store i64 7, ptr %.sroa.4.0..sroa_idx.i.1.i, align 8, !noalias !1014
  %.sroa.5.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.1.i, align 8, !noalias !1014
  store i64 2, ptr %.sroa.11451.0..sroa_idx, align 8, !alias.scope !1005, !noalias !1006
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  %i.gw = icmp eq i64 %i.gt, 2
  br i1 %i.gw, label %bb.m, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit

bb.m:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gn) #21, !noalias !1012
  %.pre1093 = load ptr, ptr %.sroa.10450.0..sroa_idx, align 8, !alias.scope !1011, !noalias !1012
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i, %bb.m
  %i.gx = phi ptr [ %i.gu, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.1.i ], [ %.pre1093, %bb.m ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store ptr @23, ptr %i.gy, align 8, !noalias !1017
  %.sroa.4.0..sroa_idx.i.2.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.2.i, align 8, !noalias !1018
  %.sroa.5.0..sroa_idx.i.2.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 64
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.2.i, align 8, !noalias !1018
  store i64 3, ptr %.sroa.11451.0..sroa_idx, align 8, !alias.scope !1011, !noalias !1012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.av, ptr noundef nonnull align 8 dereferenceable(712) %i.au, i64 712, i1 false), !alias.scope !1019, !noalias !1020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.av) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.sroa.7523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7523.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.9525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 96 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9525.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.14530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14530.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.16532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16532.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.18534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18534.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.23539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23539.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1023
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef range(i64 23, 41) 34) #19, !noalias !1024
  %i.gz = load i64, ptr %i.o, align 8, !range !7, !noalias !1023, !noundef !6 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.i163.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i164, align 8
  %.sroa.5.i163.sroa.4.0..sroa.4.0..sroa_idx.i164.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.i163.sroa.4.0.copyload = load i64, ptr %.sroa.5.i163.sroa.4.0..sroa.4.0..sroa_idx.i164.sroa_idx, align 8
  %.sroa.5.i163.sroa.0.0 = select i1 %i.ha, ptr undef, ptr %.sroa.5.i163.sroa.0.0.copyload
  %.sroa.5.i163.sroa.4.0 = select i1 %i.ha, i64 undef, i64 %.sroa.5.i163.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1023
  store i64 0, ptr %i.as, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.2517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 1, ptr %.sroa.2517.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.3518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 0, ptr %.sroa.3518.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.4519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 -1, ptr %.sroa.4519.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.5521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i64 0, ptr %.sroa.5521.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.6522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6522.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.8524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 88 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.8524.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.10526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10526.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.11527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %.sroa.13529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11527.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13529.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.15531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15531.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.17533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17533.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.19535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19535.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.20536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 216
  %.sroa.22538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20536.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22538.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.24540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24540.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.25541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 264
  store i64 0, ptr %.sroa.25541.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.26542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 272
  store i64 -1, ptr %.sroa.26542.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.27544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 296
  store i64 -1, ptr %.sroa.27544.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.28546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 320
  store i64 %i.gz, ptr %.sroa.28546.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.31547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 328
  store ptr %.sroa.5.i163.sroa.0.0, ptr %.sroa.31547.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.33548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 336
  store i64 %.sroa.5.i163.sroa.4.0, ptr %.sroa.33548.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.33549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 344
  store i64 -1, ptr %.sroa.33549.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.34551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 368
  store i64 -1, ptr %.sroa.34551.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.35553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 392
  store i64 -1, ptr %.sroa.35553.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.36555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 416
  store i64 -1, ptr %.sroa.36555.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.37557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 440
  store i64 -1, ptr %.sroa.37557.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.38559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 464
  store i64 -1, ptr %.sroa.38559.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.39561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 488
  store i64 -1, ptr %.sroa.39561.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.40563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  store i64 -1, ptr %.sroa.40563.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.41565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 536
  store i64 -1, ptr %.sroa.41565.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.42567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 560
  store ptr @24, ptr %.sroa.42567.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.43568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 568
  store i64 6, ptr %.sroa.43568.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.44569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 576
  store ptr null, ptr %.sroa.44569.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.45571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 592
  store ptr null, ptr %.sroa.45571.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.46573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 608
  store ptr null, ptr %.sroa.46573.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.47575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 624
  store ptr null, ptr %.sroa.47575.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.48577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 640
  store ptr null, ptr %.sroa.48577.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.49579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 656
  store ptr null, ptr %.sroa.49579.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.50581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 672
  store ptr null, ptr %.sroa.50581.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.51583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 688
  store ptr null, ptr %.sroa.51583.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.52584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 696
  store i32 116, ptr %.sroa.52584.0..sroa_idx, align 8, !alias.scope !1024, !noalias !1025
  %.sroa.54585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 700
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.as, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.54585.0..sroa_idx, i8 0, i64 9, i1 false)
  %i.hc = load i64, ptr %.sroa.9525.0..sroa_idx, align 8, !alias.scope !1029, !noalias !1026, !noundef !6 ; 4 uses
  %i.hd = load i64, ptr %i.hb, align 8, !range !5, !alias.scope !1029, !noalias !1026, !noundef !6 ; 2 uses
  %i.he = icmp eq i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.n, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i

bb.n:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb) #21, !noalias !1026
  %.pre.i = load i64, ptr %i.hb, align 8, !range !5, !alias.scope !1030, !noalias !1026
  %.pre1094 = load ptr, ptr %.sroa.8524.0..sroa_idx, align 8, !alias.scope !1029, !noalias !1026
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i: ; preds = %bb.n, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  %i.hf = phi ptr [ inttoptr (i64 4 to ptr), %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit ], [ %.pre1094, %bb.n ] ; 2 uses
  %i.hg = phi i64 [ %i.hd, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j3_ECscjwHxV1jUiA_13stdio_fixture.exit ], [ %.pre.i, %bb.n ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hc ; 2 uses
  store i32 113, ptr %i.hh, align 4, !noalias !1031
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store i8 1, ptr %i.hi, align 4, !noalias !1031
  %i.hj = add i64 %i.hc, 1                        ; 3 uses
  store i64 %i.hj, ptr %.sroa.9525.0..sroa_idx, align 8, !alias.scope !1029, !noalias !1026
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.hk = icmp eq i64 %i.hj, %i.hg
  br i1 %i.hk, label %bb.o, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit

bb.o:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb) #21, !noalias !1026
  %.pre8.i = load ptr, ptr %.sroa.8524.0..sroa_idx, align 8, !alias.scope !1030, !noalias !1026
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i, %bb.o
  %i.hl = phi ptr [ %.pre8.i, %bb.o ], [ %i.hf, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hj ; 2 uses
  store i32 119, ptr %i.hm, align 4, !noalias !1033
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store i8 1, ptr %i.hn, align 4, !noalias !1033
  %i.ho = add i64 %i.hc, 2
  store i64 %i.ho, ptr %.sroa.9525.0..sroa_idx, align 8, !alias.scope !1030, !noalias !1026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.at, ptr noundef nonnull align 8 dereferenceable(712) %i.as, i64 712, i1 false), !alias.scope !1034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.at) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %.sroa.7597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 72 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7597.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.9599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9599.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.14604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14604.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.16606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16606.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.18608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18608.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  %.sroa.23613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23613.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1037
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef range(i64 23, 41) 28) #19, !noalias !1038
  %i.hp = load i64, ptr %i.n, align 8, !range !7, !noalias !1037, !noundef !6 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, -1                   ; 2 uses
  %.sroa.4.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.i187.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i188, align 8
  %.sroa.5.i187.sroa.4.0..sroa.4.0..sroa_idx.i188.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5.i187.sroa.4.0.copyload = load i64, ptr %.sroa.5.i187.sroa.4.0..sroa.4.0..sroa_idx.i188.sroa_idx, align 8
  %.sroa.5.i187.sroa.0.0 = select i1 %i.hq, ptr undef, ptr %.sroa.5.i187.sroa.0.0.copyload
  %.sroa.5.i187.sroa.4.0 = select i1 %i.hq, i64 undef, i64 %.sroa.5.i187.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1037
  store i64 0, ptr %i.ao, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.2591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 1, ptr %.sroa.2591.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.3592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %.sroa.3592.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.4593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 -1, ptr %.sroa.4593.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.5595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.5595.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.6596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6596.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.8598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.8598.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.10600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10600.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.11601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %.sroa.13603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11601.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13603.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.15605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15605.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.17607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17607.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.19609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19609.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.20610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 216
  %.sroa.22612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20610.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22612.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.24614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24614.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.25615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 264
  store i64 0, ptr %.sroa.25615.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.26616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 272
  store i64 -1, ptr %.sroa.26616.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.27618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 296
  store i64 -1, ptr %.sroa.27618.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.28620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  store i64 %i.hp, ptr %.sroa.28620.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.31621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 328
  store ptr %.sroa.5.i187.sroa.0.0, ptr %.sroa.31621.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.33622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 336
  store i64 %.sroa.5.i187.sroa.4.0, ptr %.sroa.33622.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.33623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 344
  store i64 -1, ptr %.sroa.33623.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.34625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 368
  store i64 -1, ptr %.sroa.34625.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.35627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 392
  store i64 -1, ptr %.sroa.35627.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.36629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 416
  store i64 -1, ptr %.sroa.36629.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.37631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 440
  store i64 -1, ptr %.sroa.37631.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.38633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 464
  store i64 -1, ptr %.sroa.38633.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.39635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 488
  store i64 -1, ptr %.sroa.39635.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.40637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  store i64 -1, ptr %.sroa.40637.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.41639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 536
  store i64 -1, ptr %.sroa.41639.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.42641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 560
  store ptr @26, ptr %.sroa.42641.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.43642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 568
  store i64 6, ptr %.sroa.43642.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.44643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 576
  store ptr @27, ptr %.sroa.44643.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.46644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 584
  store i64 8, ptr %.sroa.46644.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.47645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 592
  store ptr null, ptr %.sroa.47645.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.48647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 608
  store ptr null, ptr %.sroa.48647.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.49649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 624
  store ptr null, ptr %.sroa.49649.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.50651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 640
  store ptr null, ptr %.sroa.50651.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.51653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 656
  store ptr null, ptr %.sroa.51653.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.52655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 672
  store ptr null, ptr %.sroa.52655.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.53657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 688
  store ptr null, ptr %.sroa.53657.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.54658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 696
  store i32 101, ptr %.sroa.54658.0..sroa_idx, align 8, !alias.scope !1038, !noalias !1039
  %.sroa.56659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 700
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.56659.0..sroa_idx, i8 0, i64 9, i1 false)
  %i.hr = load i64, ptr %.sroa.7597.0..sroa_idx, align 8, !alias.scope !1044, !noalias !1045, !noundef !6 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.p, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit, !prof !11

bb.p:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5595.0..sroa_idx, i64 noundef 0, i64 noundef 1, i64 noundef 24) #19
  %.pre.i.i.i195 = load i64, ptr %.sroa.7597.0..sroa_idx, align 8, !alias.scope !1046, !noalias !1045
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit, %bb.p
  %i.ht = phi i64 [ %i.hr, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command26visible_short_flag_aliasesAcj2_ECscjwHxV1jUiA_13stdio_fixture.exit ], [ %.pre.i.i.i195, %bb.p ] ; 2 uses
  %i.hu = load ptr, ptr %.sroa.6596.0..sroa_idx, align 8, !alias.scope !1046, !noalias !1045, !nonnull !6, !noundef !6
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.hu, i64 %i.ht ; 3 uses
  store ptr @29, ptr %i.hv, align 8, !noalias !1047
  %.sroa.42.0..sroa_idx.i.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 8, ptr %.sroa.42.0..sroa_idx.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !1048
  %.sroa.53.0..sroa_idx.i.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i8 1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !1048
  %i.hw = add i64 %i.ht, 1
  store i64 %i.hw, ptr %.sroa.7597.0..sroa_idx, align 8, !alias.scope !1046, !noalias !1049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ap, ptr noundef nonnull align 8 dereferenceable(712) %i.ao, i64 712, i1 false), !alias.scope !1050, !noalias !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ap, i64 104 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ap, i64 120 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ap, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.ia = load i64, ptr %i.hy, align 8, !alias.scope !1056, !noalias !1057, !noundef !6 ; 4 uses
  %i.ib = load i64, ptr %i.hx, align 8, !range !5, !alias.scope !1056, !noalias !1057, !noundef !6 ; 2 uses
  %i.ic = icmp eq i64 %i.ia, %i.ib
  br i1 %i.ic, label %bb.q, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203

bb.q:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hx) #21, !noalias !1057
  %.pre1095 = load i64, ptr %i.hx, align 8, !range !5, !alias.scope !1058, !noalias !1059
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203: ; preds = %bb.q, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit
  %i.id = phi i64 [ %.pre1095, %bb.q ], [ %i.ib, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15visible_aliasesReAB1m_j1_ECscjwHxV1jUiA_13stdio_fixture.exit ]
  %i.ie = load ptr, ptr %i.hz, align 8, !alias.scope !1056, !noalias !1057, !nonnull !6, !noundef !6 ; 2 uses
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %i.ia ; 3 uses
  store ptr @30, ptr %i.if, align 8, !noalias !1060
  %.sroa.4.0..sroa_idx.i.i204 = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i204, align 8, !noalias !1061
  %.sroa.5.0..sroa_idx.i.i205 = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i205, align 8, !noalias !1061
  %i.ig = add i64 %i.ia, 1                        ; 3 uses
  store i64 %i.ig, ptr %i.hy, align 8, !alias.scope !1056, !noalias !1057
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %i.ih = icmp eq i64 %i.ig, %i.id
  br i1 %i.ih, label %bb.r, label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit

bb.r:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hx) #21, !noalias !1059
  %.pre1096 = load ptr, ptr %i.hz, align 8, !alias.scope !1058, !noalias !1059
  br label %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203, %bb.r
  %i.ii = phi ptr [ %i.ie, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command23visible_long_flag_aliasReECscjwHxV1jUiA_13stdio_fixture.exit.i203 ], [ %.pre1096, %bb.r ]
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %i.ig ; 3 uses
  store ptr @31, ptr %i.ij, align 8, !noalias !1064
  %.sroa.4.0..sroa_idx.i.1.i207 = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i.1.i207, align 8, !noalias !1065
  %.sroa.5.0..sroa_idx.i.1.i208 = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.1.i208, align 8, !noalias !1065
  %i.ik = add i64 %i.ia, 2
  store i64 %i.ik, ptr %i.hy, align 8, !alias.scope !1058, !noalias !1059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.aq, ptr noundef nonnull align 8 dereferenceable(712) %i.ap, i64 712, i1 false), !alias.scope !1066, !noalias !1067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  %i.il = getelementptr inbounds nuw i8, ptr %i.aq, i64 80 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.aq, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.io = load i64, ptr %i.im, align 8, !alias.scope !1071, !noalias !1068, !noundef !6 ; 4 uses
  %i.ip = load i64, ptr %i.il, align 8, !range !5, !alias.scope !1071, !noalias !1068, !noundef !6 ; 2 uses
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %bb.s, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209

bb.s:                                             ; preds = %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.il) #21, !noalias !1068
  %.pre.i211 = load i64, ptr %i.il, align 8, !range !5, !alias.scope !1072, !noalias !1068
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209: ; preds = %bb.s, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit
  %i.ir = phi i64 [ %i.ip, %_RINvMs1_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command25visible_long_flag_aliasesReAB1w_j2_ECscjwHxV1jUiA_13stdio_fixture.exit ], [ %.pre.i211, %bb.s ]
  %i.is = load ptr, ptr %i.in, align 8, !alias.scope !1071, !noalias !1068, !nonnull !6, !noundef !6 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.io ; 2 uses
  store i32 114, ptr %i.it, align 4, !noalias !1073
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store i8 1, ptr %i.iu, align 4, !noalias !1073
  %i.iv = add i64 %i.io, 1                        ; 3 uses
  store i64 %i.iv, ptr %i.im, align 8, !alias.scope !1071, !noalias !1068
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.iw = icmp eq i64 %i.iv, %i.ir
  br i1 %i.iw, label %bb.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250

bb.t:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.il) #21, !noalias !1068
  %.pre8.i210 = load ptr, ptr %i.in, align 8, !alias.scope !1072, !noalias !1068
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250: ; preds = %bb.t, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209
  %i.ix = phi ptr [ %.pre8.i210, %bb.t ], [ %i.is, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit.i209 ]
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iv ; 2 uses
  store i32 121, ptr %i.iy, align 4, !noalias !1075
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i8 1, ptr %i.iz, align 4, !noalias !1075
  %i.ja = add i64 %i.io, 2
  store i64 %i.ja, ptr %i.im, align 8, !alias.scope !1072, !noalias !1068
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ar, ptr noundef nonnull align 8 dereferenceable(712) %i.aq, i64 712, i1 false), !alias.scope !1076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.ar) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %.sroa.0669.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0669.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.45.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 3) #19
  %.sroa.01050.0.copyload = load i64, ptr %i.ae, align 8
  %.sroa.41051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.41051.0.copyload = load ptr, ptr %.sroa.41051.0..sroa_idx, align 8
  %.sroa.51052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.51052.0.copyload = load i64, ptr %.sroa.51052.0..sroa_idx, align 8
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 8) #19
  %.sroa.01053.0.copyload = load i64, ptr %i.ad, align 8
  %.sroa.41054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.41054.0.copyload = load ptr, ptr %.sroa.41054.0..sroa_idx, align 8
  %.sroa.51055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.51055.0.copyload = load i64, ptr %.sroa.51055.0..sroa_idx, align 8
  store i64 0, ptr %i.an, align 8
  %.sroa.0669.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i64 -1, ptr %.sroa.0669.sroa.0.sroa.11.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.13.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.14.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.16.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.18.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.20.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.22.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  %.sroa.0669.sroa.0.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.31.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0669.sroa.0.sroa.33.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.35.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 360
  %.sroa.0669.sroa.0.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0669.sroa.0.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.38.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.40.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.42.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.44.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0669.sroa.0.sroa.46.0..sroa_idx, align 8
  %.sroa.0669.sroa.0.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 480
  store i64 0, ptr %.sroa.0669.sroa.0.sroa.47.0..sroa_idx, align 8
  %.sroa.0669.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 488
  store i64 %.sroa.01050.0.copyload, ptr %.sroa.0669.sroa.4.0..sroa_idx, align 8
  %.sroa.0669.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 496
  store ptr %.sroa.41051.0.copyload, ptr %.sroa.0669.sroa.5.0..sroa_idx, align 8
  %.sroa.0669.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 504
  store i64 %.sroa.51052.0.copyload, ptr %.sroa.0669.sroa.6.0..sroa_idx, align 8
  %.sroa.4670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  store i64 %.sroa.01053.0.copyload, ptr %.sroa.4670.0..sroa_idx, align 8
  %.sroa.6672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 520
  store ptr %.sroa.41054.0.copyload, ptr %.sroa.6672.0..sroa_idx, align 8
  %.sroa.7674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 528
  store i64 %.sroa.51055.0.copyload, ptr %.sroa.7674.0..sroa_idx, align 8
  %.sroa.7674.sroa.5.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 536
  store ptr @32, ptr %.sroa.7674.sroa.5.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.6.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 544
  store i64 7, ptr %.sroa.7674.sroa.6.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.7.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 552
  store ptr @32, ptr %.sroa.7674.sroa.7.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.8.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 560
  store i64 7, ptr %.sroa.7674.sroa.8.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.9.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 568
  store ptr null, ptr %.sroa.7674.sroa.9.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.11.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 584
  store i32 -1, ptr %.sroa.7674.sroa.11.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7674.sroa.12.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 588
  store i32 -1, ptr %.sroa.7674.sroa.12.0..sroa.7674.0..sroa_idx.sroa_idx, align 4
  %.sroa.7674.sroa.13.0..sroa.7674.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 592
  store i32 0, ptr %.sroa.7674.sroa.13.0..sroa.7674.0..sroa_idx.sroa_idx, align 8
  %.sroa.7675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 596
  store i8 2, ptr %.sroa.7675.0..sroa_idx, align 4
  %.sroa.8676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 597
  store i24 0, ptr %.sroa.8676.0..sroa_idx, align 1
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.an) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bk, ptr noundef nonnull align 8 dereferenceable(712) %i.bj, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 19) #19
  %.sroa.01056.0.copyload = load i64, ptr %i.ac, align 8
  %.sroa.41057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.41057.0.copyload = load ptr, ptr %.sroa.41057.0..sroa_idx, align 8
  %.sroa.51058.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.51058.0.copyload = load i64, ptr %.sroa.51058.0..sroa_idx, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1077
  %i.jb = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #19, !noalias !1077 ; 4 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit257

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #22, !noalias !1078
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit257: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit250
  store ptr @37, ptr %i.jb, align 8, !noalias !1079
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i64 4, ptr %i.jd, align 8, !noalias !1080
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16) #19
  %.sroa.01061.0.copyload = load i64, ptr %i.ab, align 8
  %.sroa.41062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.41062.0.copyload = load ptr, ptr %.sroa.41062.0..sroa_idx, align 8
  %.sroa.51063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.51063.0.copyload = load i64, ptr %.sroa.51063.0..sroa_idx, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
  %i.je = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 216, i64 noundef range(i64 1, 9) 8) #19, !noalias !1081 ; 25 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.v, label %_RNvXss_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCsj6eKBz9Db1c_4core7convert4FromANtNtB7_14possible_value13PossibleValuej3_E4fromCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit257
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 216) #22, !noalias !1082
  unreachable

_RNvXss_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserINtNtCsj6eKBz9Db1c_4core7convert4FromANtNtB7_14possible_value13PossibleValuej3_E4fromCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit257
  store i64 0, ptr %i.je, align 8, !noalias !1083
  %.sroa.4865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4865.0..sroa_idx, align 8, !noalias !1083
  %.sroa.5866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store i64 0, ptr %.sroa.5866.0..sroa_idx, align 8, !noalias !1083
  %.sroa.6867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i64 -1, ptr %.sroa.6867.0..sroa_idx, align 8, !noalias !1083
  %.sroa.7869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  store ptr @38, ptr %.sroa.7869.0..sroa_idx, align 8, !noalias !1083
  %.sroa.8870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 56
  store i64 4, ptr %.sroa.8870.0..sroa_idx, align 8, !noalias !1083
  %.sroa.9871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  store i8 0, ptr %.sroa.9871.0..sroa_idx, align 8, !noalias !1083
  %.sroa.10872.sroa.3.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  store i64 0, ptr %.sroa.10872.sroa.3.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !1083
  %.sroa.10872.sroa.4.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10872.sroa.4.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !1083
  %.sroa.10872.sroa.5.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 88
  store i64 0, ptr %.sroa.10872.sroa.5.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !1083
  %.sroa.10872.sroa.6.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 96
  store i64 %.sroa.01061.0.copyload, ptr %.sroa.10872.sroa.6.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !1083
  %.sroa.10872.sroa.7.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 104
  store ptr %.sroa.41062.0.copyload, ptr %.sroa.10872.sroa.7.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !1083
  %.sroa.10872.sroa.8.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 112
  store i64 %.sroa.51063.0.copyload, ptr %.sroa.10872.sroa.8.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !1083
  %.sroa.10872.sroa.9.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 120
  store ptr @39, ptr %.sroa.10872.sroa.9.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !1083
  %.sroa.10872.sroa.10.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 128
  store i64 4, ptr %.sroa.10872.sroa.10.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !1083
  %.sroa.10872.sroa.11.0..sroa.10872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 136
  store i8 0, ptr %.sroa.10872.sroa.11.0..sroa.10872.0..sroa_idx.sroa_idx, align 8, !noalias !1083
  %.sroa.11873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 144
end_hunk_0
