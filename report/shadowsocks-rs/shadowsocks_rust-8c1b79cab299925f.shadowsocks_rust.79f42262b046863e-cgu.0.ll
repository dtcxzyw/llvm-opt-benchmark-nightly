Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6create:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  %.not414 = icmp eq ptr %i.ang, null
  br i1 %.not414, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRmEECsat9HgdBb3qc_16shadowsocks_rust.exit689
  %i.anh = load i32, ptr %i.ang, align 4, !noundef !14
  %i.ani = getelementptr inbounds nuw i8, ptr %i.im, i64 1368
  store i32 1, ptr %i.ani, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.im, i64 1372
  store i32 %i.anh, ptr %i.anj, align 4
  br label %bb.jh

bb.jh:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRmEECsat9HgdBb3qc_16shadowsocks_rust.exit689, %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  call fastcc void @_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.fp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !7929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr @511, ptr %i.ab, align 8, !noalias !7929
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 18, ptr %i.ank, align 8, !noalias !7929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7929
  %i.anl = load i64, ptr %i.fp, align 8, !range !32, !alias.scope !7929, !noundef !14
  %.not.i690 = icmp eq i64 %i.anl, 2
  br i1 %.not.i690, label %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtNtB1h_3net7ip_addr6IpAddrEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.ji, !prof !20

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.fp, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7929
  store ptr %i.ab, ptr %i.z, align 8, !noalias !7929
  %.sroa.42.0..sroa_idx.i691 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i691, align 8, !noalias !7929
  %i.anm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.anm, align 8, !noalias !7929
  %.sroa.46.0..sroa_idx.i692 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs0_NtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i692, align 8, !noalias !7929
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7929
  unreachable

_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtNtB1h_3net7ip_addr6IpAddrEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.jh
  %i.ann = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ano = load ptr, ptr %i.ann, align 8, !alias.scope !7929, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  %.not415 = icmp eq ptr %i.ano, null
  br i1 %.not415, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtNtB1h_3net7ip_addr6IpAddrEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.anp = getelementptr inbounds nuw i8, ptr %i.im, i64 1463
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.anp, ptr noundef nonnull align 1 dereferenceable(17) %i.ano, i64 17, i1 false)
  br label %bb.jk

bb.jk:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtNtB1h_3net7ip_addr6IpAddrEECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  call fastcc void @_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.fo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @573, i64 noundef 17) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !7930)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @573, ptr %i.y, align 8, !noalias !7931
  %i.anq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 17, ptr %i.anq, align 8, !noalias !7931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7931
  %i.anr = load i64, ptr %i.fo, align 8, !range !32, !alias.scope !7930, !noundef !14
  %.not.i693 = icmp eq i64 %i.anr, 2
  br i1 %.not.i693, label %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit696, label %bb.jl, !prof !20

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.fo, i64 40, i1 false), !noalias !7932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7931
  store ptr %i.y, ptr %i.w, align 8, !noalias !7931
  %.sroa.42.0..sroa_idx.i694 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i694, align 8, !noalias !7931
  %i.ans = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.ans, align 8, !noalias !7931
  %.sroa.46.0..sroa_idx.i695 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs0_NtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i695, align 8, !noalias !7931
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7930
  unreachable

_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit696: ; preds = %bb.jk
  %i.ant = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.anu = load ptr, ptr %i.ant, align 8, !alias.scope !7930, !align !27, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  %.not416 = icmp eq ptr %i.anu, null
  br i1 %.not416, label %bb.ke, label %bb.jm

bb.jm:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust.exit696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  call fastcc void @_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.fn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @576, i64 noundef 29) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !7933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @576, ptr %i.v, align 8, !noalias !7934
  %i.anv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 29, ptr %i.anv, align 8, !noalias !7934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7934
  %i.anw = load i64, ptr %i.fn, align 8, !range !32, !alias.scope !7933, !noundef !14
  %.not.i697 = icmp eq i64 %i.anw, 2
  br i1 %.not.i697, label %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700, label %bb.jn, !prof !20

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.fn, i64 40, i1 false), !noalias !7935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7934
  store ptr %i.v, ptr %i.t, align 8, !noalias !7934
  %.sroa.42.0..sroa_idx.i698 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i698, align 8, !noalias !7934
  %i.anx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.anx, align 8, !noalias !7934
  %.sroa.46.0..sroa_idx.i699 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs0_NtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i699, align 8, !noalias !7934
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7933
  unreachable

