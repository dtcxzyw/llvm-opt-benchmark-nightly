Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCs25myiKMto6U_9uu_printf6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBC_6cloned6ClonedINtNtNtBG_5slice4iter4IterB2d_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !489
  call void @_RNvCs25myiKMto6U_9uu_printf6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.av) #45, !noalias !489
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.aw, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !489
  %i.bo = load i64, ptr %i.aw, align 8, !range !13, !noalias !489, !noundef !12 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !489 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !489 ; 2 uses
  br i1 %i.bp, label %_RINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils.exit.thread56, label %bb.e

_RINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils.exit.thread56: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !489
  br label %.split.sink.split

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.667.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.667.0..sroa_idx.i, i64 32, i1 false), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !489
  store i64 %i.bo, ptr %i.ax, align 8, !noalias !489
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !489
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.bt, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !489
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 6) #45, !noalias !489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !489
  store ptr @366, ptr %i.w, align 8, !noalias !491
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 6, ptr %i.bu, align 8, !noalias !491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !491
  %i.bv = load i64, ptr %i.ab, align 8, !range !26, !alias.scope !490, !noalias !489, !noundef !12
  %.not.i.i = icmp eq i64 %i.bv, 2
  br i1 %.not.i.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !noalias !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !491
  store ptr %i.w, ptr %i.u, align 8, !noalias !491
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !491
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.bw, align 8, !noalias !491
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !491
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !493
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !490, !noalias !489, !align !23, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !489
  %.not.i28 = icmp eq ptr %i.by, null
  br i1 %.not.i28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !489, !nonnull !12, !noundef !12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !489, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !489
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @368, i64 noundef 8) #45, !noalias !489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !489
  store ptr @368, ptr %i.t, align 8, !noalias !496
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 8, ptr %i.cd, align 8, !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !496
  %i.ce = load i64, ptr %i.z, align 8, !range !16, !alias.scope !495, !noalias !489, !noundef !12
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cf, label %bb.h, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cg, i64 40, i1 false), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !496
  store ptr %i.t, ptr %i.r, align 8, !noalias !496
  %.sroa.42.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i108.i, align 8, !noalias !496
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.ch, align 8, !noalias !496
  %.sroa.46.0..sroa_idx.i109.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i109.i, align 8, !noalias !496
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !498
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.g
  %.sroa.0.0.copyload128.i = load ptr, ptr %i.cg, align 8, !alias.scope !499, !noalias !489 ; 3 uses
  %.sroa.5.0..sroa_idx130.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.sroa.0.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx130.i, align 8, !alias.scope !499, !noalias !489 ; 5 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx130.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.5.sroa.4.0.copyload.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx130.sroa_idx.i, align 8, !alias.scope !499, !noalias !489 ; 4 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx130.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.5.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx130.sroa_idx.i, align 8, !alias.scope !499, !noalias !489 ; 3 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx130.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.5.sroa.6.0.copyload.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx130.sroa_idx.i, align 8, !alias.scope !499, !noalias !489 ; 3 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx130.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.5.sroa.7.0.copyload.i = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx130.sroa_idx.i, align 8, !alias.scope !499, !noalias !489 ; 5 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx130.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.sroa.5.sroa.8.0.copyload.i = load ptr, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx130.sroa_idx.i, align 8, !alias.scope !499, !noalias !489 ; 3 uses
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx130.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %.sroa.5.sroa.9.0.copyload.i = load i64, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx130.sroa_idx.i, align 8, !alias.scope !499, !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !489
  %.not99.i = icmp eq ptr %.sroa.0.0.copyload128.i, null
  br i1 %.not99.i, label %bb.x, label %bb.k

bb.i:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 28) #45, !noalias !489
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !500
  %i.ci = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !500 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.j, label %_RINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils.exit.thread163, !prof !15

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !500
  unreachable

_RINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils.exit.thread163: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !489
  %.sroa.4.0..sroa_idx153.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx153.i, align 8, !noalias !489
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ax) #45, !noalias !489
  br label %.split.sink.split

bb.k:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !503
  %.not.i.i.i.i.i.i191.i = icmp eq ptr %.sroa.5.sroa.5.0.copyload.i, null
  %i.ck = icmp eq ptr %.sroa.5.sroa.5.0.copyload.i, %.sroa.5.sroa.6.0.copyload.i
  %or.cond.i192.i = select i1 %.not.i.i.i.i.i.i191.i, i1 true, i1 %i.ck
  br i1 %or.cond.i192.i, label %select.unfold.i.i.i.i.i.i.preheader, label %.loopexit.i.i.loopexit.i.i

select.unfold.i.i.i.i.i.i.preheader:              ; preds = %bb.k
  %.not.i5.i.i.i.i.i.i88 = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i, null
  %i.cl = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i, %.sroa.5.sroa.4.0.copyload.i
  %or.cond.i.i.i.i.i.i.i89 = select i1 %.not.i5.i.i.i.i.i.i88, i1 true, i1 %i.cl
  br i1 %or.cond.i.i.i.i.i.i.i89, label %select.unfold.i.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph
  %i.cm = icmp eq ptr %i.cn, %.sroa.5.sroa.4.0.copyload.i
  br i1 %i.cm, label %select.unfold.i.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i.i
  %.sroa.416.0.copyload.i.i194.i90 = phi ptr [ %i.cn, %select.unfold.i.i.i.i.i.i ], [ %.sroa.5.sroa.0.0.copyload.i, %select.unfold.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.416.0.copyload.i.i194.i90, i64 24 ; 4 uses
  %i.co = getelementptr i8, ptr %.sroa.416.0.copyload.i.i194.i90, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.co, align 8, !noalias !504, !noundef !12 ; 2 uses
  %i.cp = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.cp, label %select.unfold.i.i.i.i.i.i, label %.loopexit.i.i.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i.i._crit_edge.loopexit:    ; preds = %select.unfold.i.i.i.i.i.i
  %i.cq = getelementptr i8, ptr %.sroa.416.0.copyload.i.i194.i90, i64 8
  %.val.i.i.i.i.i.i.le202 = load ptr, ptr %i.cq, align 8, !noalias !504, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i.i._crit_edge:             ; preds = %select.unfold.i.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.i.preheader
  %.sroa.416.0.copyload.i.i194.i.lcssa = phi ptr [ %.sroa.5.sroa.0.0.copyload.i, %select.unfold.i.i.i.i.i.i.preheader ], [ %i.cn, %select.unfold.i.i.i.i.i.i._crit_edge.loopexit ]
  %.sroa.719.0.copyload.i.i193.i.lcssa = phi ptr [ %.sroa.5.sroa.6.0.copyload.i, %select.unfold.i.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.i.le202, %select.unfold.i.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %.sroa.5.sroa.7.0.copyload.i, null
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.w, label %.sink.split.i8.i.i.i.i.i.i

.sink.split.i8.i.i.i.i.i.i:                       ; preds = %select.unfold.i.i.i.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.8.0.copyload.i) ]
  %i.cr = icmp eq ptr %.sroa.5.sroa.7.0.copyload.i, %.sroa.5.sroa.8.0.copyload.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.7.0.copyload.i, i64 32
  br i1 %i.cr, label %bb.w, label %.loopexit.i.i.i.i

.loopexit.i.i.loopexit.i.i.loopexit:              ; preds = %.lr.ph
  %i.ct = getelementptr i8, ptr %.sroa.416.0.copyload.i.i194.i90, i64 8
  %.val.i.i.i.i.i.i.le = load ptr, ptr %i.ct, align 8, !noalias !504, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.i.i.loopexit.i.i

.loopexit.i.i.loopexit.i.i:                       ; preds = %.loopexit.i.i.loopexit.i.i.loopexit, %bb.k
  %.sroa.719.0.copyload.i.i.lcssa.i = phi ptr [ %.sroa.5.sroa.6.0.copyload.i, %bb.k ], [ %i.cu, %.loopexit.i.i.loopexit.i.i.loopexit ]
  %.sroa.416.0.copyload.i.i.lcssa.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i, %bb.k ], [ %i.cn, %.loopexit.i.i.loopexit.i.i.loopexit ]
  %spec.select.i18.i.i.i.i.i.lcssa.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i, %bb.k ], [ %.val.i.i.i.i.i.i.le, %.loopexit.i.i.loopexit.i.i.loopexit ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.i.lcssa.i, i64 32
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.loopexit.i.i, %.sink.split.i8.i.i.i.i.i.i
  %.sroa.719.0.copyload.i.i190.i = phi ptr [ %.sroa.719.0.copyload.i.i193.i.lcssa, %.sink.split.i8.i.i.i.i.i.i ], [ %.sroa.719.0.copyload.i.i.lcssa.i, %.loopexit.i.i.loopexit.i.i ]
  %.sroa.416.0.copyload.i.i188.i = phi ptr [ %.sroa.416.0.copyload.i.i194.i.lcssa, %.sink.split.i8.i.i.i.i.i.i ], [ %.sroa.416.0.copyload.i.i.lcssa.i, %.loopexit.i.i.loopexit.i.i ]
  %.sroa.9136.0.i = phi ptr [ %i.cs, %.sink.split.i8.i.i.i.i.i.i ], [ %.sroa.5.sroa.7.0.copyload.i, %.loopexit.i.i.loopexit.i.i ]
  %.sroa.618.0.copyload.i.i.i = phi ptr [ null, %.sink.split.i8.i.i.i.i.i.i ], [ %i.cv, %.loopexit.i.i.loopexit.i.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.5.sroa.7.0.copyload.i, %.sink.split.i8.i.i.i.i.i.i ], [ %spec.select.i18.i.i.i.i.i.lcssa.i, %.loopexit.i.i.loopexit.i.i ]
  %i.cw = tail call noundef nonnull align 8 ptr %.sroa.0.0.copyload128.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i) #45, !noalias !505, !inline_history !372 ; 2 uses
  %i.cx = add i64 %.sroa.5.sroa.9.0.copyload.i, -1 ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !506, !nonnull !12, !noundef !12
  %i.cz = getelementptr i8, ptr %i.cw, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !506, !noundef !12 ; 6 uses
  %i.da = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.da, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !507
  %i.db = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !507 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i) #52, !noalias !508
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull readonly align 1 %.val.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i, i1 false), !noalias !509
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.n, %.loopexit.i.i.i.i
  %.sroa.8.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %.loopexit.i.i.i.i ], [ %i.db, %bb.n ]
  %i.dd = tail call i64 @llvm.uadd.sat.i64(i64 %i.cx, i64 1)
  %..i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.dd, i64 4) ; 3 uses
  %i.de = mul i64 %..i.i.i.i, 40                  ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.cx, 230584300921369394
  br i1 %or.cond.i.i.i.i.i, label %bb.q, label %bb.o, !prof !27

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !510
  %i.dg = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.de, i64 noundef range(i64 1, 9) 8) #45, !noalias !510 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.q, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.q:                                             ; preds = %bb.p, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.p ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.de) #52, !noalias !503
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.o ], [ %i.dg, %bb.p ] ; 6 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.o ], [ %..i.i.i.i, %bb.p ] ; 2 uses
  %i.di = icmp ule i64 %..i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.di)
  store i64 -9223372036854775798, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !503
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store i64 %.val2.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !503
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !noalias !503
  %.sroa.613.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 24
  store i64 %.val2.i.i.i.i, ptr %.sroa.613.0..sroa_idx.i.i.i, align 8, !noalias !503
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.q, align 8, !noalias !503
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !503
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.dj = phi ptr [ %i.eo, %bb.v ], [ %.sroa.10.0.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %i.dk = phi i64 [ %i.eq, %bb.v ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 5 uses
  %i.dl = phi i64 [ %i.ee, %bb.v ], [ %i.cx, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %spec.select.i9.i.i.i28.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i27.i.i.i.i.i, %bb.v ], [ %.sroa.9136.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 5 uses
  %i.dm = phi ptr [ %i.eb, %bb.v ], [ %.sroa.719.0.copyload.i.i190.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 3 uses
  %i.dn = phi ptr [ %i.ec, %bb.v ], [ %.sroa.416.0.copyload.i.i188.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 5 uses
  %.val.i.i.i20.i.i.i.i.i = phi ptr [ %.val.i.i.i17.i.i.i.i.i, %bb.v ], [ %.sroa.618.0.copyload.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i5.i.i.i.i = icmp eq ptr %.val.i.i.i20.i.i.i.i.i, null
  %i.do = icmp eq ptr %.val.i.i.i20.i.i.i.i.i, %i.dm
  %or.cond.i6.i.i.i.i = select i1 %.not.i.i.i.i.i5.i.i.i.i, i1 true, i1 %i.do
  br i1 %or.cond.i6.i.i.i.i, label %select.unfold.i.i.i.i.i.preheader.i.i.i, label %.loopexit.i.loopexit.i.i.i.i.i

select.unfold.i.i.i.i.i.preheader.i.i.i:          ; preds = %bb.r
  %.not.i5.i.i.i.i.i34.i.i.i = icmp eq ptr %i.dn, null
  %i.dp = icmp eq ptr %i.dn, %.sroa.5.sroa.4.0.copyload.i
  %or.cond.i.i.i.i.i.i35.i.i.i = select i1 %.not.i5.i.i.i.i.i34.i.i.i, i1 true, i1 %i.dp
  br i1 %or.cond.i.i.i.i.i.i35.i.i.i, label %select.unfold.i.i.i.i.i._crit_edge.i.i.i, label %.lr.ph.i.i.i

select.unfold.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i
  %i.dq = icmp eq ptr %i.ds, %.sroa.5.sroa.4.0.copyload.i
  br i1 %i.dq, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %select.unfold.i.i.i.i.i.preheader.i.i.i, %select.unfold.i.i.i.i.i.i.i.i
  %i.dr = phi ptr [ %i.ds, %select.unfold.i.i.i.i.i.i.i.i ], [ %i.dn, %select.unfold.i.i.i.i.i.preheader.i.i.i ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 4 uses
  %i.dt = getelementptr i8, ptr %i.dr, i64 16
  %.val4.i.i.i.i.i.i.i.i = load i64, ptr %i.dt, align 8, !noalias !513, !noundef !12 ; 2 uses
  %i.du = icmp eq i64 %.val4.i.i.i.i.i.i.i.i, 0
  br i1 %i.du, label %select.unfold.i.i.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.loopexit.i.i.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i: ; preds = %select.unfold.i.i.i.i.i.i.i.i
  %i.dv = getelementptr i8, ptr %i.dr, i64 8
  %.val.i.i.i.i.i.le71.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !513, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge.i.i.i

select.unfold.i.i.i.i.i._crit_edge.i.i.i:         ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i, %select.unfold.i.i.i.i.i.preheader.i.i.i
  %.lcssa29.i.i.i = phi ptr [ %i.dn, %select.unfold.i.i.i.i.i.preheader.i.i.i ], [ %i.ds, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.dm, %select.unfold.i.i.i.i.i.preheader.i.i.i ], [ %.val.i.i.i.i.i.le71.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i ]
  %.not.i7.i.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i28.i.i.i.i.i, null
  %i.dw = icmp eq ptr %spec.select.i9.i.i.i28.i.i.i.i.i, %.sroa.5.sroa.8.0.copyload.i
  %i.dx = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i28.i.i.i.i.i, i64 32
  %or.cond43.i.i.i.i.i = select i1 %.not.i7.i.i.i.i.i.i.i.i, i1 true, i1 %i.dw
  br i1 %or.cond43.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2q_5chain5ChainINtNtB4_9into_iter8IntoIterB4m_EINtNtB2q_6cloned6ClonedINtNtNtB2u_5slice4iter4IterB4m_EEEEs_0EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.loopexit.i.i.loopexit.i.i.i:          ; preds = %.lr.ph.i.i.i
  %i.dy = getelementptr i8, ptr %i.dr, i64 8
  %.val.i.i.i.i.i.le.i.i.i = load ptr, ptr %i.dy, align 8, !noalias !513, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le.i.i.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i.i.i, 5
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i.i.i, i64 %.idx.i.le.i.i.i
  br label %.loopexit.i.loopexit.i.i.i.i.i

.loopexit.i.loopexit.i.i.i.i.i:                   ; preds = %.loopexit.i.loopexit.i.i.loopexit.i.i.i, %bb.r
  %.lcssa3.i.i.i.i = phi ptr [ %i.dm, %bb.r ], [ %i.dz, %.loopexit.i.loopexit.i.i.loopexit.i.i.i ]
  %.lcssa.i.i.i.i = phi ptr [ %i.dn, %bb.r ], [ %i.ds, %.loopexit.i.loopexit.i.i.loopexit.i.i.i ]
  %.val.i.i.i19.i.lcssa.i.i.i.i = phi ptr [ %.val.i.i.i20.i.i.i.i.i, %bb.r ], [ %.val.i.i.i.i.i.le.i.i.i, %.loopexit.i.loopexit.i.i.loopexit.i.i.i ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i.i.i19.i.lcssa.i.i.i.i, i64 32
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.loopexit.i.loopexit.i.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i.i
  %i.eb = phi ptr [ %.lcssa.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %.lcssa3.i.i.i.i, %.loopexit.i.loopexit.i.i.i.i.i ]
  %i.ec = phi ptr [ %.lcssa29.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %.lcssa.i.i.i.i, %.loopexit.i.loopexit.i.i.i.i.i ]
  %spec.select.i9.i.i.i27.i.i.i.i.i = phi ptr [ %i.dx, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %spec.select.i9.i.i.i28.i.i.i.i.i, %.loopexit.i.loopexit.i.i.i.i.i ]
  %.val.i.i.i17.i.i.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %i.ea, %.loopexit.i.loopexit.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i28.i.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %.val.i.i.i19.i.lcssa.i.i.i.i, %.loopexit.i.loopexit.i.i.i.i.i ]
  %i.ed = tail call noundef nonnull align 8 ptr %.sroa.0.0.copyload128.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i.i) #45, !noalias !514, !inline_history !397 ; 2 uses
  %i.ee = add i64 %i.dl, -1                       ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ed, i64 8
  %.val.i.i.i2.i.i.i = load ptr, ptr %i.ef, align 8, !noalias !515, !nonnull !12, !noundef !12
  %i.eg = getelementptr i8, ptr %i.ed, i64 16
  %.val2.i.i.i.i.i.i = load i64, ptr %i.eg, align 8, !noalias !515, !noundef !12 ; 6 uses
  %i.eh = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.eh, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !516
  %i.ei = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !516 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i.i) #52, !noalias !517
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr nonnull readonly align 1 %.val.i.i.i2.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i.i, i1 false), !noalias !518
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.u, %.loopexit.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %.loopexit.i.i.i.i.i.i ], [ %i.ei, %bb.u ]
  %i.ek = icmp samesign ult i64 %i.dk, 230584300921369396
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = load i64, ptr %i.q, align 8, !range !19, !alias.scope !519, !noalias !503, !noundef !12
  %i.em = icmp eq i64 %i.dk, %i.el
  br i1 %i.em, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.v

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.en = tail call i64 @llvm.uadd.sat.i64(i64 %i.ee, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.dk, i64 noundef range(i64 1, 0) %i.en, i64 noundef 8, i64 noundef 40) #45, !noalias !520
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !519, !noalias !503
  br label %bb.v

bb.v:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.eo = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ %i.dj, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB7_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB29_EINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB29_EEEEs_0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %i.eo, i64 %i.dk ; 4 uses
  store i64 -9223372036854775798, ptr %i.ep, align 8, !noalias !521
  %.sroa.47.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %.val2.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i, align 8, !noalias !521
  %.sroa.58.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr %.sroa.8.0.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i, align 8, !noalias !521
  %.sroa.69.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i64 %.val2.i.i.i.i.i.i, ptr %.sroa.69.0..sroa_idx.i.i.i.i.i, align 8, !noalias !521
  %i.eq = add nuw nsw i64 %i.dk, 1                ; 2 uses
  store i64 %i.eq, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !519, !noalias !503
  br label %bb.r

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2q_5chain5ChainINtNtB4_9into_iter8IntoIterB4m_EINtNtB2q_6cloned6ClonedINtNtNtB2u_5slice4iter4IterB4m_EEEEs_0EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %select.unfold.i.i.i.i.i._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !522
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre.pre.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i, align 8, !noalias !489
  %.phi.trans.insert233.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.pre234.pre.i = load i64, ptr %.phi.trans.insert233.phi.trans.insert.i, align 8, !noalias !489
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2v_5chain5ChainINtNtB4_9into_iter8IntoIterB4r_EINtNtB2v_6cloned6ClonedINtNtNtB2z_5slice4iter4IterB4r_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i

bb.w:                                             ; preds = %.sink.split.i8.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i._crit_edge
  store i64 0, ptr %i.au, align 8, !alias.scope !523, !noalias !489
  %i.er = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.er, align 8, !alias.scope !523, !noalias !489
  %i.es = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %i.es, align 8, !alias.scope !523, !noalias !489
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2v_5chain5ChainINtNtB4_9into_iter8IntoIterB4r_EINtNtB2v_6cloned6ClonedINtNtNtB2z_5slice4iter4IterB4r_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2v_5chain5ChainINtNtB4_9into_iter8IntoIterB4r_EINtNtB2v_6cloned6ClonedINtNtNtB2z_5slice4iter4IterB4r_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.w, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2q_5chain5ChainINtNtB4_9into_iter8IntoIterB4m_EINtNtB2q_6cloned6ClonedINtNtNtB2u_5slice4iter4IterB4m_EEEEs_0EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.pre234.i = phi i64 [ %.pre234.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2q_5chain5ChainINtNtB4_9into_iter8IntoIterB4m_EINtNtB2q_6cloned6ClonedINtNtNtB2u_5slice4iter4IterB4m_EEEEs_0EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ 0, %bb.w ]
  %.pre.i = phi ptr [ %.pre.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2q_5chain5ChainINtNtB4_9into_iter8IntoIterB4m_EINtNtB2q_6cloned6ClonedINtNtNtB2u_5slice4iter4IterB4m_EEEEs_0EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !503
  br label %bb.y

bb.x:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  store i64 0, ptr %i.au, align 8, !noalias !489
  %i.et = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.et, align 8, !noalias !489
  %i.eu = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %i.eu, align 8, !noalias !489
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2v_5chain5ChainINtNtB4_9into_iter8IntoIterB4r_EINtNtB2v_6cloned6ClonedINtNtNtB2z_5slice4iter4IterB4r_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i
  %.val1.i.i = phi i64 [ 0, %bb.x ], [ %.pre234.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2v_5chain5ChainINtNtB4_9into_iter8IntoIterB4r_EINtNtB2v_6cloned6ClonedINtNtNtB2z_5slice4iter4IterB4r_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %.val.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.x ], [ %.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCsh036I4OHgIr_6uucore8features6format8argument14FormatArgumentEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvCs25myiKMto6U_9uu_printf6uumain6uumainINtNtB2v_5chain5ChainINtNtB4_9into_iter8IntoIterB4r_EINtNtB2v_6cloned6ClonedINtNtNtB2z_5slice4iter4IterB4r_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !489
  %i.ev = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store ptr %.val.i.i, ptr %i.ev, align 8, !noalias !489
  %i.ew = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 4 uses
  store i64 %.val1.i.i, ptr %i.ew, align 8, !noalias !489
  %i.ex = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store i64 0, ptr %i.at, align 8, !noalias !489
  %i.ey = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false), !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !489
  store ptr %i.ca, ptr %i.as, align 8, !noalias !489
  %i.ez = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.cc, ptr %i.ez, align 8, !noalias !489
end_hunk_0
begin_hunk_1_@_RINvCs58W9blM4WiW_5uu_rm6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBy_6cloned6ClonedINtNtNtBC_5slice4iter4IterB29_EEEECsl8pJiQOn4hA_9coreutils:bb.a

bb.w:                                             ; preds = %bb.t
  %i.ej = extractvalue { ptr, i64 } %i.dx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2711
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dy, i64 noundef %i.ej) #45, !noalias !2711
  %i.ek = load i64, ptr %i.aa, align 8, !range !16, !noalias !2711, !noundef !12
  %i.el = trunc nuw i64 %i.ek to i1
  br i1 %i.el, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2711
  br label %bb.u

bb.y:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !noalias !2711, !nonnull !12, !noundef !12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !2711, !noundef !12 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2711
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aw, i64 296 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !range !13, !alias.scope !2710, !noalias !2709, !noundef !12
  %.not44.i.i = icmp eq i64 %i.er, -1
  br i1 %.not44.i.i, label %bb.z, label %bb.u

bb.z:                                             ; preds = %bb.y
  %.not.i60.i.i = icmp slt i64 %i.ep, 0
  br i1 %.not.i60.i.i, label %bb.ac, label %bb.aa, !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.es = icmp eq i64 %i.ep, 0
  br i1 %i.es, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit64.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !2743
  %i.et = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ep, i64 noundef range(i64 1, 9) 1) #45, !noalias !2743 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ac, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit62.thread87.i.i

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.468.0.ph.i.i = phi i64 [ 1, %bb.ab ], [ 0, %bb.z ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.468.0.ph.i.i, i64 %i.ep) #52, !noalias !2711
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit62.thread87.i.i: ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull align 1 %i.en, i64 %i.ep, i1 false), !noalias !2711
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit64.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit64.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit62.thread87.i.i, %bb.aa
  %i.ev = phi ptr [ inttoptr (i64 1 to ptr), %bb.aa ], [ %i.et, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit62.thread87.i.i ]
  store i64 %i.ep, ptr %i.eq, align 8, !alias.scope !2710, !noalias !2709
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 304
  store ptr %i.ev, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !alias.scope !2710, !noalias !2709
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 312
  store i64 %i.ep, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !alias.scope !2710, !noalias !2709
  br label %bb.u

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB28_ECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i57.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsczSSEuChxEj_8clap_lex7RawArgsECsl8pJiQOn4hA_9coreutils.exit59.sink.split.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2711
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(712) %i.aw) #45, !noalias !2709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2709
  %i.ew = load i64, ptr %i.ax, align 8, !range !13, !noalias !2709, !noundef !12 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !2709 ; 2 uses
  br i1 %i.ex, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB28_ECsl8pJiQOn4hA_9coreutils.exit.i
  %i.fa = call { ptr, ptr } @_RNvCs58W9blM4WiW_5uu_rm18handle_parse_error(ptr noalias noundef nonnull align 8 %i.ez, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.br, i64 noundef %i.bt) #45, !noalias !2709 ; 2 uses
  %i.fb = extractvalue { ptr, ptr } %i.fa, 0      ; 2 uses
  %i.fc = extractvalue { ptr, ptr } %i.fa, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2709
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb), "nonnull"(ptr %i.fc) ]
  br label %bb.co

bb.ae:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB28_ECsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.547.0.copyload.i = load ptr, ptr %.sroa.547.0..sroa_idx.i, align 8, !noalias !2709
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.648.0..sroa_idx.i, i64 32, i1 false), !noalias !2709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2709
  store i64 %i.ew, ptr %i.ay, align 8, !noalias !2709
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ez, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2709
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %.sroa.547.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2709
  %i.fd = load ptr, ptr @_RNvCs58W9blM4WiW_5uu_rm9ARG_FILES, align 8, !noalias !2709, !nonnull !12, !noundef !12 ; 2 uses
  %i.fe = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs58W9blM4WiW_5uu_rm9ARG_FILES, i64 8), align 8, !noalias !2709, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2709
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fd, i64 noundef %i.fe) #45, !noalias !2709
  call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2709
  store ptr %i.fd, ptr %i.y, align 8, !noalias !2746
  %i.ff = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !noalias !2746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2746
  %i.fg = load i64, ptr %i.af, align 8, !range !16, !alias.scope !2745, !noalias !2709, !noundef !12
  %i.fh = trunc nuw i64 %i.fg to i1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br i1 %i.fh, label %bb.af, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.fi, i64 40, i1 false), !noalias !2747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2746
  store ptr %i.y, ptr %i.w, align 8, !noalias !2746
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2746
  %i.fj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.fj, align 8, !noalias !2746
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !2746
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !2748
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ae
  %.sroa.0157.0.copyload158.i = load ptr, ptr %i.fi, align 8, !alias.scope !2749, !noalias !2709 ; 3 uses
  %.sroa.6.0..sroa_idx159.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.6.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx159.i, align 8, !alias.scope !2749, !noalias !2709 ; 5 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx159.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.6.sroa.5.0.copyload.i = load ptr, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx159.sroa_idx.i, align 8, !alias.scope !2749, !noalias !2709 ; 4 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx159.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.6.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx159.sroa_idx.i, align 8, !alias.scope !2749, !noalias !2709 ; 3 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx159.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.6.sroa.7.0.copyload.i = load ptr, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx159.sroa_idx.i, align 8, !alias.scope !2749, !noalias !2709 ; 3 uses
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx159.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %.sroa.6.sroa.8.0.copyload.i = load ptr, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx159.sroa_idx.i, align 8, !alias.scope !2749, !noalias !2709 ; 5 uses
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx159.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %.sroa.6.sroa.9.0.copyload.i = load ptr, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx159.sroa_idx.i, align 8, !alias.scope !2749, !noalias !2709 ; 3 uses
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx159.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.sroa.6.sroa.10.0.copyload.i = load i64, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx159.sroa_idx.i, align 8, !alias.scope !2749, !noalias !2709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2709
  %.not.i28 = icmp eq ptr %.sroa.0157.0.copyload158.i, null
  br i1 %.not.i28, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2750
  %.not.i.i.i.i.i14.i.i = icmp eq ptr %.sroa.6.sroa.6.0.copyload.i, null
  %i.fk = icmp eq ptr %.sroa.6.sroa.6.0.copyload.i, %.sroa.6.sroa.7.0.copyload.i
  %or.cond15.i.i = select i1 %.not.i.i.i.i.i14.i.i, i1 true, i1 %i.fk
  br i1 %or.cond15.i.i, label %select.unfold.i.i.i.i.i.preheader.i, label %.loopexit.i.loopexit.i.i

select.unfold.i.i.i.i.i.preheader.i:              ; preds = %bb.ag
  %.not.i5.i.i.i.i.i196.i = icmp eq ptr %.sroa.6.sroa.0.0.copyload.i, null
  %i.fl = icmp eq ptr %.sroa.6.sroa.0.0.copyload.i, %.sroa.6.sroa.5.0.copyload.i
  %or.cond.i.i.i.i.i.i197.i = select i1 %.not.i5.i.i.i.i.i196.i, i1 true, i1 %i.fl
  br i1 %or.cond.i.i.i.i.i.i197.i, label %select.unfold.i.i.i.i.i._crit_edge.i, label %.lr.ph.i

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i
  %i.fm = icmp eq ptr %i.fn, %.sroa.6.sroa.5.0.copyload.i
  br i1 %i.fm, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %.sroa.48.0.copyload.i17.i198.i = phi ptr [ %i.fn, %select.unfold.i.i.i.i.i.i ], [ %.sroa.6.sroa.0.0.copyload.i, %select.unfold.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i17.i198.i, i64 24 ; 4 uses
  %i.fo = getelementptr i8, ptr %.sroa.48.0.copyload.i17.i198.i, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.fo, align 8, !noalias !2751, !noundef !12 ; 2 uses
  %i.fp = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.fp, label %select.unfold.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.loopexit.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i:    ; preds = %select.unfold.i.i.i.i.i.i
  %i.fq = getelementptr i8, ptr %.sroa.48.0.copyload.i17.i198.i, i64 8
  %.val.i.i.i.i.i.le264.i = load ptr, ptr %i.fq, align 8, !noalias !2751, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge.i

select.unfold.i.i.i.i.i._crit_edge.i:             ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i, %select.unfold.i.i.i.i.i.preheader.i
  %.sroa.48.0.copyload.i17.i.lcssa.i = phi ptr [ %.sroa.6.sroa.0.0.copyload.i, %select.unfold.i.i.i.i.i.preheader.i ], [ %i.fn, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.sroa.7.0.copyload.i16.i.lcssa.i = phi ptr [ %.sroa.6.sroa.7.0.copyload.i, %select.unfold.i.i.i.i.i.preheader.i ], [ %.val.i.i.i.i.i.le264.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %.sroa.6.sroa.8.0.copyload.i, null
  br i1 %.not.i7.i.i.i.i.i.i, label %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i, label %.sink.split.i8.i.i.i.i.i.i

.sink.split.i8.i.i.i.i.i.i:                       ; preds = %select.unfold.i.i.i.i.i._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.9.0.copyload.i) ]
  %i.fr = icmp eq ptr %.sroa.6.sroa.8.0.copyload.i, %.sroa.6.sroa.9.0.copyload.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.8.0.copyload.i, i64 32
  br i1 %i.fr, label %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i, label %.loopexit.i.i.i

.loopexit.i.loopexit.i.loopexit.i:                ; preds = %.lr.ph.i
  %i.ft = getelementptr i8, ptr %.sroa.48.0.copyload.i17.i198.i, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.ft, align 8, !noalias !2751, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  br label %.loopexit.i.loopexit.i.i

.loopexit.i.loopexit.i.i:                         ; preds = %.loopexit.i.loopexit.i.loopexit.i, %bb.ag
  %spec.select.i18.i.i.i.i.lcssa13.i.i = phi ptr [ %.sroa.6.sroa.6.0.copyload.i, %bb.ag ], [ %.val.i.i.i.i.i.le.i, %.loopexit.i.loopexit.i.loopexit.i ] ; 2 uses
  %.sroa.7.0.copyload.i.lcssa.i.i = phi ptr [ %.sroa.6.sroa.7.0.copyload.i, %bb.ag ], [ %i.fu, %.loopexit.i.loopexit.i.loopexit.i ]
  %.sroa.48.0.copyload.i.lcssa.i.i = phi ptr [ %.sroa.6.sroa.0.0.copyload.i, %bb.ag ], [ %i.fn, %.loopexit.i.loopexit.i.loopexit.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa13.i.i, i64 32
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.loopexit.i.i, %.sink.split.i8.i.i.i.i.i.i
  %.sroa.7.0.copyload.i12.i.i = phi ptr [ %.sroa.7.0.copyload.i16.i.lcssa.i, %.sink.split.i8.i.i.i.i.i.i ], [ %.sroa.7.0.copyload.i.lcssa.i.i, %.loopexit.i.loopexit.i.i ]
  %.sroa.48.0.copyload.i10.i.i = phi ptr [ %.sroa.48.0.copyload.i17.i.lcssa.i, %.sink.split.i8.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.lcssa.i.i, %.loopexit.i.loopexit.i.i ]
  %.sroa.12.0.i.i = phi ptr [ %i.fs, %.sink.split.i8.i.i.i.i.i.i ], [ %.sroa.6.sroa.8.0.copyload.i, %.loopexit.i.loopexit.i.i ]
  %.sroa.6.0.copyload.i.i.i = phi ptr [ null, %.sink.split.i8.i.i.i.i.i.i ], [ %i.fv, %.loopexit.i.loopexit.i.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.6.sroa.8.0.copyload.i, %.sink.split.i8.i.i.i.i.i.i ], [ %spec.select.i18.i.i.i.i.lcssa13.i.i, %.loopexit.i.loopexit.i.i ]
  %i.fw = call noundef nonnull align 8 ptr %.sroa.0157.0.copyload158.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i) #45, !noalias !2752, !inline_history !2589 ; 2 uses
  %i.fx = add i64 %.sroa.6.sroa.10.0.copyload.i, -1 ; 3 uses
  %i.fy = getelementptr i8, ptr %i.fw, i64 8
  %.val.i.i.i105.i = load ptr, ptr %i.fy, align 8, !noalias !2753, !nonnull !12, !noundef !12
  %i.fz = getelementptr i8, ptr %i.fw, i64 16
  %.val3.i.i.i106.i = load i64, ptr %i.fz, align 8, !noalias !2753, !noundef !12
  %i.ga = call i64 @llvm.uadd.sat.i64(i64 %i.fx, i64 1)
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ga, i64 4) ; 3 uses
  %i.gb = shl i64 %..i.i.i.i, 4                   ; 4 uses
  %i.gc = icmp ugt i64 %i.fx, 1152921504606846974
  %.not.i.i.i.i.i = icmp ugt i64 %i.gb, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.gc, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %1, !prof !27

1:                                                ; preds = %.loopexit.i.i.i
  %2 = icmp eq i64 %i.gb, 0
  br i1 %2, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %1
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !2754
  %i.gd = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gb, i64 noundef range(i64 1, 9) 8) #45, !noalias !2754 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.ai, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah, %.loopexit.i.i.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.ah ], [ 0, %.loopexit.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.gb) #52, !noalias !2750
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.ah, %1
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %1 ], [ %i.gd, %bb.ah ] ; 4 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %1 ], [ %..i.i.i.i, %bb.ah ] ; 2 uses
  %3 = icmp ule i64 %..i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %3)
  store ptr %.val.i.i.i105.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !2750, !captures !39
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store i64 %.val3.i.i.i106.i, ptr %i.gf, align 8, !noalias !2750
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.v, align 8, !noalias !2750
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2750
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !2750
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  call void @llvm.experimental.noalias.scope.decl(metadata !2756)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.gg = phi ptr [ %i.hh, %bb.ak ], [ %.sroa.10.0.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %.sroa.7176.0.copyload.i = phi i64 [ %i.hk, %bb.ak ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 6 uses
  %i.gh = phi i64 [ %i.hb, %bb.ak ], [ %i.fx, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %spec.select.i9.i.i.i16.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i15.i.i.i.i.i, %bb.ak ], [ %.sroa.12.0.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 5 uses
  %i.gi = phi ptr [ %i.gy, %bb.ak ], [ %.sroa.7.0.copyload.i12.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 3 uses
  %i.gj = phi ptr [ %i.gz, %bb.ak ], [ %.sroa.48.0.copyload.i10.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 5 uses
  %.val.i.i.i11.i.i.i.i.i = phi ptr [ %.val.i.i.i8.i.i.i.i.i, %bb.ak ], [ %.sroa.6.0.copyload.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i5.i.i.i.i = icmp eq ptr %.val.i.i.i11.i.i.i.i.i, null
  %i.gk = icmp eq ptr %.val.i.i.i11.i.i.i.i.i, %i.gi
  %or.cond.i6.i.i.i.i = select i1 %.not.i.i.i.i.i5.i.i.i.i, i1 true, i1 %i.gk
  br i1 %or.cond.i6.i.i.i.i, label %select.unfold.i.i.i.i.i.preheader.i.i.i, label %.loopexit.loopexit.i.i.i.i.i

select.unfold.i.i.i.i.i.preheader.i.i.i:          ; preds = %bb.aj
  %.not.i5.i.i.i.i.i19.i.i.i = icmp eq ptr %i.gj, null
  %i.gl = icmp eq ptr %i.gj, %.sroa.6.sroa.5.0.copyload.i
  %or.cond.i.i.i.i.i.i20.i.i.i = select i1 %.not.i5.i.i.i.i.i19.i.i.i, i1 true, i1 %i.gl
  br i1 %or.cond.i.i.i.i.i.i20.i.i.i, label %select.unfold.i.i.i.i.i._crit_edge.i.i.i, label %.lr.ph.i.i.i

select.unfold.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i
  %i.gm = icmp eq ptr %i.go, %.sroa.6.sroa.5.0.copyload.i
  br i1 %i.gm, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %select.unfold.i.i.i.i.i.preheader.i.i.i, %select.unfold.i.i.i.i.i.i.i.i
  %i.gn = phi ptr [ %i.go, %select.unfold.i.i.i.i.i.i.i.i ], [ %i.gj, %select.unfold.i.i.i.i.i.preheader.i.i.i ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24 ; 4 uses
  %i.gp = getelementptr i8, ptr %i.gn, i64 16
  %.val4.i.i.i.i.i.i.i.i = load i64, ptr %i.gp, align 8, !noalias !2757, !noundef !12 ; 2 uses
  %i.gq = icmp eq i64 %.val4.i.i.i.i.i.i.i.i, 0
  br i1 %i.gq, label %select.unfold.i.i.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit.i.i.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i: ; preds = %select.unfold.i.i.i.i.i.i.i.i
  %i.gr = getelementptr i8, ptr %i.gn, i64 8
  %.val.i.i.i.i.i.le54.i.i.i = load ptr, ptr %i.gr, align 8, !noalias !2757, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge.i.i.i

select.unfold.i.i.i.i.i._crit_edge.i.i.i:         ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i, %select.unfold.i.i.i.i.i.preheader.i.i.i
  %.lcssa14.i.i.i = phi ptr [ %i.gj, %select.unfold.i.i.i.i.i.preheader.i.i.i ], [ %i.go, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.gi, %select.unfold.i.i.i.i.i.preheader.i.i.i ], [ %.val.i.i.i.i.i.le54.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i.i ]
  %.not.i7.i.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i16.i.i.i.i.i, null
  %i.gs = icmp eq ptr %spec.select.i9.i.i.i16.i.i.i.i.i, %.sroa.6.sroa.9.0.copyload.i
  %i.gt = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i16.i.i.i.i.i, i64 32
  %or.cond33.i.i.i.i.i = select i1 %.not.i7.i.i.i.i.i.i.i.i, i1 true, i1 %i.gs
  %.pre211.i = load i64, ptr %i.v, align 8, !noalias !2758 ; 2 uses
  br i1 %or.cond33.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtBU_8OsStringENvMBU_B3U_9as_os_strEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.loopexit.i.i.i.i.i

.loopexit.loopexit.i.i.loopexit.i.i.i:            ; preds = %.lr.ph.i.i.i
  %i.gu = getelementptr i8, ptr %i.gn, i64 8
  %.val.i.i.i.i.i.le.i.i.i = load ptr, ptr %i.gu, align 8, !noalias !2757, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le.i.i.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i.i.i, 5
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i.i.i, i64 %.idx.i.le.i.i.i
  br label %.loopexit.loopexit.i.i.i.i.i

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %.loopexit.loopexit.i.i.loopexit.i.i.i, %bb.aj
  %.lcssa3.i.i.i.i = phi ptr [ %i.gi, %bb.aj ], [ %i.gv, %.loopexit.loopexit.i.i.loopexit.i.i.i ]
  %.lcssa.i.i.i.i = phi ptr [ %i.gj, %bb.aj ], [ %i.go, %.loopexit.loopexit.i.i.loopexit.i.i.i ]
  %.val.i.i.i10.i.lcssa.i.i.i.i = phi ptr [ %.val.i.i.i11.i.i.i.i.i, %bb.aj ], [ %.val.i.i.i.i.i.le.i.i.i, %.loopexit.loopexit.i.i.loopexit.i.i.i ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i.i.i.i, i64 32
  %.pre.i = load i64, ptr %i.v, align 8, !range !19, !alias.scope !2759, !noalias !2750
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.loopexit.i.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i.i
  %i.gx = phi i64 [ %.pre211.i, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %.pre.i, %.loopexit.loopexit.i.i.i.i.i ]
  %i.gy = phi ptr [ %.lcssa.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %.lcssa3.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i ]
  %i.gz = phi ptr [ %.lcssa14.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %.lcssa.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i ]
  %spec.select.i9.i.i.i15.i.i.i.i.i = phi ptr [ %i.gt, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %spec.select.i9.i.i.i16.i.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i ]
  %.val.i.i.i8.i.i.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %i.gw, %.loopexit.loopexit.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i16.i.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i.i ], [ %.val.i.i.i10.i.lcssa.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i ]
  %i.ha = call noundef nonnull align 8 ptr %.sroa.0157.0.copyload158.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i.i) #45, !noalias !2760, !inline_history !2604 ; 2 uses
  %i.hb = add i64 %i.gh, -1                       ; 2 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 8
  %.val.i.i.i6.i.i.i = load ptr, ptr %i.hc, align 8, !noalias !2761, !nonnull !12, !noundef !12
  %i.hd = getelementptr i8, ptr %i.ha, i64 16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.hd, align 8, !noalias !2761, !noundef !12
  %i.he = icmp samesign ult i64 %.sroa.7176.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp eq i64 %.sroa.7176.0.copyload.i, %i.gx
  br i1 %i.hf, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.ak

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i
  %i.hg = call i64 @llvm.uadd.sat.i64(i64 %i.hb, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %.sroa.7176.0.copyload.i, i64 noundef %i.hg, i64 noundef 8, i64 noundef 16) #45, !noalias !2762
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2759, !noalias !2750
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %i.hh = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ %i.gg, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %.sroa.7176.0.copyload.i ; 2 uses
  store ptr %.val.i.i.i6.i.i.i, ptr %i.hi, align 8, !noalias !2763, !captures !39
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i64 %.val3.i.i.i.i.i.i, ptr %i.hj, align 8, !noalias !2763
  %i.hk = add nuw nsw i64 %.sroa.7176.0.copyload.i, 1 ; 2 uses
  store i64 %i.hk, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !2759, !noalias !2750
  br label %bb.aj

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtBU_8OsStringENvMBU_B3U_9as_os_strEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %select.unfold.i.i.i.i.i._crit_edge.i.i.i
  %.sroa.5175.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2758
  br label %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i

_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtBU_8OsStringENvMBU_B3U_9as_os_strEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %.sink.split.i8.i.i.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i
  %.sroa.7176.0.i = phi i64 [ %.sroa.7176.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtBU_8OsStringENvMBU_B3U_9as_os_strEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ 0, %.sink.split.i8.i.i.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i._crit_edge.i ]
  %.sroa.5175.0.i = phi ptr [ %.sroa.5175.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtBU_8OsStringENvMBU_B3U_9as_os_strEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %.sink.split.i8.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i.i._crit_edge.i ]
  %.sroa.0174.0.i = phi i64 [ %.pre211.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtBU_8OsStringENvMBU_B3U_9as_os_strEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ 0, %.sink.split.i8.i.i.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2750
  br label %bb.al

bb.al:                                            ; preds = %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.11.0.i = phi i64 [ %.sroa.7176.0.i, %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i ], [ 0, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 7 uses
  %.sroa.7.0184.i = phi ptr [ %.sroa.5175.0.i, %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i ], [ inttoptr (i64 8 to ptr), %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 4 uses
  %.sroa.0.0183.i = phi i64 [ %.sroa.0174.0.i, %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i ], [ 0, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 4 uses
  %i.hl = load ptr, ptr @_RNvCs58W9blM4WiW_5uu_rm9OPT_FORCE, align 8, !noalias !2709, !nonnull !12, !noundef !12
  %i.hm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs58W9blM4WiW_5uu_rm9OPT_FORCE, i64 8), align 8, !noalias !2709, !noundef !12
  %i.hn = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hl, i64 noundef %i.hm) #45, !noalias !2709 ; 3 uses
  %i.ho = icmp ult i64 %.sroa.11.0.i, 576460752303423488
  call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp eq i64 %.sroa.11.0.i, 0
  br i1 %i.hp, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.hn, label %.lr.ph.i.i, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtBZ_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB2m_6cloned6ClonedIBG_B3A_EEEEs0_0ECsl8pJiQOn4hA_9coreutils.exit.i

bb.an:                                            ; preds = %bb.al
  br i1 %i.hn, label %.lr.ph.i.i, label %bb.ap

.lr.ph.i.i:                                       ; preds = %bb.an, %bb.am
  %i.hq = load ptr, ptr @_RNvCs58W9blM4WiW_5uu_rm9OPT_FORCE, align 8, !noalias !2709, !nonnull !12, !noundef !12
  %i.hr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs58W9blM4WiW_5uu_rm9OPT_FORCE, i64 8), align 8, !noalias !2709, !noundef !12
  %i.hs = call { i64, i64 } @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8index_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hq, i64 noundef %i.hr) #45, !noalias !2709 ; 2 uses
  %i.ht = extractvalue { i64, i64 } %i.hs, 0
  %i.hu = trunc nuw i64 %i.ht to i1
  %i.hv = extractvalue { i64, i64 } %i.hs, 1
  %storemerge.i = select i1 %i.hu, i64 %i.hv, i64 0 ; 3 uses
  %i.hw = load ptr, ptr @_RNvCs58W9blM4WiW_5uu_rm17OPT_PROMPT_ALWAYS, align 8, !noalias !2709, !nonnull !12, !noundef !12 ; 2 uses
  %i.hx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs58W9blM4WiW_5uu_rm17OPT_PROMPT_ALWAYS, i64 8), align 8, !noalias !2709, !noundef !12 ; 2 uses
  %i.hy = load ptr, ptr @_RNvCs58W9blM4WiW_5uu_rm15OPT_PROMPT_ONCE, align 8, !noalias !2709, !nonnull !12, !noundef !12 ; 2 uses
  %i.hz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs58W9blM4WiW_5uu_rm15OPT_PROMPT_ONCE, i64 8), align 8, !noalias !2709, !noundef !12 ; 2 uses
  %i.ia = load ptr, ptr @_RNvCs58W9blM4WiW_5uu_rm15OPT_INTERACTIVE, align 8, !noalias !2709, !nonnull !12, !noundef !12 ; 2 uses
  %i.ib = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs58W9blM4WiW_5uu_rm15OPT_INTERACTIVE, i64 8), align 8, !noalias !2709, !noundef !12 ; 2 uses
  %i.ic = call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hw, i64 noundef %i.hx) #45, !noalias !2764
  %i.id = icmp eq i8 %i.ic, 2
  br i1 %i.id, label %.split.i.i, label %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.ie = call { i64, i64 } @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8index_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hw, i64 noundef %i.hx) #45, !noalias !2764 ; 2 uses
  %i.if = extractvalue { i64, i64 } %i.ie, 0
  %i.ig = trunc nuw i64 %i.if to i1
  %i.ih = extractvalue { i64, i64 } %i.ie, 1
  %i.ii = icmp ugt i64 %i.ih, %storemerge.i
  %i.ij = select i1 %i.ig, i1 %i.ii, i1 false
  br i1 %i.ij, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtBZ_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB2m_6cloned6ClonedIBG_B3A_EEEEs0_0ECsl8pJiQOn4hA_9coreutils.exit.i, label %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.i

_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.ik = call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hy, i64 noundef %i.hz) #45, !noalias !2764
  %i.il = icmp eq i8 %i.ik, 2
  br i1 %i.il, label %.split.i.1.i, label %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.1.i

.split.i.1.i:                                     ; preds = %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.i
  %i.im = call { i64, i64 } @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8index_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hy, i64 noundef %i.hz) #45, !noalias !2764 ; 2 uses
  %i.in = extractvalue { i64, i64 } %i.im, 0
  %i.io = trunc nuw i64 %i.in to i1
  %i.ip = extractvalue { i64, i64 } %i.im, 1
  %i.iq = icmp ugt i64 %i.ip, %storemerge.i
  %i.ir = select i1 %i.io, i1 %i.iq, i1 false
  br i1 %i.ir, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtBZ_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB2m_6cloned6ClonedIBG_B3A_EEEEs0_0ECsl8pJiQOn4hA_9coreutils.exit.i, label %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.1.i

_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.1.i: ; preds = %.split.i.1.i, %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.i
  %i.is = call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ia, i64 noundef %i.ib) #45, !noalias !2764
  %i.it = icmp eq i8 %i.is, 2
  br i1 %i.it, label %.split.i.2.i, label %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.2.i

.split.i.2.i:                                     ; preds = %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.1.i
  %i.iu = call { i64, i64 } @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8index_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ia, i64 noundef %i.ib) #45, !noalias !2764 ; 2 uses
  %i.iv = extractvalue { i64, i64 } %i.iu, 0
  %i.iw = trunc nuw i64 %i.iv to i1
  %i.ix = extractvalue { i64, i64 } %i.iu, 1
  %i.iy = icmp ugt i64 %i.ix, %storemerge.i
  %i.iz = select i1 %i.iw, i1 %i.iy, i1 false
  br i1 %i.iz, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtBZ_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB2m_6cloned6ClonedIBG_B3A_EEEEs0_0ECsl8pJiQOn4hA_9coreutils.exit.i, label %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.2.i

_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.2.i: ; preds = %.split.i.2.i, %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.1.i
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtBZ_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB2m_6cloned6ClonedIBG_B3A_EEEEs0_0ECsl8pJiQOn4hA_9coreutils.exit.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtBZ_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB2m_6cloned6ClonedIBG_B3A_EEEEs0_0ECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.2.i, %.split.i.2.i, %.split.i.1.i, %.split.i.i, %bb.am
  %.sroa.020.0.i = phi i1 [ false, %bb.am ], [ true, %_RNCINvNvCs58W9blM4WiW_5uu_rm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit.backedge.i.2.i ], [ false, %.split.i.i ], [ false, %.split.i.1.i ], [ false, %.split.i.2.i ]
  %i.ja = load ptr, ptr @_RNvCs58W9blM4WiW_5uu_rm20OPT_NO_PRESERVE_ROOT, align 8, !noalias !2709, !nonnull !12, !noundef !12
  %i.jb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs58W9blM4WiW_5uu_rm20OPT_NO_PRESERVE_ROOT, i64 8), align 8, !noalias !2709, !noundef !12
  %i.jc = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ja, i64 noundef %i.jb) #45, !noalias !2709 ; 2 uses
  %i.jd = xor i1 %i.jc, true
  %i.je = load ptr, ptr @_RNvCs58W9blM4WiW_5uu_rm17OPT_PRESERVE_ROOT, align 8, !noalias !2709, !nonnull !12, !noundef !12 ; 2 uses
  %i.jf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs58W9blM4WiW_5uu_rm17OPT_PRESERVE_ROOT, i64 8), align 8, !noalias !2709, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2709
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.je, i64 noundef %i.jf) #45, !noalias !2709
  call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2709
  store ptr %i.je, ptr %i.u, align 8, !noalias !2766
  %i.jg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.jf, ptr %i.jg, align 8, !noalias !2766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2766
  %i.jh = load i64, ptr %i.ae, align 8, !range !26, !alias.scope !2765, !noalias !2709, !noundef !12
  %.not.i108.i = icmp eq i64 %i.jh, 2
  br i1 %.not.i108.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.ao, !prof !11

end_hunk_1
begin_hunk_2_@_RINvCs65h624QUiyW_14parse_datetime22parse_datetime_at_dateReECsl8pJiQOn4hA_9coreutils:bb.a
  store i32 2, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RINvNtCs65h624QUiyW_14parse_datetime5items13parse_at_dateReECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvNtCs65h624QUiyW_14parse_datetime5items13parse_at_dateReECsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RINvCs6DG9EZK9NJK_11uu_printenv6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBF_6cloned6ClonedINtNtNtBJ_5slice4iter4IterB2g_EEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 12 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [1 x i8], align 1                 ; 6 uses
  %i.t = alloca [712 x i8], align 8               ; 4 uses
  %i.u = alloca [56 x i8], align 8                ; 8 uses
  %i.v = alloca [56 x i8], align 8                ; 10 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 9 uses
  %i.ai = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.ai, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3333
  call void @_RNvCs6DG9EZK9NJK_11uu_printenv6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.t) #45, !noalias !3333
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.u, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3333
  %i.ak = load i64, ptr %i.u, align 8, !range !13, !noalias !3333, !noundef !12 ; 2 uses
  %i.al = icmp eq i64 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !3333 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !3333 ; 2 uses
  br i1 %i.al, label %_RINvNvCs6DG9EZK9NJK_11uu_printenv6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBO_6cloned6ClonedINtNtNtBS_5slice4iter4IterB2p_EEEECsl8pJiQOn4hA_9coreutils.exit.thread, label %bb.d

_RINvNvCs6DG9EZK9NJK_11uu_printenv6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBO_6cloned6ClonedINtNtNtBS_5slice4iter4IterB2p_EEEECsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3333
  br label %.split

bb.d:                                             ; preds = %bb.c
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627.0..sroa_idx.i, i64 32, i1 false), !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3333
  store i64 %i.ak, ptr %i.v, align 8, !noalias !3333
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3333
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3333
  %i.aq = load ptr, ptr @_RNvCs6DG9EZK9NJK_11uu_printenv13ARG_VARIABLES, align 8, !noalias !3333, !nonnull !12, !noundef !12 ; 2 uses
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs6DG9EZK9NJK_11uu_printenv13ARG_VARIABLES, i64 8), align 8, !noalias !3333, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3333
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.ar) #45, !noalias !3333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3335)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3333
  store ptr %i.aq, ptr %i.m, align 8, !noalias !3336
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !noalias !3336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3336
  %i.at = load i64, ptr %i.n, align 8, !range !16, !alias.scope !3335, !noalias !3333, !noundef !12
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.au, label %bb.e, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.av, i64 40, i1 false), !noalias !3337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3336
  store ptr %i.m, ptr %i.k, align 8, !noalias !3336
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !3336
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.aw, align 8, !noalias !3336
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !3336
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !3338
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.d
  %.sroa.072.0.copyload73.i = load ptr, ptr %i.av, align 8, !alias.scope !3339, !noalias !3333 ; 3 uses
  %.sroa.6.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx74.i, align 8, !alias.scope !3339, !noalias !3333 ; 5 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx74.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6.sroa.5.0.copyload.i = load ptr, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx74.sroa_idx.i, align 8, !alias.scope !3339, !noalias !3333 ; 4 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx74.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.6.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx74.sroa_idx.i, align 8, !alias.scope !3339, !noalias !3333 ; 3 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx74.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.6.sroa.7.0.copyload.i = load ptr, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx74.sroa_idx.i, align 8, !alias.scope !3339, !noalias !3333 ; 3 uses
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx74.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.6.sroa.8.0.copyload.i = load ptr, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx74.sroa_idx.i, align 8, !alias.scope !3339, !noalias !3333 ; 5 uses
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx74.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.6.sroa.9.0.copyload.i = load ptr, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx74.sroa_idx.i, align 8, !alias.scope !3339, !noalias !3333 ; 3 uses
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx74.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.6.sroa.10.0.copyload.i = load i64, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx74.sroa_idx.i, align 8, !alias.scope !3339, !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3333
  %.not.i = icmp eq ptr %.sroa.072.0.copyload73.i, null
  br i1 %.not.i, label %bb.p, label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3340
  %.not.i.i.i.i.i141.i = icmp eq ptr %.sroa.6.sroa.6.0.copyload.i, null
  %i.ax = icmp eq ptr %.sroa.6.sroa.6.0.copyload.i, %.sroa.6.sroa.7.0.copyload.i
  %or.cond142.i = select i1 %.not.i.i.i.i.i141.i, i1 true, i1 %i.ax
  br i1 %or.cond142.i, label %select.unfold.i.i.i.i.i.preheader, label %.loopexit.i.i.loopexit.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.f
  %.not.i5.i.i.i.i.i80 = icmp eq ptr %.sroa.6.sroa.0.0.copyload.i, null
  %i.ay = icmp eq ptr %.sroa.6.sroa.0.0.copyload.i, %.sroa.6.sroa.5.0.copyload.i
  %or.cond.i.i.i.i.i.i81 = select i1 %.not.i5.i.i.i.i.i80, i1 true, i1 %i.ay
  br i1 %or.cond.i.i.i.i.i.i81, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.az = icmp eq ptr %i.ba, %.sroa.6.sroa.5.0.copyload.i
  br i1 %i.az, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %.sroa.413.0.copyload.i144.i82 = phi ptr [ %i.ba, %select.unfold.i.i.i.i.i ], [ %.sroa.6.sroa.0.0.copyload.i, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload.i144.i82, i64 24 ; 4 uses
  %i.bb = getelementptr i8, ptr %.sroa.413.0.copyload.i144.i82, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !3341, !noundef !12 ; 2 uses
  %i.bc = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.bc, label %select.unfold.i.i.i.i.i, label %.loopexit.i.i.loopexit.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %.sroa.413.0.copyload.i144.i82, i64 8
  %.val.i.i.i.i.i.le172 = load ptr, ptr %i.bd, align 8, !noalias !3341, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.sroa.413.0.copyload.i144.i.lcssa = phi ptr [ %.sroa.6.sroa.0.0.copyload.i, %select.unfold.i.i.i.i.i.preheader ], [ %i.ba, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.sroa.716.0.copyload.i143.i.lcssa = phi ptr [ %.sroa.6.sroa.7.0.copyload.i, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.le172, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %.sroa.6.sroa.8.0.copyload.i, null
  br i1 %.not.i7.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_ENvYB11_NtB13_8ToString9to_stringEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %.sink.split.i8.i.i.i.i.i

.sink.split.i8.i.i.i.i.i:                         ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.9.0.copyload.i) ]
  %i.be = icmp eq ptr %.sroa.6.sroa.8.0.copyload.i, %.sroa.6.sroa.9.0.copyload.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.8.0.copyload.i, i64 32
  br i1 %i.be, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_ENvYB11_NtB13_8ToString9to_stringEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %.loopexit.i.i.i

.loopexit.i.i.loopexit.i.loopexit:                ; preds = %.lr.ph
  %i.bg = getelementptr i8, ptr %.sroa.413.0.copyload.i144.i82, i64 8
  %.val.i.i.i.i.i.le = load ptr, ptr %i.bg, align 8, !noalias !3341, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.i.i.loopexit.i

.loopexit.i.i.loopexit.i:                         ; preds = %.loopexit.i.i.loopexit.i.loopexit, %bb.f
  %spec.select.i18.i.i.i.i.lcssa140.i = phi ptr [ %.sroa.6.sroa.6.0.copyload.i, %bb.f ], [ %.val.i.i.i.i.i.le, %.loopexit.i.i.loopexit.i.loopexit ] ; 2 uses
  %.sroa.716.0.copyload.i.lcssa.i = phi ptr [ %.sroa.6.sroa.7.0.copyload.i, %bb.f ], [ %i.bh, %.loopexit.i.i.loopexit.i.loopexit ]
  %.sroa.413.0.copyload.i.lcssa.i = phi ptr [ %.sroa.6.sroa.0.0.copyload.i, %bb.f ], [ %i.ba, %.loopexit.i.i.loopexit.i.loopexit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa140.i, i64 32
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.loopexit.i, %.sink.split.i8.i.i.i.i.i
  %.sroa.716.0.copyload.i139.i = phi ptr [ %.sroa.716.0.copyload.i143.i.lcssa, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.716.0.copyload.i.lcssa.i, %.loopexit.i.i.loopexit.i ]
  %.sroa.413.0.copyload.i137.i = phi ptr [ %.sroa.413.0.copyload.i144.i.lcssa, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.413.0.copyload.i.lcssa.i, %.loopexit.i.i.loopexit.i ]
  %.sroa.13.0.i = phi ptr [ %i.bf, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.6.sroa.8.0.copyload.i, %.loopexit.i.i.loopexit.i ]
  %.sroa.6.0.copyload.i.i = phi ptr [ null, %.sink.split.i8.i.i.i.i.i ], [ %i.bi, %.loopexit.i.i.loopexit.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.6.sroa.8.0.copyload.i, %.sink.split.i8.i.i.i.i.i ], [ %spec.select.i18.i.i.i.i.lcssa140.i, %.loopexit.i.i.loopexit.i ]
  %i.bj = tail call noundef nonnull align 8 ptr %.sroa.072.0.copyload73.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i) #45, !noalias !3342, !inline_history !3201 ; 2 uses
  %i.bk = add i64 %.sroa.6.sroa.10.0.copyload.i, -1 ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !noalias !3343, !nonnull !12, !noundef !12
  %i.bm = getelementptr i8, ptr %i.bj, i64 16
  %.val2.i.i.i = load i64, ptr %i.bm, align 8, !noalias !3343, !noundef !12 ; 7 uses
  %i.bn = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bn, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !3344
  %i.bo = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !3344 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.h, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i) #52, !noalias !3345
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %.val.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i, i1 false), !noalias !3346
  %.not.i.i = icmp eq i64 %.val2.i.i.i, -1
  br i1 %.not.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_ENvYB11_NtB13_8ToString9to_stringEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %.loopexit.i.i.i
  %.sroa.7.028.i.i = phi ptr [ %i.bo, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 1 to ptr), %.loopexit.i.i.i ]
  %i.bq = tail call i64 @llvm.uadd.sat.i64(i64 %i.bk, i64 1)
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bq, i64 4) ; 3 uses
  %i.br = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.bk, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb.k, label %bb.i, !prof !27

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !3347
  %i.bt = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.br, i64 noundef range(i64 1, 9) 8) #45, !noalias !3347 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.k, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.k:                                             ; preds = %bb.j, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.br) #52, !noalias !3340
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.bt, %bb.j ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.i ], [ %..i.i.i, %bb.j ] ; 2 uses
  %i.bv = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.bv)
  store i64 %.val2.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !3340
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store ptr %.sroa.7.028.i.i, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !3340
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store i64 %.val2.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !3340
  store i64 %.sroa.4.0.i.i.i, ptr %i.j, align 8, !noalias !3340
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3340
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !3340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.bw = phi ptr [ %i.da, %bb.o ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.793.0.copyload.i = phi i64 [ %i.dc, %bb.o ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 6 uses
  %i.bx = phi i64 [ %i.cq, %bb.o ], [ %i.bk, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %spec.select.i9.i.i.i32.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i31.i.i.i.i, %bb.o ], [ %.sroa.13.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %i.by = phi ptr [ %i.cn, %bb.o ], [ %.sroa.716.0.copyload.i139.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %i.bz = phi ptr [ %i.co, %bb.o ], [ %.sroa.413.0.copyload.i137.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.val.i.i.i24.i.i.i.i = phi ptr [ %.val.i.i.i21.i.i.i.i, %bb.o ], [ %.sroa.6.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.not.i.i.i.i.i5.i.i.i = icmp eq ptr %.val.i.i.i24.i.i.i.i, null
  %i.ca = icmp eq ptr %.val.i.i.i24.i.i.i.i, %i.by
  %or.cond.i6.i.i.i = select i1 %.not.i.i.i.i.i5.i.i.i, i1 true, i1 %i.ca
  br i1 %or.cond.i6.i.i.i, label %select.unfold.i.i.i.i.i.preheader.i.i, label %.loopexit.i.loopexit.i.i.i.i

select.unfold.i.i.i.i.i.preheader.i.i:            ; preds = %bb.l
  %.not.i5.i.i.i.i.i36.i.i = icmp eq ptr %i.bz, null
  %i.cb = icmp eq ptr %i.bz, %.sroa.6.sroa.5.0.copyload.i
  %or.cond.i.i.i.i.i.i37.i.i = select i1 %.not.i5.i.i.i.i.i36.i.i, i1 true, i1 %i.cb
  br i1 %or.cond.i.i.i.i.i.i37.i.i, label %select.unfold.i.i.i.i.i._crit_edge.i.i, label %.lr.ph.i.i

select.unfold.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i
  %i.cc = icmp eq ptr %i.ce, %.sroa.6.sroa.5.0.copyload.i
  br i1 %i.cc, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i.i.i.i.preheader.i.i, %select.unfold.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.ce, %select.unfold.i.i.i.i.i.i.i ], [ %i.bz, %select.unfold.i.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 4 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 16
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !3350, !noundef !12 ; 2 uses
  %i.cg = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %select.unfold.i.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.loopexit.i.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i:  ; preds = %select.unfold.i.i.i.i.i.i.i
  %i.ch = getelementptr i8, ptr %i.cd, i64 8
  %.val.i.i.i.i.i.le73.i.i = load ptr, ptr %i.ch, align 8, !noalias !3350, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge.i.i

select.unfold.i.i.i.i.i._crit_edge.i.i:           ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i, %select.unfold.i.i.i.i.i.preheader.i.i
  %.lcssa31.i.i = phi ptr [ %i.bz, %select.unfold.i.i.i.i.i.preheader.i.i ], [ %i.ce, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi ptr [ %i.by, %select.unfold.i.i.i.i.i.preheader.i.i ], [ %.val.i.i.i.i.i.le73.i.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i ]
  %.not.i7.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i32.i.i.i.i, null
  %i.ci = icmp eq ptr %spec.select.i9.i.i.i32.i.i.i.i, %.sroa.6.sroa.9.0.copyload.i
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i32.i.i.i.i, i64 32
  %or.cond47.i.i.i.i = select i1 %.not.i7.i.i.i.i.i.i.i, i1 true, i1 %i.ci
  br i1 %or.cond47.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtBT_8ToString9to_stringEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.loopexit.i.i.loopexit.i.i:            ; preds = %.lr.ph.i.i
  %i.ck = getelementptr i8, ptr %i.cd, i64 8
  %.val.i.i.i.i.i.le.i.i = load ptr, ptr %i.ck, align 8, !noalias !3350, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le.i.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i.i, 5
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i.i, i64 %.idx.i.le.i.i
  br label %.loopexit.i.loopexit.i.i.i.i

.loopexit.i.loopexit.i.i.i.i:                     ; preds = %.loopexit.i.loopexit.i.i.loopexit.i.i, %bb.l
  %.lcssa3.i.i.i = phi ptr [ %i.by, %bb.l ], [ %i.cl, %.loopexit.i.loopexit.i.i.loopexit.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.bz, %bb.l ], [ %i.ce, %.loopexit.i.loopexit.i.i.loopexit.i.i ]
  %.val.i.i.i23.i.lcssa.i.i.i = phi ptr [ %.val.i.i.i24.i.i.i.i, %bb.l ], [ %.val.i.i.i.i.i.le.i.i, %.loopexit.i.loopexit.i.i.loopexit.i.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i.i.i23.i.lcssa.i.i.i, i64 32
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.loopexit.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i
  %i.cn = phi ptr [ %.lcssa.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.lcssa3.i.i.i, %.loopexit.i.loopexit.i.i.i.i ]
  %i.co = phi ptr [ %.lcssa31.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.lcssa.i.i.i, %.loopexit.i.loopexit.i.i.i.i ]
  %spec.select.i9.i.i.i31.i.i.i.i = phi ptr [ %i.cj, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %spec.select.i9.i.i.i32.i.i.i.i, %.loopexit.i.loopexit.i.i.i.i ]
  %.val.i.i.i21.i.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %i.cm, %.loopexit.i.loopexit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i32.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.val.i.i.i23.i.lcssa.i.i.i, %.loopexit.i.loopexit.i.i.i.i ]
  %i.cp = tail call noundef nonnull align 8 ptr %.sroa.072.0.copyload73.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i) #45, !noalias !3351, !inline_history !3228 ; 2 uses
  %i.cq = add i64 %i.bx, -1                       ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 8
  %.val.i.i.i2.i.i = load ptr, ptr %i.cr, align 8, !noalias !3352, !nonnull !12, !noundef !12
  %i.cs = getelementptr i8, ptr %i.cp, i64 16
  %.val2.i.i.i.i.i = load i64, ptr %i.cs, align 8, !noalias !3352, !noundef !12 ; 7 uses
  %i.ct = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ct, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !3353
  %i.cu = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !3353 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.n, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i) #52, !noalias !3354
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %.val.i.i.i2.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i1 false), !noalias !3355
  %.not.i.i3.i.i = icmp eq i64 %.val2.i.i.i.i.i, -1
  br i1 %.not.i.i3.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtBT_8ToString9to_stringEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.7.018.i.i.i.i = phi ptr [ %i.cu, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %.loopexit.i.i.i.i.i ]
  %i.cw = icmp samesign ult i64 %.sroa.793.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.j, align 8, !range !19, !alias.scope !3356, !noalias !3340, !noundef !12
  %i.cy = icmp eq i64 %.sroa.793.0.copyload.i, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.o

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i
  %i.cz = tail call i64 @llvm.uadd.sat.i64(i64 %i.cq, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.sroa.793.0.copyload.i, i64 noundef %i.cz, i64 noundef 8, i64 noundef 24) #45, !noalias !3357
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !3356, !noalias !3340
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i
  %i.da = phi ptr [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.bw, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i ] ; 2 uses
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %.sroa.793.0.copyload.i ; 3 uses
  store i64 %.val2.i.i.i.i.i, ptr %i.db, align 8, !noalias !3358
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %.sroa.7.018.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !3358
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !3358
  %i.dc = add nuw nsw i64 %.sroa.793.0.copyload.i, 1 ; 2 uses
  store i64 %i.dc, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3356, !noalias !3340
  br label %bb.l

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtBT_8ToString9to_stringEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i
  %.sroa.091.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !3359
  %.sroa.592.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3359
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_ENvYB11_NtB13_8ToString9to_stringEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_ENvYB11_NtB13_8ToString9to_stringEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtBT_8ToString9to_stringEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %.sink.split.i8.i.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge
  %.sroa.793.0.i = phi i64 [ %.sroa.793.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtBT_8ToString9to_stringEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ 0, %.sink.split.i8.i.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i._crit_edge ]
  %.sroa.592.0.i = phi ptr [ %.sroa.592.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtBT_8ToString9to_stringEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 8 to ptr), %.sink.split.i8.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i.i._crit_edge ]
  %.sroa.091.0.i = phi i64 [ %.sroa.091.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtBT_8ToString9to_stringEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_NtB2b_8ToString9to_stringENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ 0, %.sink.split.i8.i.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3340
  br label %bb.p

bb.p:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_ENvYB11_NtB13_8ToString9to_stringEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.1067.0.i = phi i64 [ %.sroa.793.0.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_ENvYB11_NtB13_8ToString9to_stringEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i ], [ 0, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.592.0.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_ENvYB11_NtB13_8ToString9to_stringEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i ], [ inttoptr (i64 8 to ptr), %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 6 uses
  %.sroa.0.098.i = phi i64 [ %.sroa.091.0.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_ENvYB11_NtB13_8ToString9to_stringEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i ], [ 0, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3333
  %i.dd = load ptr, ptr @_RNvCs6DG9EZK9NJK_11uu_printenv8OPT_NULL, align 8, !noalias !3333, !nonnull !12, !noundef !12
  %i.de = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs6DG9EZK9NJK_11uu_printenv8OPT_NULL, i64 8), align 8, !noalias !3333, !noundef !12
  %i.df = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %i.de) #45, !noalias !3333
  %..i = select i1 %i.df, i8 0, i8 10             ; 2 uses
  store i8 %..i, ptr %i.s, align 1, !noalias !3333
  %i.dg = icmp ult i64 %.sroa.1067.0.i, 384307168202282326
  call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp eq i64 %.sroa.1067.0.i, 0
  br i1 %i.dh, label %bb.q, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i: ; preds = %bb.p
  %.idx154.i = mul nuw nsw i64 %.sroa.1067.0.i, 24
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %.idx154.i ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %.sroa.688.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dl = call fastcc noundef ptr @_RINvNtNtCsh036I4OHgIr_6uucore4mods7display18print_all_env_varsNtNtB4_11line_ending10LineEndingECsl8pJiQOn4hA_9coreutils(i8 noundef %..i) #45, !noalias !3333 ; 2 uses
  %.not37.i = icmp eq ptr %i.dl, null
  br i1 %.not37.i, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.au

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.backedge.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i
  %.sroa.014.0149.i = phi i1 [ false, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i ], [ %.sroa.014.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.677.0148.i = phi ptr [ %.sroa.7.0.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i ], [ %i.dm, %.backedge.i ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.677.0148.i, i64 24 ; 8 uses
  %.sroa.079.0.copyload80.i = load i64, ptr %.sroa.677.0148.i, align 8, !noalias !3360 ; 5 uses
  %.sroa.9.0..sroa.677.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.677.0148.i, i64 8
end_hunk_2
begin_hunk_3_@_RINvCs8hEv8bFEvN4_7uu_fold6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBA_6cloned6ClonedINtNtNtBE_5slice4iter4IterB2b_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  br i1 %.not105146.i84.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92.i, label %.lr.ph150.i85.i

.preheader111.i77.i:                              ; preds = %bb.bv, %bb.by
  %.sroa.0.3145.i78.i = phi ptr [ %i.jv, %bb.by ], [ %.sroa.0.0.i76.i, %bb.bv ] ; 2 uses
  %.sroa.26.3144.i79.i = phi i64 [ %i.jw, %bb.by ], [ %.sroa.26.0.i75.i, %bb.bv ]
  %.sroa.084.3143.i80.i = phi i64 [ %i.kh, %bb.by ], [ 0, %bb.bv ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i78.i, i64 1
  %i.jw = add nsw i64 %.sroa.26.3144.i79.i, -1    ; 2 uses
  %i.jx = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i80.i, i64 10) ; 2 uses
  %i.jy = extractvalue { i64, i1 } %i.jx, 0
  %i.jz = extractvalue { i64, i1 } %i.jx, 1
  br i1 %i.jz, label %.loopexit.i, label %bb.bw, !prof !18

bb.bw:                                            ; preds = %.preheader111.i77.i
  %i.ka = load i8, ptr %.sroa.0.3145.i78.i, align 1, !alias.scope !5360, !noalias !5316, !noundef !12
  %i.kb = zext i8 %i.ka to i32
  %i.kc = add nsw i32 %i.kb, -48                  ; 2 uses
  %i.kd = icmp ult i32 %i.kc, 10
  br i1 %i.kd, label %bb.bx, label %.loopexit.i

bb.bx:                                            ; preds = %bb.bw
  %i.ke = zext nneg i32 %i.kc to i64
  %i.kf = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.jy, i64 %i.ke) ; 2 uses
  %i.kg = extractvalue { i64, i1 } %i.kf, 1
  br i1 %i.kg, label %.loopexit.i, label %bb.by, !prof !18

bb.by:                                            ; preds = %bb.bx
  %i.kh = extractvalue { i64, i1 } %i.kf, 0       ; 2 uses
  %.not104.i82.i = icmp eq i64 %i.jw, 0
  br i1 %.not104.i82.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92.i, label %.preheader111.i77.i

.lr.ph150.i85.i:                                  ; preds = %.preheader.i83.i, %bb.bz
  %.sroa.0.4149.i86.i = phi ptr [ %i.ko, %bb.bz ], [ %.sroa.0.0.i76.i, %.preheader.i83.i ] ; 2 uses
  %.sroa.26.4148.i87.i = phi i64 [ %i.kn, %bb.bz ], [ %.sroa.26.0.i75.i, %.preheader.i83.i ]
  %.sroa.084.4147.i88.i = phi i64 [ %i.kq, %bb.bz ], [ 0, %.preheader.i83.i ]
  %i.ki = load i8, ptr %.sroa.0.4149.i86.i, align 1, !alias.scope !5360, !noalias !5316, !noundef !12
  %i.kj = zext i8 %i.ki to i32
  %i.kk = add nsw i32 %i.kj, -48                  ; 2 uses
  %i.kl = icmp ult i32 %i.kk, 10
  br i1 %i.kl, label %bb.bz, label %.loopexit.i

bb.bz:                                            ; preds = %.lr.ph150.i85.i
  %i.km = mul i64 %.sroa.084.4147.i88.i, 10
  %i.kn = add nsw i64 %.sroa.26.4148.i87.i, -1    ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i86.i, i64 1
  %i.kp = zext nneg i32 %i.kk to i64
  %i.kq = add i64 %i.km, %i.kp                    ; 2 uses
  %.not105.i89.i = icmp eq i64 %i.kn, 0
  br i1 %.not105.i89.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92.i, label %.lr.ph150.i85.i

bb.ca:                                            ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %i.kr = icmp eq i64 %.sroa.011.0.i, 0
  br i1 %i.kr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.i, i64 noundef %.sroa.011.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !5361
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i

.loopexit.i:                                      ; preds = %bb.bs, %bb.br, %.lr.ph.i60.i, %.lr.ph141.i70.i, %bb.bx, %bb.bw, %.preheader111.i77.i, %.lr.ph150.i85.i, %bb.bn, %bb.bn, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit58.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5316
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5197.0.copyload199.i, i64 noundef %.sroa.8.0.copyload202.i) #53, !noalias !5316
  %i.ks = load i8, ptr %i.ao, align 8, !range !21, !noalias !5316, !noundef !12
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %bb.ce, label %bb.cf

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92.i: ; preds = %bb.bt, %bb.bu, %bb.by, %bb.bz, %.preheader.i83.i, %.preheader114.i68.i
  %.sroa.15206.0.i = phi i64 [ %i.kq, %bb.bz ], [ %i.jt, %bb.bu ], [ %i.kh, %bb.by ], [ 0, %.preheader.i83.i ], [ 0, %.preheader114.i68.i ], [ %i.jk, %bb.bt ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @470, i64 noundef 5, i64 noundef %.sroa.15206.0.i) #45, !noalias !5316
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !5316
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @471, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.am) #45, !noalias !5316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5316
  %i.ku = icmp eq i64 %.sroa.0195.0.copyload196.i, 0
  br i1 %i.ku, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit95.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5197.0.copyload199.i, i64 noundef %.sroa.0195.0.copyload196.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !5362
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit95.i

bb.ce:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5316
  store i64 %.sroa.0195.0.copyload196.i, ptr %i.an, align 8, !noalias !5316
  %.sroa.5197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.5197.0.copyload199.i, ptr %.sroa.5197.0..sroa_idx.i, align 8, !noalias !5316
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.8.0.copyload202.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !5316
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @470, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.an) #45, !noalias !5316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !5316
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @471, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.am) #45, !noalias !5316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5316
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit95.i

bb.cf:                                            ; preds = %.loopexit.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.kw = load double, ptr %i.kv, align 8, !noalias !5316, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @470, i64 noundef 5, double noundef %i.kw) #45, !noalias !5316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5316
  br label %bb.cc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit95.i: ; preds = %bb.ce, %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5316
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5363
  %i.kx = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !5363 ; 4 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.cg, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !15