_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700: ; preds = %bb.jm
  %i.any = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.anz = load ptr, ptr %i.any, align 8, !alias.scope !7933, !align !27, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  %.not417.not = icmp eq ptr %i.anz, null         ; 2 uses
  br i1 %.not417.not, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700
  %i.aoa = load i64, ptr %i.anz, align 8, !noundef !14
  br label %bb.jp

bb.jp:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700, %bb.jo
  %.sroa.3158.0 = phi i64 [ %i.aoa, %bb.jo ], [ undef, %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionRyEECsat9HgdBb3qc_16shadowsocks_rust.exit700 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  call fastcc void @_RINvMs0_NtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.fm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @579, i64 noundef 28) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !7936)
  call void @llvm.experimental.noalias.scope.decl(metadata !7937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @579, ptr %i.s, align 8, !noalias !7938
  %i.aob = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 28, ptr %i.aob, align 8, !noalias !7938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7938
  %i.aoc = load i64, ptr %i.fm, align 8, !range !31, !alias.scope !7937, !noundef !14
  %i.aod = trunc nuw i64 %i.aoc to i1
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  br i1 %i.aod, label %bb.jq, label %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit, !prof !23

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aoe, i64 40, i1 false), !noalias !7939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7938
  store ptr %i.s, ptr %i.q, align 8, !noalias !7938
  %.sroa.42.0..sroa_idx.i701 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i701, align 8, !noalias !7938
  %i.aof = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.aof, align 8, !noalias !7938
  %.sroa.46.0..sroa_idx.i702 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs0_NtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i702, align 8, !noalias !7938
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7940
  unreachable

_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.jp
  %.sroa.0780.0.copyload781 = load ptr, ptr %i.aoe, align 8, !alias.scope !7940 ; 3 uses
  %.sroa.6782.0..sroa_idx783 = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %.sroa.6782.sroa.0.0.copyload = load ptr, ptr %.sroa.6782.0..sroa_idx783, align 8, !alias.scope !7940 ; 5 uses
  %.sroa.6782.sroa.5.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %.sroa.6782.sroa.5.0.copyload = load ptr, ptr %.sroa.6782.sroa.5.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7940 ; 4 uses
  %.sroa.6782.sroa.6.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %.sroa.6782.sroa.6.0.copyload = load ptr, ptr %.sroa.6782.sroa.6.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7940 ; 3 uses
  %.sroa.6782.sroa.7.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %.sroa.6782.sroa.7.0.copyload = load ptr, ptr %.sroa.6782.sroa.7.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7940 ; 3 uses
  %.sroa.6782.sroa.8.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %.sroa.6782.sroa.8.0.copyload = load ptr, ptr %.sroa.6782.sroa.8.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7940 ; 5 uses
  %.sroa.6782.sroa.9.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %.sroa.6782.sroa.9.0.copyload = load ptr, ptr %.sroa.6782.sroa.9.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7940 ; 3 uses
  %.sroa.6782.sroa.10.0..sroa.6782.0..sroa_idx783.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %.sroa.6782.sroa.10.0.copyload = load i64, ptr %.sroa.6782.sroa.10.0..sroa.6782.0..sroa_idx783.sroa_idx, align 8, !alias.scope !7940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  %.not418 = icmp eq ptr %.sroa.0780.0.copyload781, null
  br i1 %.not418, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.jr