bb.cg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit95.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !5363
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit95.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !5316
  %.sroa.4.0..sroa_idx249.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx249.i, align 8, !noalias !5316
  br label %bb.ch

bb.ch:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit161.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.0.0.i = phi ptr [ %i.qg, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit161.i ], [ %i.kx, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 2 uses
  %i.kz = icmp eq i64 %.sroa.011.0.i, 0
  br i1 %i.kz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit98.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.i, i64 noundef %.sroa.011.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !5364
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit98.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit98.i: ; preds = %bb.ci, %bb.ch
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.au) #45, !noalias !5316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5316
  br i1 %.not.not.i, label %bb.dz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit176.i

bb.cj:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5365
  %.not.i.i.i.i.i100342.i = icmp eq ptr %.sroa.5241.sroa.5.0.copyload.i, null
  %i.la = icmp eq ptr %.sroa.5241.sroa.5.0.copyload.i, %.sroa.5241.sroa.6.0.copyload.i
  %or.cond343.i = select i1 %.not.i.i.i.i.i100342.i, i1 true, i1 %i.la
  br i1 %or.cond343.i, label %select.unfold.i.i.i.i.i.preheader, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.cj
  %.not.i5.i.i.i.i.i102 = icmp eq ptr %.sroa.5241.sroa.0.0.copyload.i, null
  %i.lb = icmp eq ptr %.sroa.5241.sroa.0.0.copyload.i, %.sroa.5241.sroa.4.0.copyload.i
  %or.cond.i.i.i.i.i109.i103 = select i1 %.not.i5.i.i.i.i.i102, i1 true, i1 %i.lb
  br i1 %or.cond.i.i.i.i.i109.i103, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.lc = icmp eq ptr %i.ld, %.sroa.5241.sroa.4.0.copyload.i
  br i1 %i.lc, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %.sroa.44.0.copyload.i345.i104 = phi ptr [ %i.ld, %select.unfold.i.i.i.i.i ], [ %.sroa.5241.sroa.0.0.copyload.i, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i345.i104, i64 24 ; 4 uses
  %i.le = getelementptr i8, ptr %.sroa.44.0.copyload.i345.i104, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.le, align 8, !noalias !5366, !noundef !12 ; 2 uses
  %i.lf = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.lf, label %select.unfold.i.i.i.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.lg = getelementptr i8, ptr %.sroa.44.0.copyload.i345.i104, i64 8
  %.val.i.i.i.i.i.le291 = load ptr, ptr %i.lg, align 8, !noalias !5366, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.sroa.44.0.copyload.i345.i.lcssa = phi ptr [ %.sroa.5241.sroa.0.0.copyload.i, %select.unfold.i.i.i.i.i.preheader ], [ %i.ld, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.sroa.7.0.copyload.i99344.i.lcssa = phi ptr [ %.sroa.5241.sroa.6.0.copyload.i, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.le291, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %.sroa.5241.sroa.7.0.copyload.i, null
  br i1 %.not.i7.i.i.i.i.i, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.thread.i, label %.sink.split.i8.i.i.i.i.i

.sink.split.i8.i.i.i.i.i:                         ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5241.sroa.8.0.copyload.i) ]
  %i.lh = icmp eq ptr %.sroa.5241.sroa.7.0.copyload.i, %.sroa.5241.sroa.8.0.copyload.i
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.5241.sroa.7.0.copyload.i, i64 32
  br i1 %i.lh, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.thread.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit: ; preds = %.lr.ph
  %i.lj = getelementptr i8, ptr %.sroa.44.0.copyload.i345.i104, i64 8
  %.val.i.i.i.i.i.le = load ptr, ptr %i.lj, align 8, !noalias !5366, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le, i64 %.idx.i.le
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit, %bb.cj
  %spec.select.i18.i.i.i.i.lcssa341.i = phi ptr [ %.sroa.5241.sroa.5.0.copyload.i, %bb.cj ], [ %.val.i.i.i.i.i.le, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit ] ; 2 uses
  %.sroa.7.0.copyload.i99.lcssa.i = phi ptr [ %.sroa.5241.sroa.6.0.copyload.i, %bb.cj ], [ %i.lk, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit ]
  %.sroa.44.0.copyload.i.lcssa.i = phi ptr [ %.sroa.5241.sroa.0.0.copyload.i, %bb.cj ], [ %i.ld, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit ]
  %i.ll = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa341.i, i64 32
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i, %.sink.split.i8.i.i.i.i.i
  %.sroa.7.0.copyload.i99315.i = phi ptr [ %.sroa.7.0.copyload.i99344.i.lcssa, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.7.0.copyload.i99.lcssa.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.44.0.copyload.i313.i = phi ptr [ %.sroa.44.0.copyload.i345.i.lcssa, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.44.0.copyload.i.lcssa.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.13.0.i = phi ptr [ %i.li, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.5241.sroa.7.0.copyload.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.6.0.copyload.i101.i = phi ptr [ null, %.sink.split.i8.i.i.i.i.i ], [ %i.ll, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.5241.sroa.7.0.copyload.i, %.sink.split.i8.i.i.i.i.i ], [ %spec.select.i18.i.i.i.i.lcssa341.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %i.lm = call noundef nonnull align 8 ptr %.sroa.0239.0.copyload240.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i) #45, !noalias !5367, !inline_history !5211
  %i.ln = add i64 %.sroa.5241.sroa.9.0.copyload.i, -1 ; 3 uses
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lm) #45, !noalias !5365
  %.pr.i102.i = load i64, ptr %i.l, align 8, !noalias !5365
  %.not.i103.i = icmp eq i64 %.pr.i102.i, -1
  br i1 %.not.i103.i, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.thread.i, label %bb.ck

bb.ck:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.lo = call i64 @llvm.uadd.sat.i64(i64 %i.ln, i64 1)
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.lo, i64 4) ; 3 uses
  %i.lp = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.ln, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb.cn, label %bb.cl, !prof !27

bb.cl:                                            ; preds = %bb.ck
  %i.lq = icmp eq i64 %i.lp, 0
  br i1 %i.lq, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5368
  %i.lr = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lp, i64 noundef range(i64 1, 9) 8) #45, !noalias !5368 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %bb.cn, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.cm ], [ 0, %bb.ck ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.lp) #52, !noalias !5365
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.cm, %bb.cl
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.cl ], [ %i.lr, %bb.cm ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.cl ], [ %..i.i.i, %bb.cm ] ; 2 uses
  %i.lt = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.lt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !5365
  store i64 %.sroa.4.0.i.i.i, ptr %i.m, align 8, !noalias !5365
  %.sroa.4.0..sroa_idx.i104.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i104.i, align 8, !noalias !5365
  %.sroa.6.0..sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i105.i, align 8, !noalias !5365
  call void @llvm.experimental.noalias.scope.decl(metadata !5369)
  call void @llvm.experimental.noalias.scope.decl(metadata !5370)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5371
  br label %bb.co

bb.co:                                            ; preds = %bb.cq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.lu = phi ptr [ %i.ms, %bb.cq ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.10237.0.copyload.i = phi i64 [ %i.mu, %bb.cq ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 7 uses
  %i.lv = phi i64 [ %i.mo, %bb.cq ], [ %i.ln, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %spec.select.i9.i.i.i14.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i13.i.i.i.i, %bb.cq ], [ %.sroa.13.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %i.lw = phi ptr [ %i.ml, %bb.cq ], [ %.sroa.7.0.copyload.i99315.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %i.lx = phi ptr [ %i.mm, %bb.cq ], [ %.sroa.44.0.copyload.i313.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.val.i.i.i6.i.i.i.i = phi ptr [ %.val.i.i.i3.i.i.i.i, %bb.cq ], [ %.sroa.6.0.copyload.i101.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.not.i.i.i.i.i5.i.i.i = icmp eq ptr %.val.i.i.i6.i.i.i.i, null
  %i.ly = icmp eq ptr %.val.i.i.i6.i.i.i.i, %i.lw
  %or.cond.i6.i.i.i = select i1 %.not.i.i.i.i.i5.i.i.i, i1 true, i1 %i.ly
  br i1 %or.cond.i6.i.i.i, label %select.unfold.i.i.i.i.i.preheader.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i

select.unfold.i.i.i.i.i.preheader.i.i:            ; preds = %bb.co
  %.not.i5.i.i.i.i.i14.i.i = icmp eq ptr %i.lx, null
  %i.lz = icmp eq ptr %i.lx, %.sroa.5241.sroa.4.0.copyload.i
  %or.cond.i.i.i.i.i.i15.i.i = select i1 %.not.i5.i.i.i.i.i14.i.i, i1 true, i1 %i.lz
  br i1 %or.cond.i.i.i.i.i.i15.i.i, label %select.unfold.i.i.i.i.i._crit_edge.i.i, label %.lr.ph.i108.i

select.unfold.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i108.i
  %i.ma = icmp eq ptr %i.mc, %.sroa.5241.sroa.4.0.copyload.i
  br i1 %i.ma, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i, label %.lr.ph.i108.i

.lr.ph.i108.i:                                    ; preds = %select.unfold.i.i.i.i.i.preheader.i.i, %select.unfold.i.i.i.i.i.i.i
  %i.mb = phi ptr [ %i.mc, %select.unfold.i.i.i.i.i.i.i ], [ %i.lx, %select.unfold.i.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24 ; 4 uses
  %i.md = getelementptr i8, ptr %i.mb, i64 16
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.md, align 8, !noalias !5372, !noundef !12 ; 2 uses
  %i.me = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.me, label %select.unfold.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i:  ; preds = %select.unfold.i.i.i.i.i.i.i
  %i.mf = getelementptr i8, ptr %i.mb, i64 8
  %.val.i.i.i.i.i.le49.i.i = load ptr, ptr %i.mf, align 8, !noalias !5372, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge.i.i

select.unfold.i.i.i.i.i._crit_edge.i.i:           ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i, %select.unfold.i.i.i.i.i.preheader.i.i
  %.lcssa9.i.i = phi ptr [ %i.lx, %select.unfold.i.i.i.i.i.preheader.i.i ], [ %i.mc, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi ptr [ %i.lw, %select.unfold.i.i.i.i.i.preheader.i.i ], [ %.val.i.i.i.i.i.le49.i.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i ]
  %.not.i7.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i14.i.i.i.i, null
  %i.mg = icmp eq ptr %spec.select.i9.i.i.i14.i.i.i.i, %.sroa.5241.sroa.8.0.copyload.i
  %i.mh = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i14.i.i.i.i, i64 32
  %or.cond28.i.i.i.i = select i1 %.not.i7.i.i.i.i.i.i.i, i1 true, i1 %i.mg
  %.sroa.0235.0.copyload.pre403.pre405.i = load i64, ptr %i.m, align 8, !noalias !5373 ; 2 uses
  br i1 %or.cond28.i.i.i.i, label %bb.cu, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i: ; preds = %.lr.ph.i108.i
  %i.mi = getelementptr i8, ptr %i.mb, i64 8
  %.val.i.i.i.i.i.le.i.i = load ptr, ptr %i.mi, align 8, !noalias !5372, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le.i.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i.i, 5
  %i.mj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i.i, i64 %.idx.i.le.i.i
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i, %bb.co
  %.lcssa3.i.i.i = phi ptr [ %i.lw, %bb.co ], [ %i.mj, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.lx, %bb.co ], [ %i.mc, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i ]
  %.val.i.i.i5.i.lcssa.i.i.i = phi ptr [ %.val.i.i.i6.i.i.i.i, %bb.co ], [ %.val.i.i.i.i.i.le.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.val.i.i.i5.i.lcssa.i.i.i, i64 32
  %.sroa.0235.0.copyload.pre403.pre.i = load i64, ptr %i.m, align 8, !noalias !5373
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i
  %.sroa.0235.0.copyload.pre403.i = phi i64 [ %.sroa.0235.0.copyload.pre403.pre405.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.sroa.0235.0.copyload.pre403.pre.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ] ; 2 uses
  %i.ml = phi ptr [ %.lcssa.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.lcssa3.i.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %i.mm = phi ptr [ %.lcssa9.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.lcssa.i.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %spec.select.i9.i.i.i13.i.i.i.i = phi ptr [ %i.mh, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %spec.select.i9.i.i.i14.i.i.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %.val.i.i.i3.i.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %i.mk, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i14.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.val.i.i.i5.i.lcssa.i.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %i.mn = call noundef nonnull align 8 ptr %.sroa.0239.0.copyload240.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i) #45, !noalias !5374, !inline_history !5227
  %i.mo = add i64 %i.lv, -1                       ; 2 uses
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mn) #45, !noalias !5375
  %.pr.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !5375
  %.not.i.i2.i.i = icmp eq i64 %.pr.i.i.i.i, -1
  br i1 %.not.i.i2.i.i, label %bb.cu, label %bb.cp

bb.cp:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.mp = icmp samesign ult i64 %.sroa.10237.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.mp)
  %i.mq = icmp eq i64 %.sroa.10237.0.copyload.i, %.sroa.0235.0.copyload.pre403.i
  br i1 %i.mq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.cq

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.cp
  %i.mr = call i64 @llvm.uadd.sat.i64(i64 %i.mo, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.10237.0.copyload.i, i64 noundef %i.mr, i64 noundef 8, i64 noundef 24) #45, !noalias !5376
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i104.i, align 8, !alias.scope !5377, !noalias !5365
  br label %bb.cq

bb.cq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.cp
  %i.ms = phi ptr [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.lu, %bb.cp ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %i.ms, i64 %.sroa.10237.0.copyload.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mt, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !5375
  %i.mu = add nuw nsw i64 %.sroa.10237.0.copyload.i, 1 ; 2 uses
  store i64 %i.mu, ptr %.sroa.6.0..sroa_idx.i105.i, align 8, !alias.scope !5377, !noalias !5365
  br label %bb.co

bb.cr:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5316
  %i.mv = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !5316 ; 6 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %bb.cs, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit110.i, !prof !15

bb.cs:                                            ; preds = %bb.cr
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #52, !noalias !5316
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit110.i: ; preds = %bb.cr
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5378
  %i.mx = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #45, !noalias !5378 ; 3 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.ct, label %.thread.i

bb.ct:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit110.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #52, !noalias !5316
  unreachable

.thread.i:                                        ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit110.i
  store i8 45, ptr %i.mx, align 1, !noalias !5316
  store i64 1, ptr %i.mv, align 8, !noalias !5316
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store ptr %i.mx, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !5316
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store i64 1, ptr %.sroa.543.0..sroa_idx.i, align 8, !noalias !5316
  %i.mz = call { ptr, ptr } @_RNvCs8hEv8bFEvN4_7uu_fold4fold(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.mv, i64 noundef 1, i1 noundef zeroext %i.eu, i1 noundef zeroext %i.ev, i1 noundef zeroext %i.ew, i64 noundef %.sroa.018.0.i) #45, !noalias !5316
  br label %.lr.ph.i.i.i.preheader.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.thread.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %.sink.split.i8.i.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5316
  %i.na = call { ptr, ptr } @_RNvCs8hEv8bFEvN4_7uu_fold4fold(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, i1 noundef zeroext %i.eu, i1 noundef zeroext %i.ev, i1 noundef zeroext %i.ew, i64 noundef %.sroa.018.0.i) #45, !noalias !5316
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i

bb.cu:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i
  %.sroa.0235.0.copyload.i = phi i64 [ %.sroa.0235.0.copyload.pre403.pre405.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.sroa.0235.0.copyload.pre403.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5371
  %.sroa.6236.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i104.i, align 8, !noalias !5373 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5316
  %i.nb = call { ptr, ptr } @_RNvCs8hEv8bFEvN4_7uu_fold4fold(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.6236.0.copyload.i, i64 noundef %.sroa.10237.0.copyload.i, i1 noundef zeroext %i.eu, i1 noundef zeroext %i.ev, i1 noundef zeroext %i.ew, i64 noundef %.sroa.018.0.i) #45, !noalias !5316
  call void @llvm.experimental.noalias.scope.decl(metadata !5379)
  br label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.cu, %.thread.i
  %i.nc = phi { ptr, ptr } [ %i.mz, %.thread.i ], [ %i.nb, %bb.cu ] ; 2 uses
  %.sroa.0235.0471.i = phi i64 [ 1, %.thread.i ], [ %.sroa.0235.0.copyload.i, %bb.cu ] ; 2 uses
  %.sroa.6236.0469.i = phi ptr [ %i.mv, %.thread.i ], [ %.sroa.6236.0.copyload.i, %bb.cu ] ; 2 uses
  %.sroa.10237.0468.i = phi i64 [ 1, %.thread.i ], [ %.sroa.10237.0.copyload.i, %bb.cu ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.ne, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6236.0469.i, i64 %.sroa.0.03.i.i.i.i ; 2 uses
  %i.ne = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5380)
  call void @llvm.experimental.noalias.scope.decl(metadata !5381)
  %.val.i.i.i.i.i.i = load i64, ptr %i.nd, align 8, !range !19, !alias.scope !5382, !noalias !5383, !noundef !12 ; 2 uses
  %i.nf = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.nf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ng, align 8, !alias.scope !5382, !noalias !5383, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !5384
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.cv, %.lr.ph.i.i.i.i
  %i.nh = icmp eq i64 %i.ne, %.sroa.10237.0468.i
  br i1 %i.nh, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.i
end_hunk_3
begin_hunk_4_@_RINvCsezjqemSh5Uq_7uu_comm6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBA_6cloned6ClonedINtNtNtBE_5slice4iter4IterB2b_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  store ptr %i.bx, ptr %i.ah, align 8, !noalias !12620
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  store ptr %.sroa.7.0.copyload.i, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !12620
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store i8 %i.bv, ptr %.sroa.630.0..sroa_idx.i, align 8, !noalias !12620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !12620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12620
  call void @_RNvCsezjqemSh5Uq_7uu_comm9open_file(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br, i8 noundef %..i) #45, !noalias !12620
  %i.ce = getelementptr i8, ptr %i.br, i64 8
  %.val80.i = load ptr, ptr %i.ce, align 8, !noalias !12620 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.br, i64 16
  %.val81.i = load i64, ptr %i.cf, align 8, !noalias !12620
  call void @llvm.experimental.noalias.scope.decl(metadata !12638)
  call void @llvm.experimental.noalias.scope.decl(metadata !12639)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ch = load i8, ptr %i.cg, align 8, !range !47, !alias.scope !12639, !noalias !12620, !noundef !12 ; 2 uses
  %i.ci = icmp eq i8 %i.ch, -1
  %i.cj = load ptr, ptr %i.ae, align 8, !alias.scope !12640, !noalias !12620 ; 2 uses
  br i1 %i.ci, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i86.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12641
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val80.i) ]
  store i64 1, ptr %i.q, align 8, !noalias !12641
  %.sroa.4.0..sroa_idx.i.i87.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.val80.i, ptr %.sroa.4.0..sroa_idx.i.i87.i, align 8, !noalias !12641
  %.sroa.5.0..sroa_idx.i.i88.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.val81.i, ptr %.sroa.5.0..sroa_idx.i.i88.i, align 8, !noalias !12641
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i8 0, ptr %i.ck, align 8, !noalias !12641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12642
  store i64 0, ptr %i.p, align 8, !noalias !12642
  %.sroa.4.0..sroa_idx.i.i.i89.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i89.i, align 8, !noalias !12642
  %.sroa.5.0..sroa_idx.i.i.i90.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i90.i, align 8, !noalias !12642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12642
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1610612768, ptr %i.cl, align 8, !noalias !12642
  store ptr %i.p, ptr %i.o, align 8, !noalias !12642
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @113, ptr %i.cm, align 8, !noalias !12642
  %i.cn = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #45, !noalias !12643
  br i1 %i.cn, label %bb.s, label %_RNCINvNvCsezjqemSh5Uq_7uu_comm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i.i, !prof !18

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1323, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @895, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1325) #50, !noalias !12643
  unreachable

_RNCINvNvCsezjqemSh5Uq_7uu_comm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i86.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !12644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12641
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12645
  %i.co = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !12645 ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %_RNCINvNvCsezjqemSh5Uq_7uu_comm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !12645
  unreachable

bb.u:                                             ; preds = %_RNCINvNvCsezjqemSh5Uq_7uu_comm6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i86.i, i64 24, i1 false), !noalias !12644
  %.sroa.4.0..sroa_idx.i92.i = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i92.i, align 8, !noalias !12644
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i86.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12620
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsezjqemSh5Uq_7uu_comm10LineReaderECsl8pJiQOn4hA_9coreutils.exit.i

bb.v:                                             ; preds = %bb.q
  %.sroa.7137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.7137.0.copyload.i = load ptr, ptr %.sroa.7137.0..sroa_idx.i, align 8, !alias.scope !12646, !noalias !12620
  %.sroa.10138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.546.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10138.0..sroa_idx.i, i64 16, i1 false), !noalias !12620
  %.sroa.14140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 33
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.748.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14140.0..sroa_idx.i, i64 23, i1 false), !noalias !12620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12620
  store ptr %i.cj, ptr %i.af, align 8, !noalias !12620
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  store ptr %.sroa.7137.0.copyload.i, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !12620
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  store i8 %i.ch, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !12620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12620
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @533, i64 noundef 16) #45, !noalias !12620
  call void @llvm.experimental.noalias.scope.decl(metadata !12647)
  call void @llvm.experimental.noalias.scope.decl(metadata !12648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12620
  store ptr @533, ptr %i.n, align 8, !noalias !12649
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 16, ptr %i.cq, align 8, !noalias !12649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12649
  %i.cr = load i64, ptr %i.ab, align 8, !range !16, !alias.scope !12648, !noalias !12620, !noundef !12
  %i.cs = trunc nuw i64 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  br i1 %i.cs, label %bb.w, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ct, i64 40, i1 false), !noalias !12650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12649
  store ptr %i.n, ptr %i.l, align 8, !noalias !12649
  %.sroa.42.0..sroa_idx.i93.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i93.i, align 8, !noalias !12649
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.cu, align 8, !noalias !12649
  %.sroa.46.0..sroa_idx.i94.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i94.i, align 8, !noalias !12649
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !12651
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.v
  %.sroa.0160.0.copyload.i = load ptr, ptr %i.ct, align 8, !alias.scope !12652, !noalias !12620 ; 3 uses
  %.sroa.5161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5161.0.copyload.i = load ptr, ptr %.sroa.5161.0..sroa_idx.i, align 8, !alias.scope !12652, !noalias !12620 ; 5 uses
  %.sroa.6162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.6162.0.copyload.i = load ptr, ptr %.sroa.6162.0..sroa_idx.i, align 8, !alias.scope !12652, !noalias !12620 ; 4 uses
  %.sroa.7163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.7163.0.copyload.i = load ptr, ptr %.sroa.7163.0..sroa_idx.i, align 8, !alias.scope !12652, !noalias !12620 ; 3 uses
  %.sroa.8164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.8164.0.copyload.i = load ptr, ptr %.sroa.8164.0..sroa_idx.i, align 8, !alias.scope !12652, !noalias !12620 ; 3 uses
  %.sroa.9165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.9165.0.copyload.i = load ptr, ptr %.sroa.9165.0..sroa_idx.i, align 8, !alias.scope !12652, !noalias !12620 ; 5 uses
  %.sroa.10166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %.sroa.10166.0.copyload.i = load ptr, ptr %.sroa.10166.0..sroa_idx.i, align 8, !alias.scope !12652, !noalias !12620 ; 3 uses
  %.sroa.11167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.11167.0.copyload.i = load i64, ptr %.sroa.11167.0..sroa_idx.i, align 8, !alias.scope !12652, !noalias !12620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12620
  %.not75.i = icmp eq ptr %.sroa.0160.0.copyload.i, null
  br i1 %.not75.i, label %bb.af, label %bb.x, !prof !18

bb.x:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12653
  %.not.i.i.i.i.i198.i = icmp eq ptr %.sroa.7163.0.copyload.i, null
  %i.cv = icmp eq ptr %.sroa.7163.0.copyload.i, %.sroa.8164.0.copyload.i
  %or.cond199.i = select i1 %.not.i.i.i.i.i198.i, i1 true, i1 %i.cv
  br i1 %or.cond199.i, label %select.unfold.i.i.i.i.i.preheader, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.x
  %.not.i5.i.i.i.i.i59 = icmp eq ptr %.sroa.5161.0.copyload.i, null
  %i.cw = icmp eq ptr %.sroa.5161.0.copyload.i, %.sroa.6162.0.copyload.i
  %or.cond.i.i.i.i.i.i60 = select i1 %.not.i5.i.i.i.i.i59, i1 true, i1 %i.cw
  br i1 %or.cond.i.i.i.i.i.i60, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.cx = icmp eq ptr %i.cy, %.sroa.6162.0.copyload.i
  br i1 %i.cx, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %.sroa.44.0.copyload.i201.i61 = phi ptr [ %i.cy, %select.unfold.i.i.i.i.i ], [ %.sroa.5161.0.copyload.i, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i201.i61, i64 24 ; 4 uses
  %i.cz = getelementptr i8, ptr %.sroa.44.0.copyload.i201.i61, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !12654, !noundef !12 ; 2 uses
  %i.da = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.da, label %select.unfold.i.i.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.db = getelementptr i8, ptr %.sroa.44.0.copyload.i201.i61, i64 8
  %.val.i.i.i.i.i.le116 = load ptr, ptr %i.db, align 8, !noalias !12654, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.sroa.44.0.copyload.i201.i.lcssa = phi ptr [ %.sroa.5161.0.copyload.i, %select.unfold.i.i.i.i.i.preheader ], [ %i.cy, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.sroa.7.0.copyload.i200.i.lcssa = phi ptr [ %.sroa.8164.0.copyload.i, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.le116, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %.sroa.9165.0.copyload.i, null
  br i1 %.not.i7.i.i.i.i.i, label %bb.ah, label %.sink.split.i8.i.i.i.i.i

.sink.split.i8.i.i.i.i.i:                         ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10166.0.copyload.i) ]
  %i.dc = icmp eq ptr %.sroa.9165.0.copyload.i, %.sroa.10166.0.copyload.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.9165.0.copyload.i, i64 32
  br i1 %i.dc, label %bb.ah, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit: ; preds = %.lr.ph
  %i.de = getelementptr i8, ptr %.sroa.44.0.copyload.i201.i61, i64 8
  %.val.i.i.i.i.i.le = load ptr, ptr %i.de, align 8, !noalias !12654, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le, i64 %.idx.i.le
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit, %bb.x
  %spec.select.i18.i.i.i.i.lcssa197.i = phi ptr [ %.sroa.7163.0.copyload.i, %bb.x ], [ %.val.i.i.i.i.i.le, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit ] ; 2 uses
  %.sroa.7.0.copyload.i.lcssa.i = phi ptr [ %.sroa.8164.0.copyload.i, %bb.x ], [ %i.df, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit ]
  %.sroa.44.0.copyload.i.lcssa.i = phi ptr [ %.sroa.5161.0.copyload.i, %bb.x ], [ %i.cy, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa197.i, i64 32
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i, %.sink.split.i8.i.i.i.i.i
  %.sroa.7.0.copyload.i196.i = phi ptr [ %.sroa.7.0.copyload.i200.i.lcssa, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.7.0.copyload.i.lcssa.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.44.0.copyload.i194.i = phi ptr [ %.sroa.44.0.copyload.i201.i.lcssa, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.44.0.copyload.i.lcssa.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.12.0.i = phi ptr [ %i.dd, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.9165.0.copyload.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.6.0.copyload.i.i = phi ptr [ null, %.sink.split.i8.i.i.i.i.i ], [ %i.dg, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.9165.0.copyload.i, %.sink.split.i8.i.i.i.i.i ], [ %spec.select.i18.i.i.i.i.lcssa197.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %i.dh = call noundef nonnull align 8 ptr %.sroa.0160.0.copyload.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i) #45, !noalias !12655, !inline_history !12518
  %i.di = add i64 %.sroa.11167.0.copyload.i, -1   ; 3 uses
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh) #45, !noalias !12653
  %.pr.i.i = load i64, ptr %i.j, align 8, !noalias !12653
  %.not.i95.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not.i95.i, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.dj = call i64 @llvm.uadd.sat.i64(i64 %i.di, i64 1)
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.dj, i64 4) ; 3 uses
  %i.dk = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.di, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb.ab, label %bb.z, !prof !27

bb.z:                                             ; preds = %bb.y
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12656
  %i.dm = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dk, i64 noundef range(i64 1, 9) 8) #45, !noalias !12656 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ab, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.aa ], [ 0, %bb.y ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.dk) #52, !noalias !12653
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.z ], [ %i.dm, %bb.aa ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.z ], [ %..i.i.i, %bb.aa ] ; 2 uses
  %i.do = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.do)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !12653
  store i64 %.sroa.4.0.i.i.i, ptr %i.k, align 8, !noalias !12653
  %.sroa.4.0..sroa_idx.i96.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i96.i, align 8, !noalias !12653
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !12653
  call void @llvm.experimental.noalias.scope.decl(metadata !12657)
  call void @llvm.experimental.noalias.scope.decl(metadata !12658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12659
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.dp = phi ptr [ %i.en, %bb.ae ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.13.0.copyload.i = phi i64 [ %i.ep, %bb.ae ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 8 uses
  %i.dq = phi i64 [ %i.ej, %bb.ae ], [ %i.di, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %spec.select.i9.i.i.i14.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i13.i.i.i.i, %bb.ae ], [ %.sroa.12.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %i.dr = phi ptr [ %i.eg, %bb.ae ], [ %.sroa.7.0.copyload.i196.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %i.ds = phi ptr [ %i.eh, %bb.ae ], [ %.sroa.44.0.copyload.i194.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.val.i.i.i6.i.i.i.i = phi ptr [ %.val.i.i.i3.i.i.i.i, %bb.ae ], [ %.sroa.6.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.not.i.i.i.i.i5.i.i.i = icmp eq ptr %.val.i.i.i6.i.i.i.i, null
  %i.dt = icmp eq ptr %.val.i.i.i6.i.i.i.i, %i.dr
  %or.cond.i6.i.i.i = select i1 %.not.i.i.i.i.i5.i.i.i, i1 true, i1 %i.dt
  br i1 %or.cond.i6.i.i.i, label %select.unfold.i.i.i.i.i.preheader.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i

select.unfold.i.i.i.i.i.preheader.i.i:            ; preds = %bb.ac
  %.not.i5.i.i.i.i.i14.i.i = icmp eq ptr %i.ds, null
  %i.du = icmp eq ptr %i.ds, %.sroa.6162.0.copyload.i
  %or.cond.i.i.i.i.i.i15.i.i = select i1 %.not.i5.i.i.i.i.i14.i.i, i1 true, i1 %i.du
  br i1 %or.cond.i.i.i.i.i.i15.i.i, label %select.unfold.i.i.i.i.i._crit_edge.i.i, label %.lr.ph.i.i

select.unfold.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i
  %i.dv = icmp eq ptr %i.dx, %.sroa.6162.0.copyload.i
  br i1 %i.dv, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i.i.i.i.preheader.i.i, %select.unfold.i.i.i.i.i.i.i
  %i.dw = phi ptr [ %i.dx, %select.unfold.i.i.i.i.i.i.i ], [ %i.ds, %select.unfold.i.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 4 uses
  %i.dy = getelementptr i8, ptr %i.dw, i64 16
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !noalias !12660, !noundef !12 ; 2 uses
  %i.dz = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.dz, label %select.unfold.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i:  ; preds = %select.unfold.i.i.i.i.i.i.i
  %i.ea = getelementptr i8, ptr %i.dw, i64 8
  %.val.i.i.i.i.i.le49.i.i = load ptr, ptr %i.ea, align 8, !noalias !12660, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge.i.i

select.unfold.i.i.i.i.i._crit_edge.i.i:           ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i, %select.unfold.i.i.i.i.i.preheader.i.i
  %.lcssa9.i.i = phi ptr [ %i.ds, %select.unfold.i.i.i.i.i.preheader.i.i ], [ %i.dx, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi ptr [ %i.dr, %select.unfold.i.i.i.i.i.preheader.i.i ], [ %.val.i.i.i.i.i.le49.i.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i ]
  %.not.i7.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i14.i.i.i.i, null
  %i.eb = icmp eq ptr %spec.select.i9.i.i.i14.i.i.i.i, %.sroa.10166.0.copyload.i
  %i.ec = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i14.i.i.i.i, i64 32
  %or.cond28.i.i.i.i = select i1 %.not.i7.i.i.i.i.i.i.i, i1 true, i1 %i.eb
  %.sroa.0141.0.copyload.pre213.pre215.i = load i64, ptr %i.k, align 8, !noalias !12661 ; 2 uses
  br i1 %or.cond28.i.i.i.i, label %bb.ag, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i: ; preds = %.lr.ph.i.i
  %i.ed = getelementptr i8, ptr %i.dw, i64 8
  %.val.i.i.i.i.i.le.i.i = load ptr, ptr %i.ed, align 8, !noalias !12660, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le.i.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i.i, 5
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i.i, i64 %.idx.i.le.i.i
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i, %bb.ac
  %.lcssa3.i.i.i = phi ptr [ %i.dr, %bb.ac ], [ %i.ee, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.ds, %bb.ac ], [ %i.dx, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i ]
  %.val.i.i.i5.i.lcssa.i.i.i = phi ptr [ %.val.i.i.i6.i.i.i.i, %bb.ac ], [ %.val.i.i.i.i.i.le.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.loopexit.i.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i.i.i5.i.lcssa.i.i.i, i64 32
  %.sroa.0141.0.copyload.pre213.pre.i = load i64, ptr %i.k, align 8, !noalias !12661
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i
  %.sroa.0141.0.copyload.pre213.i = phi i64 [ %.sroa.0141.0.copyload.pre213.pre215.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.sroa.0141.0.copyload.pre213.pre.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ] ; 2 uses
  %i.eg = phi ptr [ %.lcssa.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.lcssa3.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %i.eh = phi ptr [ %.lcssa9.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.lcssa.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %spec.select.i9.i.i.i13.i.i.i.i = phi ptr [ %i.ec, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %spec.select.i9.i.i.i14.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %.val.i.i.i3.i.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %i.ef, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i14.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.val.i.i.i5.i.lcssa.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.i.i ]
  %i.ei = call noundef nonnull align 8 ptr %.sroa.0160.0.copyload.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i) #45, !noalias !12662, !inline_history !12534
  %i.ej = add i64 %i.dq, -1                       ; 2 uses
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ei) #45, !noalias !12663
  %.pr.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !12663
  %.not.i.i2.i.i = icmp eq i64 %.pr.i.i.i.i, -1
  br i1 %.not.i.i2.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.ek = icmp samesign ult i64 %.sroa.13.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp eq i64 %.sroa.13.0.copyload.i, %.sroa.0141.0.copyload.pre213.i
  br i1 %i.el, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.ae

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.ad
  %i.em = call i64 @llvm.uadd.sat.i64(i64 %i.ej, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.sroa.13.0.copyload.i, i64 noundef %i.em, i64 noundef 8, i64 noundef 24) #45, !noalias !12664
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i96.i, align 8, !alias.scope !12665, !noalias !12653
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.ad
  %i.en = phi ptr [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.dp, %bb.ad ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %.sroa.13.0.copyload.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !12663
  %i.ep = add nuw nsw i64 %.sroa.13.0.copyload.i, 1 ; 2 uses
  store i64 %i.ep, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !12665, !noalias !12653
  br label %bb.ac

bb.af:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #50, !noalias !12620
  unreachable

bb.ag:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i
  %.sroa.0141.0.copyload.i = phi i64 [ %.sroa.0141.0.copyload.pre213.pre215.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.sroa.0141.0.copyload.pre213.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12659
  %.sroa.7142.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i96.i, align 8, !noalias !12661 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12620
  %.idx = mul i64 %.sroa.13.0.copyload.i, 24      ; 2 uses
  %i.eq = getelementptr i8, ptr %.sroa.7142.0.copyload.i, i64 %.idx
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.7142.0.copyload.i, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.7142.0.copyload.i, i64 8 ; 2 uses
  %i.et = icmp eq i64 %.idx, 24
  br i1 %i.et, label %._crit_edge, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.ag
  %.sroa.049.0.i127 = getelementptr inbounds nuw i8, ptr %.sroa.7142.0.copyload.i, i64 24
  %i.eu = load i64, ptr %i.er, align 8, !noalias !12620, !noundef !12
  br label %bb.aj

bb.ah:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENvYB29_INtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %.sink.split.i8.i.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12620
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #50, !noalias !12620
  unreachable

bb.ai:                                            ; preds = %bb.ak
  %.sroa.049.0.i = getelementptr inbounds nuw i8, ptr %.sroa.049.0.i129, i64 24 ; 2 uses
  %i.ev = icmp eq ptr %.sroa.049.0.i, %i.eq
  br i1 %i.ev, label %._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph130, %bb.ai
  %.sroa.049.0.i129 = phi ptr [ %.sroa.049.0.i127, %.lr.ph130 ], [ %.sroa.049.0.i, %bb.ai ] ; 2 uses
  %.pn.i128 = phi ptr [ %.sroa.7142.0.copyload.i, %.lr.ph130 ], [ %.sroa.049.0.i129, %bb.ai ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn.i128, i64 40
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !12620, !noundef !12 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, %i.eu
  br i1 %i.ey, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ez = load ptr, ptr %i.es, align 8, !noalias !12620, !nonnull !12, !noundef !12
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn.i128, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !12620, !nonnull !12, !noundef !12
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.fb, ptr nonnull %i.ez, i64 %i.ex), !noalias !12620
  %.not77.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not77.i, label %bb.ai, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @535, i64 noundef 42) #45, !noalias !12620
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12666
  %i.fc = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !12666 ; 6 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.am, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !15

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !12666
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !12620
  %.sroa.4169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i32 1, ptr %.sroa.4169.0..sroa_idx.i, align 8, !noalias !12620
  call void @llvm.experimental.noalias.scope.decl(metadata !12667)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.ff, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7142.0.copyload.i, i64 %.sroa.0.03.i.i.i.i ; 2 uses
  %i.ff = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12668)
end_hunk_4
begin_hunk_5_@_RINvCsgy7pbN39oAf_6uu_ptx6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBz_6cloned6ClonedINtNtNtBD_5slice4iter4IterB2a_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [128 x i8], align 8               ; 8 uses
  %i.x = alloca [128 x i8], align 8               ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [200 x i8], align 8              ; 10 uses
  %i.ah = alloca [24 x i8], align 8               ; 12 uses
  %i.ai = alloca [200 x i8], align 8              ; 11 uses
  %i.aj = alloca [120 x i8], align 8              ; 8 uses
  %i.ak = alloca [120 x i8], align 8              ; 24 uses
  %i.al = alloca [712 x i8], align 8              ; 4 uses
  %i.am = alloca [56 x i8], align 8               ; 8 uses
  %i.an = alloca [56 x i8], align 8               ; 12 uses
  %i.ao = alloca [4 x i8], align 4                ; 3 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 6 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 9 uses
  %i.bb = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.bb, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bc = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bd = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.bd, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !14538
  store i32 %i.bd, ptr %i.ao, align 4, !noalias !14538
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !14539
  call void @_RNvCsgy7pbN39oAf_6uu_ptx6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.al) #45, !noalias !14539
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.am, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !14539
  %i.be = load i64, ptr %i.am, align 8, !range !13, !noalias !14539, !noundef !12 ; 2 uses
  %i.bf = icmp eq i64 %i.be, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !14539 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !14539 ; 2 uses
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !14539
  br label %bb.cj

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.655.0..sroa_idx.i, i64 32, i1 false), !noalias !14539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !14539
  store i64 %i.be, ptr %i.an, align 8, !noalias !14539
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !14539
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.bj, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !14539
  call void @_RNvCsgy7pbN39oAf_6uu_ptx10get_config(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.an) #45, !noalias !14539
  %i.bk = load i64, ptr %i.aj, align 8, !range !13, !noalias !14539, !noundef !12 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !14539 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !14539 ; 2 uses
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !14539
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigECsl8pJiQOn4hA_9coreutils.exit.i

bb.h:                                             ; preds = %bb.f
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.623.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.659.0..sroa_idx.i, i64 96, i1 false), !noalias !14539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !14539
  store i64 %i.bk, ptr %i.ak, align 8, !noalias !14539
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  store ptr %i.bn, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !14539
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.bp, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !14539
  %i.bq = load ptr, ptr @_RNvNtCsgy7pbN39oAf_6uu_ptx7options4FILE, align 8, !noalias !14539, !nonnull !12, !noundef !12 ; 2 uses
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsgy7pbN39oAf_6uu_ptx7options4FILE, i64 8), align 8, !noalias !14539, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14539
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.br) #45, !noalias !14539
  call void @llvm.experimental.noalias.scope.decl(metadata !14540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !14539
  store ptr %i.bq, ptr %i.q, align 8, !noalias !14541
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !noalias !14541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14541
  %i.bt = load i64, ptr %i.s, align 8, !range !16, !alias.scope !14540, !noalias !14539, !noundef !12
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bv, i64 40, i1 false), !noalias !14542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14541
  store ptr %i.q, ptr %i.o, align 8, !noalias !14541
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !14541
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.bw, align 8, !noalias !14541
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !14541
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !14543
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.h
  %.sroa.069.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.069.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bv, i64 64, i1 false), !noalias !14539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14539
  store i64 1, ptr %i.ai, align 8, !noalias !14539
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  store ptr null, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !14539
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  store ptr null, ptr %.sroa.672.0..sroa_idx.i, align 8, !noalias !14539
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.by = load i8, ptr %i.bx, align 8, !range !21, !noalias !14539, !noundef !12
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14539
  %i.ca = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !14539 ; 6 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.k, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !15

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #52, !noalias !14539
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !14539
  call fastcc void @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ai) #45, !noalias !14539
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14544
  %i.cc = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #45, !noalias !14544 ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.q, label %bb.r

bb.l:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !14539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ag, ptr noundef nonnull align 8 dereferenceable(200) %i.ai, i64 200, i1 false), !noalias !14539
  call void @llvm.experimental.noalias.scope.decl(metadata !14545)
  call void @llvm.experimental.noalias.scope.decl(metadata !14546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14547
  call fastcc void @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ag) #45, !noalias !14548
  %i.ce = load i64, ptr %i.m, align 8, !range !13, !noalias !14547, !noundef !12
  %.not.i.i = icmp eq i64 %i.ce, -1
  br i1 %.not.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEEEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !14549, !noalias !14539, !noundef !12
  %.not.i.i.i.i.i = icmp eq ptr %i.cg, null
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %.val.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !alias.scope !14549, !noalias !14539
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !14549, !noalias !14539, !noundef !12
  %.not53.i.i.i.i.i = icmp eq ptr %i.cj, null
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 192
  %.val.i60.i.i.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !14549, !noalias !14539
  %.sroa.8.0.i.i.i.i.i = select i1 %.not53.i.i.i.i.i, i64 0, i64 %.val.i60.i.i.i.i.i ; 2 uses
  %i.cl = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i)
  %i.cm = select i1 %.not.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i, i64 %i.cl ; 2 uses
  %i.cn = call i64 @llvm.uadd.sat.i64(i64 %i.cm, i64 1)
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.cn, i64 4) ; 3 uses
  %i.co = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.cm, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb.o, label %bb.m, !prof !27

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14550
  %i.cq = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.co, i64 noundef range(i64 1, 9) 8) #45, !noalias !14550 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.o, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.o:                                             ; preds = %bb.n, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.n ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.co) #52, !noalias !14547
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.n, %bb.m
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.m ], [ %i.cq, %bb.n ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.m ], [ %..i.i.i, %bb.n ] ; 3 uses
  %i.cs = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !14547
  store i64 %.sroa.4.0.i.i.i, ptr %i.n, align 8, !noalias !14547
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14547
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !14547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.l, ptr noundef nonnull align 8 dereferenceable(200) %i.ag, i64 200, i1 false), !noalias !14548
  call void @llvm.experimental.noalias.scope.decl(metadata !14551)
  call void @llvm.experimental.noalias.scope.decl(metadata !14552)
  call void @llvm.experimental.noalias.scope.decl(metadata !14553)
  call void @llvm.experimental.noalias.scope.decl(metadata !14554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14555
  call fastcc void @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.l) #45, !noalias !14556
  %i.ct = load i64, ptr %i.k, align 8, !range !13, !noalias !14557, !noundef !12
  %.not1.i.i.i.i = icmp eq i64 %i.ct, -1
  br i1 %.not1.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEEEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cy = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.i ], [ %i.di, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %i.cz = phi i64 [ %.sroa.4.0.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %i.da = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.dl, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 4 uses
  %i.db = icmp samesign ult i64 %i.da, 384307168202282326
  call void @llvm.assume(i1 %i.db)
  %i.dc = icmp eq i64 %i.da, %i.cz
  br i1 %i.dc, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.p
  %i.dd = load ptr, ptr %i.cu, align 8, !alias.scope !14558, !noalias !14547, !noundef !12
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !14558, !noalias !14547
  %i.de = load ptr, ptr %i.cw, align 8, !alias.scope !14558, !noalias !14547, !noundef !12
  %.not53.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  %.val.i60.i.i.i.i.i.i.i = load i64, ptr %i.cx, align 8, !alias.scope !14558, !noalias !14547
  %.sroa.8.0.i.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i.i, i64 0, i64 %.val.i60.i.i.i.i.i.i.i ; 2 uses
  %i.df = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i)
  %i.dg = select i1 %.not.i.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i.i, i64 %i.df
  %i.dh = call i64 @llvm.uadd.sat.i64(i64 %i.dg, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.cz, i64 noundef %i.dh, i64 noundef 8, i64 noundef 24) #45, !noalias !14559
  %.pre2.i.i.i.i = load i64, ptr %i.n, align 8, !range !19, !alias.scope !14560, !noalias !14547
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !14560, !noalias !14547
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.p
  %i.di = phi ptr [ %.pre.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.cy, %bb.p ] ; 2 uses
  %i.dj = phi i64 [ %.pre2.i.i.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.cz, %bb.p ]
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !14557
  %i.dl = add nuw nsw i64 %i.da, 1                ; 2 uses
  store i64 %i.dl, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !14560, !noalias !14547
  call fastcc void @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.l) #45, !noalias !14556
  %i.dm = load i64, ptr %i.k, align 8, !range !13, !noalias !14557, !noundef !12
  %.not.i.i2.i.i = icmp eq i64 %i.dm, -1
  br i1 %.not.i.i2.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEEEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.p

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEEEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %bb.l
  store i64 0, ptr %i.ah, align 8, !alias.scope !14545, !noalias !14539
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dn, align 8, !alias.scope !14545, !noalias !14539
  %i.do = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store i64 0, ptr %i.do, align 8, !alias.scope !14545, !noalias !14539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !14539
  br label %bb.bc

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEEEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !14561
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !14539 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !14539
  %i.dp = icmp ult i64 %.pre.i, 384307168202282326
  call void @llvm.assume(i1 %i.dp)
  %i.dq = icmp eq i64 %.pre.i, 0
  br i1 %i.dq, label %bb.bc, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEEEE9from_iterCsl8pJiQOn4hA_9coreutils.exit._crit_edge.i

bb.q:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #52, !noalias !14539
  unreachable

bb.r:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  store i8 45, ptr %i.cc, align 1, !noalias !14539
  %i.dr = load i64, ptr %i.af, align 8, !range !13, !noalias !14539, !noundef !12 ; 2 uses
  %.not.i28 = icmp eq i64 %i.dr, -1
  br i1 %.not.i28, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.r
  %.sroa.5188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5188.0.copyload.i = load ptr, ptr %.sroa.5188.0..sroa_idx.i, align 8, !noalias !14539
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !14539
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14562
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i, %bb.r
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i ], [ 1, %bb.r ]
  %.sroa.5188.0.i = phi ptr [ %.sroa.5188.0.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.cc, %bb.r ]
  %.sroa.0186.0.i = phi i64 [ %i.dr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i ], [ 1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14539
  store i64 %.sroa.0186.0.i, ptr %i.ca, align 8, !noalias !14539
  %.sroa.5188.0..sroa_idx189.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %.sroa.5188.0.i, ptr %.sroa.5188.0..sroa_idx189.i, align 8, !noalias !14539
  %.sroa.6.0..sroa_idx191.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx191.i, align 8, !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !14539
  call fastcc void @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ai) #45, !noalias !14539
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14563
  %i.ds = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #45, !noalias !14563 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #52, !noalias !14539
  unreachable

bb.u:                                             ; preds = %bb.s
  store i8 45, ptr %i.ds, align 1, !noalias !14539
  %i.du = load i64, ptr %i.ae, align 8, !range !13, !noalias !14539, !noundef !12 ; 2 uses
  %.not118.i = icmp eq i64 %i.du, -1
  br i1 %.not118.i, label %bb.v, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit124.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit124.i: ; preds = %bb.u
  %.sroa.5195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5195.0.copyload.i = load ptr, ptr %.sroa.5195.0..sroa_idx.i, align 8, !noalias !14539
  %.sroa.6198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.6198.0.copyload.i = load i64, ptr %.sroa.6198.0..sroa_idx.i, align 8, !noalias !14539
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14564
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit124.i, %bb.u
  %.sroa.6198.0.i = phi i64 [ %.sroa.6198.0.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit124.i ], [ 1, %bb.u ]
  %.sroa.5195.0.i = phi ptr [ %.sroa.5195.0.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit124.i ], [ %i.ds, %bb.u ] ; 2 uses
  %.sroa.0193.0.i = phi i64 [ %i.du, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit124.i ], [ 1, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !14539
  call fastcc void @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ai) #45, !noalias !14539
  %i.dv = load i64, ptr %i.ad, align 8, !range !13, !noalias !14539, !noundef !12 ; 3 uses
  %.not119.i = icmp eq i64 %i.dv, -1
  br i1 %.not119.i, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.4205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4205.0.copyload.i = load ptr, ptr %.sroa.4205.0..sroa_idx.i, align 8, !noalias !14539, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.6206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.6206.0.copyload.i = load i64, ptr %.sroa.6206.0..sroa_idx.i, align 8, !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !14539
  store i64 0, ptr %i.ac, align 8, !noalias !14539
  %.sroa.4106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4106.0..sroa_idx.i, align 8, !noalias !14539
  %.sroa.5107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %.sroa.5107.0..sroa_idx.i, align 8, !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !14539
  store i64 1, ptr %i.ab, align 8, !noalias !14539
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.4205.0.copyload.i, ptr %.sroa.4109.0..sroa_idx.i, align 8, !noalias !14539
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.6206.0.copyload.i, ptr %.sroa.5110.0..sroa_idx.i, align 8, !noalias !14539
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.dw, align 8, !noalias !14539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14565
  store i64 0, ptr %i.j, align 8, !noalias !14565
  %.sroa.4.0..sroa_idx.i125.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i125.i, align 8, !noalias !14565
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !14565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14565
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
end_hunk_5
begin_hunk_6_@_RINvCsgzkSwV7OBv7_7uu_head6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBA_6cloned6ClonedINtNtNtBE_5slice4iter4IterB2b_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  store i64 1, ptr %.sroa.466.sroa.0.sroa.5.0..sroa.466.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14819
  %.sroa.466.sroa.0.sroa.6.0..sroa.466.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  store ptr %i.ef, ptr %.sroa.466.sroa.0.sroa.6.0..sroa.466.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14819
  %.sroa.466.sroa.4.0..sroa.466.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store ptr %.sroa.6.sroa.0.0.copyload.i.i, ptr %.sroa.466.sroa.4.0..sroa.466.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14819
  %.sroa.466.sroa.5.0..sroa.466.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  store ptr %.sroa.6.sroa.0.0.copyload.i.i, ptr %.sroa.466.sroa.5.0..sroa.466.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14819
  %.sroa.466.sroa.6.0..sroa.466.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  store i64 %i.bn, ptr %.sroa.466.sroa.6.0..sroa.466.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14819
  %.sroa.466.sroa.7.0..sroa.466.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  store ptr %i.ee, ptr %.sroa.466.sroa.7.0..sroa.466.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14819
  %.sroa.5.0..sroa_idx67.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  store i64 1, ptr %.sroa.5.0..sroa_idx67.i.i, align 8, !noalias !14819
  %.sroa.6.0..sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx68.i.i, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !noalias !14820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14819
  %i.eg = icmp eq i64 %i.av, 0
  br i1 %i.eg, label %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit23.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i.i, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14829
  br label %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i

_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %bb.ak, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit23.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit18.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit15.i.i
  %.sroa.16.0.i = phi ptr [ @174, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit15.i.i ], [ @174, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit18.i.i ], [ @171, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit23.i.i ], [ @171, %bb.ak ]
  %.sroa.9.0.i = phi ptr [ %i.bg, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit15.i.i ], [ %i.bs, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit18.i.i ], [ %i.ec, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit23.i.i ], [ %i.ec, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14817
  br label %bb.aw

.loopexit.i.i:                                    ; preds = %bb.z, %bb.y, %.lr.ph.i.i.i, %.lr.ph141.i.i.i, %bb.ae, %bb.ad, %.preheader111.i.i.i, %.lr.ph150.i.i.i, %bb.u, %bb.u, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14819
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.582.0.copyload84.i.i, i64 noundef %.sroa.886.0.copyload88.i.i) #53, !noalias !14819
  %i.eh = load i8, ptr %i.s, align 8, !range !21, !noalias !14819, !noundef !12
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.an, label %bb.ao

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.aa, %bb.ab, %bb.af, %bb.ag, %.preheader.i.i.i, %.preheader114.i.i.i
  %.sroa.1592.0.i.i = phi i64 [ %i.dy, %bb.ag ], [ %i.db, %bb.ab ], [ %i.dp, %bb.af ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader114.i.i.i ], [ %i.cs, %bb.aa ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 3, i64 noundef %.sroa.1592.0.i.i) #45, !noalias !14819
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !14819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !14819
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #45, !noalias !14819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14819
  %i.ej = icmp eq i64 %.sroa.080.0.copyload81.i.i, 0
  br i1 %i.ej, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.582.0.copyload84.i.i, i64 noundef %.sroa.080.0.copyload81.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14830
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.an:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !14819
  store i64 %.sroa.080.0.copyload81.i.i, ptr %i.r, align 8, !noalias !14819
  %.sroa.582.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.582.0.copyload84.i.i, ptr %.sroa.582.0..sroa_idx.i.i, align 8, !noalias !14819
  %.sroa.886.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.886.0.copyload88.i.i, ptr %.sroa.886.0..sroa_idx.i.i, align 8, !noalias !14819
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r) #45, !noalias !14819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !14819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !14819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !14819
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #45, !noalias !14819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14819
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.ao:                                            ; preds = %.loopexit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.el = load double, ptr %i.ek, align 8, !noalias !14819, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 3, double noundef %i.el) #45, !noalias !14819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14819
  br label %bb.al

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14819
  %.sroa.9.8.copyload.i = load ptr, ptr %i.v, align 8, !noalias !14831 ; 2 uses
  %.sroa.16.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.16.8.copyload.i = load ptr, ptr %.sroa.16.8..sroa_idx.i, align 8, !noalias !14831 ; 2 uses
  %.sroa.22.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.22.8.copyload.i = load i64, ptr %.sroa.22.8..sroa_idx.i, align 8, !noalias !14831 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14819
  %i.em = icmp eq i64 %i.av, 0
  br i1 %i.em, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit26.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i.i, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14832
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit26.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit26.i.i: ; preds = %bb.ap, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14819
  %i.en = icmp eq i64 %i.au, 0
  br i1 %i.en, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit29.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit26.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.copyload.i.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14833
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit29.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit29.i.i: ; preds = %bb.aq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit26.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit13.i.i
  %.sroa.22.0.i = phi i64 [ undef, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit13.i.i ], [ %.sroa.22.8.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit26.i.i ], [ %.sroa.22.8.copyload.i, %bb.aq ]
  %.sroa.16.1.i = phi ptr [ @175, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit13.i.i ], [ %.sroa.16.8.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit26.i.i ], [ %.sroa.16.8.copyload.i, %bb.aq ] ; 2 uses
  %.sroa.9.1.i = phi ptr [ %i.ba, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit13.i.i ], [ %.sroa.9.8.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit26.i.i ], [ %.sroa.9.8.copyload.i, %bb.aq ] ; 2 uses
  %.sroa.0.184.i = phi i64 [ -1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit13.i.i ], [ -9223372036854775808, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit26.i.i ], [ -9223372036854775808, %bb.aq ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14834)
  call void @llvm.experimental.noalias.scope.decl(metadata !14835)
  %i.eo = load ptr, ptr %0, align 8, !alias.scope !14836, !noundef !12 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit29.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14837)
  call void @llvm.experimental.noalias.scope.decl(metadata !14838)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !14839, !nonnull !12, !noundef !12 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.er, align 8, !alias.scope !14840, !nonnull !12, !noundef !12 ; 2 uses
  %i.es = ptrtoint ptr %.val1.i.i.i.i.i.i to i64
  %i.et = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.eu = sub nuw i64 %i.es, %i.et
  %i.ev = udiv exact i64 %i.eu, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !14841)
  %i.ew = icmp eq ptr %.val1.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  br i1 %i.ew, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i = phi i64 [ %i.ey, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i.i ; 2 uses
  %i.ey = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14842)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ex, align 8, !range !19, !alias.scope !14843, !noalias !14844, !noundef !12 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ez, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !14845, !noalias !14844, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14846
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %bb.as, %.lr.ph.i.i.i.i.i.i.i
  %i.fb = icmp eq i64 %i.ey, %i.ev
  br i1 %i.fb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %bb.ar
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !14839, !noundef !12 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.at

bb.at:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.ff = mul nuw i64 %i.fd, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !14844
  br label %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.at, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit29.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14817
  br i1 %.not11.i.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14847
  %i.fg = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !14847 ; 6 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.av, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !15

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !14847
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.au
  store i64 %.sroa.0.184.i, ptr %i.fg, align 8, !noalias !14817
  %.sroa.4.0..sroa_idx81.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %.sroa.9.1.i, ptr %.sroa.4.0..sroa_idx81.i, align 8, !noalias !14817
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store ptr %.sroa.16.1.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !14817
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i64 %.sroa.22.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !14817
  br label %bb.bp

bb.aw:                                            ; preds = %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.i, %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i
  %.sroa.9.292.i = phi ptr [ %.sroa.9.0.i, %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %.sroa.9.1.i, %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 10 uses
  %.sroa.16.291.i = phi ptr [ %.sroa.16.0.i, %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %.sroa.16.1.i, %_RINvCsgzkSwV7OBv7_7uu_head11arg_iterateINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.292.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14817
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.16.291.i, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !invariant.load !12, !alias.scope !14848, !noalias !14849, !nonnull !12 ; 3 uses
  call void %i.fj(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull %.sroa.9.292.i) #51, !noalias !14850, !inline_history !14752
  %i.fk = load i64, ptr %i.l, align 8, !range !13, !noalias !14850, !noundef !12
  %.not.i74.i = icmp eq i64 %i.fk, -1
  br i1 %.not.i74.i, label %bb.be, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14850
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.16.291.i, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !invariant.load !12, !alias.scope !14848, !noalias !14851, !nonnull !12 ; 2 uses
  call void %i.fm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %.sroa.9.292.i) #51, !noalias !14850, !inline_history !14755
  %i.fn = load i64, ptr %i.k, align 8, !noalias !14850, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14850
  %i.fo = call i64 @llvm.uadd.sat.i64(i64 %i.fn, i64 1)
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.fo, i64 4) ; 3 uses
  %i.fp = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.fn, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb.ba, label %bb.ay, !prof !27