bb.jr:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7941
  %.not.i.i.i.i.i983 = icmp eq ptr %.sroa.6782.sroa.6.0.copyload, null
  %i.aog = icmp eq ptr %.sroa.6782.sroa.6.0.copyload, %.sroa.6782.sroa.7.0.copyload
  %or.cond963984 = select i1 %.not.i.i.i.i.i983, i1 true, i1 %i.aog
  br i1 %or.cond963984, label %select.unfold.i.i.i.i.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit

select.unfold.i.i.i.i.preheader:                  ; preds = %bb.jr
  %.not.i5.i.i.i.i1116 = icmp eq ptr %.sroa.6782.sroa.0.0.copyload, null
  %i.aoh = icmp eq ptr %.sroa.6782.sroa.0.0.copyload, %.sroa.6782.sroa.5.0.copyload
  %or.cond.i.i.i.i.i1117 = select i1 %.not.i5.i.i.i.i1116, i1 true, i1 %i.aoh
  br i1 %or.cond.i.i.i.i.i1117, label %select.unfold.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.aoi = icmp eq ptr %i.aoj, %.sroa.6782.sroa.5.0.copyload
  br i1 %i.aoi, label %select.unfold.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.preheader, %select.unfold.i.i.i.i
  %.sroa.44.0.copyload.i9861118 = phi ptr [ %i.aoj, %select.unfold.i.i.i.i ], [ %.sroa.6782.sroa.0.0.copyload, %select.unfold.i.i.i.i.preheader ] ; 4 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i9861118, i64 24 ; 4 uses
  %i.aok = getelementptr i8, ptr %.sroa.44.0.copyload.i9861118, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.aok, align 8, !noalias !7942, !noundef !14 ; 3 uses
  %i.aol = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.aol, label %select.unfold.i.i.i.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit

select.unfold.i.i.i.i._crit_edge.loopexit:        ; preds = %select.unfold.i.i.i.i
  %i.aom = getelementptr i8, ptr %.sroa.44.0.copyload.i9861118, i64 8
  %.val.i.i.i.i707.le1154 = load ptr, ptr %i.aom, align 8, !noalias !7942, !nonnull !14, !noundef !14
  %.idx.le1151 = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.aon = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i707.le1154, i64 %.idx.le1151
  br label %select.unfold.i.i.i.i._crit_edge