bb.ay:                                            ; preds = %bb.ax
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14852
  %i.fr = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fp, i64 noundef range(i64 1, 9) 8) #45, !noalias !14852 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.ba, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.az ], [ 0, %bb.ax ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.fp) #52, !noalias !14850
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.az, %bb.ay
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ay ], [ %i.fr, %bb.az ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.ay ], [ %..i.i.i, %bb.az ] ; 3 uses
  %i.ft = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.ft)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !14850
  store i64 %.sroa.4.0.i.i.i, ptr %i.m, align 8, !noalias !14817
  %.sroa.4.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i75.i, align 8, !noalias !14817
  %.sroa.6.0..sroa_idx.i76.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i76.i, align 8, !noalias !14817
  call void @llvm.experimental.noalias.scope.decl(metadata !14853)
  call void @llvm.experimental.noalias.scope.decl(metadata !14854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14855
  call void %i.fj(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %.sroa.9.292.i) #51, !noalias !14856, !inline_history !14764
  %i.fu = load i64, ptr %i.j, align 8, !range !13, !noalias !14856, !noundef !12
  %.not6.i.i.i.i = icmp eq i64 %i.fu, -1
  br i1 %.not6.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.bd
  %i.fv = phi ptr [ %i.gi, %bb.bd ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.fw = phi i64 [ %i.gj, %bb.bd ], [ %.sroa.4.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %i.fx = phi i64 [ %i.gl, %bb.bd ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 4 uses
  %i.fy = icmp samesign ult i64 %i.fx, 384307168202282326
  call void @llvm.assume(i1 %i.fy)
  %i.fz = icmp eq i64 %i.fx, %i.fw
  br i1 %i.fz, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.bd

._crit_edge.i.i.i.i:                              ; preds = %bb.bd, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ga = load ptr, ptr %.sroa.16.291.i, align 8, !invariant.load !12, !alias.scope !14857, !noalias !14817 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i
  call void %i.ga(ptr noundef nonnull %.sroa.9.292.i) #51, !noalias !14856, !inline_history !14765
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.16.291.i, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !range !19, !invariant.load !12, !alias.scope !14857, !noalias !14817 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bc
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.16.291.i, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !range !25, !invariant.load !12, !alias.scope !14857, !noalias !14817
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.292.i, i64 noundef %i.gc, i64 noundef range(i64 1, -9223372036854775807) %i.gf) #45, !noalias !14856
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14856
  call void %i.fm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %.sroa.9.292.i) #51, !noalias !14856, !inline_history !14766
  %i.gg = load i64, ptr %i.i, align 8, !noalias !14856, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14856
  %i.gh = call i64 @llvm.uadd.sat.i64(i64 %i.gg, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.fw, i64 noundef %i.gh, i64 noundef 8, i64 noundef 24) #45, !noalias !14817
  %.pre7.i.i.i.i = load i64, ptr %i.m, align 8, !range !19, !noalias !14817
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i75.i, align 8, !noalias !14817
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gi = phi ptr [ %i.fv, %.lr.ph.i.i.i.i ], [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %i.gj = phi i64 [ %i.fw, %.lr.ph.i.i.i.i ], [ %.pre7.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %i.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !14856
  %i.gl = add nuw nsw i64 %i.fx, 1                ; 2 uses
  store i64 %i.gl, ptr %.sroa.6.0..sroa_idx.i76.i, align 8, !noalias !14817
  call void %i.fj(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %.sroa.9.292.i) #51, !noalias !14856, !inline_history !14764
  %i.gm = load i64, ptr %i.j, align 8, !range !13, !noalias !14856, !noundef !12
  %.not.i.i7.i.i = icmp eq i64 %i.gm, -1
  br i1 %.not.i.i7.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14855
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i

bb.be:                                            ; preds = %bb.aw
  store i64 0, ptr %i.m, align 8, !noalias !14817
  %i.gn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gn, align 8, !noalias !14817
  %i.go = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.go, align 8, !noalias !14817
  %i.gp = load ptr, ptr %.sroa.16.291.i, align 8, !invariant.load !12, !alias.scope !14848, !noalias !14817 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void %i.gp(ptr noundef nonnull %.sroa.9.292.i) #51, !noalias !14850, !inline_history !14767
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.16.291.i, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !range !19, !invariant.load !12, !alias.scope !14848, !noalias !14817 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.bg
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.16.291.i, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !range !25, !invariant.load !12, !alias.scope !14848, !noalias !14817
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.292.i, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) %i.gu) #45, !noalias !14850
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.bg, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemBR_EL_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !14817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !14817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !14817
  call void @_RNvNtCsgzkSwV7OBv7_7uu_head3cli6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.ab) #45, !noalias !14817
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEB1V_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.ac, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.ab, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, i32 noundef 1) #45, !noalias !14817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14817
  %i.gv = load i64, ptr %i.ac, align 8, !range !13, !noalias !14817, !noundef !12 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !14817 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !14817 ; 2 uses
  br i1 %i.gw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14817
  br label %bb.bo

bb.bi:                                            ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.654.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.625.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654.0..sroa_idx.i, i64 32, i1 false), !noalias !14817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14817
  store i64 %i.gv, ptr %i.ad, align 8, !noalias !14817
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.gy, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !14817
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ha, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !14817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14817
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14817
  call void @_RNvMs1_CsgzkSwV7OBv7_7uu_headNtB5_11HeadOptions8get_from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ad) #45, !noalias !14817
  %i.hb = load i64, ptr %i.z, align 8, !range !65, !noalias !14817, !noundef !12 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, -1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.hc, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.635.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 24, i1 false), !noalias !14817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.635.sroa.7.i, i64 24, i1 false), !noalias !14817
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.sroa.7.i)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14858
  %i.he = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !14858 ; 4 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.bk, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit77.i, !prof !15

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !14858
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit77.i: ; preds = %bb.bj
  store i64 -9223372036854775805, ptr %i.he, align 8, !noalias !14817
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.483.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.sroa.7.i, i64 24, i1 false), !noalias !14817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14817
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ad) #45, !noalias !14817
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bi
  %.sroa.456.sroa.0.0.copyload.i = load i64, ptr %i.hd, align 8, !noalias !14817
  %.sroa.456.sroa.4.0..sroa.456.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.635.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.456.sroa.4.0..sroa.456.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !14817
  %.sroa.557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.557.0.copyload.i = load i64, ptr %.sroa.557.0..sroa_idx.i, align 8, !noalias !14817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.635.sroa.7.i, i64 24, i1 false), !noalias !14817
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.sroa.7.i)
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.628.sroa.7.i, i64 24, i1 false), !noalias !14817
  store i64 %i.hb, ptr %i.aa, align 8, !noalias !14817
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.456.sroa.0.0.copyload.i, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !14817
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %.sroa.557.0.copyload.i, ptr %.sroa.542.0..sroa_idx.i, align 8, !noalias !14817
  %i.hg = call { ptr, ptr } @_RNvCsgzkSwV7OBv7_7uu_head7uu_head(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa) #45, !noalias !14817
  call void @llvm.experimental.noalias.scope.decl(metadata !14859)
  call void @llvm.experimental.noalias.scope.decl(metadata !14860)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
end_hunk_6
begin_hunk_7_@_RINvCslbrwWrVtb7E_5uu_tr6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBy_6cloned6ClonedINtNtNtBC_5slice4iter4IterB29_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [8 x i8], align 8                ; 6 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [24 x i8], align 8               ; 4 uses
  %i.cm = alloca [24 x i8], align 8               ; 7 uses
  %i.cn = alloca [16 x i8], align 8               ; 9 uses
  %i.co = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.co, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cp = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.cq = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.cq, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !17514
  store i32 %i.cq, ptr %i.cb, align 4, !noalias !17514
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !17515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !17515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !17515
  call void @_RNvCslbrwWrVtb7E_5uu_tr6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.by) #45, !noalias !17515
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.bz, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !17515
  %i.cr = load i64, ptr %i.bz, align 8, !range !13, !noalias !17515, !noundef !12 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !17515 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !17515 ; 2 uses
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17515
  br label %.split

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.614.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.691.0..sroa_idx.i, i64 32, i1 false), !noalias !17515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17515
  store i64 %i.cr, ptr %i.ca, align 8, !noalias !17515
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17515
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cw, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !17515
  %i.cx = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @697, i64 noundef 6) #45, !noalias !17515 ; 4 uses
  %i.cy = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @503, i64 noundef 10) #45, !noalias !17515
  %i.cz = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @698, i64 noundef 15) #45, !noalias !17515 ; 5 uses
  %i.da = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @699, i64 noundef 13) #45, !noalias !17515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !17515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !17515
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @700, i64 noundef 4) #45, !noalias !17515
  call void @llvm.experimental.noalias.scope.decl(metadata !17516)
  call void @llvm.experimental.noalias.scope.decl(metadata !17517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17515
  store ptr @700, ptr %i.p, align 8, !noalias !17518
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 4, ptr %i.db, align 8, !noalias !17518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17518
  %i.dc = load i64, ptr %i.x, align 8, !range !16, !alias.scope !17517, !noalias !17515, !noundef !12
  %i.dd = trunc nuw i64 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  br i1 %i.dd, label %bb.g, label %.split.us.preheader.i.i.i, !prof !18

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.de, i64 40, i1 false), !noalias !17519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17518
  store ptr %i.p, ptr %i.n, align 8, !noalias !17518
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !17518
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.df, align 8, !noalias !17518
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !17518
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !17520
  unreachable

.split.us.preheader.i.i.i:                        ; preds = %bb.f
  %.sroa.0352.0.copyload.i = load ptr, ptr %i.de, align 8, !alias.scope !17521, !noalias !17515
  %.sroa.4353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4353.0.copyload.i = load ptr, ptr %.sroa.4353.0..sroa_idx.i, align 8, !alias.scope !17521, !noalias !17515 ; 3 uses
  %.sroa.5354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.5354.0.copyload.i = load ptr, ptr %.sroa.5354.0..sroa_idx.i, align 8, !alias.scope !17521, !noalias !17515 ; 3 uses
  %.sroa.6355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.6355.0.copyload.i = load ptr, ptr %.sroa.6355.0..sroa_idx.i, align 8, !alias.scope !17521, !noalias !17515 ; 3 uses
  %.sroa.7356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.7356.0.copyload.i = load ptr, ptr %.sroa.7356.0..sroa_idx.i, align 8, !alias.scope !17521, !noalias !17515 ; 3 uses
  %.sroa.8357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.8357.0.copyload.i = load ptr, ptr %.sroa.8357.0..sroa_idx.i, align 8, !alias.scope !17521, !noalias !17515 ; 3 uses
  %.sroa.9358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.9358.0.copyload.i = load ptr, ptr %.sroa.9358.0..sroa_idx.i, align 8, !alias.scope !17521, !noalias !17515 ; 3 uses
  %.sroa.10359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.10359.0.copyload.i = load i64, ptr %.sroa.10359.0..sroa_idx.i, align 8, !alias.scope !17521, !noalias !17515 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !17515
  call void @llvm.experimental.noalias.scope.decl(metadata !17522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17523
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i, %.split.us.preheader.i.i.i
  %.sroa.23.sroa.31.2.i = phi i64 [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.10359.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ]
  %.sroa.23.sroa.28.2.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.9358.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 2 uses
  %.sroa.23.sroa.23.3.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.8357.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 5 uses
  %.sroa.23.sroa.18.3.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.7356.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.sroa.23.sroa.11.4.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.6355.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.sroa.23.sroa.8.2.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.5354.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.sroa.23.sroa.0.3.i = phi ptr [ undef, %.split.us.preheader.i.i.i ], [ %.sroa.4353.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 5 uses
  %.sroa.17.2.i = phi ptr [ null, %.split.us.preheader.i.i.i ], [ %.sroa.5.2.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.sroa.5.2.i = phi ptr [ %.sroa.0352.0.copyload.i, %.split.us.preheader.i.i.i ], [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i ] ; 3 uses
  %.not.i.us.i.i.i = icmp eq ptr %.sroa.17.2.i, null
  br i1 %.not.i.us.i.i.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.split.us.i.i.i
  %.not.i.i.i.i.i.us.i.i.i191 = icmp eq ptr %.sroa.23.sroa.11.4.i, null
  %i.dg = icmp eq ptr %.sroa.23.sroa.11.4.i, %.sroa.23.sroa.18.3.i
  %or.cond875.i192 = select i1 %.not.i.i.i.i.i.us.i.i.i191, i1 true, i1 %i.dg
  br i1 %or.cond875.i192, label %select.unfold.i.i.i.i.us.i.i.i.preheader, label %.loopexit437.i

select.unfold.i.i.i.i.us.i.i.i.preheader:         ; preds = %.preheader.i.preheader
  %.not.i5.i.i.i.i.us.i.i.i776 = icmp eq ptr %.sroa.23.sroa.0.3.i, null
  %i.dh = icmp eq ptr %.sroa.23.sroa.0.3.i, %.sroa.23.sroa.8.2.i
  %or.cond.i.i.i.i.i.us.i.i.i777 = select i1 %.not.i5.i.i.i.i.us.i.i.i776, i1 true, i1 %i.dh
  br i1 %or.cond.i.i.i.i.i.us.i.i.i777, label %select.unfold.i.i.i.i.us.i.i.i._crit_edge, label %.preheader.i

select.unfold.i.i.i.i.us.i.i.i:                   ; preds = %.preheader.i
  %i.di = icmp eq ptr %i.dj, %.sroa.23.sroa.8.2.i
  br i1 %i.di, label %select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %select.unfold.i.i.i.i.us.i.i.i.preheader, %select.unfold.i.i.i.i.us.i.i.i
  %.sroa.23.sroa.0.4.i194778 = phi ptr [ %i.dj, %select.unfold.i.i.i.i.us.i.i.i ], [ %.sroa.23.sroa.0.3.i, %select.unfold.i.i.i.i.us.i.i.i.preheader ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.23.sroa.0.4.i194778, i64 24 ; 4 uses
  %i.dk = getelementptr i8, ptr %.sroa.23.sroa.0.4.i194778, i64 16
  %.val4.i.i.i.i.us.i.i.i = load i64, ptr %i.dk, align 8, !noalias !17524, !noundef !12 ; 3 uses
  %i.dl = icmp eq i64 %.val4.i.i.i.i.us.i.i.i, 0
  br i1 %i.dl, label %select.unfold.i.i.i.i.us.i.i.i, label %.loopexit437.i.loopexit

select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.us.i.i.i
  %i.dm = getelementptr i8, ptr %.sroa.23.sroa.0.4.i194778, i64 8
  %.val.i.i.i.i.us.i.i.i.le1084 = load ptr, ptr %i.dm, align 8, !noalias !17524, !nonnull !12, !noundef !12
  %.idx.le1081 = shl nuw nsw i64 %.val4.i.i.i.i.us.i.i.i, 5
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us.i.i.i.le1084, i64 %.idx.le1081
  br label %select.unfold.i.i.i.i.us.i.i.i._crit_edge

select.unfold.i.i.i.i.us.i.i.i._crit_edge:        ; preds = %select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.us.i.i.i.preheader
  %.sroa.23.sroa.0.4.i194.lcssa = phi ptr [ %.sroa.23.sroa.0.3.i, %select.unfold.i.i.i.i.us.i.i.i.preheader ], [ %i.dj, %select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit ]
  %.sroa.23.sroa.18.4.i193.lcssa = phi ptr [ %.sroa.23.sroa.18.3.i, %select.unfold.i.i.i.i.us.i.i.i.preheader ], [ %i.dn, %select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.us.i.i.i = icmp eq ptr %.sroa.23.sroa.23.3.i, null
  %i.do = icmp eq ptr %.sroa.23.sroa.23.3.i, %.sroa.23.sroa.28.2.i
  %or.cond420.i = select i1 %.not.i7.i.i.i.i.us.i.i.i, i1 true, i1 %i.do
  br i1 %or.cond420.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i, label %.loopexit438.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i: ; preds = %select.unfold.i.i.i.i.us.i.i.i._crit_edge, %.split.us.i.i.i
  %.not1.us.i.i.i = icmp eq ptr %.sroa.5.2.i, null
  br i1 %.not1.us.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %.split.us.i.i.i

.loopexit437.i.loopexit:                          ; preds = %.preheader.i
  %i.dp = getelementptr i8, ptr %.sroa.23.sroa.0.4.i194778, i64 8
  %.val.i.i.i.i.us.i.i.i.le = load ptr, ptr %i.dp, align 8, !noalias !17524, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i.us.i.i.i, 5
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us.i.i.i.le, i64 %.idx.le
  br label %.loopexit437.i

.loopexit437.i:                                   ; preds = %.preheader.i.preheader, %.loopexit437.i.loopexit
  %.sroa.23.sroa.18.4.i.lcssa = phi ptr [ %i.dq, %.loopexit437.i.loopexit ], [ %.sroa.23.sroa.18.3.i, %.preheader.i.preheader ]
  %.sroa.23.sroa.11.5.i.lcssa = phi ptr [ %.val.i.i.i.i.us.i.i.i.le, %.loopexit437.i.loopexit ], [ %.sroa.23.sroa.11.4.i, %.preheader.i.preheader ] ; 2 uses
  %.sroa.23.sroa.0.4.i.lcssa = phi ptr [ %i.dj, %.loopexit437.i.loopexit ], [ %.sroa.23.sroa.0.3.i, %.preheader.i.preheader ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.23.sroa.11.5.i.lcssa, i64 32
  br label %bb.h

.loopexit438.i:                                   ; preds = %select.unfold.i.i.i.i.us.i.i.i._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.23.sroa.23.3.i, i64 32
  br label %bb.h

bb.h:                                             ; preds = %.loopexit438.i, %.loopexit437.i
  %.sroa.23.sroa.18.4.i173 = phi ptr [ %.sroa.23.sroa.18.4.i.lcssa, %.loopexit437.i ], [ %.sroa.23.sroa.18.4.i193.lcssa, %.loopexit438.i ]
  %.sroa.23.sroa.0.4.i170 = phi ptr [ %.sroa.23.sroa.0.4.i.lcssa, %.loopexit437.i ], [ %.sroa.23.sroa.0.4.i194.lcssa, %.loopexit438.i ]
  %.sroa.23.sroa.23.0.i = phi ptr [ %.sroa.23.sroa.23.3.i, %.loopexit437.i ], [ %i.ds, %.loopexit438.i ]
  %.sroa.23.sroa.11.1.i = phi ptr [ %i.dr, %.loopexit437.i ], [ null, %.loopexit438.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.23.sroa.11.5.i.lcssa, %.loopexit437.i ], [ %.sroa.23.sroa.23.3.i, %.loopexit438.i ]
  %i.dt = call noundef nonnull align 8 ptr %.sroa.17.2.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i) #45, !noalias !17525, !inline_history !17334 ; 2 uses
  %i.du = add i64 %.sroa.23.sroa.31.2.i, -1       ; 3 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 8
  %.val.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !17526, !nonnull !12, !noundef !12
  %i.dw = getelementptr i8, ptr %i.dt, i64 16
  %.val2.i.i.i = load i64, ptr %i.dw, align 8, !noalias !17526, !noundef !12 ; 7 uses
  %i.dx = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dx, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !17527
  %i.dy = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !17527 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.j, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i) #52, !noalias !17528
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull readonly align 1 %.val.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i, i1 false), !noalias !17529
  %.not.i.i = icmp eq i64 %.val2.i.i.i, -1
  br i1 %.not.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.h
  %.sroa.7.0169.i.i = phi ptr [ %i.dy, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 1 to ptr), %bb.h ]
  %i.ea = call i64 @llvm.uadd.sat.i64(i64 %i.du, i64 1)
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ea, i64 4) ; 3 uses
  %i.eb = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.du, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !27

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !17530
  %i.ed = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.eb, i64 noundef range(i64 1, 9) 8) #45, !noalias !17530 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.m, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.m:                                             ; preds = %bb.l, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.eb) #52, !noalias !17523
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.ed, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %..i.i.i, %bb.l ] ; 2 uses
  %i.ef = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.ef)
  store i64 %.val2.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !17523
  %.sroa.479.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store ptr %.sroa.7.0169.i.i, ptr %.sroa.479.0..sroa_idx.i.i, align 8, !noalias !17523
  %.sroa.580.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store i64 %.val2.i.i.i, ptr %.sroa.580.0..sroa_idx.i.i, align 8, !noalias !17523
  store i64 %.sroa.4.0.i.i.i, ptr %i.m, align 8, !noalias !17523
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !17523
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !17523
  call void @llvm.experimental.noalias.scope.decl(metadata !17531)
  call void @llvm.experimental.noalias.scope.decl(metadata !17532)
  br label %.split.us.i.i51.i.i

.split.us.i.i51.i.i:                              ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.20.sroa.49.7.i.i = phi i64 [ %.sroa.10359.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %i.du, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.45.7.i.i = phi ptr [ %.sroa.9358.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.28.2.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.20.sroa.37.11.i.i = phi ptr [ %.sroa.8357.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.23.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.20.sroa.29.11.i.i = phi ptr [ %.sroa.7356.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.18.4.i173, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.sroa.20.sroa.17.14.i.i = phi ptr [ %.sroa.6355.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.11.1.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.sroa.20.sroa.13.7.i.i = phi ptr [ %.sroa.5354.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.8.2.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.sroa.20.sroa.0.11.i.i = phi ptr [ %.sroa.4353.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.23.sroa.0.4.i170, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.11.8.i.i = phi ptr [ %.sroa.583.7.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.17.2.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.583.7.i.i = phi ptr [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i ], [ %.sroa.5.2.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.not.i.i.i.i.i.us.i.i59.i520.i = icmp eq ptr %.sroa.20.sroa.17.14.i.i, null
  %i.eg = icmp eq ptr %.sroa.20.sroa.17.14.i.i, %.sroa.20.sroa.29.11.i.i
  %or.cond384.i521.i = select i1 %.not.i.i.i.i.i.us.i.i59.i520.i, i1 true, i1 %i.eg
  br i1 %or.cond384.i521.i, label %select.unfold.i.i.i.i.us.i.i62.i.i.preheader, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i

select.unfold.i.i.i.i.us.i.i62.i.i.preheader:     ; preds = %.split.us.i.i51.i.i
  %.not.i5.i.i.i.i.us.i.i63.i.i212 = icmp eq ptr %.sroa.20.sroa.0.11.i.i, null
  %i.eh = icmp eq ptr %.sroa.20.sroa.0.11.i.i, %.sroa.20.sroa.13.7.i.i
  %or.cond.i.i.i.i.i.us.i.i64.i.i213 = select i1 %.not.i5.i.i.i.i.us.i.i63.i.i212, i1 true, i1 %i.eh
  br i1 %or.cond.i.i.i.i.i.us.i.i64.i.i213, label %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge, label %.preheader217.i.i

select.unfold.i.i.i.i.us.i.i62.i.i:               ; preds = %.preheader217.i.i
  %i.ei = icmp eq ptr %i.ej, %.sroa.20.sroa.13.7.i.i
  br i1 %i.ei, label %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit, label %.preheader217.i.i

.preheader217.i.i:                                ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i.preheader, %select.unfold.i.i.i.i.us.i.i62.i.i
  %.sroa.20.sroa.0.12.i523.i214 = phi ptr [ %i.ej, %select.unfold.i.i.i.i.us.i.i62.i.i ], [ %.sroa.20.sroa.0.11.i.i, %select.unfold.i.i.i.i.us.i.i62.i.i.preheader ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.0.12.i523.i214, i64 24 ; 4 uses
  %i.ek = getelementptr i8, ptr %.sroa.20.sroa.0.12.i523.i214, i64 16
  %.val4.i.i.i.i.us.i.i66.i.i = load i64, ptr %i.ek, align 8, !noalias !17533, !noundef !12 ; 2 uses
  %i.el = icmp eq i64 %.val4.i.i.i.i.us.i.i66.i.i, 0
  br i1 %i.el, label %select.unfold.i.i.i.i.us.i.i62.i.i, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit

select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i
  %i.em = getelementptr i8, ptr %.sroa.20.sroa.0.12.i523.i214, i64 8
  %.val.i.i.i.i.us.i.i65.i.i.le608 = load ptr, ptr %i.em, align 8, !noalias !17533, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge

select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge:    ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.us.i.i62.i.i.preheader
  %.sroa.20.sroa.0.12.i523.i.lcssa = phi ptr [ %.sroa.20.sroa.0.11.i.i, %select.unfold.i.i.i.i.us.i.i62.i.i.preheader ], [ %i.ej, %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit ]
  %.sroa.20.sroa.29.12.i522.i.lcssa = phi ptr [ %.sroa.20.sroa.29.11.i.i, %select.unfold.i.i.i.i.us.i.i62.i.i.preheader ], [ %.val.i.i.i.i.us.i.i65.i.i.le608, %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.us.i.i67.i.i = icmp eq ptr %.sroa.20.sroa.37.11.i.i, null
  %i.en = icmp eq ptr %.sroa.20.sroa.37.11.i.i, %.sroa.20.sroa.45.7.i.i
  %or.cond.i.i = select i1 %.not.i7.i.i.i.i.us.i.i67.i.i, i1 true, i1 %i.en
  br i1 %or.cond.i.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i70.i.i: ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge
  %.not1.us.i.i71.i.i = icmp eq ptr %.sroa.583.7.i.i, null
  br i1 %.not1.us.i.i71.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %.split.us.i.i51.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit: ; preds = %.preheader217.i.i
  %i.eo = getelementptr i8, ptr %.sroa.20.sroa.0.12.i523.i214, i64 8
  %.val.i.i.i.i.us.i.i65.i.i.le = load ptr, ptr %i.eo, align 8, !noalias !17533, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.us.i.i66.i.i, 5
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us.i.i65.i.i.le, i64 %.idx.i.le
  br label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i: ; preds = %.split.us.i.i51.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit
  %.sroa.20.sroa.29.12.i.lcssa.i = phi ptr [ %i.ep, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit ], [ %.sroa.20.sroa.29.11.i.i, %.split.us.i.i51.i.i ]
  %.sroa.20.sroa.17.15.i.lcssa.i = phi ptr [ %.val.i.i.i.i.us.i.i65.i.i.le, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit ], [ %.sroa.20.sroa.17.14.i.i, %.split.us.i.i51.i.i ] ; 2 uses
  %.sroa.20.sroa.0.12.i.lcssa.i = phi ptr [ %i.ej, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit ], [ %.sroa.20.sroa.0.11.i.i, %.split.us.i.i51.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.17.15.i.lcssa.i, i64 32
  br label %.lr.ph.i.i.i.i

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i: ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.37.11.i.i, i64 32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i
  %.sroa.20.sroa.29.12.i475.i = phi ptr [ %.sroa.20.sroa.29.12.i.lcssa.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ %.sroa.20.sroa.29.12.i522.i.lcssa, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %.sroa.20.sroa.0.12.i471.i = phi ptr [ %.sroa.20.sroa.0.12.i.lcssa.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ %.sroa.20.sroa.0.12.i523.i.lcssa, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %.sroa.20.sroa.37.8.i.i = phi ptr [ %.sroa.20.sroa.37.11.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ %i.er, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %.sroa.20.sroa.17.11.i.i = phi ptr [ %i.eq, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ null, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %.sroa.0.0.i.i.i.i.i.i20.i.i = phi ptr [ %.sroa.20.sroa.17.15.i.lcssa.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i ], [ %.sroa.20.sroa.37.11.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit218.i.i ]
  %i.es = call noundef nonnull align 8 ptr %.sroa.11.8.i.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i20.i.i) #45, !noalias !17534, !inline_history !17369
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %.lr.ph.i.i.i.i
  %i.et = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ff, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.eu = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.fh, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.20.sroa.49.0.i.in.i = phi i64 [ %.sroa.20.sroa.49.7.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.49.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.45.0.i.i = phi ptr [ %.sroa.20.sroa.45.7.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.45.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.37.0.i.i = phi ptr [ %.sroa.20.sroa.37.8.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.37.1.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.29.0.i.i = phi ptr [ %.sroa.20.sroa.29.12.i475.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.29.5.i450.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.17.0.i.i = phi ptr [ %.sroa.20.sroa.17.11.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.17.2.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.13.0.i.i = phi ptr [ %.sroa.20.sroa.13.7.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.13.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.20.sroa.0.0.i.i = phi ptr [ %.sroa.20.sroa.0.12.i471.i, %.lr.ph.i.i.i.i ], [ %.sroa.20.sroa.0.5.i447.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.11.0.i.i = phi ptr [ %.sroa.11.8.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.11.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.583.0.i.i = phi ptr [ %.sroa.583.7.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.583.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.ev = phi ptr [ %i.es, %.lr.ph.i.i.i.i ], [ %i.fu, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.20.sroa.49.0.i.i = add i64 %.sroa.20.sroa.49.0.i.in.i, -1 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  %.val.i.i.i2.i.i = load ptr, ptr %i.ew, align 8, !noalias !17535, !nonnull !12, !noundef !12
  %i.ex = getelementptr i8, ptr %i.ev, i64 16
  %.val2.i.i.i.i.i = load i64, ptr %i.ex, align 8, !noalias !17535, !noundef !12 ; 7 uses
  %i.ey = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ey, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !17536
  %i.ez = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !17536 ; 3 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.p, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i) #52, !noalias !17537
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr nonnull readonly align 1 %.val.i.i.i2.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i1 false), !noalias !17538
  %.not.i.i3.i.i = icmp eq i64 %.val2.i.i.i.i.i, -1
  br i1 %.not.i.i3.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.n
  %.sroa.7.018.i.i.i.i = phi ptr [ %i.ez, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.n ]
  %i.fb = icmp samesign ult i64 %i.eu, 384307168202282326
  call void @llvm.assume(i1 %i.fb)
  %i.fc = load i64, ptr %i.m, align 8, !range !19, !alias.scope !17539, !noalias !17523, !noundef !12
  %i.fd = icmp eq i64 %i.eu, %i.fc
  br i1 %i.fd, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i
  %i.fe = call i64 @llvm.uadd.sat.i64(i64 %.sroa.20.sroa.49.0.i.i, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.eu, i64 noundef %i.fe, i64 noundef 8, i64 noundef 24) #45, !noalias !17540
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !17539, !noalias !17523
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i
  %i.ff = phi ptr [ %.pre.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.et, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %i.eu ; 3 uses
  store i64 %.val2.i.i.i.i.i, ptr %i.fg, align 8, !noalias !17541
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %.sroa.7.018.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !17541
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !17541
  %i.fh = add nuw nsw i64 %i.eu, 1                ; 2 uses
  store i64 %i.fh, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !17539, !noalias !17523
  br label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.20.sroa.49.3.i.i = phi i64 [ %.sroa.10359.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.49.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.20.sroa.45.3.i.i = phi ptr [ %.sroa.9358.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.45.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %.sroa.20.sroa.37.4.i.i = phi ptr [ %.sroa.8357.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.37.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 5 uses
  %.sroa.20.sroa.29.4.i.i = phi ptr [ %.sroa.7356.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.29.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.sroa.17.5.i.i = phi ptr [ %.sroa.6355.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.17.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.sroa.13.3.i.i = phi ptr [ %.sroa.5354.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.13.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.sroa.0.4.i.i = phi ptr [ %.sroa.4353.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.20.sroa.0.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 5 uses
  %.sroa.11.3.i.i = phi ptr [ %.sroa.583.3.i.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.11.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %.sroa.583.3.i.i = phi ptr [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i.i.i ], [ %.sroa.583.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.us.i.i.i541.i = icmp eq ptr %.sroa.20.sroa.17.5.i.i, null
  %i.fi = icmp eq ptr %.sroa.20.sroa.17.5.i.i, %.sroa.20.sroa.29.4.i.i
  %or.cond387.i542.i = select i1 %.not.i.i.i.i.i.us.i.i.i541.i, i1 true, i1 %i.fi
  br i1 %or.cond387.i542.i, label %select.unfold.i.i.i.i.us.i.i.i.i.preheader, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i.loopexit.i.i

select.unfold.i.i.i.i.us.i.i.i.i.preheader:       ; preds = %.preheader.i.preheader.i
  %.not.i5.i.i.i.i.us.i.i.i.i217 = icmp eq ptr %.sroa.20.sroa.0.4.i.i, null
  %i.fj = icmp eq ptr %.sroa.20.sroa.0.4.i.i, %.sroa.20.sroa.13.3.i.i
  %or.cond.i.i.i.i.i.us.i.i.i.i218 = select i1 %.not.i5.i.i.i.i.us.i.i.i.i217, i1 true, i1 %i.fj
  br i1 %or.cond.i.i.i.i.i.us.i.i.i.i218, label %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge, label %.preheader.i.i

select.unfold.i.i.i.i.us.i.i.i.i:                 ; preds = %.preheader.i.i
  %i.fk = icmp eq ptr %i.fl, %.sroa.20.sroa.13.3.i.i
  br i1 %i.fk, label %select.unfold.i.i.i.i.us.i.i.i.i._crit_edge.loopexit, label %.preheader.i.i

end_hunk_7
begin_hunk_8_@_RINvNvCs44SRMMtlaHN_9uu_csplit6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.db = alloca [16 x i8], align 16              ; 4 uses
  %i.dc = alloca [24 x i8], align 8               ; 8 uses
  %i.dd = alloca [32 x i8], align 8               ; 6 uses
  %i.de = alloca [40 x i8], align 8               ; 4 uses
  %i.df = alloca [16 x i8], align 8               ; 5 uses
  %i.dg = alloca [32 x i8], align 8               ; 6 uses
  %i.dh = alloca [40 x i8], align 8               ; 4 uses
  %i.di = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.615 = alloca [40 x i8], align 8          ; 3 uses
  %i.dj = alloca [72 x i8], align 8               ; 12 uses
  %i.dk = alloca [40 x i8], align 8               ; 6 uses
  %i.dl = alloca [16 x i8], align 8               ; 7 uses
  %i.dm = alloca [8 x i8], align 8                ; 5 uses
  %i.dn = alloca [112 x i8], align 8              ; 7 uses
  %i.do = alloca [112 x i8], align 8              ; 24 uses
  %i.dp = alloca [712 x i8], align 8              ; 4 uses
  %i.dq = alloca [56 x i8], align 8               ; 8 uses
  %i.dr = alloca [56 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @_RNvCs44SRMMtlaHN_9uu_csplit6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.dp) #45
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.dq, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.dp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  %i.ds = load i64, ptr %i.dq, align 8, !range !13, !noundef !12 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, -1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  br i1 %i.dt, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %bb.oy

bb.c:                                             ; preds = %bb.a
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  store i64 %i.ds, ptr %i.dr, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dv, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %i.dx, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !27148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store ptr @181, ptr %i.di, align 8, !noalias !27149
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 4, ptr %i.dy, align 8, !noalias !27149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !27149
  %i.dz = load i64, ptr %i.dk, align 8, !range !26, !alias.scope !27148, !noundef !12
  %.not.i = icmp eq i64 %i.dz, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dk, i64 40, i1 false), !noalias !27150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !27149
  store ptr %i.di, ptr %i.dg, align 8, !noalias !27149
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !27149
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %i.dh, ptr %i.ea, align 8, !noalias !27149
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !27149
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !27148
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !27148, !align !23, !noundef !12 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !27149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  %.not = icmp eq ptr %i.ec, null
  br i1 %.not, label %bb.g, label %bb.e, !prof !18

bb.e:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @398, i64 noundef 7) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !27151)
  call void @llvm.experimental.noalias.scope.decl(metadata !27152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  store ptr @398, ptr %i.df, align 8, !noalias !27153
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 7, ptr %i.ed, align 8, !noalias !27153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !27153
  %i.ee = load i64, ptr %i.dj, align 8, !range !16, !alias.scope !27152, !noundef !12
  %i.ef = trunc nuw i64 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  br i1 %i.ef, label %bb.f, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.eg, i64 40, i1 false), !noalias !27154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !27153
  store ptr %i.df, ptr %i.dd, align 8, !noalias !27153
  %.sroa.42.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i40, align 8, !noalias !27153
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.de, ptr %i.eh, align 8, !noalias !27153
  %.sroa.46.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i41, align 8, !noalias !27153
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !27155
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.e
  %.sroa.0463.0.copyload = load ptr, ptr %i.eg, align 8, !alias.scope !27155 ; 3 uses
  %.sroa.5464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.5464.0.copyload = load ptr, ptr %.sroa.5464.0..sroa_idx, align 8, !alias.scope !27155 ; 5 uses
  %.sroa.6465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.sroa.6465.0.copyload = load ptr, ptr %.sroa.6465.0..sroa_idx, align 8, !alias.scope !27155 ; 4 uses
  %.sroa.7466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %.sroa.7466.0.copyload = load ptr, ptr %.sroa.7466.0..sroa_idx, align 8, !alias.scope !27155 ; 3 uses
  %.sroa.8467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %.sroa.8467.0.copyload = load ptr, ptr %.sroa.8467.0..sroa_idx, align 8, !alias.scope !27155 ; 3 uses
  %.sroa.9468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %.sroa.9468.0.copyload = load ptr, ptr %.sroa.9468.0..sroa_idx, align 8, !alias.scope !27155 ; 5 uses
  %.sroa.10469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %.sroa.10469.0.copyload = load ptr, ptr %.sroa.10469.0..sroa_idx, align 8, !alias.scope !27155 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !27155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !27153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.not31 = icmp eq ptr %.sroa.0463.0.copyload, null
  br i1 %.not31, label %bb.m, label %bb.h, !prof !18

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #50
  unreachable

bb.h:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !27156
  %.not.i.i.i.i.i1187 = icmp eq ptr %.sroa.7466.0.copyload, null
  %i.ei = icmp eq ptr %.sroa.7466.0.copyload, %.sroa.8467.0.copyload
  %or.cond1188 = select i1 %.not.i.i.i.i.i1187, i1 true, i1 %i.ei
  br i1 %or.cond1188, label %select.unfold.i.i.i.i.preheader, label %.loopexit.i.loopexit

select.unfold.i.i.i.i.preheader:                  ; preds = %bb.h
  %.not.i5.i.i.i.i2842 = icmp eq ptr %.sroa.5464.0.copyload, null
  %i.ej = icmp eq ptr %.sroa.5464.0.copyload, %.sroa.6465.0.copyload
  %or.cond.i.i.i.i.i2843 = select i1 %.not.i5.i.i.i.i2842, i1 true, i1 %i.ej
  br i1 %or.cond.i.i.i.i.i2843, label %select.unfold.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.ek = icmp eq ptr %i.el, %.sroa.6465.0.copyload
  br i1 %i.ek, label %select.unfold.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.preheader, %select.unfold.i.i.i.i
  %.sroa.48.0.copyload.i11902844 = phi ptr [ %i.el, %select.unfold.i.i.i.i ], [ %.sroa.5464.0.copyload, %select.unfold.i.i.i.i.preheader ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i11902844, i64 24 ; 4 uses
  %i.em = getelementptr i8, ptr %.sroa.48.0.copyload.i11902844, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.em, align 8, !noalias !27157, !noundef !12 ; 3 uses
  %i.en = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.en, label %select.unfold.i.i.i.i, label %.loopexit.i.loopexit.loopexit

select.unfold.i.i.i.i._crit_edge.loopexit:        ; preds = %select.unfold.i.i.i.i
  %i.eo = getelementptr i8, ptr %.sroa.48.0.copyload.i11902844, i64 8
  %.val.i.i.i.i.le3878 = load ptr, ptr %i.eo, align 8, !noalias !27157, !nonnull !12, !noundef !12
  %.idx.le3875 = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le3878, i64 %.idx.le3875
  br label %select.unfold.i.i.i.i._crit_edge

select.unfold.i.i.i.i._crit_edge:                 ; preds = %select.unfold.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.preheader
  %.sroa.48.0.copyload.i1190.lcssa = phi ptr [ %.sroa.5464.0.copyload, %select.unfold.i.i.i.i.preheader ], [ %i.el, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.sroa.7.0.copyload.i1189.lcssa = phi ptr [ %.sroa.8467.0.copyload, %select.unfold.i.i.i.i.preheader ], [ %i.ep, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i = icmp eq ptr %.sroa.9468.0.copyload, null
  br i1 %.not.i7.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3z_INtNtB1H_6borrow6BorroweE6borrowEE9from_iterCsl8pJiQOn4hA_9coreutils.exit, label %.sink.split.i8.i.i.i.i

.sink.split.i8.i.i.i.i:                           ; preds = %select.unfold.i.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10469.0.copyload) ]
  %i.eq = icmp eq ptr %.sroa.9468.0.copyload, %.sroa.10469.0.copyload
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.9468.0.copyload, i64 32
  br i1 %i.eq, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3z_INtNtB1H_6borrow6BorroweE6borrowEE9from_iterCsl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i

.loopexit.i.loopexit.loopexit:                    ; preds = %.lr.ph
  %i.es = getelementptr i8, ptr %.sroa.48.0.copyload.i11902844, i64 8
  %.val.i.i.i.i.le = load ptr, ptr %i.es, align 8, !noalias !27157, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 %.idx.le
  br label %.loopexit.i.loopexit

.loopexit.i.loopexit:                             ; preds = %.loopexit.i.loopexit.loopexit, %bb.h
  %spec.select.i18.i.i.i.i.lcssa1186 = phi ptr [ %.sroa.7466.0.copyload, %bb.h ], [ %.val.i.i.i.i.le, %.loopexit.i.loopexit.loopexit ] ; 2 uses
  %.sroa.7.0.copyload.i.lcssa = phi ptr [ %.sroa.8467.0.copyload, %bb.h ], [ %i.et, %.loopexit.i.loopexit.loopexit ]
  %.sroa.48.0.copyload.i.lcssa = phi ptr [ %.sroa.5464.0.copyload, %bb.h ], [ %i.el, %.loopexit.i.loopexit.loopexit ]
  %i.eu = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa1186, i64 32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %.sink.split.i8.i.i.i.i
  %.sroa.7.0.copyload.i1185 = phi ptr [ %.sroa.7.0.copyload.i1189.lcssa, %.sink.split.i8.i.i.i.i ], [ %.sroa.7.0.copyload.i.lcssa, %.loopexit.i.loopexit ]
  %.sroa.48.0.copyload.i1183 = phi ptr [ %.sroa.48.0.copyload.i1190.lcssa, %.sink.split.i8.i.i.i.i ], [ %.sroa.48.0.copyload.i.lcssa, %.loopexit.i.loopexit ]
  %.sroa.12456.0 = phi ptr [ %i.er, %.sink.split.i8.i.i.i.i ], [ %.sroa.9468.0.copyload, %.loopexit.i.loopexit ]
  %.sroa.6.0.copyload.i = phi ptr [ null, %.sink.split.i8.i.i.i.i ], [ %i.eu, %.loopexit.i.loopexit ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.9468.0.copyload, %.sink.split.i8.i.i.i.i ], [ %spec.select.i18.i.i.i.i.lcssa1186, %.loopexit.i.loopexit ]
  %i.ev = call noundef nonnull align 8 ptr %.sroa.0463.0.copyload(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i) #45, !noalias !27158, !inline_history !26537 ; 2 uses
  %i.ew = add i64 %.sroa.11.0.copyload, -1        ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ev, i64 8
  %.val.i.i = load ptr, ptr %i.ex, align 8, !noalias !27159, !nonnull !12, !noundef !12
  %i.ey = getelementptr i8, ptr %i.ev, i64 16
  %.val3.i.i = load i64, ptr %i.ey, align 8, !noalias !27159, !noundef !12
  %i.ez = call i64 @llvm.uadd.sat.i64(i64 %i.ew, i64 1)
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.ez, i64 4) ; 3 uses
  %i.fa = shl i64 %..i.i, 4                       ; 4 uses
  %i.fb = icmp ugt i64 %i.ew, 1152921504606846974
  %.not.i.i.i = icmp ugt i64 %i.fa, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.fb, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.j, label %1, !prof !27

1:                                                ; preds = %.loopexit.i
  %2 = icmp eq i64 %i.fa, 0
  br i1 %2, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.i

bb.i:                                             ; preds = %1
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !27160
  %i.fc = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fa, i64 noundef range(i64 1, 9) 8) #45, !noalias !27160 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.j, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i

bb.j:                                             ; preds = %bb.i, %.loopexit.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.i ], [ 0, %.loopexit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.fa) #52, !noalias !27156
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.i, %1
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %1 ], [ %i.fc, %bb.i ] ; 4 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %1 ], [ %..i.i, %bb.i ] ; 2 uses
  %3 = icmp ule i64 %..i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %3)
  store ptr %.val.i.i, ptr %.sroa.10.0.i.i, align 8, !noalias !27156, !captures !39
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store i64 %.val3.i.i, ptr %i.fe, align 8, !noalias !27156
  store i64 %.sroa.4.0.i.i, ptr %i.dc, align 8, !noalias !27156
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !27156
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !27156
  call void @llvm.experimental.noalias.scope.decl(metadata !27161)
  call void @llvm.experimental.noalias.scope.decl(metadata !27162)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i
  %i.ff = phi ptr [ %i.gg, %bb.l ], [ %.sroa.10.0.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.12.0.copyload = phi i64 [ %i.gj, %bb.l ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i ] ; 6 uses
  %i.fg = phi i64 [ %i.ga, %bb.l ], [ %i.ew, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i ]
  %spec.select.i9.i.i.i16.i.i.i = phi ptr [ %spec.select.i9.i.i.i15.i.i.i, %bb.l ], [ %.sroa.12456.0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i ] ; 5 uses
  %i.fh = phi ptr [ %i.fx, %bb.l ], [ %.sroa.7.0.copyload.i1185, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %i.fi = phi ptr [ %i.fy, %bb.l ], [ %.sroa.48.0.copyload.i1183, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i ] ; 5 uses
  %.val.i.i.i11.i.i.i = phi ptr [ %.val.i.i.i8.i.i.i, %bb.l ], [ %.sroa.6.0.copyload.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %.not.i.i.i.i.i5.i.i = icmp eq ptr %.val.i.i.i11.i.i.i, null
  %i.fj = icmp eq ptr %.val.i.i.i11.i.i.i, %i.fh
  %or.cond.i6.i.i = select i1 %.not.i.i.i.i.i5.i.i, i1 true, i1 %i.fj
  br i1 %or.cond.i6.i.i, label %select.unfold.i.i.i.i.i.preheader.i, label %.loopexit.loopexit.i.i.i

select.unfold.i.i.i.i.i.preheader.i:              ; preds = %bb.k
  %.not.i5.i.i.i.i.i19.i = icmp eq ptr %i.fi, null
  %i.fk = icmp eq ptr %i.fi, %.sroa.6465.0.copyload
  %or.cond.i.i.i.i.i.i20.i = select i1 %.not.i5.i.i.i.i.i19.i, i1 true, i1 %i.fk
  br i1 %or.cond.i.i.i.i.i.i20.i, label %select.unfold.i.i.i.i.i._crit_edge.i, label %.lr.ph.i

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i
  %i.fl = icmp eq ptr %i.fn, %.sroa.6465.0.copyload
  br i1 %i.fl, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %i.fm = phi ptr [ %i.fn, %select.unfold.i.i.i.i.i.i ], [ %i.fi, %select.unfold.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 4 uses
  %i.fo = getelementptr i8, ptr %i.fm, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.fo, align 8, !noalias !27163, !noundef !12 ; 2 uses
  %i.fp = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.fp, label %select.unfold.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i:    ; preds = %select.unfold.i.i.i.i.i.i
  %i.fq = getelementptr i8, ptr %i.fm, i64 8
  %.val.i.i.i.i.i.le54.i = load ptr, ptr %i.fq, align 8, !noalias !27163, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge.i

select.unfold.i.i.i.i.i._crit_edge.i:             ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i, %select.unfold.i.i.i.i.i.preheader.i
  %.lcssa14.i = phi ptr [ %i.fi, %select.unfold.i.i.i.i.i.preheader.i ], [ %i.fn, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.lcssa.i = phi ptr [ %i.fh, %select.unfold.i.i.i.i.i.preheader.i ], [ %.val.i.i.i.i.i.le54.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i16.i.i.i, null
  %i.fr = icmp eq ptr %spec.select.i9.i.i.i16.i.i.i, %.sroa.10469.0.copyload
  %i.fs = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i16.i.i.i, i64 32
  %or.cond33.i.i.i = select i1 %.not.i7.i.i.i.i.i.i, i1 true, i1 %i.fr
  %.pre1679 = load i64, ptr %i.dc, align 8, !noalias !27164 ; 2 uses
  br i1 %or.cond33.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i, label %.loopexit.i.i.i

.loopexit.loopexit.i.i.loopexit.i:                ; preds = %.lr.ph.i
  %i.ft = getelementptr i8, ptr %i.fm, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.ft, align 8, !noalias !27163, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  br label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.loopexit.loopexit.i.i.loopexit.i, %bb.k
  %.lcssa3.i.i = phi ptr [ %i.fh, %bb.k ], [ %i.fu, %.loopexit.loopexit.i.i.loopexit.i ]
  %.lcssa.i.i = phi ptr [ %i.fi, %bb.k ], [ %i.fn, %.loopexit.loopexit.i.i.loopexit.i ]
  %.val.i.i.i10.i.lcssa.i.i = phi ptr [ %.val.i.i.i11.i.i.i, %bb.k ], [ %.val.i.i.i.i.i.le.i, %.loopexit.loopexit.i.i.loopexit.i ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i.i, i64 32
  %.pre = load i64, ptr %i.dc, align 8, !range !19, !alias.scope !27165, !noalias !27156
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i
  %i.fw = phi i64 [ %.pre1679, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.pre, %.loopexit.loopexit.i.i.i ]
  %i.fx = phi ptr [ %.lcssa.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.lcssa3.i.i, %.loopexit.loopexit.i.i.i ]
  %i.fy = phi ptr [ %.lcssa14.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.lcssa.i.i, %.loopexit.loopexit.i.i.i ]
  %spec.select.i9.i.i.i15.i.i.i = phi ptr [ %i.fs, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %spec.select.i9.i.i.i16.i.i.i, %.loopexit.loopexit.i.i.i ]
  %.val.i.i.i8.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %i.fv, %.loopexit.loopexit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i16.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.val.i.i.i10.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ]
  %i.fz = call noundef nonnull align 8 ptr %.sroa.0463.0.copyload(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i) #45, !noalias !27166, !inline_history !26552 ; 2 uses
  %i.ga = add i64 %i.fg, -1                       ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fz, i64 8
  %.val.i.i.i6.i = load ptr, ptr %i.gb, align 8, !noalias !27167, !nonnull !12, !noundef !12
  %i.gc = getelementptr i8, ptr %i.fz, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.gc, align 8, !noalias !27167, !noundef !12
  %i.gd = icmp samesign ult i64 %.sroa.12.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp eq i64 %.sroa.12.0.copyload, %i.fw
  br i1 %i.ge, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.l

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %.loopexit.i.i.i
  %i.gf = call i64 @llvm.uadd.sat.i64(i64 %i.ga, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef %.sroa.12.0.copyload, i64 noundef range(i64 1, 0) %i.gf, i64 noundef 8, i64 noundef 16) #45, !noalias !27168
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !27165, !noalias !27156
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %.loopexit.i.i.i
  %i.gg = phi ptr [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.ff, %.loopexit.i.i.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %.sroa.12.0.copyload ; 2 uses
  store ptr %.val.i.i.i6.i, ptr %i.gh, align 8, !noalias !27169, !captures !39
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 %.val3.i.i.i.i, ptr %i.gi, align 8, !noalias !27169
  %i.gj = add nuw nsw i64 %.sroa.12.0.copyload, 1 ; 2 uses
  store i64 %i.gj, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !27165, !noalias !27156
  br label %bb.k

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %select.unfold.i.i.i.i.i._crit_edge.i
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !27164
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3z_INtNtB1H_6borrow6BorroweE6borrowEE9from_iterCsl8pJiQOn4hA_9coreutils.exit

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3z_INtNtB1H_6borrow6BorroweE6borrowEE9from_iterCsl8pJiQOn4hA_9coreutils.exit: ; preds = %select.unfold.i.i.i.i._crit_edge, %.sink.split.i8.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.12.0 = phi i64 [ %.sroa.12.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ 0, %.sink.split.i8.i.i.i.i ], [ 0, %select.unfold.i.i.i.i._crit_edge ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ inttoptr (i64 8 to ptr), %.sink.split.i8.i.i.i.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i._crit_edge ] ; 6 uses
  %.sroa.0.0 = phi i64 [ %.pre1679, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ 0, %.sink.split.i8.i.i.i.i ], [ 0, %select.unfold.i.i.i.i._crit_edge ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !27156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @_RNvMCs44SRMMtlaHN_9uu_csplitNtB2_13CsplitOptions3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dr) #45
  %i.gk = load i64, ptr %i.dn, align 8, !range !26, !noundef !12 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615, ptr noundef nonnull align 8 dereferenceable(40) %i.gm, i64 40, i1 false)
  br i1 %i.gl, label %bb.n, label %bb.p

bb.m:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #50
  unreachable

bb.n:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3z_INtNtB1H_6borrow6BorroweE6borrowEE9from_iterCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !27170
  %i.gn = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !27170 ; 3 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.o, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #52, !noalias !27170
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gn, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615, i64 40, i1 false)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs44SRMMtlaHN_9uu_csplit13CsplitOptionsECsl8pJiQOn4hA_9coreutils.exit447

bb.p:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3z_INtNtB1H_6borrow6BorroweE6borrowEE9from_iterCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.530.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615, i64 40, i1 false)
  store i64 %i.gk, ptr %i.do, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !12 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !nonnull !12, !noundef !12
  %lhsc = load i8, ptr %i.gt, align 1
  %i.gu = icmp eq i8 %lhsc, 45
  br i1 %i.gu, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.experimental.noalias.scope.decl(metadata !27171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !27172
  store i128 18446745954905227264, ptr %i.db, align 16, !noalias !27172
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %.val.i.i42 = load ptr, ptr %i.gv, align 8, !alias.scope !27171, !nonnull !12, !noundef !12
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.dl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i42, i64 noundef %i.gq) #45, !noalias !27171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !27172
  %.val38 = load ptr, ptr %i.gv, align 8          ; 2 uses
  %.val39 = load i64, ptr %i.gp, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !27173)
  %i.gw = load i32, ptr %i.dl, align 8, !range !31, !alias.scope !27173, !noundef !12
  %i.gx = trunc nuw i32 %i.gw to i1
  br i1 %i.gx, label %bb.s, label %bb.hg

bb.s:                                             ; preds = %bb.r
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !27173, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !noalias !27174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !27175
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38) ]
  store i64 1, ptr %i.da, align 8, !noalias !27175
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %.val38, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !27175
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 %.val39, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !27175
  %i.ha = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i8 1, ptr %i.ha, align 8, !noalias !27175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !27175
  store ptr %i.da, ptr %i.cz, align 8, !noalias !27175
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !27175
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noundef nonnull @747, ptr noundef nonnull %i.cz) #45, !noalias !27174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !27175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !27175
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !27176
  %i.hb = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !27176 ; 4 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.t, label %bb.hf, !prof !15

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !27176
  unreachable

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %i.hd = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #45
  store ptr %i.hd, ptr %i.dm, align 8
  %i.he = call { ptr, i1 } @_RNvMs1_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5Stdin4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm) #45 ; 2 uses
end_hunk_8
begin_hunk_9_@_RINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils:bb.a

bb.cq:                                            ; preds = %bb.cp
  %i.ud = icmp eq i64 %i.uc, 0
  br i1 %i.ud, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread871, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28734
  %i.ue = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.uc, i64 noundef range(i64 1, 9) 1) #45, !noalias !28734 ; 3 uses
  %i.uf = icmp eq ptr %i.ue, null
  br i1 %i.uf, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cp, %bb.cr
  %.sroa.4788.0.ph = phi i64 [ 1, %bb.cr ], [ 0, %bb.cp ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4788.0.ph, i64 %i.uc) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread871: ; preds = %bb.cq, %bb.cv
  %i.ug = phi ptr [ %i.ue, %bb.cv ], [ inttoptr (i64 1 to ptr), %bb.cq ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28735)
  %i.uh = load i64, ptr %i.gh, align 8, !range !13, !alias.scope !28735, !noundef !12 ; 3 uses
  %i.ui = icmp eq i64 %i.uh, -1
  br i1 %i.ui, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit, label %bb.ct

bb.ct:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread871
  call void @llvm.experimental.noalias.scope.decl(metadata !28736)
  call void @llvm.experimental.noalias.scope.decl(metadata !28737)
  %i.uj = icmp eq i64 %i.uh, 0
  br i1 %i.uj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uk = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %.val1.i.i.i446 = load ptr, ptr %i.uk, align 8, !alias.scope !28738, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i446, i64 noundef %i.uh, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28739
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread871, %bb.ct, %bb.cu
  store i64 %i.uc, ptr %i.gh, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  store ptr %i.ug, ptr %.sroa.4209.0..sroa_idx, align 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store i64 %i.uc, ptr %.sroa.5210.0..sroa_idx, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ue, ptr nonnull align 1 %i.ua, i64 %i.uc, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread871

bb.cw:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  %i.ul = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @540, i64 noundef 11) #45
  br i1 %i.ul, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @403, i64 noundef 5) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !28740)
  call void @llvm.experimental.noalias.scope.decl(metadata !28741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr @403, ptr %i.ax, align 8, !noalias !28742
  %i.um = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 5, ptr %i.um, align 8, !noalias !28742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !28742
  %i.un = load i64, ptr %i.cn, align 8, !range !16, !alias.scope !28741, !noundef !12
  %i.uo = trunc nuw i64 %i.un to i1
  %i.up = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  br i1 %i.uo, label %bb.cy, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit449, !prof !18

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.up, i64 40, i1 false), !noalias !28743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !28742
  store ptr %i.ax, ptr %i.av, align 8, !noalias !28742
  %.sroa.42.0..sroa_idx.i447 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i447, align 8, !noalias !28742
  %i.uq = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr %i.uq, align 8, !noalias !28742
  %.sroa.46.0..sroa_idx.i448 = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i448, align 8, !noalias !28742
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !28744
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit449: ; preds = %bb.cx
  %.sroa.0713.0.copyload714 = load ptr, ptr %i.up, align 8, !alias.scope !28744 ; 3 uses
  %.sroa.6715.0..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.sroa.6715.sroa.0.0.copyload = load ptr, ptr %.sroa.6715.0..sroa_idx716, align 8, !alias.scope !28744 ; 5 uses
  %.sroa.6715.sroa.5.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %.sroa.6715.sroa.5.0.copyload = load ptr, ptr %.sroa.6715.sroa.5.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28744 ; 4 uses
  %.sroa.6715.sroa.6.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %.sroa.6715.sroa.6.0.copyload = load ptr, ptr %.sroa.6715.sroa.6.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28744 ; 3 uses
  %.sroa.6715.sroa.7.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %.sroa.6715.sroa.7.0.copyload = load ptr, ptr %.sroa.6715.sroa.7.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28744 ; 3 uses
  %.sroa.6715.sroa.8.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %.sroa.6715.sroa.8.0.copyload = load ptr, ptr %.sroa.6715.sroa.8.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28744 ; 5 uses
  %.sroa.6715.sroa.9.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %.sroa.6715.sroa.9.0.copyload = load ptr, ptr %.sroa.6715.sroa.9.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28744 ; 3 uses
  %.sroa.6715.sroa.10.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %.sroa.6715.sroa.10.0.copyload = load i64, ptr %.sroa.6715.sroa.10.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !28742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %.not377 = icmp eq ptr %.sroa.0713.0.copyload714, null
  br i1 %.not377, label %bb.dl, label %bb.db

bb.cz:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @540, i64 noundef 11) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !28745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr @540, ptr %i.au, align 8, !noalias !28746
  %i.ur = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 11, ptr %i.ur, align 8, !noalias !28746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !28746
  %i.us = load i64, ptr %i.cr, align 8, !range !26, !alias.scope !28745, !noundef !12
  %.not.i450 = icmp eq i64 %i.us, 2
  br i1 %.not.i450, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit453, label %bb.da, !prof !11

bb.da:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cr, i64 40, i1 false), !noalias !28747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !28746
  store ptr %i.au, ptr %i.as, align 8, !noalias !28746
  %.sroa.42.0..sroa_idx.i451 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i451, align 8, !noalias !28746
  %i.ut = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %i.ut, align 8, !noalias !28746
  %.sroa.46.0..sroa_idx.i452 = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i452, align 8, !noalias !28746
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !28745
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit453: ; preds = %bb.cz
  %i.uu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !alias.scope !28745, !align !23, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !28746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %.not378 = icmp eq ptr %i.uv, null
  br i1 %.not378, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit469.thread882, label %bb.dn

bb.db:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !28748
  %.not.i.i.i.i.i14.i = icmp eq ptr %.sroa.6715.sroa.6.0.copyload, null
  %i.uw = icmp eq ptr %.sroa.6715.sroa.6.0.copyload, %.sroa.6715.sroa.7.0.copyload
  %or.cond15.i = select i1 %.not.i.i.i.i.i14.i, i1 true, i1 %i.uw
  br i1 %or.cond15.i, label %select.unfold.i.i.i.i.i.preheader, label %.loopexit.i.i.loopexit.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.db
  %.not.i5.i.i.i.i.i1079 = icmp eq ptr %.sroa.6715.sroa.0.0.copyload, null
  %i.ux = icmp eq ptr %.sroa.6715.sroa.0.0.copyload, %.sroa.6715.sroa.5.0.copyload
  %or.cond.i.i.i.i.i.i1080 = select i1 %.not.i5.i.i.i.i.i1079, i1 true, i1 %i.ux
  br i1 %or.cond.i.i.i.i.i.i1080, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.uy = icmp eq ptr %i.uz, %.sroa.6715.sroa.5.0.copyload
  br i1 %i.uy, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %.sroa.413.0.copyload.i17.i1081 = phi ptr [ %i.uz, %select.unfold.i.i.i.i.i ], [ %.sroa.6715.sroa.0.0.copyload, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload.i17.i1081, i64 24 ; 4 uses
  %i.va = getelementptr i8, ptr %.sroa.413.0.copyload.i17.i1081, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.va, align 8, !noalias !28749, !noundef !12 ; 2 uses
  %i.vb = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.vb, label %select.unfold.i.i.i.i.i, label %.loopexit.i.i.loopexit.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.vc = getelementptr i8, ptr %.sroa.413.0.copyload.i17.i1081, i64 8
  %.val.i.i.i.i.i.le1413 = load ptr, ptr %i.vc, align 8, !noalias !28749, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.sroa.413.0.copyload.i17.i.lcssa = phi ptr [ %.sroa.6715.sroa.0.0.copyload, %select.unfold.i.i.i.i.i.preheader ], [ %i.uz, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.sroa.716.0.copyload.i16.i.lcssa = phi ptr [ %.sroa.6715.sroa.7.0.copyload, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.le1413, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %.sroa.6715.sroa.8.0.copyload, null
  br i1 %.not.i7.i.i.i.i.i, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit, label %.sink.split.i8.i.i.i.i.i

.sink.split.i8.i.i.i.i.i:                         ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6715.sroa.9.0.copyload) ]
  %i.vd = icmp eq ptr %.sroa.6715.sroa.8.0.copyload, %.sroa.6715.sroa.9.0.copyload
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.6715.sroa.8.0.copyload, i64 32
  br i1 %i.vd, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i.i.i

.loopexit.i.i.loopexit.i.loopexit:                ; preds = %.lr.ph
  %i.vf = getelementptr i8, ptr %.sroa.413.0.copyload.i17.i1081, i64 8
  %.val.i.i.i.i.i.le = load ptr, ptr %i.vf, align 8, !noalias !28749, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.vg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.i.i.loopexit.i

.loopexit.i.i.loopexit.i:                         ; preds = %.loopexit.i.i.loopexit.i.loopexit, %bb.db
  %spec.select.i18.i.i.i.i.lcssa13.i = phi ptr [ %.sroa.6715.sroa.6.0.copyload, %bb.db ], [ %.val.i.i.i.i.i.le, %.loopexit.i.i.loopexit.i.loopexit ] ; 2 uses
  %.sroa.716.0.copyload.i.lcssa.i = phi ptr [ %.sroa.6715.sroa.7.0.copyload, %bb.db ], [ %i.vg, %.loopexit.i.i.loopexit.i.loopexit ]
  %.sroa.413.0.copyload.i.lcssa.i = phi ptr [ %.sroa.6715.sroa.0.0.copyload, %bb.db ], [ %i.uz, %.loopexit.i.i.loopexit.i.loopexit ]
  %i.vh = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa13.i, i64 32
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.loopexit.i, %.sink.split.i8.i.i.i.i.i
  %.sroa.716.0.copyload.i12.i = phi ptr [ %.sroa.716.0.copyload.i16.i.lcssa, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.716.0.copyload.i.lcssa.i, %.loopexit.i.i.loopexit.i ]
  %.sroa.413.0.copyload.i10.i = phi ptr [ %.sroa.413.0.copyload.i17.i.lcssa, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.413.0.copyload.i.lcssa.i, %.loopexit.i.i.loopexit.i ]
  %.sroa.12.0.i = phi ptr [ %i.ve, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.6715.sroa.8.0.copyload, %.loopexit.i.i.loopexit.i ]
  %.sroa.6.0.copyload.i.i = phi ptr [ null, %.sink.split.i8.i.i.i.i.i ], [ %i.vh, %.loopexit.i.i.loopexit.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.6715.sroa.8.0.copyload, %.sink.split.i8.i.i.i.i.i ], [ %spec.select.i18.i.i.i.i.lcssa13.i, %.loopexit.i.i.loopexit.i ]
  %i.vi = call noundef nonnull align 8 ptr %.sroa.0713.0.copyload714(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i) #45, !noalias !28750, !inline_history !28283 ; 2 uses
  %i.vj = add i64 %.sroa.6715.sroa.10.0.copyload, -1 ; 3 uses
  %i.vk = getelementptr i8, ptr %i.vi, i64 8
  %.val.i.i.i459 = load ptr, ptr %i.vk, align 8, !noalias !28751, !nonnull !12, !noundef !12
  %i.vl = getelementptr i8, ptr %i.vi, i64 16
  %.val2.i.i.i = load i64, ptr %i.vl, align 8, !noalias !28751, !noundef !12 ; 7 uses
  %i.vm = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.vm, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i, label %bb.dc

bb.dc:                                            ; preds = %.loopexit.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28752
  %i.vn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !28752 ; 3 uses
  %i.vo = icmp eq ptr %i.vn, null
  br i1 %i.vo, label %bb.dd, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.dd:                                            ; preds = %bb.dc
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i) #52, !noalias !28753
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vn, ptr nonnull readonly align 1 %.val.i.i.i459, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i, i1 false), !noalias !28754
  %.not.i.i460 = icmp eq i64 %.val2.i.i.i, -1
  br i1 %.not.i.i460, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %.loopexit.i.i.i
  %.sroa.7.028.i.i = phi ptr [ %i.vn, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 1 to ptr), %.loopexit.i.i.i ]
  %i.vp = call i64 @llvm.uadd.sat.i64(i64 %i.vj, i64 1)
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.vp, i64 4) ; 3 uses
  %i.vq = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i461 = icmp ugt i64 %i.vj, 384307168202282324
  br i1 %or.cond.i.i.i.i461, label %bb.dg, label %bb.de, !prof !27

bb.de:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i
  %i.vr = icmp eq i64 %i.vq, 0
  br i1 %i.vr, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28755
  %i.vs = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.vq, i64 noundef range(i64 1, 9) 8) #45, !noalias !28755 ; 2 uses
  %i.vt = icmp eq ptr %i.vs, null
  br i1 %i.vt, label %bb.dg, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.dg:                                            ; preds = %bb.df, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.df ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.vq) #52, !noalias !28748
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.df, %bb.de
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.de ], [ %i.vs, %bb.df ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.de ], [ %..i.i.i, %bb.df ] ; 2 uses
  %i.vu = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.vu)
  store i64 %.val2.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !28748
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store ptr %.sroa.7.028.i.i, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !28748
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store i64 %.val2.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !28748
  store i64 %.sroa.4.0.i.i.i, ptr %i.ar, align 8, !noalias !28748
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !28748
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !28748
  call void @llvm.experimental.noalias.scope.decl(metadata !28756)
  call void @llvm.experimental.noalias.scope.decl(metadata !28757)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dk, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.vv = phi ptr [ %i.wz, %bb.dk ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.6823.0.copyload825 = phi i64 [ %i.xb, %bb.dk ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 6 uses
  %i.vw = phi i64 [ %i.wp, %bb.dk ], [ %i.vj, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %spec.select.i9.i.i.i32.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i31.i.i.i.i, %bb.dk ], [ %.sroa.12.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %i.vx = phi ptr [ %i.wm, %bb.dk ], [ %.sroa.716.0.copyload.i12.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %i.vy = phi ptr [ %i.wn, %bb.dk ], [ %.sroa.413.0.copyload.i10.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.val.i.i.i24.i.i.i.i = phi ptr [ %.val.i.i.i21.i.i.i.i, %bb.dk ], [ %.sroa.6.0.copyload.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.not.i.i.i.i.i5.i.i.i = icmp eq ptr %.val.i.i.i24.i.i.i.i, null
  %i.vz = icmp eq ptr %.val.i.i.i24.i.i.i.i, %i.vx
  %or.cond.i6.i.i.i = select i1 %.not.i.i.i.i.i5.i.i.i, i1 true, i1 %i.vz
  br i1 %or.cond.i6.i.i.i, label %select.unfold.i.i.i.i.i.preheader.i.i, label %.loopexit.i.loopexit.i.i.i.i

select.unfold.i.i.i.i.i.preheader.i.i:            ; preds = %bb.dh
  %.not.i5.i.i.i.i.i36.i.i = icmp eq ptr %i.vy, null
  %i.wa = icmp eq ptr %i.vy, %.sroa.6715.sroa.5.0.copyload
  %or.cond.i.i.i.i.i.i37.i.i = select i1 %.not.i5.i.i.i.i.i36.i.i, i1 true, i1 %i.wa
  br i1 %or.cond.i.i.i.i.i.i37.i.i, label %select.unfold.i.i.i.i.i._crit_edge.i.i, label %.lr.ph.i.i

select.unfold.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i
  %i.wb = icmp eq ptr %i.wd, %.sroa.6715.sroa.5.0.copyload
  br i1 %i.wb, label %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i.i.i.i.preheader.i.i, %select.unfold.i.i.i.i.i.i.i
  %i.wc = phi ptr [ %i.wd, %select.unfold.i.i.i.i.i.i.i ], [ %i.vy, %select.unfold.i.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 24 ; 4 uses
  %i.we = getelementptr i8, ptr %i.wc, i64 16
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.we, align 8, !noalias !28758, !noundef !12 ; 2 uses
  %i.wf = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.wf, label %select.unfold.i.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.loopexit.i.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i:  ; preds = %select.unfold.i.i.i.i.i.i.i
  %i.wg = getelementptr i8, ptr %i.wc, i64 8
  %.val.i.i.i.i.i.le73.i.i = load ptr, ptr %i.wg, align 8, !noalias !28758, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge.i.i

select.unfold.i.i.i.i.i._crit_edge.i.i:           ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i, %select.unfold.i.i.i.i.i.preheader.i.i
  %.lcssa31.i.i = phi ptr [ %i.vy, %select.unfold.i.i.i.i.i.preheader.i.i ], [ %i.wd, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi ptr [ %i.vx, %select.unfold.i.i.i.i.i.preheader.i.i ], [ %.val.i.i.i.i.i.le73.i.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i.i ]
  %.not.i7.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i32.i.i.i.i, null
  %i.wh = icmp eq ptr %spec.select.i9.i.i.i32.i.i.i.i, %.sroa.6715.sroa.9.0.copyload
  %i.wi = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i32.i.i.i.i, i64 32
  %or.cond47.i.i.i.i = select i1 %.not.i7.i.i.i.i.i.i.i, i1 true, i1 %i.wh
  br i1 %or.cond47.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtNtB6_6borrow7ToOwned8to_ownedEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.loopexit.i.i.loopexit.i.i:            ; preds = %.lr.ph.i.i
  %i.wj = getelementptr i8, ptr %i.wc, i64 8
  %.val.i.i.i.i.i.le.i.i = load ptr, ptr %i.wj, align 8, !noalias !28758, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le.i.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i.i, 5
  %i.wk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i.i, i64 %.idx.i.le.i.i
  br label %.loopexit.i.loopexit.i.i.i.i

.loopexit.i.loopexit.i.i.i.i:                     ; preds = %.loopexit.i.loopexit.i.i.loopexit.i.i, %bb.dh
  %.lcssa3.i.i.i = phi ptr [ %i.vx, %bb.dh ], [ %i.wk, %.loopexit.i.loopexit.i.i.loopexit.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.vy, %bb.dh ], [ %i.wd, %.loopexit.i.loopexit.i.i.loopexit.i.i ]
  %.val.i.i.i23.i.lcssa.i.i.i = phi ptr [ %.val.i.i.i24.i.i.i.i, %bb.dh ], [ %.val.i.i.i.i.i.le.i.i, %.loopexit.i.loopexit.i.i.loopexit.i.i ] ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.val.i.i.i23.i.lcssa.i.i.i, i64 32
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.loopexit.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i
  %i.wm = phi ptr [ %.lcssa.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.lcssa3.i.i.i, %.loopexit.i.loopexit.i.i.i.i ]
  %i.wn = phi ptr [ %.lcssa31.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.lcssa.i.i.i, %.loopexit.i.loopexit.i.i.i.i ]
  %spec.select.i9.i.i.i31.i.i.i.i = phi ptr [ %i.wi, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %spec.select.i9.i.i.i32.i.i.i.i, %.loopexit.i.loopexit.i.i.i.i ]
  %.val.i.i.i21.i.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %i.wl, %.loopexit.i.loopexit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i462 = phi ptr [ %spec.select.i9.i.i.i32.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i ], [ %.val.i.i.i23.i.lcssa.i.i.i, %.loopexit.i.loopexit.i.i.i.i ]
  %i.wo = call noundef nonnull align 8 ptr %.sroa.0713.0.copyload714(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i462) #45, !noalias !28759, !inline_history !28312 ; 2 uses
  %i.wp = add i64 %i.vw, -1                       ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wo, i64 8
  %.val.i.i.i2.i.i = load ptr, ptr %i.wq, align 8, !noalias !28760, !nonnull !12, !noundef !12
  %i.wr = getelementptr i8, ptr %i.wo, i64 16
  %.val2.i.i.i.i.i = load i64, ptr %i.wr, align 8, !noalias !28760, !noundef !12 ; 7 uses
  %i.ws = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ws, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28761
  %i.wt = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !28761 ; 3 uses
  %i.wu = icmp eq ptr %i.wt, null
  br i1 %i.wu, label %bb.dj, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i) #52, !noalias !28762
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wt, ptr nonnull readonly align 1 %.val.i.i.i2.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i1 false), !noalias !28763
  %.not.i.i3.i.i = icmp eq i64 %.val2.i.i.i.i.i, -1
  br i1 %.not.i.i3.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtNtB6_6borrow7ToOwned8to_ownedEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.7.018.i.i.i.i = phi ptr [ %i.wt, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %.loopexit.i.i.i.i.i ]
  %i.wv = icmp samesign ult i64 %.sroa.6823.0.copyload825, 384307168202282326
  call void @llvm.assume(i1 %i.wv)
  %i.ww = load i64, ptr %i.ar, align 8, !range !19, !alias.scope !28764, !noalias !28748, !noundef !12
  %i.wx = icmp eq i64 %.sroa.6823.0.copyload825, %i.ww
  br i1 %i.wx, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.dk

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i
  %i.wy = call i64 @llvm.uadd.sat.i64(i64 %i.wp, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %.sroa.6823.0.copyload825, i64 noundef %i.wy, i64 noundef 8, i64 noundef 24) #45, !noalias !28765
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !28764, !noalias !28748
  br label %bb.dk

bb.dk:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i
  %i.wz = phi ptr [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.vv, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i.i.i ] ; 2 uses
  %i.xa = getelementptr inbounds nuw [24 x i8], ptr %i.wz, i64 %.sroa.6823.0.copyload825 ; 3 uses
  store i64 %.val2.i.i.i.i.i, ptr %i.xa, align 8, !noalias !28766
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  store ptr %.sroa.7.018.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !28766
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !28766
  %i.xb = add nuw nsw i64 %.sroa.6823.0.copyload825, 1 ; 2 uses
  store i64 %i.xb, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !28764, !noalias !28748
  br label %bb.dh

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtNtB6_6borrow7ToOwned8to_ownedEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i.i
  %.sroa.0818.0.copyload819 = load i64, ptr %i.ar, align 8, !noalias !28767
  %.sroa.5820.0.copyload822 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !28767
  br label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit

_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit: ; preds = %select.unfold.i.i.i.i.i._crit_edge, %.sink.split.i8.i.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtNtB6_6borrow7ToOwned8to_ownedEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.0818.0 = phi i64 [ %.sroa.0818.0.copyload819, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtNtB6_6borrow7ToOwned8to_ownedEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ 0, %.sink.split.i8.i.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i._crit_edge ]
  %.sroa.5820.0 = phi ptr [ %.sroa.5820.0.copyload822, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtNtB6_6borrow7ToOwned8to_ownedEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 8 to ptr), %.sink.split.i8.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i.i._crit_edge ]
  %.sroa.6823.0 = phi i64 [ %.sroa.6823.0.copyload825, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_ENvYBR_NtNtB6_6borrow7ToOwned8to_ownedEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB29_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ 0, %.sink.split.i8.i.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !28748
  store i64 %.sroa.0818.0, ptr %i.fe, align 8
  %.sroa.4827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %.sroa.5820.0, ptr %.sroa.4827.0..sroa_idx, align 8
  %.sroa.5828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i64 %.sroa.6823.0, ptr %.sroa.5828.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit505

bb.dl:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit449
  store i64 0, ptr %i.fe, align 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.xc, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i64 0, ptr %i.xd, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit505

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit505: ; preds = %bb.fk, %bb.fj, %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs0_0Csl8pJiQOn4hA_9coreutils.exit, %bb.dl
  %i.xe = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @581, i64 noundef 18) #45
  %i.xf = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @582, i64 noundef 10) #45
  %i.xg = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 20) #45
  %i.xh = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @584, i64 noundef 12) #45 ; 7 uses
  %i.xi = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @585, i64 noundef 12) #45
  %i.xj = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 11) #45
  %i.xk = zext i1 %i.xg to i8                     ; 8 uses
  %i.xl = zext i1 %i.xe to i8                     ; 8 uses
  %i.xm = zext i1 %i.xf to i8                     ; 8 uses
  %i.xn = zext i1 %i.xi to i8                     ; 8 uses
  %i.xo = zext i1 %i.xj to i8                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @587, i64 noundef 4) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !28768)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr @587, ptr %i.aq, align 8, !noalias !28769
  %i.xp = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 4, ptr %i.xp, align 8, !noalias !28769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !28769
  %i.xq = load i64, ptr %i.cm, align 8, !range !26, !alias.scope !28768, !noundef !12
  %.not.i463 = icmp eq i64 %i.xq, 2
  br i1 %.not.i463, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit, label %bb.dm, !prof !11

end_hunk_9
begin_hunk_10_@_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_4skip4SkipINtNtB2_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB2_6cloned6ClonedINtNtNtB6_5slice4iter4IterB2D_EEEENvCsh036I4OHgIr_6uucore16os_string_to_vecEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtB1W_5boxed3BoxDNtNtNtB4i_4mods5error6UErrorEL_EEENtNtNtB4_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils:bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i7.i.i.i.i, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #45, !noalias !34726
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %bb.o
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !34703, !noalias !34725
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ai, align 8, !alias.scope !34703, !noalias !34725
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i: ; preds = %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i
  %i.aq = inttoptr i64 %.val5.i.i.i.i.i.i to ptr
  br label %.loopexit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34727
  %i.ar = add i64 %i.e, -1
  call fastcc void @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB1N_EEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b, i64 noundef %i.ar) #51, !noalias !34728
  %i.as = load i64, ptr %i.a, align 8, !range !13, !noalias !34727, !noundef !12 ; 2 uses
  switch i64 %i.as, label %bb.t [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit8.i.i.i
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  ]

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val5.i.i.i = load ptr, ptr %i.at, align 8, !noalias !34727, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !34729
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34727
  br label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit8.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34727
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit

.loopexit:                                        ; preds = %bb.d, %bb.l, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i
  %.sroa.10.0 = phi ptr [ null, %bb.l ], [ %i.aq, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i ], [ %.sroa.610.0.copyload.i.i.i.i.i, %bb.d ]
  %.sroa.8.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.ag, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i, %bb.d ]
  %.sroa.0.0 = phi i64 [ 0, %bb.l ], [ %.val5.i.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i ], [ %.sroa.08.0.copyload.i.i.i.i.i, %bb.d ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit
  ret void

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtB4_9try_trait3Try6branchCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtBb_6result6ResultINtNtCs7tKScEop1B6_5alloc3vec3VechEINtNtB2H_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuINtNtB9_12control_flow11ControlFlowIB4l_B2C_EENvB3B_16os_string_to_vecNCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_4skip4SkipINtNtBV_5chain5ChainINtNtB2F_9into_iter8IntoIterB1y_EINtNtBV_6cloned6ClonedINtNtNtBb_5slice4iter4IterB1y_EEEEB54_EIB2h_NtNtBb_7convert10InfallibleB3b_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4callB2C_B4T_NcNtB4T_5Break0E0B4T_E0E0INtB7_5FnMutTuB1y_EE8call_mutCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit8.i.i.i, %bb.i
  store i64 -1, ptr %0, align 8
  br label %bb.u
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBU_ENCNvXs_CsczSSEuChxEj_8clap_lexNtB3q_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34768)
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b                   ; 4 uses
  %i.d = udiv exact i64 %i.c, 24                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %.not.i.i.i, label %bb.d, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %2, %1
  br i1 %i.e, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterB13_ENCNvXs_CsczSSEuChxEj_8clap_lexNtB3H_7RawArgsINtNtB2p_7convert4FromB34_E4from0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34769
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, 9) 8) #45, !noalias !34769 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.preheader.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c) #52, !noalias !34768
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.c, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.h = phi i64 [ %i.p, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !34770, !noalias !34771, !nonnull !12, !noundef !12
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !34770, !noalias !34771, !noundef !12 ; 6 uses
  %i.l = icmp eq i64 %.val12.i.i.i.i.i.i, 0
  br i1 %i.l, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34772
  %i.m = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !34772 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i) #52, !noalias !34773
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i, i1 false), !noalias !34774
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.g, %.preheader.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %bb.g ], [ inttoptr (i64 1 to ptr), %.preheader.i.i.i ]
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h ; 3 uses
  store i64 %.val12.i.i.i.i.i.i, ptr %i.o, align 8, !noalias !34775
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34775
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.val12.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34775
  %i.p = add i64 %i.h, 1                          ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.d
  br i1 %i.q, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterB13_ENCNvXs_CsczSSEuChxEj_8clap_lexNtB3H_7RawArgsINtNtB2p_7convert4FromB34_E4from0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterB13_ENCNvXs_CsczSSEuChxEj_8clap_lexNtB3H_7RawArgsINtNtB2p_7convert4FromB34_E4from0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %bb.b
  %.sroa.4.0.i13.i = phi i64 [ 0, %bb.b ], [ %i.d, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i12.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.f, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ]
  store i64 %.sroa.4.0.i13.i, ptr %0, align 8, !alias.scope !34768
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i12.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !34768
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i13.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !34768
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB15_3ffi6os_str8OsStringENvYB11_INtNtB2e_7convert4FromRB46_E4fromEE9from_iterCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34831)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34832)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !34833
  %.promoted19.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !34833
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !34833 ; 3 uses
  %.promoted20.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !34833
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.716.0.copyload = phi ptr [ %i.m, %bb.c ], [ %.promoted20.i.i.i, %bb.a ] ; 2 uses
  %.sroa.413.0.copyload = phi ptr [ %i.j, %bb.c ], [ %.promoted19.i.i.i, %bb.a ] ; 6 uses
  %spec.select.i18.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %spec.select.i18.i.i.i, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %i.g = icmp eq ptr %spec.select.i18.i.i.i, %.sroa.716.0.copyload ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i, i64 32 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.g, ptr null, ptr %i.h
  store ptr %spec.select.i.i.i.i, ptr %i.c, align 8, !alias.scope !34834
  br i1 %i.g, label %select.unfold.i.i.i, label %.loopexit.i

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.b
  %.not.i5.i.i.i = icmp eq ptr %.sroa.413.0.copyload, null
  %i.i = icmp eq ptr %.sroa.413.0.copyload, %i.f
  %or.cond.i.i.i.i = select i1 %.not.i5.i.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !34835
  %i.k = getelementptr i8, ptr %.sroa.413.0.copyload, i64 8
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !noalias !34836, !nonnull !12, !noundef !12 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.413.0.copyload, i64 16
  %.val4.i.i.i = load i64, ptr %i.l, align 8, !noalias !34836, !noundef !12
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.val4.i.i.i ; 2 uses
  store ptr %.val.i.i.i, ptr %i.c, align 8, !alias.scope !34833
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !34833
  br label %bb.b

bb.d:                                             ; preds = %select.unfold.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !34837, !noundef !12 ; 4 uses
  %.not.i7.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i7.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !34838, !nonnull !12, !noundef !12
  %i.r = icmp eq ptr %i.o, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %spec.select.i9.i.i.i = select i1 %i.r, ptr null, ptr %i.s
  store ptr %spec.select.i9.i.i.i, ptr %i.n, align 8, !alias.scope !34837
  br i1 %i.r, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.loopexit.i

.loopexit.i:                                      ; preds = %.sink.split.i.i.i.i, %.sink.split.i8.i.i.i
  %.sroa.6.0.copyload = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.h, %.sink.split.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.o, %.sink.split.i8.i.i.i ], [ %spec.select.i18.i.i.i, %.sink.split.i.i.i.i ]
  %i.t = load ptr, ptr %1, align 8, !alias.scope !34839, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !34840, !inline_history !34795 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !34839, !noundef !12
  %i.x = add i64 %i.w, -1                         ; 4 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !34839
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.y, align 8, !noalias !34841, !nonnull !12, !noundef !12
  %i.z = getelementptr i8, ptr %i.u, i64 16
  %.val2.i = load i64, ptr %i.z, align 8, !noalias !34841, !noundef !12 ; 7 uses
  %i.aa = icmp eq i64 %.val2.i, 0
  br i1 %i.aa, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22, label %bb.e