select.unfold.i.i.i.i._crit_edge:                 ; preds = %select.unfold.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.preheader
  %.sroa.44.0.copyload.i986.lcssa = phi ptr [ %.sroa.6782.sroa.0.0.copyload, %select.unfold.i.i.i.i.preheader ], [ %i.aoj, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.sroa.7.0.copyload.i985.lcssa = phi ptr [ %.sroa.6782.sroa.7.0.copyload, %select.unfold.i.i.i.i.preheader ], [ %i.aon, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i = icmp eq ptr %.sroa.6782.sroa.8.0.copyload, null
  br i1 %.not.i7.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit, label %.sink.split.i8.i.i.i.i

.sink.split.i8.i.i.i.i:                           ; preds = %select.unfold.i.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6782.sroa.9.0.copyload) ]
  %i.aoo = icmp eq ptr %.sroa.6782.sroa.8.0.copyload, %.sroa.6782.sroa.9.0.copyload
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.6782.sroa.8.0.copyload, i64 32
  br i1 %i.aoo, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit: ; preds = %.lr.ph
  %i.aoq = getelementptr i8, ptr %.sroa.44.0.copyload.i9861118, i64 8
  %.val.i.i.i.i707.le = load ptr, ptr %i.aoq, align 8, !noalias !7942, !nonnull !14, !noundef !14 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.aor = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i707.le, i64 %.idx.le
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit, %bb.jr
  %spec.select.i18.i.i.i.i.lcssa982 = phi ptr [ %.sroa.6782.sroa.6.0.copyload, %bb.jr ], [ %.val.i.i.i.i707.le, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit ] ; 2 uses
  %.sroa.7.0.copyload.i.lcssa = phi ptr [ %.sroa.6782.sroa.7.0.copyload, %bb.jr ], [ %i.aor, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit ]
  %.sroa.44.0.copyload.i.lcssa = phi ptr [ %.sroa.6782.sroa.0.0.copyload, %bb.jr ], [ %i.aoj, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit.loopexit ]
  %i.aos = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa982, i64 32
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit, %.sink.split.i8.i.i.i.i
  %.sroa.7.0.copyload.i977 = phi ptr [ %.sroa.7.0.copyload.i985.lcssa, %.sink.split.i8.i.i.i.i ], [ %.sroa.7.0.copyload.i.lcssa, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %.sroa.44.0.copyload.i975 = phi ptr [ %.sroa.44.0.copyload.i986.lcssa, %.sink.split.i8.i.i.i.i ], [ %.sroa.44.0.copyload.i.lcssa, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %.sroa.13797.0 = phi ptr [ %i.aop, %.sink.split.i8.i.i.i.i ], [ %.sroa.6782.sroa.8.0.copyload, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %.sroa.6.0.copyload.i = phi ptr [ null, %.sink.split.i8.i.i.i.i ], [ %i.aos, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.6782.sroa.8.0.copyload, %.sink.split.i8.i.i.i.i ], [ %spec.select.i18.i.i.i.i.lcssa982, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.loopexit ]
  %i.aot = call noundef nonnull align 8 ptr %.sroa.0780.0.copyload781(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i) #30, !noalias !7943, !inline_history !7628
  %i.aou = add i64 %.sroa.6782.sroa.10.0.copyload, -1 ; 2 uses
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aot) #30, !noalias !7941
  %.pr.i = load i64, ptr %i.o, align 8, !noalias !7941
  %.not.i703 = icmp eq i64 %.pr.i, -1
  br i1 %.not.i703, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.js

bb.js:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.aov = call i64 @llvm.uadd.sat.i64(i64 %i.aou, i64 1) ; 2 uses
  %i.aow = call i64 @llvm.umax.i64(i64 %i.aov, i64 4) ; 3 uses
  %i.aox = mul i64 %i.aow, 24                     ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.aov, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.jv, label %bb.jt, !prof !39

bb.jt:                                            ; preds = %bb.js
  %i.aoy = icmp eq i64 %i.aox, 0
  br i1 %i.aoy, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !7944
  %i.aoz = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aox, i64 noundef range(i64 1, 9) 8) #30, !noalias !7944 ; 2 uses
  %i.apa = icmp eq ptr %i.aoz, null
  br i1 %i.apa, label %bb.jv, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.jv:                                            ; preds = %bb.ju, %bb.js
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.ju ], [ 0, %bb.js ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.aox) #34, !noalias !7941
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.ju, %bb.jt
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.jt ], [ %i.aoz, %bb.ju ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.jt ], [ %i.aow, %bb.ju ] ; 2 uses
  %i.apb = icmp ule i64 %i.aow, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.apb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !7941
  store i64 %.sroa.4.0.i.i, ptr %i.p, align 8, !noalias !7941
  %.sroa.4.0..sroa_idx.i704 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i704, align 8, !noalias !7941
  %.sroa.6.0..sroa_idx.i705 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i705, align 8, !noalias !7941
  call void @llvm.experimental.noalias.scope.decl(metadata !7945)
  call void @llvm.experimental.noalias.scope.decl(metadata !7946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7947
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jy, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.apc = phi ptr [ %i.aqa, %bb.jy ], [ %.sroa.10.0.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ]
  %.sroa.7791.0.copyload = phi i64 [ %i.aqc, %bb.jy ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 6 uses
  %i.apd = phi i64 [ %i.apw, %bb.jy ], [ %i.aou, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ]
  %spec.select.i9.i.i.i14.i.i.i = phi ptr [ %spec.select.i9.i.i.i13.i.i.i, %bb.jy ], [ %.sroa.13797.0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 5 uses
  %i.ape = phi ptr [ %i.apt, %bb.jy ], [ %.sroa.7.0.copyload.i977, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 3 uses
  %i.apf = phi ptr [ %i.apu, %bb.jy ], [ %.sroa.44.0.copyload.i975, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 5 uses
  %.val.i.i.i6.i.i.i = phi ptr [ %.val.i.i.i3.i.i.i, %bb.jy ], [ %.sroa.6.0.copyload.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 3 uses
  %.not.i.i.i.i.i5.i.i = icmp eq ptr %.val.i.i.i6.i.i.i, null
  %i.apg = icmp eq ptr %.val.i.i.i6.i.i.i, %i.ape
  %or.cond.i6.i.i = select i1 %.not.i.i.i.i.i5.i.i, i1 true, i1 %i.apg
  br i1 %or.cond.i6.i.i, label %select.unfold.i.i.i.i.i.preheader.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i

select.unfold.i.i.i.i.i.preheader.i:              ; preds = %bb.jw
  %.not.i5.i.i.i.i.i14.i = icmp eq ptr %i.apf, null
  %i.aph = icmp eq ptr %i.apf, %.sroa.6782.sroa.5.0.copyload
  %or.cond.i.i.i.i.i.i15.i = select i1 %.not.i5.i.i.i.i.i14.i, i1 true, i1 %i.aph
  br i1 %or.cond.i.i.i.i.i.i15.i, label %select.unfold.i.i.i.i.i._crit_edge.i, label %.lr.ph.i

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i
  %i.api = icmp eq ptr %i.apk, %.sroa.6782.sroa.5.0.copyload
  br i1 %i.api, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %i.apj = phi ptr [ %i.apk, %select.unfold.i.i.i.i.i.i ], [ %i.apf, %select.unfold.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 24 ; 4 uses
  %i.apl = getelementptr i8, ptr %i.apj, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.apl, align 8, !noalias !7948, !noundef !14 ; 2 uses
  %i.apm = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.apm, label %select.unfold.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i:    ; preds = %select.unfold.i.i.i.i.i.i
  %i.apn = getelementptr i8, ptr %i.apj, i64 8
  %.val.i.i.i.i.i.le49.i = load ptr, ptr %i.apn, align 8, !noalias !7948, !nonnull !14, !noundef !14
  br label %select.unfold.i.i.i.i.i._crit_edge.i

select.unfold.i.i.i.i.i._crit_edge.i:             ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i, %select.unfold.i.i.i.i.i.preheader.i
  %.lcssa9.i = phi ptr [ %i.apf, %select.unfold.i.i.i.i.i.preheader.i ], [ %i.apk, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.lcssa.i = phi ptr [ %i.ape, %select.unfold.i.i.i.i.i.preheader.i ], [ %.val.i.i.i.i.i.le49.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i14.i.i.i, null
  %i.apo = icmp eq ptr %spec.select.i9.i.i.i14.i.i.i, %.sroa.6782.sroa.9.0.copyload
  %i.app = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i14.i.i.i, i64 32
  %or.cond28.i.i.i = select i1 %.not.i7.i.i.i.i.i.i, i1 true, i1 %i.apo
  %.sroa.0789.0.copyload.pre1005.pre1007 = load i64, ptr %i.p, align 8, !noalias !7949 ; 2 uses
  br i1 %or.cond28.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i: ; preds = %.lr.ph.i
  %i.apq = getelementptr i8, ptr %i.apj, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.apq, align 8, !noalias !7948, !nonnull !14, !noundef !14 ; 2 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.apr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i, %bb.jw
  %.lcssa3.i.i = phi ptr [ %i.ape, %bb.jw ], [ %i.apr, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i ]
  %.lcssa.i.i = phi ptr [ %i.apf, %bb.jw ], [ %i.apk, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i ]
  %.val.i.i.i5.i.lcssa.i.i = phi ptr [ %.val.i.i.i6.i.i.i, %bb.jw ], [ %.val.i.i.i.i.i.le.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.loopexit.i ] ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %.val.i.i.i5.i.lcssa.i.i, i64 32
  %.sroa.0789.0.copyload.pre1005.pre = load i64, ptr %i.p, align 8, !noalias !7949
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i
  %.sroa.0789.0.copyload.pre1005 = phi i64 [ %.sroa.0789.0.copyload.pre1005.pre1007, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.sroa.0789.0.copyload.pre1005.pre, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ] ; 2 uses
  %i.apt = phi ptr [ %.lcssa.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.lcssa3.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %i.apu = phi ptr [ %.lcssa9.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.lcssa.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %spec.select.i9.i.i.i13.i.i.i = phi ptr [ %i.app, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %spec.select.i9.i.i.i14.i.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %.val.i.i.i3.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %i.aps, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i14.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.val.i.i.i5.i.lcssa.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.loopexit.i.i.i ]
  %i.apv = call noundef nonnull align 8 ptr %.sroa.0780.0.copyload781(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i) #30, !noalias !7950, !inline_history !7644
  %i.apw = add i64 %i.apd, -1                     ; 2 uses
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.apv) #30, !noalias !7951
  %.pr.i.i.i = load i64, ptr %i.n, align 8, !noalias !7951
  %.not.i.i2.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i2.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.jx

bb.jx:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %i.apx = icmp samesign ult i64 %.sroa.7791.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.apx)
  %i.apy = icmp eq i64 %.sroa.7791.0.copyload, %.sroa.0789.0.copyload.pre1005
  br i1 %i.apy, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %bb.jy

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %bb.jx
  %i.apz = call i64 @llvm.uadd.sat.i64(i64 %i.apw, i64 1)
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.sroa.7791.0.copyload, i64 noundef range(i64 1, 0) %i.apz, i64 noundef 8, i64 noundef 24) #30, !noalias !7952
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i704, align 8, !alias.scope !7953, !noalias !7941
  br label %bb.jy

bb.jy:                                            ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %bb.jx
  %i.aqa = phi ptr [ %.pre.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.apc, %bb.jx ] ; 2 uses
  %i.aqb = getelementptr inbounds nuw [24 x i8], ptr %i.aqa, i64 %.sroa.7791.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqb, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !7951
  %i.aqc = add nuw nsw i64 %.sroa.7791.0.copyload, 1 ; 2 uses
  store i64 %i.aqc, ptr %.sroa.6.0..sroa_idx.i705, align 8, !alias.scope !7953, !noalias !7941
  br label %bb.jw

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i
  %.sroa.0789.0.copyload = phi i64 [ %.sroa.0789.0.copyload.pre1005.pre1007, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.sroa.0789.0.copyload.pre1005, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7947
  %.sroa.5790.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i704, align 8, !noalias !7949
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %select.unfold.i.i.i.i._crit_edge, %.sink.split.i8.i.i.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.sroa.7791.0 = phi i64 [ %.sroa.7791.0.copyload, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ 0, %.sink.split.i8.i.i.i.i ], [ 0, %select.unfold.i.i.i.i._crit_edge ]
  %.sroa.5790.0 = phi ptr [ %.sroa.5790.0.copyload, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ inttoptr (i64 8 to ptr), %.sink.split.i8.i.i.i.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i._crit_edge ]
  %.sroa.0789.0 = phi i64 [ %.sroa.0789.0.copyload, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ 0, %.sink.split.i8.i.i.i.i ], [ 0, %select.unfold.i.i.i.i._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.7777.0 = phi i64 [ undef, %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.7791.0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.6774.0 = phi ptr [ undef, %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.5790.0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.0772.0 = phi i64 [ -1, %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCsf3Ta7LF998c_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.0789.0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0165.sroa.0)
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0165.sroa.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.anu) #30
  %. = sext i1 %.not417.not to i32
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.im, i64 1144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7954)
  %i.aqe = load i64, ptr %i.aqd, align 8, !range !24, !alias.scope !7954, !noundef !14 ; 3 uses
  %i.aqf = icmp eq i64 %i.aqe, -1
  br i1 %i.aqf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8UFHSMUhzWe_19shadowsocks_service6config12OnlineConfigEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.jz
end_hunk_0