bb.e:                                             ; preds = %.loopexit.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34842
  %i.ab = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !34842 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i) #52, !noalias !34843
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val2.i, i1 false), !noalias !34844
  %.not = icmp eq i64 %.val2.i, -1
  br i1 %.not, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22: ; preds = %.loopexit.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.7.028 = phi ptr [ %i.ab, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ inttoptr (i64 1 to ptr), %.loopexit.i ]
  %i.ad = tail call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 4) ; 3 uses
  %i.ae = mul i64 %..i, 24                        ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.x, 384307168202282324
  br i1 %or.cond.i.i, label %bb.i, label %bb.g, !prof !27

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34845
  %i.ag = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 9) 8) #45, !noalias !34845 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit

bb.i:                                             ; preds = %bb.h, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.h ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22 ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ae) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.h, %bb.g
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %i.ag, %bb.h ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.g ], [ %..i, %bb.h ] ; 2 uses
  %i.ai = icmp ule i64 %..i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.ai)
  store i64 %.val2.i, ptr %.sroa.10.0.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 8
  store ptr %.sroa.7.028, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 16
  store i64 %.val2.i, ptr %.sroa.511.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.817.0.copyload = load ptr, ptr %.sroa.817.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34847)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit
  %i.aj = phi ptr [ %i.bo, %bb.m ], [ %.sroa.10.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %i.ak = phi i64 [ %i.bq, %bb.m ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.al = phi i64 [ %i.be, %bb.m ], [ %i.x, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %spec.select.i9.i.i.i32.i.i = phi ptr [ %spec.select.i9.i.i.i31.i.i, %bb.m ], [ %.sroa.817.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.am = phi ptr [ %i.bb, %bb.m ], [ %.sroa.716.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %i.an = phi ptr [ %i.bc, %bb.m ], [ %.sroa.413.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %.val.i.i.i24.i.i = phi ptr [ %.val.i.i.i21.i.i, %bb.m ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %.not.i.i.i.i.i5.i = icmp eq ptr %.val.i.i.i24.i.i, null
  %i.ao = icmp eq ptr %.val.i.i.i24.i.i, %i.am
  %or.cond.i6.i = select i1 %.not.i.i.i.i.i5.i, i1 true, i1 %i.ao
  br i1 %or.cond.i6.i, label %select.unfold.i.i.i.i.i.preheader, label %.loopexit.i.loopexit.i.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.j
  %.not.i5.i.i.i.i.i36 = icmp eq ptr %i.an, null
  %i.ap = icmp eq ptr %i.an, %i.f
  %or.cond.i.i.i.i.i.i37 = select i1 %.not.i5.i.i.i.i.i36, i1 true, i1 %i.ap
  br i1 %or.cond.i.i.i.i.i.i37, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.aq = icmp eq ptr %i.as, %i.f
  br i1 %i.aq, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %i.ar = phi ptr [ %i.as, %select.unfold.i.i.i.i.i ], [ %i.an, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 4 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !34848, !noundef !12 ; 2 uses
  %i.au = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.au, label %select.unfold.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  %.val.i.i.i.i.i.le73 = load ptr, ptr %i.av, align 8, !noalias !34848, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.lcssa31 = phi ptr [ %i.an, %select.unfold.i.i.i.i.i.preheader ], [ %i.as, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.am, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.le73, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i32.i.i, null
  %i.aw = icmp eq ptr %spec.select.i9.i.i.i32.i.i, %.sroa.9.0.copyload
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i32.i.i, i64 32
  %or.cond47.i.i = select i1 %.not.i7.i.i.i.i.i, i1 true, i1 %i.aw
  br i1 %or.cond47.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtBV_3ffi6os_str8OsStringENvYBR_INtNtB1V_7convert4FromRB3N_E4fromEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i.i.i

.loopexit.i.loopexit.i.i.loopexit:                ; preds = %.lr.ph
  %i.ay = getelementptr i8, ptr %i.ar, i64 8
  %.val.i.i.i.i.i.le = load ptr, ptr %i.ay, align 8, !noalias !34848, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.i.loopexit.i.i

.loopexit.i.loopexit.i.i:                         ; preds = %.loopexit.i.loopexit.i.i.loopexit, %bb.j
  %.lcssa3.i = phi ptr [ %i.am, %bb.j ], [ %i.az, %.loopexit.i.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.an, %bb.j ], [ %i.as, %.loopexit.i.loopexit.i.i.loopexit ]
  %.val.i.i.i23.i.lcssa.i = phi ptr [ %.val.i.i.i24.i.i, %bb.j ], [ %.val.i.i.i.i.i.le, %.loopexit.i.loopexit.i.i.loopexit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i23.i.lcssa.i, i64 32
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.loopexit.i.i, %select.unfold.i.i.i.i.i._crit_edge
  %i.bb = phi ptr [ %.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa3.i, %.loopexit.i.loopexit.i.i ]
  %i.bc = phi ptr [ %.lcssa31, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa.i, %.loopexit.i.loopexit.i.i ]
  %spec.select.i9.i.i.i31.i.i = phi ptr [ %i.ax, %select.unfold.i.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i.i32.i.i, %.loopexit.i.loopexit.i.i ]
  %.val.i.i.i21.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ %i.ba, %.loopexit.i.loopexit.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i32.i.i, %select.unfold.i.i.i.i.i._crit_edge ], [ %.val.i.i.i23.i.lcssa.i, %.loopexit.i.loopexit.i.i ]
  %i.bd = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i) #45, !noalias !34849, !inline_history !34820 ; 2 uses
  %i.be = add i64 %i.al, -1                       ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val.i.i.i2 = load ptr, ptr %i.bf, align 8, !noalias !34850, !nonnull !12, !noundef !12
  %i.bg = getelementptr i8, ptr %i.bd, i64 16
  %.val2.i.i.i = load i64, ptr %i.bg, align 8, !noalias !34850, !noundef !12 ; 7 uses
  %i.bh = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bh, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34851
  %i.bi = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !34851 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.l, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i) #52, !noalias !34852
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 1 %.val.i.i.i2, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i, i1 false), !noalias !34853
  %.not.i.i3 = icmp eq i64 %.val2.i.i.i, -1
  br i1 %.not.i.i3, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtBV_3ffi6os_str8OsStringENvYBR_INtNtB1V_7convert4FromRB3N_E4fromEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %.loopexit.i.i.i
  %.sroa.7.018.i.i = phi ptr [ %i.bi, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 1 to ptr), %.loopexit.i.i.i ]
  %i.bk = icmp samesign ult i64 %i.ak, 384307168202282326
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %i.a, align 8, !range !19, !alias.scope !34854, !noundef !12
  %i.bm = icmp eq i64 %i.ak, %i.bl
  br i1 %i.bm, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.m

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i
  %i.bn = tail call i64 @llvm.uadd.sat.i64(i64 %i.be, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %i.bn, i64 noundef 8, i64 noundef 24) #45, !noalias !34855
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !34854
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i
  %i.bo = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.aj, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread12.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.ak ; 3 uses
  store i64 %.val2.i.i.i, ptr %i.bp, align 8, !noalias !34856
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %.sroa.7.018.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !34856
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %.val2.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !34856
  %i.bq = add nuw nsw i64 %i.ak, 1                ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !34854
  br label %bb.j

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtBV_3ffi6os_str8OsStringENvYBR_INtNtB1V_7convert4FromRB3N_E4fromEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %select.unfold.i.i.i.i.i._crit_edge, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.n

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.d, %.sink.split.i8.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit
  store i64 0, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bs, align 8
  br label %bb.n

bb.n:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtBV_3ffi6os_str8OsStringENvYBR_INtNtB1V_7convert4FromRB3N_E4fromEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %1) #45
  %i.c = load i64, ptr %i.a, align 8, !range !13, !noundef !12
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.d, align 8, !noundef !12 ; 3 uses
  %i.e = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.e, i64 4) ; 3 uses
  %i.f = mul i64 %..i, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %.val, 384307168202282324
  br i1 %or.cond.i.i, label %bb.e, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34898
  %i.h = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, 9) 8) #45, !noalias !34898 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.f) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.c ], [ %..i, %bb.d ] ; 3 uses
  %i.j = icmp ule i64 %..i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.027.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.529.0.copyload = load ptr, ptr %.sroa.529.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 3 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8 ; 3 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8 ; 5 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.25.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34900)
  %.not.i.i.i.i7115 = icmp eq ptr %.sroa.11.0.copyload, null
  %i.k = icmp eq ptr %.sroa.11.0.copyload, %.sroa.17.0.copyload
  %or.cond116 = select i1 %.not.i.i.i.i7115, i1 true, i1 %i.k
  br i1 %or.cond116, label %select.unfold.i.i.i18, label %.loopexit.i10.loopexit

select.unfold.i.i.i18:                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit, %bb.f
  %.sroa.529.2118 = phi ptr [ %i.m, %bb.f ], [ %.sroa.529.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 6 uses
  %.sroa.17.2117 = phi ptr [ %i.p, %bb.f ], [ %.sroa.17.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %.not.i5.i.i.i19 = icmp eq ptr %.sroa.529.2118, null
  %i.l = icmp eq ptr %.sroa.529.2118, %.sroa.9.0.copyload
  %or.cond.i.i.i.i20 = select i1 %.not.i5.i.i.i19, i1 true, i1 %i.l
  br i1 %or.cond.i.i.i.i20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i.i18
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.529.2118, i64 24 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.529.2118, i64 8
  %.val.i.i.i21 = load ptr, ptr %i.n, align 8, !noalias !34901, !nonnull !12, !noundef !12 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.529.2118, i64 16
  %.val4.i.i.i22 = load i64, ptr %i.o, align 8, !noalias !34901, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %.val4.i.i.i22, 5
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i21, i64 %.idx ; 2 uses
  %i.q = icmp eq i64 %.val4.i.i.i22, 0
  br i1 %i.q, label %select.unfold.i.i.i18, label %.loopexit.i10.loopexit

bb.g:                                             ; preds = %select.unfold.i.i.i18
  %.not.i7.i.i.i23 = icmp eq ptr %.sroa.21.0.copyload, null
  br i1 %.not.i7.i.i.i23, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.sink.split.i8.i.i.i24

.sink.split.i8.i.i.i24:                           ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.r = icmp eq ptr %.sroa.21.0.copyload, %.sroa.25.0.copyload
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload, i64 32
  br i1 %i.r, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i10

.loopexit.i10.loopexit:                           ; preds = %bb.f, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.17.2.lcssa = phi ptr [ %.sroa.17.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ], [ %i.p, %bb.f ]
  %.sroa.11.5.lcssa = phi ptr [ %.sroa.11.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ], [ %.val.i.i.i21, %bb.f ] ; 2 uses
  %.sroa.529.2.lcssa = phi ptr [ %.sroa.529.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ], [ %i.m, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.11.5.lcssa, i64 32
  br label %.loopexit.i10

.loopexit.i10:                                    ; preds = %.loopexit.i10.loopexit, %.sink.split.i8.i.i.i24
  %.sroa.17.2114 = phi ptr [ %.sroa.17.2117, %.sink.split.i8.i.i.i24 ], [ %.sroa.17.2.lcssa, %.loopexit.i10.loopexit ]
  %.sroa.529.2111 = phi ptr [ %.sroa.529.2118, %.sink.split.i8.i.i.i24 ], [ %.sroa.529.2.lcssa, %.loopexit.i10.loopexit ]
  %.sroa.21.4 = phi ptr [ %i.s, %.sink.split.i8.i.i.i24 ], [ %.sroa.21.0.copyload, %.loopexit.i10.loopexit ]
  %.sroa.11.6 = phi ptr [ null, %.sink.split.i8.i.i.i24 ], [ %i.t, %.loopexit.i10.loopexit ]
  %.sroa.0.0.i.i.i11 = phi ptr [ %.sroa.21.0.copyload, %.sink.split.i8.i.i.i24 ], [ %.sroa.11.5.lcssa, %.loopexit.i10.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.027.0.copyload) ]
  %i.u = tail call noundef nonnull align 8 ptr %.sroa.027.0.copyload(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i11) #45, !noalias !34902, !inline_history !34870 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val.i12 = load ptr, ptr %i.v, align 8, !noalias !34903, !nonnull !12, !noundef !12
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %.val2.i13 = load i64, ptr %i.w, align 8, !noalias !34903, !noundef !12 ; 6 uses
  %i.x = icmp eq i64 %.val2.i13, 0
  br i1 %i.x, label %.lr.ph.i.i.preheader, label %bb.h

bb.h:                                             ; preds = %.loopexit.i10
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34904
  %i.y = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i13, i64 noundef range(i64 1, 9) 1) #45, !noalias !34904 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit26

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i13) #52, !noalias !34905
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit26: ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %.val.i12, i64 range(i64 0, -9223372036854775808) %.val2.i13, i1 false), !noalias !34906
  %.not1.i.i = icmp eq i64 %.val2.i13, -1
  br i1 %.not1.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.loopexit.i10, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit26
  %.sroa.937.0.ph = phi ptr [ %i.y, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit26 ], [ inttoptr (i64 1 to ptr), %.loopexit.i10 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit
  %i.aa = phi ptr [ %i.ag, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.10.0.i, %.lr.ph.i.i.preheader ]
  %.sroa.27.0.in = phi i64 [ %.sroa.27.0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ %.val, %.lr.ph.i.i.preheader ]
  %.sroa.21.0 = phi ptr [ %.sroa.21.1, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.21.4, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.17.0 = phi ptr [ %.sroa.17.1109, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.17.2114, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.2, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.11.6, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.529.0 = phi ptr [ %.sroa.529.1106, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.529.2111, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.035.0 = phi i64 [ %.val2.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ %.val2.i13, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.937.0 = phi ptr [ %.sroa.937.1, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.937.0.ph, %.lr.ph.i.i.preheader ]
  %i.ab = phi i64 [ %i.ah, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.4.0.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ac = phi i64 [ %i.aj, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ 1, %.lr.ph.i.i.preheader ] ; 4 uses
  %.sroa.27.0 = add i64 %.sroa.27.0.in, -1        ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ac, 384307168202282326
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ae, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.j

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.lr.ph.i.i
  %i.af = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.27.0, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ab, i64 noundef %i.af, i64 noundef 8, i64 noundef 24) #45, !noalias !34907
  %.pre2.i.i = load i64, ptr %i.b, align 8, !range !19, !alias.scope !34908
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !34908
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, %.lr.ph.i.i
  %i.ag = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %i.ah = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %.pre2.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ac ; 3 uses
  store i64 %.sroa.035.0, ptr %i.ai, align 8, !noalias !34909
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.937.0, ptr %.sroa.937.0..sroa_idx, align 8, !noalias !34909
  %.sroa.1138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.035.0, ptr %.sroa.1138.0..sroa_idx, align 8, !noalias !34909
  %i.aj = add nuw nsw i64 %i.ac, 1                ; 2 uses
  store i64 %i.aj, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !34908
  %.not.i.i.i.i121 = icmp eq ptr %.sroa.11.0, null
  %i.ak = icmp eq ptr %.sroa.11.0, %.sroa.17.0
  %or.cond104122 = select i1 %.not.i.i.i.i121, i1 true, i1 %i.ak
  br i1 %or.cond104122, label %select.unfold.i.i.i, label %.loopexit.i.loopexit

select.unfold.i.i.i:                              ; preds = %bb.j, %bb.k
  %.sroa.529.1124 = phi ptr [ %i.am, %bb.k ], [ %.sroa.529.0, %bb.j ] ; 6 uses
  %.sroa.17.1123 = phi ptr [ %i.ap, %bb.k ], [ %.sroa.17.0, %bb.j ]
  %.not.i5.i.i.i = icmp eq ptr %.sroa.529.1124, null
  %i.al = icmp eq ptr %.sroa.529.1124, %.sroa.9.0.copyload
  %or.cond.i.i.i.i = select i1 %.not.i5.i.i.i, i1 true, i1 %i.al
  br i1 %or.cond.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.529.1124, i64 24 ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.529.1124, i64 8
  %.val.i.i.i = load ptr, ptr %i.an, align 8, !noalias !34910, !nonnull !12, !noundef !12 ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.529.1124, i64 16
  %.val4.i.i.i = load i64, ptr %i.ao, align 8, !noalias !34910, !noundef !12 ; 2 uses
  %.idx128 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx128 ; 2 uses
  %i.aq = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.aq, label %select.unfold.i.i.i, label %.loopexit.i.loopexit

bb.l:                                             ; preds = %select.unfold.i.i.i
  %.not.i7.i.i.i = icmp eq ptr %.sroa.21.0, null
  br i1 %.not.i7.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.ar = icmp eq ptr %.sroa.21.0, %.sroa.25.0.copyload
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.21.0, i64 32
  br i1 %i.ar, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %bb.k, %bb.j
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.0, %bb.j ], [ %i.ap, %bb.k ]
  %.sroa.11.1.lcssa = phi ptr [ %.sroa.11.0, %bb.j ], [ %.val.i.i.i, %bb.k ] ; 2 uses
  %.sroa.529.1.lcssa = phi ptr [ %.sroa.529.0, %bb.j ], [ %i.am, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.11.1.lcssa, i64 32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %.sink.split.i8.i.i.i
  %.sroa.17.1109 = phi ptr [ %.sroa.17.1123, %.sink.split.i8.i.i.i ], [ %.sroa.17.1.lcssa, %.loopexit.i.loopexit ]
  %.sroa.529.1106 = phi ptr [ %.sroa.529.1124, %.sink.split.i8.i.i.i ], [ %.sroa.529.1.lcssa, %.loopexit.i.loopexit ]
  %.sroa.21.1 = phi ptr [ %i.as, %.sink.split.i8.i.i.i ], [ %.sroa.21.0, %.loopexit.i.loopexit ]
  %.sroa.11.2 = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.at, %.loopexit.i.loopexit ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.21.0, %.sink.split.i8.i.i.i ], [ %.sroa.11.1.lcssa, %.loopexit.i.loopexit ]
  %i.au = tail call noundef nonnull align 8 ptr %.sroa.027.0.copyload(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !34911, !inline_history !34870 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val.i = load ptr, ptr %i.av, align 8, !noalias !34912, !nonnull !12, !noundef !12
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  %.val2.i = load i64, ptr %i.aw, align 8, !noalias !34912, !noundef !12 ; 6 uses
  %i.ax = icmp eq i64 %.val2.i, 0
  br i1 %i.ax, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34913
  %i.ay = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !34913 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i) #52, !noalias !34914
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val2.i, i1 false), !noalias !34915
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit: ; preds = %.loopexit.i, %bb.o
  %.sroa.937.1 = phi ptr [ inttoptr (i64 1 to ptr), %.loopexit.i ], [ %i.ay, %bb.o ]
  %.not.i.i2 = icmp eq i64 %.val2.i, -1
  br i1 %.not.i.i2, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.l, %.sink.split.i8.i.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit, %bb.g, %.sink.split.i8.i.i.i24, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bb, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB12_EE9from_iterCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34945)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34946)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !34947
  %.promoted19.i.i = load ptr, ptr %i.b, align 8, !alias.scope !34947
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !34947 ; 3 uses
  %.promoted20.i.i = load ptr, ptr %i.d, align 8, !alias.scope !34947
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.7.0.copyload = phi ptr [ %i.m, %bb.c ], [ %.promoted20.i.i, %bb.a ] ; 2 uses
  %.sroa.46.0.copyload = phi ptr [ %i.j, %bb.c ], [ %.promoted19.i.i, %bb.a ] ; 6 uses
  %spec.select.i18.i.i = phi ptr [ %.val.i.i, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %spec.select.i18.i.i, null
  br i1 %.not.i.i.i, label %select.unfold.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.b
  %i.g = icmp eq ptr %spec.select.i18.i.i, %.sroa.7.0.copyload ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i, i64 32 ; 2 uses
  %spec.select.i.i.i = select i1 %i.g, ptr null, ptr %i.h
  store ptr %spec.select.i.i.i, ptr %i.c, align 8, !alias.scope !34948
  br i1 %i.g, label %select.unfold.i.i, label %.loopexit

select.unfold.i.i:                                ; preds = %.sink.split.i.i.i, %bb.b
  %.not.i5.i.i = icmp eq ptr %.sroa.46.0.copyload, null
  %i.i = icmp eq ptr %.sroa.46.0.copyload, %i.f
  %or.cond.i.i.i = select i1 %.not.i5.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !34949
  %i.k = getelementptr i8, ptr %.sroa.46.0.copyload, i64 8
  %.val.i.i = load ptr, ptr %i.k, align 8, !noalias !34947, !nonnull !12, !noundef !12 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.46.0.copyload, i64 16
  %.val4.i.i = load i64, ptr %i.l, align 8, !noalias !34947, !noundef !12
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.val4.i.i ; 2 uses
  store ptr %.val.i.i, ptr %i.c, align 8, !alias.scope !34947
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !34947
  br label %bb.b

bb.d:                                             ; preds = %select.unfold.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !34950, !noundef !12 ; 4 uses
  %.not.i7.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i7.i.i, label %bb.i, label %.sink.split.i8.i.i

.sink.split.i8.i.i:                               ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !34951, !nonnull !12, !noundef !12
  %i.r = icmp eq ptr %i.o, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %spec.select.i9.i.i = select i1 %i.r, ptr null, ptr %i.s
  store ptr %spec.select.i9.i.i, ptr %i.n, align 8, !alias.scope !34950
  br i1 %i.r, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %.sink.split.i.i.i, %.sink.split.i8.i.i
  %.sroa.6.0.copyload = phi ptr [ null, %.sink.split.i8.i.i ], [ %i.h, %.sink.split.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %.sink.split.i8.i.i ], [ %spec.select.i18.i.i, %.sink.split.i.i.i ]
  %i.t = load ptr, ptr %1, align 8, !alias.scope !34945, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i) #45, !noalias !34945, !inline_history !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !34945, !noundef !12
  %i.x = add i64 %i.w, -1                         ; 4 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !34945
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.y, i64 4) ; 3 uses
  %i.z = shl i64 %..i, 3                          ; 4 uses
  %i.aa = icmp ugt i64 %i.x, 2305843009213693950
  %.not.i.i = icmp ugt i64 %i.z, 9223372036854775800
  %or.cond.i.i = or i1 %i.aa, %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %2, !prof !27

2:                                                ; preds = %.loopexit
  %3 = icmp eq i64 %i.z, 0
  br i1 %3, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit, label %bb.e

bb.e:                                             ; preds = %2
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34952
  %i.ab = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.z, i64 noundef range(i64 1, 9) 8) #45, !noalias !34952 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.e ], [ 0, %.loopexit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.z) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.e, %2
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.ab, %bb.e ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %2 ], [ %..i, %bb.e ] ; 2 uses
  %4 = icmp ule i64 %..i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %4)
  store ptr %i.u, ptr %.sroa.10.0.i, align 8, !captures !39
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34954)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit
  %i.ad = phi ptr [ %i.bd, %bb.h ], [ %.sroa.10.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %i.ae = phi i64 [ %i.bf, %bb.h ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.af = phi i64 [ %i.ay, %bb.h ], [ %i.x, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %spec.select.i9.i.i14.i.i = phi ptr [ %spec.select.i9.i.i13.i.i, %bb.h ], [ %.sroa.8.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.ag = phi ptr [ %i.av, %bb.h ], [ %.sroa.7.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %i.ah = phi ptr [ %i.aw, %bb.h ], [ %.sroa.46.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %.val.i.i9.i.i = phi ptr [ %.val.i.i6.i.i, %bb.h ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %.not.i.i.i.i5.i = icmp eq ptr %.val.i.i9.i.i, null
  %i.ai = icmp eq ptr %.val.i.i9.i.i, %i.ag
  %or.cond.i6.i = select i1 %.not.i.i.i.i5.i, i1 true, i1 %i.ai
  br i1 %or.cond.i6.i, label %select.unfold.i.i.i.i.preheader, label %.loopexit.loopexit.i.i

select.unfold.i.i.i.i.preheader:                  ; preds = %bb.g
  %.not.i5.i.i.i.i17 = icmp eq ptr %i.ah, null
  %i.aj = icmp eq ptr %i.ah, %i.f
  %or.cond.i.i.i.i.i18 = select i1 %.not.i5.i.i.i.i17, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i.i.i18, label %select.unfold.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.ak = icmp eq ptr %i.am, %i.f
  br i1 %i.ak, label %select.unfold.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.preheader, %select.unfold.i.i.i.i
  %i.al = phi ptr [ %i.am, %select.unfold.i.i.i.i ], [ %i.ah, %select.unfold.i.i.i.i.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 4 uses
  %i.an = getelementptr i8, ptr %i.al, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !34955, !noundef !12 ; 2 uses
  %i.ao = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.ao, label %select.unfold.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit

select.unfold.i.i.i.i._crit_edge.loopexit:        ; preds = %select.unfold.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.al, i64 8
  %.val.i.i.i.i.le52 = load ptr, ptr %i.ap, align 8, !noalias !34955, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i._crit_edge

select.unfold.i.i.i.i._crit_edge:                 ; preds = %select.unfold.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.preheader
  %.lcssa12 = phi ptr [ %i.ah, %select.unfold.i.i.i.i.preheader ], [ %i.am, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.ag, %select.unfold.i.i.i.i.preheader ], [ %.val.i.i.i.i.le52, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i = icmp eq ptr %spec.select.i9.i.i14.i.i, null
  %i.aq = icmp eq ptr %spec.select.i9.i.i14.i.i, %.sroa.9.0.copyload
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i14.i.i, i64 32
  %or.cond31.i.i = select i1 %.not.i7.i.i.i.i, i1 true, i1 %i.aq
  br i1 %or.cond31.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i.i

.loopexit.loopexit.i.i.loopexit:                  ; preds = %.lr.ph
  %i.as = getelementptr i8, ptr %i.al, i64 8
  %.val.i.i.i.i.le = load ptr, ptr %i.as, align 8, !noalias !34955, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.loopexit.loopexit.i.i.loopexit, %bb.g
  %.lcssa3.i = phi ptr [ %i.ag, %bb.g ], [ %i.at, %.loopexit.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.ah, %bb.g ], [ %i.am, %.loopexit.loopexit.i.i.loopexit ]
  %.val.i.i8.i.lcssa.i = phi ptr [ %.val.i.i9.i.i, %bb.g ], [ %.val.i.i.i.i.le, %.loopexit.loopexit.i.i.loopexit ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i8.i.lcssa.i, i64 32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %select.unfold.i.i.i.i._crit_edge
  %i.av = phi ptr [ %.lcssa, %select.unfold.i.i.i.i._crit_edge ], [ %.lcssa3.i, %.loopexit.loopexit.i.i ]
  %i.aw = phi ptr [ %.lcssa12, %select.unfold.i.i.i.i._crit_edge ], [ %.lcssa.i, %.loopexit.loopexit.i.i ]
  %spec.select.i9.i.i13.i.i = phi ptr [ %i.ar, %select.unfold.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i14.i.i, %.loopexit.loopexit.i.i ]
  %.val.i.i6.i.i = phi ptr [ null, %select.unfold.i.i.i.i._crit_edge ], [ %i.au, %.loopexit.loopexit.i.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %spec.select.i9.i.i14.i.i, %select.unfold.i.i.i.i._crit_edge ], [ %.val.i.i8.i.lcssa.i, %.loopexit.loopexit.i.i ]
  %i.ax = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i) #45, !noalias !34956, !inline_history !34944
  %i.ay = add i64 %i.af, -1                       ; 2 uses
  %i.az = icmp samesign ult i64 %i.ae, 1152921504606846976
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load i64, ptr %i.a, align 8, !range !19, !alias.scope !34957, !noundef !12
  %i.bb = icmp eq i64 %i.ae, %i.ba
  br i1 %i.bb, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.h

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.loopexit.i.i
  %i.bc = tail call i64 @llvm.uadd.sat.i64(i64 %i.ay, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ae, i64 noundef range(i64 1, 0) %i.bc, i64 noundef 8, i64 noundef 8) #45, !noalias !34958
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !34957
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, %.loopexit.i.i
  %i.bd = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.ad, %.loopexit.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ae
  store ptr %i.ax, ptr %i.be, align 8, !noalias !34959, !captures !39
  %i.bf = add nuw nsw i64 %i.ae, 1                ; 2 uses
  store i64 %i.bf, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !34957
  br label %bb.g

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %select.unfold.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %.sink.split.i8.i.i
  store i64 0, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bh, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs2vKOLqTMYjT_3std4path4PathEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB16_3ffi6os_str8OsStringEINvMs16_B14_B12_3newB44_EEE9from_iterCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34995)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34996)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !34997
  %.promoted19.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !34997
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !34997 ; 3 uses
  %.promoted20.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !34997
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.7.0.copyload = phi ptr [ %i.m, %bb.c ], [ %.promoted20.i.i.i, %bb.a ] ; 2 uses
  %.sroa.48.0.copyload = phi ptr [ %i.j, %bb.c ], [ %.promoted19.i.i.i, %bb.a ] ; 6 uses
  %spec.select.i18.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %spec.select.i18.i.i.i, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %i.g = icmp eq ptr %spec.select.i18.i.i.i, %.sroa.7.0.copyload ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i, i64 32 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.g, ptr null, ptr %i.h
  store ptr %spec.select.i.i.i.i, ptr %i.c, align 8, !alias.scope !34998
  br i1 %i.g, label %select.unfold.i.i.i, label %.loopexit

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.b
  %.not.i5.i.i.i = icmp eq ptr %.sroa.48.0.copyload, null
  %i.i = icmp eq ptr %.sroa.48.0.copyload, %i.f
  %or.cond.i.i.i.i = select i1 %.not.i5.i.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !34999
  %i.k = getelementptr i8, ptr %.sroa.48.0.copyload, i64 8
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !noalias !34997, !nonnull !12, !noundef !12 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.48.0.copyload, i64 16
  %.val4.i.i.i = load i64, ptr %i.l, align 8, !noalias !34997, !noundef !12
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.val4.i.i.i ; 2 uses
  store ptr %.val.i.i.i, ptr %i.c, align 8, !alias.scope !34997
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !34997
  br label %bb.b

bb.d:                                             ; preds = %select.unfold.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !35000, !noundef !12 ; 4 uses
  %.not.i7.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i7.i.i.i, label %bb.i, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !35001, !nonnull !12, !noundef !12
  %i.r = icmp eq ptr %i.o, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %spec.select.i9.i.i.i = select i1 %i.r, ptr null, ptr %i.s
  store ptr %spec.select.i9.i.i.i, ptr %i.n, align 8, !alias.scope !35000
  br i1 %i.r, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %.sink.split.i.i.i.i, %.sink.split.i8.i.i.i
  %.sroa.6.0.copyload = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.h, %.sink.split.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.o, %.sink.split.i8.i.i.i ], [ %spec.select.i18.i.i.i, %.sink.split.i.i.i.i ]
  %i.t = load ptr, ptr %1, align 8, !alias.scope !35002, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !35002, !inline_history !34978 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !35002, !noundef !12
  %i.x = add i64 %i.w, -1                         ; 4 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !35002
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.y, align 8, !noalias !34994, !nonnull !12, !noundef !12
  %i.z = getelementptr i8, ptr %i.u, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !noalias !34994, !noundef !12
  %i.aa = tail call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 4) ; 3 uses
  %i.ab = shl i64 %..i, 4                         ; 4 uses
  %i.ac = icmp ugt i64 %i.x, 1152921504606846974
  %.not.i.i = icmp ugt i64 %i.ab, 9223372036854775800
  %or.cond.i.i = or i1 %i.ac, %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %2, !prof !27

2:                                                ; preds = %.loopexit
  %3 = icmp eq i64 %i.ab, 0
  br i1 %3, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit, label %bb.e

bb.e:                                             ; preds = %2
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35003
  %i.ad = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 9) 8) #45, !noalias !35003 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.e ], [ 0, %.loopexit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ab) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.e, %2
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.ad, %bb.e ] ; 4 uses
  %.sroa.4.0.i = phi i64 [ 0, %2 ], [ %..i, %bb.e ] ; 2 uses
  %4 = icmp ule i64 %..i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %4)
  store ptr %.val.i, ptr %.sroa.10.0.i, align 8, !captures !39
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 8
  store i64 %.val3.i, ptr %i.af, align 8
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35005)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit
  %i.ag = phi ptr [ %i.bi, %bb.h ], [ %.sroa.10.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %i.ah = phi i64 [ %i.bl, %bb.h ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.ai = phi i64 [ %i.bb, %bb.h ], [ %i.x, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %spec.select.i9.i.i.i16.i.i = phi ptr [ %spec.select.i9.i.i.i15.i.i, %bb.h ], [ %.sroa.8.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.aj = phi ptr [ %i.ay, %bb.h ], [ %.sroa.7.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %i.ak = phi ptr [ %i.az, %bb.h ], [ %.sroa.48.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %.val.i.i.i11.i.i = phi ptr [ %.val.i.i.i8.i.i, %bb.h ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %.not.i.i.i.i.i5.i = icmp eq ptr %.val.i.i.i11.i.i, null
  %i.al = icmp eq ptr %.val.i.i.i11.i.i, %i.aj
  %or.cond.i6.i = select i1 %.not.i.i.i.i.i5.i, i1 true, i1 %i.al
  br i1 %or.cond.i6.i, label %select.unfold.i.i.i.i.i.preheader, label %.loopexit.loopexit.i.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.g
  %.not.i5.i.i.i.i.i19 = icmp eq ptr %i.ak, null
  %i.am = icmp eq ptr %i.ak, %i.f
  %or.cond.i.i.i.i.i.i20 = select i1 %.not.i5.i.i.i.i.i19, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i.i.i.i20, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.an = icmp eq ptr %i.ap, %i.f
  br i1 %i.an, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %i.ao = phi ptr [ %i.ap, %select.unfold.i.i.i.i.i ], [ %i.ak, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !35006, !noundef !12 ; 2 uses
  %i.ar = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.ar, label %select.unfold.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.as = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i.i.i.i.le54 = load ptr, ptr %i.as, align 8, !noalias !35006, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.lcssa14 = phi ptr [ %i.ak, %select.unfold.i.i.i.i.i.preheader ], [ %i.ap, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.aj, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.le54, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i16.i.i, null
  %i.at = icmp eq ptr %spec.select.i9.i.i.i16.i.i, %.sroa.9.0.copyload
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i16.i.i, i64 32
  %or.cond33.i.i = select i1 %.not.i7.i.i.i.i.i, i1 true, i1 %i.at
  br i1 %or.cond33.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtCs2vKOLqTMYjT_3std4path4PathEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtBW_3ffi6os_str8OsStringEINvMs16_BU_BS_3newB3L_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i.i

.loopexit.loopexit.i.i.loopexit:                  ; preds = %.lr.ph
  %i.av = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i.i.i.i.le = load ptr, ptr %i.av, align 8, !noalias !35006, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.loopexit.loopexit.i.i.loopexit, %bb.g
  %.lcssa3.i = phi ptr [ %i.aj, %bb.g ], [ %i.aw, %.loopexit.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.loopexit.loopexit.i.i.loopexit ]
  %.val.i.i.i10.i.lcssa.i = phi ptr [ %.val.i.i.i11.i.i, %bb.g ], [ %.val.i.i.i.i.i.le, %.loopexit.loopexit.i.i.loopexit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i, i64 32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %select.unfold.i.i.i.i.i._crit_edge
  %i.ay = phi ptr [ %.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa3.i, %.loopexit.loopexit.i.i ]
  %i.az = phi ptr [ %.lcssa14, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa.i, %.loopexit.loopexit.i.i ]
  %spec.select.i9.i.i.i15.i.i = phi ptr [ %i.au, %select.unfold.i.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i.i16.i.i, %.loopexit.loopexit.i.i ]
  %.val.i.i.i8.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ %i.ax, %.loopexit.loopexit.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i16.i.i, %select.unfold.i.i.i.i.i._crit_edge ], [ %.val.i.i.i10.i.lcssa.i, %.loopexit.loopexit.i.i ]
  %i.ba = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i) #45, !noalias !35007, !inline_history !34993 ; 2 uses
  %i.bb = add i64 %i.ai, -1                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i6 = load ptr, ptr %i.bc, align 8, !noalias !35008, !nonnull !12, !noundef !12
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  %.val3.i.i.i = load i64, ptr %i.bd, align 8, !noalias !35008, !noundef !12
  %i.be = icmp samesign ult i64 %i.ah, 576460752303423488
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %i.a, align 8, !range !19, !alias.scope !35009, !noundef !12
  %i.bg = icmp eq i64 %i.ah, %i.bf
  br i1 %i.bg, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtCs2vKOLqTMYjT_3std4path4PathE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.h

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtCs2vKOLqTMYjT_3std4path4PathE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.loopexit.i.i
  %i.bh = tail call i64 @llvm.uadd.sat.i64(i64 %i.bb, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ah, i64 noundef range(i64 1, 0) %i.bh, i64 noundef 8, i64 noundef 16) #45, !noalias !35010
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !35009
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtCs2vKOLqTMYjT_3std4path4PathE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, %.loopexit.i.i
  %i.bi = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtCs2vKOLqTMYjT_3std4path4PathE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.ag, %.loopexit.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.ah ; 2 uses
  store ptr %.val.i.i.i6, ptr %i.bj, align 8, !noalias !35011, !captures !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %.val3.i.i.i, ptr %i.bk, align 8, !noalias !35011
  %i.bl = add nuw nsw i64 %i.ah, 1                ; 2 uses
  store i64 %i.bl, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !35009
  br label %bb.g

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtCs2vKOLqTMYjT_3std4path4PathEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtBW_3ffi6os_str8OsStringEINvMs16_BU_BS_3newB3L_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %.sink.split.i8.i.i.i
  store i64 0, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bn, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtCs2vKOLqTMYjT_3std4path4PathEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtBW_3ffi6os_str8OsStringEINvMs16_BU_BS_3newB3L_EEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB12_EE9from_iterCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35041)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35042)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !35043
  %.promoted19.i.i = load ptr, ptr %i.b, align 8, !alias.scope !35043
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !35043 ; 3 uses
  %.promoted20.i.i = load ptr, ptr %i.d, align 8, !alias.scope !35043
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.7.0.copyload = phi ptr [ %i.m, %bb.c ], [ %.promoted20.i.i, %bb.a ] ; 2 uses
  %.sroa.46.0.copyload = phi ptr [ %i.j, %bb.c ], [ %.promoted19.i.i, %bb.a ] ; 6 uses
  %spec.select.i18.i.i = phi ptr [ %.val.i.i, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %spec.select.i18.i.i, null
  br i1 %.not.i.i.i, label %select.unfold.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.b
  %i.g = icmp eq ptr %spec.select.i18.i.i, %.sroa.7.0.copyload ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i, i64 32 ; 2 uses
  %spec.select.i.i.i = select i1 %i.g, ptr null, ptr %i.h
  store ptr %spec.select.i.i.i, ptr %i.c, align 8, !alias.scope !35044
  br i1 %i.g, label %select.unfold.i.i, label %.loopexit

select.unfold.i.i:                                ; preds = %.sink.split.i.i.i, %bb.b
  %.not.i5.i.i = icmp eq ptr %.sroa.46.0.copyload, null
  %i.i = icmp eq ptr %.sroa.46.0.copyload, %i.f
  %or.cond.i.i.i = select i1 %.not.i5.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !35045
  %i.k = getelementptr i8, ptr %.sroa.46.0.copyload, i64 8
  %.val.i.i = load ptr, ptr %i.k, align 8, !noalias !35043, !nonnull !12, !noundef !12 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.46.0.copyload, i64 16
  %.val4.i.i = load i64, ptr %i.l, align 8, !noalias !35043, !noundef !12
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.val4.i.i ; 2 uses
  store ptr %.val.i.i, ptr %i.c, align 8, !alias.scope !35043
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !35043
  br label %bb.b

bb.d:                                             ; preds = %select.unfold.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !35046, !noundef !12 ; 4 uses
  %.not.i7.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i7.i.i, label %bb.i, label %.sink.split.i8.i.i

.sink.split.i8.i.i:                               ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !35047, !nonnull !12, !noundef !12
  %i.r = icmp eq ptr %i.o, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %spec.select.i9.i.i = select i1 %i.r, ptr null, ptr %i.s
  store ptr %spec.select.i9.i.i, ptr %i.n, align 8, !alias.scope !35046
  br i1 %i.r, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %.sink.split.i.i.i, %.sink.split.i8.i.i
  %.sroa.6.0.copyload = phi ptr [ null, %.sink.split.i8.i.i ], [ %i.h, %.sink.split.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %.sink.split.i8.i.i ], [ %spec.select.i18.i.i, %.sink.split.i.i.i ]
  %i.t = load ptr, ptr %1, align 8, !alias.scope !35041, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i) #45, !noalias !35041, !inline_history !0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !35041, !noundef !12
  %i.x = add i64 %i.w, -1                         ; 4 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !35041
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.y, i64 4) ; 3 uses
  %i.z = shl i64 %..i, 3                          ; 4 uses
  %i.aa = icmp ugt i64 %i.x, 2305843009213693950
  %.not.i.i = icmp ugt i64 %i.z, 9223372036854775800
  %or.cond.i.i = or i1 %i.aa, %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %2, !prof !27

2:                                                ; preds = %.loopexit
  %3 = icmp eq i64 %i.z, 0
  br i1 %3, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit, label %bb.e

bb.e:                                             ; preds = %2
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35048
  %i.ab = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.z, i64 noundef range(i64 1, 9) 8) #45, !noalias !35048 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.e ], [ 0, %.loopexit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.z) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.e, %2
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.ab, %bb.e ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %2 ], [ %..i, %bb.e ] ; 2 uses
  %4 = icmp ule i64 %..i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %4)
  store ptr %i.u, ptr %.sroa.10.0.i, align 8, !captures !39
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35050)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit
  %i.ad = phi ptr [ %i.bd, %bb.h ], [ %.sroa.10.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %i.ae = phi i64 [ %i.bf, %bb.h ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.af = phi i64 [ %i.ay, %bb.h ], [ %i.x, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %spec.select.i9.i.i14.i.i = phi ptr [ %spec.select.i9.i.i13.i.i, %bb.h ], [ %.sroa.8.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.ag = phi ptr [ %i.av, %bb.h ], [ %.sroa.7.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %i.ah = phi ptr [ %i.aw, %bb.h ], [ %.sroa.46.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %.val.i.i9.i.i = phi ptr [ %.val.i.i6.i.i, %bb.h ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %.not.i.i.i.i5.i = icmp eq ptr %.val.i.i9.i.i, null
  %i.ai = icmp eq ptr %.val.i.i9.i.i, %i.ag
  %or.cond.i6.i = select i1 %.not.i.i.i.i5.i, i1 true, i1 %i.ai
  br i1 %or.cond.i6.i, label %select.unfold.i.i.i.i.preheader, label %.loopexit.loopexit.i.i

select.unfold.i.i.i.i.preheader:                  ; preds = %bb.g
  %.not.i5.i.i.i.i17 = icmp eq ptr %i.ah, null
  %i.aj = icmp eq ptr %i.ah, %i.f
  %or.cond.i.i.i.i.i18 = select i1 %.not.i5.i.i.i.i17, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i.i.i18, label %select.unfold.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.ak = icmp eq ptr %i.am, %i.f
  br i1 %i.ak, label %select.unfold.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.preheader, %select.unfold.i.i.i.i
  %i.al = phi ptr [ %i.am, %select.unfold.i.i.i.i ], [ %i.ah, %select.unfold.i.i.i.i.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 4 uses
  %i.an = getelementptr i8, ptr %i.al, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !35051, !noundef !12 ; 2 uses
  %i.ao = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.ao, label %select.unfold.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit

select.unfold.i.i.i.i._crit_edge.loopexit:        ; preds = %select.unfold.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.al, i64 8
  %.val.i.i.i.i.le52 = load ptr, ptr %i.ap, align 8, !noalias !35051, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i._crit_edge

select.unfold.i.i.i.i._crit_edge:                 ; preds = %select.unfold.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.preheader
  %.lcssa12 = phi ptr [ %i.ah, %select.unfold.i.i.i.i.preheader ], [ %i.am, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.ag, %select.unfold.i.i.i.i.preheader ], [ %.val.i.i.i.i.le52, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i = icmp eq ptr %spec.select.i9.i.i14.i.i, null
  %i.aq = icmp eq ptr %spec.select.i9.i.i14.i.i, %.sroa.9.0.copyload
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i14.i.i, i64 32
  %or.cond31.i.i = select i1 %.not.i7.i.i.i.i, i1 true, i1 %i.aq
  br i1 %or.cond31.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i.i

.loopexit.loopexit.i.i.loopexit:                  ; preds = %.lr.ph
  %i.as = getelementptr i8, ptr %i.al, i64 8
  %.val.i.i.i.i.le = load ptr, ptr %i.as, align 8, !noalias !35051, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.loopexit.loopexit.i.i.loopexit, %bb.g
  %.lcssa3.i = phi ptr [ %i.ag, %bb.g ], [ %i.at, %.loopexit.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.ah, %bb.g ], [ %i.am, %.loopexit.loopexit.i.i.loopexit ]
  %.val.i.i8.i.lcssa.i = phi ptr [ %.val.i.i9.i.i, %bb.g ], [ %.val.i.i.i.i.le, %.loopexit.loopexit.i.i.loopexit ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i8.i.lcssa.i, i64 32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %select.unfold.i.i.i.i._crit_edge
  %i.av = phi ptr [ %.lcssa, %select.unfold.i.i.i.i._crit_edge ], [ %.lcssa3.i, %.loopexit.loopexit.i.i ]
  %i.aw = phi ptr [ %.lcssa12, %select.unfold.i.i.i.i._crit_edge ], [ %.lcssa.i, %.loopexit.loopexit.i.i ]
  %spec.select.i9.i.i13.i.i = phi ptr [ %i.ar, %select.unfold.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i14.i.i, %.loopexit.loopexit.i.i ]
  %.val.i.i6.i.i = phi ptr [ null, %select.unfold.i.i.i.i._crit_edge ], [ %i.au, %.loopexit.loopexit.i.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %spec.select.i9.i.i14.i.i, %select.unfold.i.i.i.i._crit_edge ], [ %.val.i.i8.i.lcssa.i, %.loopexit.loopexit.i.i ]
  %i.ax = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i) #45, !noalias !35052, !inline_history !35040
  %i.ay = add i64 %i.af, -1                       ; 2 uses
  %i.az = icmp samesign ult i64 %i.ae, 1152921504606846976
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load i64, ptr %i.a, align 8, !range !19, !alias.scope !35053, !noundef !12
  %i.bb = icmp eq i64 %i.ae, %i.ba
  br i1 %i.bb, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.h

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.loopexit.i.i
  %i.bc = tail call i64 @llvm.uadd.sat.i64(i64 %i.ay, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ae, i64 noundef range(i64 1, 0) %i.bc, i64 noundef 8, i64 noundef 8) #45, !noalias !35054
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !35053
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, %.loopexit.i.i
  %i.bd = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.ad, %.loopexit.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ae
  store ptr %i.ax, ptr %i.be, align 8, !noalias !35055, !captures !39
  %i.bf = add nuw nsw i64 %i.ae, 1                ; 2 uses
  store i64 %i.bf, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !35053
  br label %bb.g

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %select.unfold.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %.sink.split.i8.i.i
  store i64 0, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bh, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35091)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35092)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !35093
  %.promoted19.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !35093
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !35093 ; 3 uses
  %.promoted20.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !35093
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.7.0.copyload = phi ptr [ %i.m, %bb.c ], [ %.promoted20.i.i.i, %bb.a ] ; 2 uses
  %.sroa.48.0.copyload = phi ptr [ %i.j, %bb.c ], [ %.promoted19.i.i.i, %bb.a ] ; 6 uses
  %spec.select.i18.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %spec.select.i18.i.i.i, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %i.g = icmp eq ptr %spec.select.i18.i.i.i, %.sroa.7.0.copyload ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i, i64 32 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.g, ptr null, ptr %i.h
  store ptr %spec.select.i.i.i.i, ptr %i.c, align 8, !alias.scope !35094
  br i1 %i.g, label %select.unfold.i.i.i, label %.loopexit

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.b
  %.not.i5.i.i.i = icmp eq ptr %.sroa.48.0.copyload, null
  %i.i = icmp eq ptr %.sroa.48.0.copyload, %i.f
  %or.cond.i.i.i.i = select i1 %.not.i5.i.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !35095
  %i.k = getelementptr i8, ptr %.sroa.48.0.copyload, i64 8
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !noalias !35093, !nonnull !12, !noundef !12 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.48.0.copyload, i64 16
  %.val4.i.i.i = load i64, ptr %i.l, align 8, !noalias !35093, !noundef !12
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.val4.i.i.i ; 2 uses
  store ptr %.val.i.i.i, ptr %i.c, align 8, !alias.scope !35093
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !35093
  br label %bb.b

bb.d:                                             ; preds = %select.unfold.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !35096, !noundef !12 ; 4 uses
  %.not.i7.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i7.i.i.i, label %bb.i, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !35097, !nonnull !12, !noundef !12
  %i.r = icmp eq ptr %i.o, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %spec.select.i9.i.i.i = select i1 %i.r, ptr null, ptr %i.s
  store ptr %spec.select.i9.i.i.i, ptr %i.n, align 8, !alias.scope !35096
  br i1 %i.r, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %.sink.split.i.i.i.i, %.sink.split.i8.i.i.i
  %.sroa.6.0.copyload = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.h, %.sink.split.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.o, %.sink.split.i8.i.i.i ], [ %spec.select.i18.i.i.i, %.sink.split.i.i.i.i ]
  %i.t = load ptr, ptr %1, align 8, !alias.scope !35098, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !35098, !inline_history !35074 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !35098, !noundef !12
  %i.x = add i64 %i.w, -1                         ; 4 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !35098
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.y, align 8, !noalias !35090, !nonnull !12, !noundef !12
  %i.z = getelementptr i8, ptr %i.u, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !noalias !35090, !noundef !12
  %i.aa = tail call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 4) ; 3 uses
  %i.ab = shl i64 %..i, 4                         ; 4 uses
  %i.ac = icmp ugt i64 %i.x, 1152921504606846974
  %.not.i.i = icmp ugt i64 %i.ab, 9223372036854775800
  %or.cond.i.i = or i1 %i.ac, %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %2, !prof !27

2:                                                ; preds = %.loopexit
  %3 = icmp eq i64 %i.ab, 0
  br i1 %3, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit, label %bb.e

bb.e:                                             ; preds = %2
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35099
  %i.ad = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 9) 8) #45, !noalias !35099 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.e ], [ 0, %.loopexit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ab) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.e, %2
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.ad, %bb.e ] ; 4 uses
  %.sroa.4.0.i = phi i64 [ 0, %2 ], [ %..i, %bb.e ] ; 2 uses
  %4 = icmp ule i64 %..i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %4)
  store ptr %.val.i, ptr %.sroa.10.0.i, align 8, !captures !39
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 8
  store i64 %.val3.i, ptr %i.af, align 8
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35101)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit
  %i.ag = phi ptr [ %i.bi, %bb.h ], [ %.sroa.10.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %i.ah = phi i64 [ %i.bl, %bb.h ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.ai = phi i64 [ %i.bb, %bb.h ], [ %i.x, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %spec.select.i9.i.i.i16.i.i = phi ptr [ %spec.select.i9.i.i.i15.i.i, %bb.h ], [ %.sroa.8.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.aj = phi ptr [ %i.ay, %bb.h ], [ %.sroa.7.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %i.ak = phi ptr [ %i.az, %bb.h ], [ %.sroa.48.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %.val.i.i.i11.i.i = phi ptr [ %.val.i.i.i8.i.i, %bb.h ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %.not.i.i.i.i.i5.i = icmp eq ptr %.val.i.i.i11.i.i, null
  %i.al = icmp eq ptr %.val.i.i.i11.i.i, %i.aj
  %or.cond.i6.i = select i1 %.not.i.i.i.i.i5.i, i1 true, i1 %i.al
  br i1 %or.cond.i6.i, label %select.unfold.i.i.i.i.i.preheader, label %.loopexit.loopexit.i.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.g
  %.not.i5.i.i.i.i.i19 = icmp eq ptr %i.ak, null
  %i.am = icmp eq ptr %i.ak, %i.f
  %or.cond.i.i.i.i.i.i20 = select i1 %.not.i5.i.i.i.i.i19, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i.i.i.i20, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.an = icmp eq ptr %i.ap, %i.f
  br i1 %i.an, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %i.ao = phi ptr [ %i.ap, %select.unfold.i.i.i.i.i ], [ %i.ak, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !35102, !noundef !12 ; 2 uses
  %i.ar = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.ar, label %select.unfold.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.as = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i.i.i.i.le54 = load ptr, ptr %i.as, align 8, !noalias !35102, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.lcssa14 = phi ptr [ %i.ak, %select.unfold.i.i.i.i.i.preheader ], [ %i.ap, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.aj, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.le54, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i16.i.i, null
  %i.at = icmp eq ptr %spec.select.i9.i.i.i16.i.i, %.sroa.9.0.copyload
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i16.i.i, i64 32
  %or.cond33.i.i = select i1 %.not.i7.i.i.i.i.i, i1 true, i1 %i.at
  br i1 %or.cond33.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i.i

.loopexit.loopexit.i.i.loopexit:                  ; preds = %.lr.ph
  %i.av = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i.i.i.i.le = load ptr, ptr %i.av, align 8, !noalias !35102, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.loopexit.loopexit.i.i.loopexit, %bb.g
  %.lcssa3.i = phi ptr [ %i.aj, %bb.g ], [ %i.aw, %.loopexit.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.loopexit.loopexit.i.i.loopexit ]
  %.val.i.i.i10.i.lcssa.i = phi ptr [ %.val.i.i.i11.i.i, %bb.g ], [ %.val.i.i.i.i.i.le, %.loopexit.loopexit.i.i.loopexit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i, i64 32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %select.unfold.i.i.i.i.i._crit_edge
  %i.ay = phi ptr [ %.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa3.i, %.loopexit.loopexit.i.i ]
  %i.az = phi ptr [ %.lcssa14, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa.i, %.loopexit.loopexit.i.i ]
  %spec.select.i9.i.i.i15.i.i = phi ptr [ %i.au, %select.unfold.i.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i.i16.i.i, %.loopexit.loopexit.i.i ]
  %.val.i.i.i8.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ %i.ax, %.loopexit.loopexit.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i16.i.i, %select.unfold.i.i.i.i.i._crit_edge ], [ %.val.i.i.i10.i.lcssa.i, %.loopexit.loopexit.i.i ]
  %i.ba = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i) #45, !noalias !35103, !inline_history !35089 ; 2 uses
  %i.bb = add i64 %i.ai, -1                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i6 = load ptr, ptr %i.bc, align 8, !noalias !35104, !nonnull !12, !noundef !12
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  %.val3.i.i.i = load i64, ptr %i.bd, align 8, !noalias !35104, !noundef !12
  %i.be = icmp samesign ult i64 %i.ah, 576460752303423488
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %i.a, align 8, !range !19, !alias.scope !35105, !noundef !12
  %i.bg = icmp eq i64 %i.ah, %i.bf
  br i1 %i.bg, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.h

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.loopexit.i.i
  %i.bh = tail call i64 @llvm.uadd.sat.i64(i64 %i.bb, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ah, i64 noundef range(i64 1, 0) %i.bh, i64 noundef 8, i64 noundef 16) #45, !noalias !35106
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !35105
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, %.loopexit.i.i
  %i.bi = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.ag, %.loopexit.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.ah ; 2 uses
  store ptr %.val.i.i.i6, ptr %i.bj, align 8, !noalias !35107, !captures !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %.val3.i.i.i, ptr %i.bk, align 8, !noalias !35107
  %i.bl = add nuw nsw i64 %i.ah, 1                ; 2 uses
  store i64 %i.bl, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !35105
  br label %bb.g

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %.sink.split.i8.i.i.i
  store i64 0, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bn, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3i_B3g_6as_strEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtNtNtCs6JMX4GRUq9U_4core4iter7sources4onceINtB2_4OnceINtNtB8_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtB1i_18ParseDateTimeErrorEEENtNtNtB6_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i32 -1, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtNtNtCs6JMX4GRUq9U_4core4iter7sources4onceINtB2_4OnceINtNtB8_6result6ResultNtCs65h624QUiyW_14parse_datetime14ParsedDateTimeTNtNtCs7tKScEop1B6_5alloc6string6StringNtB1i_18ParseDateTimeErrorEEENtNtNtB6_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #21 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !80, !noundef !12
  %i.b = icmp ne i32 %i.a, -1
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs7tKScEop1B6_5alloc3vec3VechEENtNtB8_3fmt5Write9write_strCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !23, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35123)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !35124, !noundef !12 ; 5 uses
  %i.d = load i64, ptr %i.a, align 8, !range !19, !alias.scope !35124, !noundef !12
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, !prof !18

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, i64 noundef 1) #45, !noalias !35125
  %i.g = load i64, ptr %i.b, align 8, !alias.scope !35126, !noundef !12 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.a
  %i.i = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.i)
  %.not.i.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i
  %i.j = phi i64 [ %i.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i ], [ %i.c, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !35126, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !35126
  br label %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit

_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %i.c, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %i.o = add nuw i64 %i.n, %2
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !35126
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEENtNtB8_3fmt5Write9write_strCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !23, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35135)
  %i.c = load i64, ptr %i.b, align 8, !range !19, !alias.scope !35135, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !35135, !noundef !12 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub nsw i64 %i.c, %i.e
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit, !prof !11

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35136)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !35137, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !35137
  %i.l = add nuw i64 %i.e, %2
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !35137
  br label %bb.f

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.a
  %i.m = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) #53 ; 2 uses
end_hunk_10
