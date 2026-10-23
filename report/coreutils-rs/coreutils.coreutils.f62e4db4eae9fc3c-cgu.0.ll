Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCs25myiKMto6U_9uu_printf6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBC_6cloned6ClonedINtNtNtBG_5slice4iter4IterB2d_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.oe = load i64, ptr %i.od, align 8, !range !19, !invariant.load !12, !noalias !568 ; 2 uses
  %i.of = icmp eq i64 %i.oe, 0
  br i1 %i.of, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.dn
  %.val.i = load ptr, ptr %i.bk, align 8, !alias.scope !568, !nonnull !12, !noundef !12
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oh = load i64, ptr %i.og, align 8, !range !25, !invariant.load !12, !noalias !568
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) %i.oh) #45, !noalias !568
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.dn, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.cj
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RINvCs2AkyTgTLZ1a_8uu_tsort6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBB_6cloned6ClonedINtNtNtBF_5slice4iter4IterB2c_EEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [48 x i8], align 8                ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [72 x i8], align 8                ; 11 uses
  %i.aa = alloca [32 x i8], align 8               ; 10 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [4 x i8], align 4                ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 10 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [144 x i8], align 8              ; 15 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 10 uses
  %i.an = alloca [712 x i8], align 8              ; 4 uses
  %i.ao = alloca [56 x i8], align 8               ; 8 uses
  %i.ap = alloca [56 x i8], align 8               ; 10 uses
  %i.aq = alloca [4 x i8], align 4                ; 3 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 6 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 9 uses
  %i.bd = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.bd, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.be = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bf = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.bf, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !750
  store i32 %i.bf, ptr %i.aq, align 4, !noalias !750
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !751
  call void @_RNvCs2AkyTgTLZ1a_8uu_tsort6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.an) #45, !noalias !751
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.ao, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !751
  %i.bg = load i64, ptr %i.ao, align 8, !range !13, !noalias !751, !noundef !12 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !751 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !751 ; 2 uses
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !751
  br label %bb.dj

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.620.0..sroa_idx.i, i64 32, i1 false), !noalias !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !751
  store i64 %i.bg, ptr %i.ap, align 8, !noalias !751
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !751
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.bl, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !751
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4) #45, !noalias !751
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !751
  store ptr @181, ptr %i.v, align 8, !noalias !754
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 4, ptr %i.bm, align 8, !noalias !754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !754
  %i.bn = load i64, ptr %i.z, align 8, !range !16, !alias.scope !753, !noalias !751, !noundef !12
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.bo, label %bb.g, label %.split.us.preheader.i.i, !prof !18

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bp, i64 40, i1 false), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !754
  store ptr %i.v, ptr %i.t, align 8, !noalias !754
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !754
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.bq, align 8, !noalias !754
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !754
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !756
  unreachable

.split.us.preheader.i.i:                          ; preds = %bb.f
  %.sroa.0276.0.copyload.i = load ptr, ptr %i.bp, align 8, !alias.scope !757, !noalias !751
  %.sroa.4277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.4277.0.copyload.i = load ptr, ptr %.sroa.4277.0..sroa_idx.i, align 8, !alias.scope !757, !noalias !751 ; 2 uses
  %.sroa.5278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.5278.0.copyload.i = load ptr, ptr %.sroa.5278.0..sroa_idx.i, align 8, !alias.scope !757, !noalias !751 ; 2 uses
  %.sroa.6279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.6279.0.copyload.i = load ptr, ptr %.sroa.6279.0..sroa_idx.i, align 8, !alias.scope !757, !noalias !751 ; 2 uses
  %.sroa.7280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.7280.0.copyload.i = load ptr, ptr %.sroa.7280.0..sroa_idx.i, align 8, !alias.scope !757, !noalias !751 ; 2 uses
  %.sroa.8281.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.8281.0.copyload.i = load ptr, ptr %.sroa.8281.0..sroa_idx.i, align 8, !alias.scope !757, !noalias !751 ; 2 uses
  %.sroa.9282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.sroa.9282.0.copyload.i = load ptr, ptr %.sroa.9282.0..sroa_idx.i, align 8, !alias.scope !757, !noalias !751 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !751
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i, %.split.us.preheader.i.i
  %.sroa.22.sroa.45.2.i = phi ptr [ undef, %.split.us.preheader.i.i ], [ %.sroa.9282.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i ] ; 2 uses
  %.sroa.22.sroa.37.4.i = phi ptr [ undef, %.split.us.preheader.i.i ], [ %.sroa.8281.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i ] ; 5 uses
  %.sroa.22.sroa.29.4.i = phi ptr [ undef, %.split.us.preheader.i.i ], [ %.sroa.7280.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i ] ; 3 uses
  %.sroa.22.sroa.17.5.i = phi ptr [ undef, %.split.us.preheader.i.i ], [ %.sroa.6279.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i ] ; 3 uses
  %.sroa.22.sroa.13.2.i = phi ptr [ undef, %.split.us.preheader.i.i ], [ %.sroa.5278.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i ] ; 3 uses
  %.sroa.22.sroa.0.4.i = phi ptr [ undef, %.split.us.preheader.i.i ], [ %.sroa.4277.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i ] ; 5 uses
  %.sroa.13.3.i = phi ptr [ null, %.split.us.preheader.i.i ], [ %.sroa.6.2.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i ] ; 3 uses
  %.sroa.6.2.i = phi ptr [ %.sroa.0276.0.copyload.i, %.split.us.preheader.i.i ], [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i ] ; 3 uses
  %.not.i.us.i.i = icmp eq ptr %.sroa.13.3.i, null
  br i1 %.not.i.us.i.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.split.us.i.i
  %.not.i.i.i.i.i.us.i.i97 = icmp eq ptr %.sroa.22.sroa.17.5.i, null
  %i.br = icmp eq ptr %.sroa.22.sroa.17.5.i, %.sroa.22.sroa.29.4.i
  %or.cond514.i98 = select i1 %.not.i.i.i.i.i.us.i.i97, i1 true, i1 %i.br
  br i1 %or.cond514.i98, label %select.unfold.i.i.i.i.us.i.i.preheader, label %.split.us.preheader.i96.loopexit.i

select.unfold.i.i.i.i.us.i.i.preheader:           ; preds = %.preheader.i.preheader
  %.not.i5.i.i.i.i.us.i.i352 = icmp eq ptr %.sroa.22.sroa.0.4.i, null
  %i.bs = icmp eq ptr %.sroa.22.sroa.0.4.i, %.sroa.22.sroa.13.2.i
  %or.cond.i.i.i.i.i.us.i.i353 = select i1 %.not.i5.i.i.i.i.us.i.i352, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i.i.i.us.i.i353, label %select.unfold.i.i.i.i.us.i.i._crit_edge, label %.preheader.i

select.unfold.i.i.i.i.us.i.i:                     ; preds = %.preheader.i
  %i.bt = icmp eq ptr %i.bu, %.sroa.22.sroa.13.2.i
  br i1 %i.bt, label %select.unfold.i.i.i.i.us.i.i._crit_edge.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %select.unfold.i.i.i.i.us.i.i.preheader, %select.unfold.i.i.i.i.us.i.i
  %.sroa.22.sroa.0.5.i100354 = phi ptr [ %i.bu, %select.unfold.i.i.i.i.us.i.i ], [ %.sroa.22.sroa.0.4.i, %select.unfold.i.i.i.i.us.i.i.preheader ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.22.sroa.0.5.i100354, i64 24 ; 4 uses
  %i.bv = getelementptr i8, ptr %.sroa.22.sroa.0.5.i100354, i64 16
  %.val4.i.i.i.i.us.i.i = load i64, ptr %i.bv, align 8, !noalias !758, !noundef !12 ; 3 uses
  %i.bw = icmp eq i64 %.val4.i.i.i.i.us.i.i, 0
  br i1 %i.bw, label %select.unfold.i.i.i.i.us.i.i, label %.split.us.preheader.i96.loopexit.i.loopexit

select.unfold.i.i.i.i.us.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.us.i.i
  %i.bx = getelementptr i8, ptr %.sroa.22.sroa.0.5.i100354, i64 8
  %.val.i.i.i.i.us.i.i.le484 = load ptr, ptr %i.bx, align 8, !noalias !758, !nonnull !12, !noundef !12
  %.idx.le481 = shl nuw nsw i64 %.val4.i.i.i.i.us.i.i, 5
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us.i.i.le484, i64 %.idx.le481
  br label %select.unfold.i.i.i.i.us.i.i._crit_edge

select.unfold.i.i.i.i.us.i.i._crit_edge:          ; preds = %select.unfold.i.i.i.i.us.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.us.i.i.preheader
  %.sroa.22.sroa.0.5.i100.lcssa = phi ptr [ %.sroa.22.sroa.0.4.i, %select.unfold.i.i.i.i.us.i.i.preheader ], [ %i.bu, %select.unfold.i.i.i.i.us.i.i._crit_edge.loopexit ]
  %.sroa.22.sroa.29.5.i99.lcssa = phi ptr [ %.sroa.22.sroa.29.4.i, %select.unfold.i.i.i.i.us.i.i.preheader ], [ %i.by, %select.unfold.i.i.i.i.us.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.us.i.i = icmp eq ptr %.sroa.22.sroa.37.4.i, null
  %i.bz = icmp eq ptr %.sroa.22.sroa.37.4.i, %.sroa.22.sroa.45.2.i
  %or.cond.i = select i1 %.not.i7.i.i.i.i.us.i.i, i1 true, i1 %i.bz
  br i1 %or.cond.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i, label %.split.us.preheader.i96.loopexit345.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i: ; preds = %select.unfold.i.i.i.i.us.i.i._crit_edge, %.split.us.i.i
  %.not1.us.i.i = icmp eq ptr %.sroa.6.2.i, null
  br i1 %.not1.us.i.i, label %bb.j, label %.split.us.i.i

.split.us.preheader.i96.loopexit.i.loopexit:      ; preds = %.preheader.i
  %i.ca = getelementptr i8, ptr %.sroa.22.sroa.0.5.i100354, i64 8
  %.val.i.i.i.i.us.i.i.le = load ptr, ptr %i.ca, align 8, !noalias !758, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i.us.i.i, 5
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.us.i.i.le, i64 %.idx.le
  br label %.split.us.preheader.i96.loopexit.i

.split.us.preheader.i96.loopexit.i:               ; preds = %.preheader.i.preheader, %.split.us.preheader.i96.loopexit.i.loopexit
  %.sroa.22.sroa.29.5.i.lcssa = phi ptr [ %i.cb, %.split.us.preheader.i96.loopexit.i.loopexit ], [ %.sroa.22.sroa.29.4.i, %.preheader.i.preheader ]
  %.sroa.22.sroa.17.6.i.lcssa = phi ptr [ %.val.i.i.i.i.us.i.i.le, %.split.us.preheader.i96.loopexit.i.loopexit ], [ %.sroa.22.sroa.17.5.i, %.preheader.i.preheader ] ; 2 uses
  %.sroa.22.sroa.0.5.i.lcssa = phi ptr [ %i.bu, %.split.us.preheader.i96.loopexit.i.loopexit ], [ %.sroa.22.sroa.0.4.i, %.preheader.i.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.22.sroa.17.6.i.lcssa, i64 32
  br label %.split.us.preheader.i96.i

.split.us.preheader.i96.loopexit345.i:            ; preds = %select.unfold.i.i.i.i.us.i.i._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.22.sroa.37.4.i, i64 32
  br label %.split.us.preheader.i96.i

.split.us.preheader.i96.i:                        ; preds = %.split.us.preheader.i96.loopexit345.i, %.split.us.preheader.i96.loopexit.i
  %.sroa.22.sroa.29.5.i82 = phi ptr [ %.sroa.22.sroa.29.5.i.lcssa, %.split.us.preheader.i96.loopexit.i ], [ %.sroa.22.sroa.29.5.i99.lcssa, %.split.us.preheader.i96.loopexit345.i ]
  %.sroa.22.sroa.0.5.i79 = phi ptr [ %.sroa.22.sroa.0.5.i.lcssa, %.split.us.preheader.i96.loopexit.i ], [ %.sroa.22.sroa.0.5.i100.lcssa, %.split.us.preheader.i96.loopexit345.i ]
  %.sroa.22.sroa.37.0.i = phi ptr [ %.sroa.22.sroa.37.4.i, %.split.us.preheader.i96.loopexit.i ], [ %i.cd, %.split.us.preheader.i96.loopexit345.i ]
  %.sroa.22.sroa.17.1.i = phi ptr [ %i.cc, %.split.us.preheader.i96.loopexit.i ], [ null, %.split.us.preheader.i96.loopexit345.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.22.sroa.17.6.i.lcssa, %.split.us.preheader.i96.loopexit.i ], [ %.sroa.22.sroa.37.4.i, %.split.us.preheader.i96.loopexit345.i ]
  %i.ce = tail call noundef nonnull align 8 ptr %.sroa.13.3.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i) #45, !noalias !759, !inline_history !587 ; 2 uses
  br label %.split.us.i98.i

.split.us.i98.i:                                  ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i, %.split.us.preheader.i96.i
  %.sroa.22.sroa.45.4.i = phi ptr [ %.sroa.22.sroa.45.2.i, %.split.us.preheader.i96.i ], [ %.sroa.9282.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i ]
  %.sroa.22.sroa.37.8.i = phi ptr [ %.sroa.22.sroa.37.0.i, %.split.us.preheader.i96.i ], [ %.sroa.8281.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i ] ; 3 uses
  %.sroa.22.sroa.29.8.i = phi ptr [ %.sroa.22.sroa.29.5.i82, %.split.us.preheader.i96.i ], [ %.sroa.7280.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i ]
  %.sroa.22.sroa.17.10.i = phi ptr [ %.sroa.22.sroa.17.1.i, %.split.us.preheader.i96.i ], [ %.sroa.6279.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i ] ; 3 uses
  %.sroa.22.sroa.13.4.i = phi ptr [ %.sroa.22.sroa.13.2.i, %.split.us.preheader.i96.i ], [ %.sroa.5278.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i ]
  %.sroa.22.sroa.0.8.i = phi ptr [ %.sroa.22.sroa.0.5.i79, %.split.us.preheader.i96.i ], [ %.sroa.4277.0.copyload.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i ]
  %.sroa.0.0.copyload2242.us.i99.i = phi ptr [ %.sroa.6.2.i, %.split.us.preheader.i96.i ], [ null, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i ] ; 2 uses
  %.sroa.0.0.copyload2240.us.i100.i = phi ptr [ %.sroa.13.3.i, %.split.us.preheader.i96.i ], [ %.sroa.0.0.copyload2242.us.i99.i, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i ]
  %.not.i.i.i.i.i.us.i106387.i = icmp eq ptr %.sroa.22.sroa.17.10.i, null
  %i.cf = icmp eq ptr %.sroa.22.sroa.17.10.i, %.sroa.22.sroa.29.8.i
  %or.cond331388.i = select i1 %.not.i.i.i.i.i.us.i106387.i, i1 true, i1 %i.cf
  br i1 %or.cond331388.i, label %select.unfold.i.i.i.i.us.i109.i, label %.loopexit343.i

select.unfold.i.i.i.i.us.i109.i:                  ; preds = %.split.us.i98.i, %bb.h
  %i.cg = phi ptr [ %i.ci, %bb.h ], [ %.sroa.22.sroa.0.8.i, %.split.us.i98.i ] ; 5 uses
  %.not.i5.i.i.i.i.us.i110.i = icmp eq ptr %i.cg, null
  %i.ch = icmp eq ptr %i.cg, %.sroa.22.sroa.13.4.i
  %or.cond.i.i.i.i.i.us.i111.i = select i1 %.not.i5.i.i.i.i.us.i110.i, i1 true, i1 %i.ch
  br i1 %or.cond.i.i.i.i.i.us.i111.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %select.unfold.i.i.i.i.us.i109.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cj = getelementptr i8, ptr %i.cg, i64 16
  %.val4.i.i.i.i.us.i113.i = load i64, ptr %i.cj, align 8, !noalias !760, !noundef !12
  %i.ck = icmp eq i64 %.val4.i.i.i.i.us.i113.i, 0
  br i1 %i.ck, label %select.unfold.i.i.i.i.us.i109.i, label %.loopexit343.loopexit.i

bb.i:                                             ; preds = %select.unfold.i.i.i.i.us.i109.i
  %.not.i7.i.i.i.i.us.i114.i = icmp eq ptr %.sroa.22.sroa.37.8.i, null
  %i.cl = icmp eq ptr %.sroa.22.sroa.37.8.i, %.sroa.22.sroa.45.4.i
  %or.cond333.i = select i1 %.not.i7.i.i.i.i.us.i114.i, i1 true, i1 %i.cl
  br i1 %or.cond333.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i, label %.loopexit343.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i117.i: ; preds = %bb.i
  %.not1.us.i118.i = icmp eq ptr %.sroa.0.0.copyload2242.us.i99.i, null
  br i1 %.not1.us.i118.i, label %bb.y, label %.split.us.i98.i

bb.j:                                             ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEEINtB5_8FuseImplBY_E4nextCsl8pJiQOn4hA_9coreutils.exit.us.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @375, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376) #50, !noalias !751
  unreachable

.loopexit343.loopexit.i:                          ; preds = %bb.h
  %i.cm = getelementptr i8, ptr %i.cg, i64 8
  %.val.i.i.i.i.us.i112.i = load ptr, ptr %i.cm, align 8, !noalias !760, !nonnull !12, !noundef !12
  br label %.loopexit343.i

.loopexit343.i:                                   ; preds = %bb.i, %.split.us.i98.i, %.loopexit343.loopexit.i
  %.sroa.0.0.i.i.i.i.i64.i = phi ptr [ %.val.i.i.i.i.us.i112.i, %.loopexit343.loopexit.i ], [ %.sroa.22.sroa.17.10.i, %.split.us.i98.i ], [ %.sroa.22.sroa.37.8.i, %bb.i ]
  %i.cn = tail call noundef nonnull align 8 ptr %.sroa.0.0.copyload2240.us.i100.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i64.i) #45, !noalias !761, !inline_history !587 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !751
  store i64 0, ptr %i.am, align 8, !noalias !751
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !751
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !751
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !751, !nonnull !12, !noundef !12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !751, !noundef !12
  store i64 1, ptr %i.al, align 8, !noalias !751
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.cp, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !751
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.cr, ptr %.sroa.539.0..sroa_idx.i, align 8, !noalias !751
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 1, ptr %i.cs, align 8, !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !762
  store i64 0, ptr %i.s, align 8, !noalias !762
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !762
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !762
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 1610612768, ptr %i.ct, align 8, !noalias !762
  store ptr %i.s, ptr %i.r, align 8, !noalias !762
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @113, ptr %i.cu, align 8, !noalias !762
  %i.cv = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #45, !noalias !763
  br i1 %i.cv, label %bb.k, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.k:                                             ; preds = %.loopexit343.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1323, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @895, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1325) #50, !noalias !763
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.loopexit343.i
  %.sroa.0244.0.copyload245.i = load i64, ptr %i.s, align 8, !noalias !764 ; 3 uses
  %.sroa.5.0.copyload248.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !764, !nonnull !12, !noundef !12 ; 8 uses
  %.sroa.8.0.copyload251.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !764 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !751
  switch i64 %.sroa.8.0.copyload251.i, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i
  %i.cw = load i8, ptr %.sroa.5.0.copyload248.i, align 1, !alias.scope !765, !noalias !751, !noundef !12 ; 2 uses
  switch i8 %i.cw, label %bb.m [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i
  %.pr.i.i = load i8, ptr %.sroa.5.0.copyload248.i, align 1, !alias.scope !765, !noalias !751
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split.i.i, %bb.l
  %i.cx = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.cw, %bb.l ]
  switch i8 %i.cx, label %bb.t [
    i8 43, label %bb.n
    i8 45, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload248.i, i64 1
  %i.cz = add nsw i64 %.sroa.8.0.copyload251.i, -1
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload248.i, i64 1 ; 2 uses
  %i.db = add nsw i64 %.sroa.8.0.copyload251.i, -1 ; 3 uses
  %i.dc = icmp samesign ult i64 %.sroa.8.0.copyload251.i, 17
  br i1 %i.dc, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.o
  %.not103137.i.i = icmp eq i64 %i.db, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.r
  %.sroa.0.1136.i.i = phi ptr [ %i.dd, %bb.r ], [ %i.da, %bb.o ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.de, %bb.r ], [ %i.db, %bb.o ]
  %.sroa.084.0134.i.i = phi i64 [ %i.dp, %bb.r ], [ 0, %bb.o ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.de = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.df = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 0
  %i.dh = extractvalue { i64, i1 } %i.df, 1
  br i1 %i.dh, label %.loopexit.i, label %bb.p, !prof !18

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.di = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !765, !noalias !751, !noundef !12
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.dg, i64 %i.dm) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 1
  br i1 %i.do, label %.loopexit.i, label %bb.r, !prof !18

bb.r:                                             ; preds = %bb.q
  %i.dp = extractvalue { i64, i1 } %i.dn, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.de, 0
end_hunk_0
begin_hunk_1_@_RINvCs4jkuqUqsG0h_8uu_shred6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBB_6cloned6ClonedINtNtNtBF_5slice4iter4IterB2c_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i74.i, align 8, !noalias !2422
  %i.gn = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.gn, align 8, !noalias !2422
  %.sroa.46.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i75.i, align 8, !noalias !2422
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !2424
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit76.i: ; preds = %bb.as
  %i.go = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !2421, !noalias !2397, !align !23, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2397
  %.not54.i = icmp eq ptr %i.gp, null
  br i1 %.not54.i, label %bb.av, label %bb.au, !prof !18

bb.au:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit76.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !2397, !nonnull !12, !noundef !12 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !2397, !noundef !12
  switch i64 %i.gt, label %bb.av [
    i64 6, label %bb.aw
    i64 4, label %bb.ax
    i64 8, label %bb.ay
  ], !prof !41

bb.av:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit76.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @419, ptr noundef nonnull inttoptr (i64 133 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #50, !noalias !2397
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.gu = load i32, ptr %i.gr, align 1
  %i.gv = xor i32 %i.gu, 1768713845
  %i.gw = getelementptr i8, ptr %i.gr, i64 4
  %i.gx = load i16, ptr %i.gw, align 1
  %i.gy = zext i16 %i.gx to i32
  %i.gz = xor i32 %i.gy, 27502
  %i.ha = or i32 %i.gv, %i.gz
  %i.hb = icmp ne i32 %i.ha, 0
  %i.hc = zext i1 %i.hb to i32
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.az, label %bb.av

bb.ax:                                            ; preds = %bb.au
  %i.he = load i32, ptr %i.gr, align 1
  %i.hf = icmp ne i32 %i.he, 1701865847
  %i.hg = zext i1 %i.hf to i32
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.az, label %bb.av

bb.ay:                                            ; preds = %bb.au
  %i.hi = load i64, ptr %i.gr, align 1
  %i.hj = icmp ne i64 %i.hi, 7164797593723103607
  %i.hk = zext i1 %i.hj to i32
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.az, label %bb.av, !prof !11

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar, %bb.ao
  %.sroa.021.1.i = phi i8 [ 3, %bb.ao ], [ 0, %bb.ar ], [ 2, %bb.ax ], [ 1, %bb.aw ], [ 3, %bb.ay ]
  %i.hm = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @421, i64 noundef 5) #45, !noalias !2397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2397
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @422, i64 noundef 4) #45, !noalias !2397
  call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2397
  store ptr @422, ptr %i.q, align 8, !noalias !2426
  %i.hn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 4, ptr %i.hn, align 8, !noalias !2426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2426
  %i.ho = load i64, ptr %i.ak, align 8, !range !26, !alias.scope !2425, !noalias !2397, !noundef !12
  %.not.i77.i = icmp eq i64 %i.ho, 2
  br i1 %.not.i77.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit80.i, label %bb.ba, !prof !11

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ak, i64 40, i1 false), !noalias !2427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2426
  store ptr %i.q, ptr %i.o, align 8, !noalias !2426
  %.sroa.42.0..sroa_idx.i78.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i78.i, align 8, !noalias !2426
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.hp, align 8, !noalias !2426
  %.sroa.46.0..sroa_idx.i79.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i79.i, align 8, !noalias !2426
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !2428
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit80.i: ; preds = %bb.az
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !alias.scope !2425, !noalias !2397, !align !23, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2397
  %.not57.i = icmp eq ptr %i.hr, null
  br i1 %.not57.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit80.i
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hr) #45, !noalias !2397
  br label %bb.bd

bb.bc:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit80.i
  store i64 -1, ptr %i.au, align 8, !noalias !2397
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hs = call { i64, i64 } @_RNvCs4jkuqUqsG0h_8uu_shred8get_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.au) #45, !noalias !2397 ; 2 uses
  %i.ht = extractvalue { i64, i64 } %i.hs, 0      ; 2 uses
  %i.hu = extractvalue { i64, i64 } %i.hs, 1
  %i.hv = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @423, i64 noundef 5) #45, !noalias !2397
  %i.hw = icmp eq i64 %i.ht, 1
  %.sroa.032.0.i = select i1 %i.hv, i1 true, i1 %i.hw
  %i.hx = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 4) #45, !noalias !2397
  %i.hy = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @424, i64 noundef 7) #45, !noalias !2397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2397
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4) #45, !noalias !2397
  call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2397
  store ptr @181, ptr %i.n, align 8, !noalias !2431
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 4, ptr %i.hz, align 8, !noalias !2431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2431
  %i.ia = load i64, ptr %i.aj, align 8, !range !16, !alias.scope !2430, !noalias !2397, !noundef !12
  %i.ib = trunc nuw i64 %i.ia to i1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  br i1 %i.ib, label %bb.be, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ic, i64 40, i1 false), !noalias !2432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2431
  store ptr %i.n, ptr %i.l, align 8, !noalias !2431
  %.sroa.42.0..sroa_idx.i81.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i81.i, align 8, !noalias !2431
  %i.id = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.id, align 8, !noalias !2431
  %.sroa.46.0..sroa_idx.i82.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i82.i, align 8, !noalias !2431
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !2433
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.bd
  %.sroa.091.0.copyload92.i = load ptr, ptr %i.ic, align 8, !alias.scope !2434, !noalias !2397 ; 2 uses
  %.sroa.593.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.593.sroa.0.0.copyload.i = load ptr, ptr %.sroa.593.0..sroa_idx94.i, align 8, !alias.scope !2434, !noalias !2397
  %.sroa.593.sroa.4.0..sroa.593.0..sroa_idx94.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.593.sroa.4.0.copyload.i = load ptr, ptr %.sroa.593.sroa.4.0..sroa.593.0..sroa_idx94.sroa_idx.i, align 8, !alias.scope !2434, !noalias !2397 ; 2 uses
  %.sroa.593.sroa.5.0..sroa.593.0..sroa_idx94.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.593.sroa.5.0.copyload.i = load ptr, ptr %.sroa.593.sroa.5.0..sroa.593.0..sroa_idx94.sroa_idx.i, align 8, !alias.scope !2434, !noalias !2397
  %.sroa.593.sroa.6.0..sroa.593.0..sroa_idx94.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.593.sroa.6.0.copyload.i = load ptr, ptr %.sroa.593.sroa.6.0..sroa.593.0..sroa_idx94.sroa_idx.i, align 8, !alias.scope !2434, !noalias !2397
  %.sroa.593.sroa.7.0..sroa.593.0..sroa_idx94.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.593.sroa.7.0.copyload.i = load ptr, ptr %.sroa.593.sroa.7.0..sroa.593.0..sroa_idx94.sroa_idx.i, align 8, !alias.scope !2434, !noalias !2397
  %.sroa.593.sroa.8.0..sroa.593.0..sroa_idx94.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.593.sroa.8.0.copyload.i = load ptr, ptr %.sroa.593.sroa.8.0..sroa.593.0..sroa_idx94.sroa_idx.i, align 8, !alias.scope !2434, !noalias !2397 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2397
  %.not58.i = icmp eq ptr %.sroa.091.0.copyload92.i, null
  br i1 %.not58.i, label %bb.bf, label %.preheader.i, !prof !18

.preheader.i:                                     ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.bg

bb.bf:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #50, !noalias !2397
  unreachable

bb.bg:                                            ; preds = %.backedge, %.preheader.i
  %.sroa.13.0.i = phi ptr [ %.sroa.593.sroa.7.0.copyload.i, %.preheader.i ], [ %.sroa.13.1.i, %.backedge ] ; 5 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.593.sroa.6.0.copyload.i, %.preheader.i ], [ %.sroa.11.1.i69, %.backedge ] ; 3 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.593.sroa.5.0.copyload.i, %.preheader.i ], [ %.sroa.8.2.i, %.backedge ] ; 3 uses
  %.sroa.4.0.i = phi ptr [ %.sroa.593.sroa.0.0.copyload.i, %.preheader.i ], [ %.sroa.4.1.i66, %.backedge ] ; 5 uses
  %.not.i.i.i.i75 = icmp eq ptr %.sroa.8.0.i, null
  %i.il = icmp eq ptr %.sroa.8.0.i, %.sroa.11.0.i
  %or.cond196.i76 = select i1 %.not.i.i.i.i75, i1 true, i1 %i.il
  br i1 %or.cond196.i76, label %select.unfold.i.i.i.preheader, label %.loopexit.i

select.unfold.i.i.i.preheader:                    ; preds = %bb.bg
  %.not.i5.i.i.i168 = icmp eq ptr %.sroa.4.0.i, null
  %i.im = icmp eq ptr %.sroa.4.0.i, %.sroa.593.sroa.4.0.copyload.i
  %or.cond.i.i.i.i169 = select i1 %.not.i5.i.i.i168, i1 true, i1 %i.im
  br i1 %or.cond.i.i.i.i169, label %select.unfold.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i:                              ; preds = %.lr.ph
  %i.in = icmp eq ptr %i.io, %.sroa.593.sroa.4.0.copyload.i
  br i1 %i.in, label %select.unfold.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.preheader, %select.unfold.i.i.i
  %.sroa.4.1.i78170 = phi ptr [ %i.io, %select.unfold.i.i.i ], [ %.sroa.4.0.i, %select.unfold.i.i.i.preheader ] ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i78170, i64 24 ; 4 uses
  %i.ip = getelementptr i8, ptr %.sroa.4.1.i78170, i64 16
  %.val4.i.i.i = load i64, ptr %i.ip, align 8, !noalias !2435, !noundef !12 ; 3 uses
  %i.iq = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.iq, label %select.unfold.i.i.i, label %.loopexit.i.loopexit

select.unfold.i.i.i._crit_edge.loopexit:          ; preds = %select.unfold.i.i.i
  %i.ir = getelementptr i8, ptr %.sroa.4.1.i78170, i64 8
  %.val.i.i85.i.le205 = load ptr, ptr %i.ir, align 8, !noalias !2435, !nonnull !12, !noundef !12
  %.idx.le203 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.is = getelementptr inbounds nuw i8, ptr %.val.i.i85.i.le205, i64 %.idx.le203
  br label %select.unfold.i.i.i._crit_edge

select.unfold.i.i.i._crit_edge:                   ; preds = %select.unfold.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.preheader
  %.sroa.4.1.i78.lcssa = phi ptr [ %.sroa.4.0.i, %select.unfold.i.i.i.preheader ], [ %i.io, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.sroa.11.1.i77.lcssa = phi ptr [ %.sroa.11.0.i, %select.unfold.i.i.i.preheader ], [ %i.is, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i = icmp eq ptr %.sroa.13.0.i, null
  br i1 %.not.i7.i.i.i, label %bb.bi, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %select.unfold.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.593.sroa.8.0.copyload.i) ]
  %i.it = icmp eq ptr %.sroa.13.0.i, %.sroa.593.sroa.8.0.copyload.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i, i64 32
  br i1 %i.it, label %bb.bi, label %bb.bh

.loopexit.i.loopexit:                             ; preds = %.lr.ph
  %i.iv = getelementptr i8, ptr %.sroa.4.1.i78170, i64 8
  %.val.i.i85.i.le = load ptr, ptr %i.iv, align 8, !noalias !2435, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i.i85.i.le, i64 %.idx.le
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.bg
  %.sroa.11.1.i.lcssa = phi ptr [ %.sroa.11.0.i, %bb.bg ], [ %i.iw, %.loopexit.i.loopexit ]
  %.sroa.8.1.i.lcssa = phi ptr [ %.sroa.8.0.i, %bb.bg ], [ %.val.i.i85.i.le, %.loopexit.i.loopexit ] ; 2 uses
  %.sroa.4.1.i.lcssa = phi ptr [ %.sroa.4.0.i, %bb.bg ], [ %i.io, %.loopexit.i.loopexit ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i.lcssa, i64 32
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.i, %.sink.split.i8.i.i.i
  %.sroa.11.1.i69 = phi ptr [ %.sroa.11.1.i77.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.11.1.i.lcssa, %.loopexit.i ]
  %.sroa.4.1.i66 = phi ptr [ %.sroa.4.1.i78.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.4.1.i.lcssa, %.loopexit.i ]
  %.sroa.13.1.i = phi ptr [ %i.iu, %.sink.split.i8.i.i.i ], [ %.sroa.13.0.i, %.loopexit.i ]
  %.sroa.8.2.i = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.ix, %.loopexit.i ]
  %.sroa.0.0.i.i83.i = phi ptr [ %.sroa.13.0.i, %.sink.split.i8.i.i.i ], [ %.sroa.8.1.i.lcssa, %.loopexit.i ]
  %i.iy = call noundef nonnull align 8 ptr %.sroa.091.0.copyload92.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i83.i) #45, !noalias !2436, !inline_history !2343
  %i.iz = load i64, ptr %i.aw, align 8, !range !16, !noalias !2397, !noundef !12
  %i.ja = trunc nuw i64 %i.iz to i1
  %.sroa.039.0.i = select i1 %i.ja, ptr %i.ie, ptr null
  %i.jb = call { ptr, ptr } @_RNvCs4jkuqUqsG0h_8uu_shred9wipe_file(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iy, i64 noundef %.sroa.1289.0.i, i8 noundef %.sroa.021.1.i, i64 noundef %i.ht, i64 %i.hu, i1 noundef zeroext %.sroa.032.0.i, i1 noundef zeroext %i.hx, ptr noundef align 8 %.sroa.039.0.i, i1 noundef zeroext %i.hy, i1 noundef zeroext %i.hm) #45, !noalias !2397 ; 2 uses
  %i.jc = extractvalue { ptr, ptr } %i.jb, 0      ; 3 uses
  %.not60.i = icmp eq ptr %i.jc, null
  br i1 %.not60.i, label %.backedge, label %bb.bk

bb.bi:                                            ; preds = %.sink.split.i8.i.i.i, %select.unfold.i.i.i._crit_edge
  %.val64.i = load i64, ptr %i.aw, align 8, !range !16, !noalias !2397, !noundef !12
  %i.jd = icmp eq i64 %.val64.i, 0
  br i1 %i.jd, label %bb.by, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.je = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val65.i = load i32, ptr %i.je, align 8, !noalias !2397
  %i.jf = call noundef i32 @close(i32 noundef %.val65.i) #45, !noalias !2437 ; 0 uses
  br label %bb.by

bb.bk:                                            ; preds = %bb.bh
  %i.jg = extractvalue { ptr, ptr } %i.jb, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jg) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2397
  store ptr %i.jc, ptr %i.at, align 8, !noalias !2397
  store ptr %i.jg, ptr %i.if, align 8, !noalias !2397
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 88
  %i.ji = load ptr, ptr %i.jh, align 8, !invariant.load !12, !noalias !2397, !nonnull !12
  %i.jj = call noundef i32 %i.ji(ptr noundef nonnull %i.jc) #51, !noalias !2397, !inline_history !2346
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef %i.jj) #45, !noalias !2397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2397
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.ar, align 8, !noalias !2397
  %i.jk = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar) #45, !noalias !2397
  store ptr %i.jk, ptr %i.as, align 8, !noalias !2397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2397
  %i.jl = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #45, !noalias !2397 ; 2 uses
  %i.jm = extractvalue { ptr, i64 } %i.jl, 0
  %i.jn = extractvalue { ptr, i64 } %i.jl, 1
  store ptr %i.jm, ptr %i.aq, align 8, !noalias !2397
  store i64 %i.jn, ptr %i.ig, align 8, !noalias !2397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2397
  store ptr %i.aq, ptr %i.ap, align 8, !noalias !2397
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !2397
  store ptr %i.at, ptr %i.ih, align 8, !noalias !2397
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !2397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2438
  store ptr %i.as, ptr %i.k, align 8, !noalias !2438
  store ptr null, ptr %i.ii, align 8, !noalias !2438
  %i.jo = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull @86, ptr noundef nonnull %i.ap) #45, !noalias !2397
  %i.jp = load ptr, ptr %i.ii, align 8, !noalias !2438, !noundef !12 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.jp, null          ; 2 uses
  br i1 %i.jo, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not.i5.i.i, label %bb.bq, label %bb.br, !prof !18

bb.bm:                                            ; preds = %bb.bk
  br i1 %.not.i5.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2439
  %i.jq = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.jr = and i64 %i.jq, 3
  switch i64 %i.jr, label %.unreachabledefault [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
    i64 3, label %bb.bo
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
    i64 1, label %bb.bp
  ], !prof !22

.unreachabledefault:                              ; preds = %bb.bn
  unreachable

default.unreachable:                              ; preds = %bb.br, %bb.cx, %bb.cq, %bb.cm, %bb.ch, %bb.cd
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.js = icmp ult ptr %i.jp, inttoptr (i64 188978561024 to ptr)
  %i.jt = and i64 %i.jq, 1095216660480
  %i.ju = icmp ne i64 %i.jt, 1095216660480
  call void @llvm.assume(i1 %i.js)
  call void @llvm.assume(i1 %i.ju)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.jv = getelementptr i8, ptr %i.jp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jv) ]
  store ptr %i.jv, ptr %i.ij, align 8, !alias.scope !2440, !noalias !2439
  store i8 3, ptr %i.j, align 8, !alias.scope !2440, !noalias !2439
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ij) #45, !noalias !2441
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2439
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i

bb.bq:                                            ; preds = %bb.bl
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50, !noalias !2397
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2438
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i

bb.br:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2442
  %i.jw = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.jx = and i64 %i.jw, 3
  switch i64 %i.jx, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 3, label %bb.bs
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 1, label %bb.bt
  ], !prof !22

bb.bs:                                            ; preds = %bb.br
  %i.jy = icmp ult ptr %i.jp, inttoptr (i64 188978561024 to ptr)
  %i.jz = and i64 %i.jw, 1095216660480
  %i.ka = icmp ne i64 %i.jz, 1095216660480
  call void @llvm.assume(i1 %i.jy)
  call void @llvm.assume(i1 %i.ka)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %i.kb = getelementptr i8, ptr %i.jp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kb) ]
  store ptr %i.kb, ptr %i.ik, align 8, !alias.scope !2443, !noalias !2442
  store i8 3, ptr %i.i, align 8, !alias.scope !2443, !noalias !2442
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ik) #45, !noalias !2442
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2442
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2397
  %.val61.i = load ptr, ptr %i.as, align 8, !noalias !2397, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.val61.i, i64 12 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !noalias !2397, !noundef !12
  %i.ke = add i32 %i.kd, -1                       ; 2 uses
  store i32 %i.ke, ptr %i.kc, align 4, !noalias !2397
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i
  store atomic i64 0, ptr %.val61.i monotonic, align 8, !noalias !2397
  %i.kg = getelementptr inbounds nuw i8, ptr %.val61.i, i64 8 ; 2 uses
  %i.kh = atomicrmw xchg ptr %i.kg, i32 0 release, align 4, !noalias !2397
  %i.ki = icmp eq i32 %i.kh, 2
  br i1 %i.ki, label %bb.bv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.kg) #45, !noalias !2397
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.bv, %bb.bu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2397
  call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  %i.kj = load ptr, ptr %i.if, align 8, !alias.scope !2444, !noalias !2397, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !invariant.load !12, !noalias !2445 ; 2 uses
  %.not.i88.i = icmp eq ptr %i.kk, null
end_hunk_1
begin_hunk_2_@_RINvCs84qwSrTN5pO_7uu_shuf6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBA_6cloned6ClonedINtNtNtBE_5slice4iter4IterB2b_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !4591
  store i128 -12630734422621193048572402303668315688, ptr %i.bq, align 16, !noalias !4591
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ei, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.bq) #45, !noalias !4591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !4591
  %.sroa.013.0.copyload.i.i.i = load i128, ptr %i.br, align 16, !noalias !4591 ; 3 uses
  %i.ej = icmp eq i128 %.sroa.013.0.copyload.i.i.i, -12630734422621193048572402303668315688
  br i1 %i.ej, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !4591
  %i.ek = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ei) #45, !noalias !4592 ; 3 uses
  %.not8.i.i = icmp eq ptr %i.ek, null
  br i1 %.not8.i.i, label %.loopexit808.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i = load ptr, ptr %i.ek, align 8, !noalias !4592, !nonnull !12, !noundef !12
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %.val10.i.i = load ptr, ptr %i.el, align 8, !noalias !4592, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.en = load i64, ptr %i.em, align 8, !range !25, !invariant.load !12, !noalias !4592
  %i.eo = add nsw i64 %i.en, -1
  %i.ep = and i64 %i.eo, -16
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ep ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !4592
  %i.es = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !invariant.load !12, !noalias !4592, !nonnull !12
  call void %i.et(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bp, ptr noundef nonnull %i.er) #51, !noalias !4592, !inline_history !4147
  %i.eu = load i128, ptr %i.bp, align 16, !noalias !4592, !noundef !12
  %.not.i.i = icmp eq i128 %i.eu, -12630734422621193048572402303668315688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !4592
  br i1 %.not.i.i, label %bb.p, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #50, !noalias !4592
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.ev = lshr i128 %.sroa.013.0.copyload.i.i.i, 64
  %i.ew = trunc nuw i128 %i.ev to i64
  %i.ex = trunc i128 %.sroa.013.0.copyload.i.i.i to i64
  %i.ey = inttoptr i64 %i.ex to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !4591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !4583
  store ptr %i.dt, ptr %i.bo, align 8, !noalias !4593
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.du, ptr %i.ez, align 8, !noalias !4593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !4593
  store i64 0, ptr %i.bn, align 8, !noalias !4594
  %.sroa.7648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.ey, ptr %.sroa.7648.0..sroa_idx.i, align 8, !noalias !4594
  %.sroa.11649.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.ew, ptr %.sroa.11649.0..sroa_idx.i, align 8, !noalias !4594
  %.sroa.12650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i128 -12630734422621193048572402303668315688, ptr %.sroa.12650.0..sroa_idx.i, align 8, !noalias !4594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !4593
  store ptr %i.bo, ptr %i.bm, align 8, !noalias !4593
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !4593
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bn, ptr %i.fa, align 8, !noalias !4593
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !4593
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !4595
  unreachable

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !4583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !4583
  %i.fb = load ptr, ptr @_RNvNtCs84qwSrTN5pO_7uu_shuf7options12FILE_OR_ARGS, align 8, !noalias !4583, !nonnull !12, !noundef !12 ; 2 uses
  %i.fc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs84qwSrTN5pO_7uu_shuf7options12FILE_OR_ARGS, i64 8), align 8, !noalias !4583, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !4583
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.fc) #45, !noalias !4583
  call void @llvm.experimental.noalias.scope.decl(metadata !4596)
  call void @llvm.experimental.noalias.scope.decl(metadata !4597)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !4583
  store ptr %i.fb, ptr %i.bl, align 8, !noalias !4598
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.fc, ptr %i.fd, align 8, !noalias !4598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !4598
  %i.fe = load i64, ptr %i.by, align 8, !range !16, !alias.scope !4597, !noalias !4583, !noundef !12
  %i.ff = trunc nuw i64 %i.fe to i1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  br i1 %i.ff, label %bb.o, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.fg, i64 40, i1 false), !noalias !4599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !4598
  store ptr %i.bl, ptr %i.bj, align 8, !noalias !4598
  %.sroa.42.0..sroa_idx.i230.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i230.i, align 8, !noalias !4598
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bk, ptr %i.fh, align 8, !noalias !4598
  %.sroa.46.0..sroa_idx.i231.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i231.i, align 8, !noalias !4598
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !4600
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.n
  %.sroa.0513.0.copyload.i = load ptr, ptr %i.fg, align 8, !alias.scope !4601, !noalias !4583 ; 2 uses
  %.sroa.4.0..sroa_idx514.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.fi = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx514.i, align 8, !alias.scope !4601, !noalias !4583
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.fj = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4601, !noalias !4583
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.fk = load <2 x ptr>, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4601, !noalias !4583
  %.sroa.10516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %.sroa.10516.0.copyload.i = load i64, ptr %.sroa.10516.0..sroa_idx.i, align 8, !alias.scope !4601, !noalias !4583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !4598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !4583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !4583
  %.not196.i = icmp eq ptr %.sroa.0513.0.copyload.i, null
  br i1 %.not196.i, label %bb.ay, label %bb.ax

bb.p:                                             ; preds = %bb.k
  %i.fl = load i64, ptr %i.er, align 8, !alias.scope !4602, !noalias !4583, !noundef !12
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !4603, !noalias !4583, !noundef !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.fp = load i8, ptr %i.fo, align 8, !range !21, !alias.scope !4604, !noalias !4583, !noundef !12
  %.sroa.6653.16.insert.ext.i = zext nneg i8 %i.fp to i64
  %i.fq = inttoptr i64 %i.fn to ptr
  br label %bb.av

.loopexit808.i:                                   ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i, %bb.j, %bb.f
  %i.fr = load ptr, ptr @_RNvNtCs84qwSrTN5pO_7uu_shuf7options12FILE_OR_ARGS, align 8, !noalias !4583, !nonnull !12, !noundef !12 ; 2 uses
  %i.fs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs84qwSrTN5pO_7uu_shuf7options12FILE_OR_ARGS, i64 8), align 8, !noalias !4583, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !4583
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fr, i64 noundef %i.fs) #45, !noalias !4583
  call void @llvm.experimental.noalias.scope.decl(metadata !4605)
  call void @llvm.experimental.noalias.scope.decl(metadata !4606)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !4583
  store ptr %i.fr, ptr %i.bi, align 8, !noalias !4607
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.fs, ptr %i.ft, align 8, !noalias !4607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !4607
  %i.fu = load i64, ptr %i.bx, align 8, !range !16, !alias.scope !4606, !noalias !4583, !noundef !12
  %i.fv = trunc nuw i64 %i.fu to i1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  br i1 %i.fv, label %bb.q, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i, !prof !18

bb.q:                                             ; preds = %.loopexit808.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.fw, i64 40, i1 false), !noalias !4608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !4607
  store ptr %i.bi, ptr %i.bg, align 8, !noalias !4607
  %.sroa.42.0..sroa_idx.i232.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i232.i, align 8, !noalias !4607
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.bh, ptr %i.fx, align 8, !noalias !4607
  %.sroa.46.0..sroa_idx.i233.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i233.i, align 8, !noalias !4607
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !4609
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i: ; preds = %.loopexit808.i
  %.sroa.0530.0.copyload.i = load ptr, ptr %i.fw, align 8, !alias.scope !4610, !noalias !4583 ; 3 uses
  %.sroa.5531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.5531.0.copyload.i = load ptr, ptr %.sroa.5531.0..sroa_idx.i, align 8, !alias.scope !4610, !noalias !4583 ; 2 uses
  %.sroa.6532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.6532.0.copyload.i = load ptr, ptr %.sroa.6532.0..sroa_idx.i, align 8, !alias.scope !4610, !noalias !4583 ; 2 uses
  %.sroa.7533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.sroa.7533.0.copyload.i = load ptr, ptr %.sroa.7533.0..sroa_idx.i, align 8, !alias.scope !4610, !noalias !4583 ; 3 uses
  %.sroa.8534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %.sroa.8534.0.copyload.i = load ptr, ptr %.sroa.8534.0..sroa_idx.i, align 8, !alias.scope !4610, !noalias !4583 ; 3 uses
  %.sroa.9535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %.sroa.9535.0.copyload.i = load ptr, ptr %.sroa.9535.0..sroa_idx.i, align 8, !alias.scope !4610, !noalias !4583 ; 2 uses
  %.sroa.10536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %.sroa.10536.0.copyload.i = load ptr, ptr %.sroa.10536.0..sroa_idx.i, align 8, !alias.scope !4610, !noalias !4583 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !4607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !4583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !4583
  %.not192.i = icmp eq ptr %.sroa.0530.0.copyload.i, null
  br i1 %.not192.i, label %select.unfold.i.i.i.preheader, label %bb.r

bb.r:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i
  %.not.i.i.i.i141 = icmp eq ptr %.sroa.7533.0.copyload.i, null
  %i.fy = icmp eq ptr %.sroa.7533.0.copyload.i, %.sroa.8534.0.copyload.i
  %or.cond.i142 = select i1 %.not.i.i.i.i141, i1 true, i1 %i.fy
  br i1 %or.cond.i142, label %select.unfold.i.i.i.preheader, label %.loopexit807.i

select.unfold.i.i.i.preheader:                    ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i, %bb.r
  %.sroa.0523.0.i355 = phi ptr [ %.sroa.0530.0.copyload.i, %bb.r ], [ @_RNvYNCNvXsc_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtBa_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core7default7Default7default0INtNtNtB2d_3ops8function6FnOnceTRNtNtNtBg_4util9any_value8AnyValueEE9call_onceCsl8pJiQOn4hA_9coreutils, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i ] ; 4 uses
  %.sroa.7525.0.i352 = phi ptr [ %.sroa.5531.0.copyload.i, %bb.r ], [ @_RNvNvXsc_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB7_9ValuesRefpENtNtCs6JMX4GRUq9U_4core7default7Default7default5EMPTY, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i ] ; 4 uses
  %.sroa.12.0.i351 = phi ptr [ %.sroa.6532.0.copyload.i, %bb.r ], [ @_RNvNvXsc_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB7_9ValuesRefpENtNtCs6JMX4GRUq9U_4core7default7Default7default5EMPTY, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i ] ; 6 uses
  %.sroa.22.0.i347 = phi ptr [ %.sroa.8534.0.copyload.i, %bb.r ], [ undef, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i ]
  %.sroa.26.0.i345 = phi ptr [ %.sroa.9535.0.copyload.i, %bb.r ], [ null, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i ] ; 5 uses
  %.sroa.31.0.i344 = phi ptr [ %.sroa.10536.0.copyload.i, %bb.r ], [ undef, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit234.i ] ; 6 uses
  %.not.i5.i.i.i517 = icmp eq ptr %.sroa.7525.0.i352, null
  %i.fz = icmp eq ptr %.sroa.7525.0.i352, %.sroa.12.0.i351
  %or.cond.i.i.i.i518 = select i1 %.not.i5.i.i.i517, i1 true, i1 %i.fz
  br i1 %or.cond.i.i.i.i518, label %select.unfold.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i:                              ; preds = %.lr.ph
  %i.ga = icmp eq ptr %i.gb, %.sroa.12.0.i351
  br i1 %i.ga, label %select.unfold.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.preheader, %select.unfold.i.i.i
  %.sroa.7525.1.i144519 = phi ptr [ %i.gb, %select.unfold.i.i.i ], [ %.sroa.7525.0.i352, %select.unfold.i.i.i.preheader ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.7525.1.i144519, i64 24 ; 4 uses
  %i.gc = getelementptr i8, ptr %.sroa.7525.1.i144519, i64 16
  %.val4.i.i.i = load i64, ptr %i.gc, align 8, !noalias !4611, !noundef !12 ; 3 uses
  %i.gd = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.gd, label %select.unfold.i.i.i, label %.loopexit807.i.loopexit

select.unfold.i.i.i._crit_edge.loopexit:          ; preds = %select.unfold.i.i.i
  %i.ge = getelementptr i8, ptr %.sroa.7525.1.i144519, i64 8
  %.val.i.i.i.le663 = load ptr, ptr %i.ge, align 8, !noalias !4611, !nonnull !12, !noundef !12
  %.idx.le660 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le663, i64 %.idx.le660
  br label %select.unfold.i.i.i._crit_edge

select.unfold.i.i.i._crit_edge:                   ; preds = %select.unfold.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.preheader
  %.sroa.7525.1.i144.lcssa = phi ptr [ %.sroa.7525.0.i352, %select.unfold.i.i.i.preheader ], [ %i.gb, %select.unfold.i.i.i._crit_edge.loopexit ] ; 3 uses
  %.sroa.22.1.i143.lcssa = phi ptr [ %.sroa.22.0.i347, %select.unfold.i.i.i.preheader ], [ %i.gf, %select.unfold.i.i.i._crit_edge.loopexit ] ; 3 uses
  %.not.i7.i.i.i = icmp eq ptr %.sroa.26.0.i345, null
  br i1 %.not.i7.i.i.i, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %select.unfold.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.31.0.i344) ]
  %i.gg = icmp eq ptr %.sroa.26.0.i345, %.sroa.31.0.i344
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.26.0.i345, i64 32
  br i1 %i.gg, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.s

.loopexit807.i.loopexit:                          ; preds = %.lr.ph
  %i.gi = getelementptr i8, ptr %.sroa.7525.1.i144519, i64 8
  %.val.i.i.i.le = load ptr, ptr %i.gi, align 8, !noalias !4611, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.gj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le, i64 %.idx.le
  br label %.loopexit807.i

.loopexit807.i:                                   ; preds = %.loopexit807.i.loopexit, %bb.r
  %.sroa.0523.0.i354 = phi ptr [ %.sroa.0530.0.copyload.i, %bb.r ], [ %.sroa.0523.0.i355, %.loopexit807.i.loopexit ]
  %.sroa.12.0.i350 = phi ptr [ %.sroa.6532.0.copyload.i, %bb.r ], [ %.sroa.12.0.i351, %.loopexit807.i.loopexit ]
  %.sroa.26.0.i346 = phi ptr [ %.sroa.9535.0.copyload.i, %bb.r ], [ %.sroa.26.0.i345, %.loopexit807.i.loopexit ]
  %.sroa.31.0.i343 = phi ptr [ %.sroa.10536.0.copyload.i, %bb.r ], [ %.sroa.31.0.i344, %.loopexit807.i.loopexit ]
  %.sroa.22.1.i.lcssa = phi ptr [ %.sroa.8534.0.copyload.i, %bb.r ], [ %i.gj, %.loopexit807.i.loopexit ]
  %.sroa.15.1.i.lcssa = phi ptr [ %.sroa.7533.0.copyload.i, %bb.r ], [ %.val.i.i.i.le, %.loopexit807.i.loopexit ] ; 2 uses
  %.sroa.7525.1.i.lcssa = phi ptr [ %.sroa.5531.0.copyload.i, %bb.r ], [ %i.gb, %.loopexit807.i.loopexit ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.15.1.i.lcssa, i64 32
  br label %bb.s

bb.s:                                             ; preds = %.loopexit807.i, %.sink.split.i8.i.i.i
  %.sroa.0523.0.i353 = phi ptr [ %.sroa.0523.0.i355, %.sink.split.i8.i.i.i ], [ %.sroa.0523.0.i354, %.loopexit807.i ] ; 3 uses
  %.sroa.12.0.i349 = phi ptr [ %.sroa.12.0.i351, %.sink.split.i8.i.i.i ], [ %.sroa.12.0.i350, %.loopexit807.i ] ; 2 uses
  %.sroa.31.0.i342 = phi ptr [ %.sroa.31.0.i344, %.sink.split.i8.i.i.i ], [ %.sroa.31.0.i343, %.loopexit807.i ] ; 2 uses
  %.sroa.22.1.i138 = phi ptr [ %.sroa.22.1.i143.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.22.1.i.lcssa, %.loopexit807.i ] ; 2 uses
  %.sroa.7525.1.i134 = phi ptr [ %.sroa.7525.1.i144.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.7525.1.i.lcssa, %.loopexit807.i ] ; 2 uses
  %.sroa.26.1.i = phi ptr [ %i.gh, %.sink.split.i8.i.i.i ], [ %.sroa.26.0.i346, %.loopexit807.i ] ; 2 uses
  %.sroa.15.2.i = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.gk, %.loopexit807.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.26.0.i345, %.sink.split.i8.i.i.i ], [ %.sroa.15.1.i.lcssa, %.loopexit807.i ]
  %i.gl = call noundef nonnull align 8 ptr %.sroa.0523.0.i353(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !4612, !inline_history !4169 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %.val212.i = load ptr, ptr %i.gm, align 8, !noalias !4583, !nonnull !12, !noundef !12
  %i.gn = getelementptr i8, ptr %i.gl, i64 16
  %.val213.i = load i64, ptr %i.gn, align 8, !noalias !4583, !noundef !12 ; 6 uses
  %i.go = icmp eq i64 %.val213.i, 0
  br i1 %i.go, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !4613
  %i.gp = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val213.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !4613 ; 3 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val213.i) #52, !noalias !4614
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr nonnull readonly align 1 %.val212.i, i64 range(i64 0, -9223372036854775808) %.val213.i, i1 false), !noalias !4615
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.v, %bb.s, %.sink.split.i8.i.i.i, %select.unfold.i.i.i._crit_edge
  %.sroa.0523.0.i356 = phi ptr [ %.sroa.0523.0.i353, %bb.v ], [ %.sroa.0523.0.i353, %bb.s ], [ %.sroa.0523.0.i355, %select.unfold.i.i.i._crit_edge ], [ %.sroa.0523.0.i355, %.sink.split.i8.i.i.i ]
  %.sroa.12.0.i348 = phi ptr [ %.sroa.12.0.i349, %bb.v ], [ %.sroa.12.0.i349, %bb.s ], [ %.sroa.12.0.i351, %select.unfold.i.i.i._crit_edge ], [ %.sroa.12.0.i351, %.sink.split.i8.i.i.i ]
  %.sroa.31.0.i341 = phi ptr [ %.sroa.31.0.i342, %bb.v ], [ %.sroa.31.0.i342, %bb.s ], [ %.sroa.31.0.i344, %select.unfold.i.i.i._crit_edge ], [ %.sroa.31.0.i344, %.sink.split.i8.i.i.i ] ; 2 uses
  %.sroa.22.1.i139 = phi ptr [ %.sroa.22.1.i138, %bb.v ], [ %.sroa.22.1.i138, %bb.s ], [ %.sroa.22.1.i143.lcssa, %select.unfold.i.i.i._crit_edge ], [ %.sroa.22.1.i143.lcssa, %.sink.split.i8.i.i.i ]
  %.sroa.7525.1.i135 = phi ptr [ %.sroa.7525.1.i134, %bb.v ], [ %.sroa.7525.1.i134, %bb.s ], [ %.sroa.7525.1.i144.lcssa, %select.unfold.i.i.i._crit_edge ], [ %.sroa.7525.1.i144.lcssa, %.sink.split.i8.i.i.i ]
  %.sroa.15.4705.i = phi ptr [ %.sroa.15.2.i, %bb.v ], [ %.sroa.15.2.i, %bb.s ], [ null, %select.unfold.i.i.i._crit_edge ], [ null, %.sink.split.i8.i.i.i ] ; 3 uses
  %.sroa.26.2704.i = phi ptr [ %.sroa.26.1.i, %bb.v ], [ %.sroa.26.1.i, %bb.s ], [ null, %select.unfold.i.i.i._crit_edge ], [ null, %.sink.split.i8.i.i.i ] ; 3 uses
  %.sroa.618.sroa.4.0.i = phi i64 [ %.val213.i, %bb.v ], [ 0, %bb.s ], [ undef, %select.unfold.i.i.i._crit_edge ], [ undef, %.sink.split.i8.i.i.i ]
  %.sroa.618.sroa.0.0.i = phi ptr [ %i.gp, %bb.v ], [ inttoptr (i64 1 to ptr), %bb.s ], [ undef, %select.unfold.i.i.i._crit_edge ], [ undef, %.sink.split.i8.i.i.i ]
  %.sroa.016.0.i = phi i64 [ %.val213.i, %bb.v ], [ 0, %bb.s ], [ -1, %select.unfold.i.i.i._crit_edge ], [ -1, %.sink.split.i8.i.i.i ] ; 2 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !4616
  %i.gr = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #45, !noalias !4616 ; 4 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #52, !noalias !4583
  unreachable

bb.x:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i
  store i8 45, ptr %i.gr, align 1, !noalias !4583
  %.not194.i = icmp eq i64 %.sroa.016.0.i, -1
  br i1 %.not194.i, label %bb.y, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.x
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gr, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !4617
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i, %bb.x
  %.sroa.9542.0.i = phi i64 [ %.sroa.618.sroa.4.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i ], [ 1, %bb.x ] ; 2 uses
  %.sroa.7539.0.i = phi ptr [ %.sroa.618.sroa.0.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.gr, %bb.x ] ; 3 uses
  %.sroa.0537.0.i = phi i64 [ %.sroa.016.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i ], [ 1, %bb.x ] ; 4 uses
  %.not.i.i.i240869.i = icmp eq ptr %.sroa.15.4705.i, null
  %i.gt = icmp eq ptr %.sroa.15.4705.i, %.sroa.22.1.i139
  %or.cond870.i = select i1 %.not.i.i.i240869.i, i1 true, i1 %i.gt
  br i1 %or.cond870.i, label %select.unfold.i.i246.i, label %.loopexit806.i

select.unfold.i.i246.i:                           ; preds = %bb.y, %bb.z
  %i.gu = phi ptr [ %i.gw, %bb.z ], [ %.sroa.7525.1.i135, %bb.y ] ; 5 uses
  %.not.i5.i.i247.i = icmp eq ptr %i.gu, null
  %i.gv = icmp eq ptr %i.gu, %.sroa.12.0.i348
  %or.cond.i.i.i248.i = select i1 %.not.i5.i.i247.i, i1 true, i1 %i.gv
  br i1 %or.cond.i.i.i248.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %select.unfold.i.i246.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gx = getelementptr i8, ptr %i.gu, i64 16
  %.val4.i.i250.i = load i64, ptr %i.gx, align 8, !noalias !4618, !noundef !12
  %i.gy = icmp eq i64 %.val4.i.i250.i, 0
  br i1 %i.gy, label %select.unfold.i.i246.i, label %.loopexit806.loopexit.i

bb.aa:                                            ; preds = %select.unfold.i.i246.i
  %.not.i7.i.i251.i = icmp eq ptr %.sroa.26.2704.i, null
  br i1 %.not.i7.i.i251.i, label %bb.av, label %.sink.split.i8.i.i252.i

.sink.split.i8.i.i252.i:                          ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.31.0.i341) ]
  %i.gz = icmp eq ptr %.sroa.26.2704.i, %.sroa.31.0.i341
  br i1 %i.gz, label %bb.av, label %.loopexit806.i

.loopexit806.loopexit.i:                          ; preds = %bb.z
  %i.ha = getelementptr i8, ptr %i.gu, i64 8
  %.val.i.i249.i = load ptr, ptr %i.ha, align 8, !noalias !4618, !nonnull !12, !noundef !12
  br label %.loopexit806.i

.loopexit806.i:                                   ; preds = %.loopexit806.loopexit.i, %.sink.split.i8.i.i252.i, %bb.y
  %.sroa.0.0.i.i244.i = phi ptr [ %.sroa.26.2704.i, %.sink.split.i8.i.i252.i ], [ %.sroa.15.4705.i, %bb.y ], [ %.val.i.i249.i, %.loopexit806.loopexit.i ]
  %i.hb = call noundef nonnull align 8 ptr %.sroa.0523.0.i356(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i244.i) #45, !noalias !4619, !inline_history !4169 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !4583
  store i64 0, ptr %i.cn, align 8, !noalias !4583
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4152.0..sroa_idx.i, align 8, !noalias !4583
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 0, ptr %.sroa.5153.0..sroa_idx.i, align 8, !noalias !4583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !4583
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !4583, !nonnull !12, !noundef !12
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !noalias !4583, !noundef !12
  store i64 1, ptr %i.cm, align 8, !noalias !4583
  %.sroa.4155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.hd, ptr %.sroa.4155.0..sroa_idx.i, align 8, !noalias !4583
  %.sroa.5156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %i.hf, ptr %.sroa.5156.0..sroa_idx.i, align 8, !noalias !4583
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i8 1, ptr %i.hg, align 8, !noalias !4583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !4620
  store i64 0, ptr %i.bf, align 8, !noalias !4620
  %.sroa.4.0..sroa_idx.i255.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i255.i, align 8, !noalias !4620
  %.sroa.5.0..sroa_idx.i256.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i256.i, align 8, !noalias !4620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !4620
  %i.hh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 1610612768, ptr %i.hh, align 8, !noalias !4620
  store ptr %i.bf, ptr %i.be, align 8, !noalias !4620
  %i.hi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @113, ptr %i.hi, align 8, !noalias !4620
  %i.hj = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be) #45, !noalias !4621
  br i1 %i.hj, label %bb.ab, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.ab:                                            ; preds = %.loopexit806.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1323, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @895, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1325) #50, !noalias !4621
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.loopexit806.i
  %.sroa.0549.0.copyload550.i = load i64, ptr %i.bf, align 8, !noalias !4622 ; 3 uses
  %.sroa.5551.0.copyload553.i = load ptr, ptr %.sroa.4.0..sroa_idx.i255.i, align 8, !noalias !4622, !nonnull !12, !noundef !12 ; 8 uses
  %.sroa.8555.0.copyload557.i = load i64, ptr %.sroa.5.0..sroa_idx.i256.i, align 8, !noalias !4622 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !4620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !4620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !4583
  switch i64 %.sroa.8555.0.copyload557.i, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i
  %i.hk = load i8, ptr %.sroa.5551.0.copyload553.i, align 1, !alias.scope !4623, !noalias !4583, !noundef !12 ; 2 uses
  switch i8 %i.hk, label %bb.ad [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i
  %.pr.i.i = load i8, ptr %.sroa.5551.0.copyload553.i, align 1, !alias.scope !4623, !noalias !4583
  br label %bb.ad

bb.ad:                                            ; preds = %thread-pre-split.i.i, %bb.ac
  %i.hl = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.hk, %bb.ac ]
  switch i8 %i.hl, label %bb.ak [
    i8 43, label %bb.ae
    i8 45, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
end_hunk_2
begin_hunk_3_@_RINvCs86MjTkXjVIv_8uu_rmdir6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBB_6cloned6ClonedINtNtNtBF_5slice4iter4IterB2c_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.bw = alloca [16 x i8], align 8               ; 9 uses
  %i.bx = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.bx, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.by = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bz = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.bz, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !4997
  store i32 %i.bz, ptr %i.bk, align 4, !noalias !4997
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !4998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !4998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !4998
  call void @_RNvCs86MjTkXjVIv_8uu_rmdir6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bh) #45, !noalias !4998
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.bi, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !4998
  %i.ca = load i64, ptr %i.bi, align 8, !range !13, !noalias !4998, !noundef !12 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !4998 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !4998 ; 2 uses
  br i1 %i.cb, label %.split, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.632.0..sroa_idx.i, i64 32, i1 false), !noalias !4998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !4998
  store i64 %i.ca, ptr %i.bj, align 8, !noalias !4998
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4998
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.cf, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4998
  %i.cg = load ptr, ptr @_RNvCs86MjTkXjVIv_8uu_rmdir25OPT_IGNORE_FAIL_NON_EMPTY, align 8, !noalias !4998, !nonnull !12, !noundef !12
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs86MjTkXjVIv_8uu_rmdir25OPT_IGNORE_FAIL_NON_EMPTY, i64 8), align 8, !noalias !4998, !noundef !12
  %i.ci = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.ch) #45, !noalias !4998 ; 2 uses
  %i.cj = load ptr, ptr @_RNvCs86MjTkXjVIv_8uu_rmdir11OPT_PARENTS, align 8, !noalias !4998, !nonnull !12, !noundef !12
  %i.ck = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs86MjTkXjVIv_8uu_rmdir11OPT_PARENTS, i64 8), align 8, !noalias !4998, !noundef !12
  %i.cl = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef %i.ck) #45, !noalias !4998
  %i.cm = load ptr, ptr @_RNvCs86MjTkXjVIv_8uu_rmdir11OPT_VERBOSE, align 8, !noalias !4998, !nonnull !12, !noundef !12
  %i.cn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs86MjTkXjVIv_8uu_rmdir11OPT_VERBOSE, i64 8), align 8, !noalias !4998, !noundef !12
  %i.co = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.cn) #45, !noalias !4998
  %i.cp = load ptr, ptr @_RNvCs86MjTkXjVIv_8uu_rmdir8ARG_DIRS, align 8, !noalias !4998, !nonnull !12, !noundef !12 ; 2 uses
  %i.cq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs86MjTkXjVIv_8uu_rmdir8ARG_DIRS, i64 8), align 8, !noalias !4998, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4998
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq) #45, !noalias !4998
  call void @llvm.experimental.noalias.scope.decl(metadata !4999)
  call void @llvm.experimental.noalias.scope.decl(metadata !5000)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4998
  store ptr %i.cp, ptr %i.ad, align 8, !noalias !5001
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !noalias !5001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5001
  %i.cs = load i64, ptr %i.ae, align 8, !range !16, !alias.scope !5000, !noalias !4998, !noundef !12
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.ct, label %bb.f, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cu, i64 40, i1 false), !noalias !5002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5001
  store ptr %i.ad, ptr %i.ab, align 8, !noalias !5001
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5001
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.cv, align 8, !noalias !5001
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !5001
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !5003
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cu, align 8, !alias.scope !5004, !noalias !4998 ; 2 uses
  %.sroa.4.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx234.i, align 8, !alias.scope !5004, !noalias !4998
  %.sroa.5.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx235.i, align 8, !alias.scope !5004, !noalias !4998
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !5004, !noalias !4998
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !5004, !noalias !4998
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !5004, !noalias !4998
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !5004, !noalias !4998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4998
  %.not.i28 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.013.sroa.5.sroa.0.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.g ], [ @_RNvNvXsc_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB7_9ValuesRefpENtNtCs6JMX4GRUq9U_4core7default7Default7default5EMPTY, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.013.sroa.5.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.g ], [ @_RNvNvXsc_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtB7_9ValuesRefpENtNtCs6JMX4GRUq9U_4core7default7Default7default5EMPTY, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %.sroa.013.sroa.5.sroa.6.0.i = phi ptr [ %.sroa.6.0.copyload.i, %bb.g ], [ null, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.013.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.g ], [ @_RNvYNCNvXsc_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtBa_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core7default7Default7default0INtNtNtB2d_3ops8function6FnOnceTRNtNtNtBg_4util9any_value8AnyValueEE9call_onceCsl8pJiQOn4hA_9coreutils, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.013.sroa.5.sroa.7.0.i = phi ptr [ %.sroa.7.0.copyload.i, %bb.g ], [ undef, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.013.sroa.5.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.g ], [ null, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.013.sroa.5.sroa.9.0.i = phi ptr [ %.sroa.9.0.copyload.i, %bb.g ], [ undef, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %.sroa.088.0.insert.ext.i = zext i1 %i.ci to i24
  %.sroa.088.1.insert.shift.i = select i1 %i.cl, i24 256, i24 0
  %.sroa.088.1.insert.insert.i = or disjoint i24 %.sroa.088.1.insert.shift.i, %.sroa.088.0.insert.ext.i
  %.sroa.088.2.insert.shift.i = select i1 %i.co, i24 65536, i24 0
  %.sroa.088.2.insert.insert.i = or disjoint i24 %.sroa.088.1.insert.insert.i, %.sroa.088.2.insert.shift.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.4.0..sroa_idx.i116.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.5245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.8249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.8264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.9275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.backedge.i, %bb.h
  %.sroa.16.0.i = phi ptr [ %.sroa.013.sroa.5.sroa.8.0.i, %bb.h ], [ %.sroa.16.1.i, %.backedge.i ] ; 5 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.013.sroa.5.sroa.7.0.i, %bb.h ], [ %.sroa.13.1.i77, %.backedge.i ] ; 3 uses
  %.sroa.9240.0.i = phi ptr [ %.sroa.013.sroa.5.sroa.6.0.i, %bb.h ], [ %.sroa.9240.2.i, %.backedge.i ] ; 3 uses
  %.sroa.4238.0.i = phi ptr [ %.sroa.013.sroa.5.sroa.0.0.i, %bb.h ], [ %.sroa.4238.1.i74, %.backedge.i ] ; 5 uses
  %.not.i.i.i.i91 = icmp eq ptr %.sroa.9240.0.i, null
  %i.ee = icmp eq ptr %.sroa.9240.0.i, %.sroa.13.0.i
  %or.cond484.i92 = select i1 %.not.i.i.i.i91, i1 true, i1 %i.ee
  br i1 %or.cond484.i92, label %select.unfold.i.i.i.preheader, label %.loopexit339.i

select.unfold.i.i.i.preheader:                    ; preds = %bb.i
  %.not.i5.i.i.i250 = icmp eq ptr %.sroa.4238.0.i, null
  %i.ef = icmp eq ptr %.sroa.4238.0.i, %.sroa.013.sroa.5.sroa.5.0.i
  %or.cond.i.i.i.i251 = select i1 %.not.i5.i.i.i250, i1 true, i1 %i.ef
  br i1 %or.cond.i.i.i.i251, label %select.unfold.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i:                              ; preds = %.lr.ph
  %i.eg = icmp eq ptr %i.eh, %.sroa.013.sroa.5.sroa.5.0.i
  br i1 %i.eg, label %select.unfold.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.preheader, %select.unfold.i.i.i
  %.sroa.4238.1.i94252 = phi ptr [ %i.eh, %select.unfold.i.i.i ], [ %.sroa.4238.0.i, %select.unfold.i.i.i.preheader ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.4238.1.i94252, i64 24 ; 4 uses
  %i.ei = getelementptr i8, ptr %.sroa.4238.1.i94252, i64 16
  %.val4.i.i.i = load i64, ptr %i.ei, align 8, !noalias !5005, !noundef !12 ; 3 uses
  %i.ej = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.ej, label %select.unfold.i.i.i, label %.loopexit339.i.loopexit

select.unfold.i.i.i._crit_edge.loopexit:          ; preds = %select.unfold.i.i.i
  %i.ek = getelementptr i8, ptr %.sroa.4238.1.i94252, i64 8
  %.val.i.i.i.le313 = load ptr, ptr %i.ek, align 8, !noalias !5005, !nonnull !12, !noundef !12
  %.idx.le311 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le313, i64 %.idx.le311
  br label %select.unfold.i.i.i._crit_edge

select.unfold.i.i.i._crit_edge:                   ; preds = %select.unfold.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.preheader
  %.sroa.4238.1.i94.lcssa = phi ptr [ %.sroa.4238.0.i, %select.unfold.i.i.i.preheader ], [ %i.eh, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.sroa.13.1.i93.lcssa = phi ptr [ %.sroa.13.0.i, %select.unfold.i.i.i.preheader ], [ %i.el, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i = icmp eq ptr %.sroa.16.0.i, null
  br i1 %.not.i7.i.i.i, label %bb.dy, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %select.unfold.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.sroa.5.sroa.9.0.i) ]
  %i.em = icmp eq ptr %.sroa.16.0.i, %.sroa.013.sroa.5.sroa.9.0.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.16.0.i, i64 32
  br i1 %i.em, label %bb.dy, label %bb.j

.loopexit339.i.loopexit:                          ; preds = %.lr.ph
  %i.eo = getelementptr i8, ptr %.sroa.4238.1.i94252, i64 8
  %.val.i.i.i.le = load ptr, ptr %i.eo, align 8, !noalias !5005, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le, i64 %.idx.le
  br label %.loopexit339.i

.loopexit339.i:                                   ; preds = %.loopexit339.i.loopexit, %bb.i
  %.sroa.13.1.i.lcssa = phi ptr [ %.sroa.13.0.i, %bb.i ], [ %i.ep, %.loopexit339.i.loopexit ]
  %.sroa.9240.1.i.lcssa = phi ptr [ %.sroa.9240.0.i, %bb.i ], [ %.val.i.i.i.le, %.loopexit339.i.loopexit ] ; 2 uses
  %.sroa.4238.1.i.lcssa = phi ptr [ %.sroa.4238.0.i, %bb.i ], [ %i.eh, %.loopexit339.i.loopexit ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.9240.1.i.lcssa, i64 32
  br label %bb.j

bb.j:                                             ; preds = %.loopexit339.i, %.sink.split.i8.i.i.i
  %.sroa.13.1.i77 = phi ptr [ %.sroa.13.1.i93.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.13.1.i.lcssa, %.loopexit339.i ]
  %.sroa.4238.1.i74 = phi ptr [ %.sroa.4238.1.i94.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.4238.1.i.lcssa, %.loopexit339.i ]
  %.sroa.16.1.i = phi ptr [ %i.en, %.sink.split.i8.i.i.i ], [ %.sroa.16.0.i, %.loopexit339.i ]
  %.sroa.9240.2.i = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.eq, %.loopexit339.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.16.0.i, %.sink.split.i8.i.i.i ], [ %.sroa.9240.1.i.lcssa, %.loopexit339.i ]
  %i.er = call noundef nonnull align 8 ptr %.sroa.013.sroa.0.0.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !5006, !inline_history !4864 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !noalias !4998, !nonnull !12, !noundef !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !4998, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !4998
  call void @_RNvCs86MjTkXjVIv_8uu_rmdir6remove(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.ev, i24 %.sroa.088.2.insert.insert.i) #45, !noalias !4998
  %i.ew = load ptr, ptr %i.bg, align 8, !noalias !4998, !noundef !12 ; 9 uses
  %.not91.i = icmp eq ptr %i.ew, null
  br i1 %.not91.i, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ex = load ptr, ptr %i.cw, align 8, !noalias !4998, !nonnull !12, !noundef !12 ; 5 uses
  %i.ey = load i64, ptr %i.cx, align 8, !noalias !4998, !noundef !12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !4998
  store ptr %i.ew, ptr %i.bf, align 8, !noalias !4998
  br i1 %i.ci, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #45, !noalias !4998
  %i.ez = ptrtoint ptr %i.ew to i64               ; 4 uses
  %i.fa = and i64 %i.ez, 3                        ; 2 uses
  switch i64 %i.fa, label %.unreachabledefault [
    i64 2, label %bb.o
    i64 3, label %bb.m
    i64 0, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
    i64 1, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
  ], !prof !22

.unreachabledefault:                              ; preds = %bb.l
  unreachable

default.unreachable:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit227.i, %bb.dp, %bb.dl, %bb.ch, %bb.cb, %bb.bx, %bb.bo, %bb.ax, %bb.at, %bb.w, %bb.s, %bb.ex, %bb.eq, %bb.em, %bb.eh, %bb.ed
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.fb = icmp ult ptr %i.ew, inttoptr (i64 188978561024 to ptr)
  %i.fc = and i64 %i.ez, 1095216660480
  %i.fd = icmp ne i64 %i.fc, 1095216660480
  call void @llvm.assume(i1 %i.fb)
  call void @llvm.assume(i1 %i.fd)
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.thread.i

bb.n:                                             ; preds = %bb.k
  %i.fe = call noundef zeroext i1 @_RNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ex, i64 noundef %i.ey) #45, !noalias !4998
  br i1 %i.fe, label %bb.ch, label %bb.l

bb.o:                                             ; preds = %bb.l
  %.mask.i = and i64 %i.ez, -4294967296
  %i.ff = icmp ne i64 %.mask.i, 85899345920
  %.not.i.i = icmp eq i64 %i.ey, 0
  %or.cond.i = or i1 %i.ff, %.not.i.i
  br i1 %or.cond.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.o
  %i.fg = getelementptr i8, ptr %i.ex, i64 %i.ey
  %i.fh = getelementptr i8, ptr %i.fg, i64 -1
  %rhsc.i = load i8, ptr %i.fh, align 1, !noalias !4998
  %i.fi = icmp eq i8 %rhsc.i, 47
  br i1 %i.fi, label %bb.p, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.thread.i

bb.p:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.i
  %i.fj = call { ptr, i64 } @_RNvCs86MjTkXjVIv_8uu_rmdir32strip_trailing_slashes_from_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ex, i64 noundef %i.ey) #45, !noalias !4998 ; 2 uses
  %i.fk = extractvalue { ptr, i64 } %i.fj, 0      ; 3 uses
  %i.fl = extractvalue { ptr, i64 } %i.fj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fk) ]
  %i.fm = call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10is_symlink(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fk, i64 noundef %i.fl) #45, !noalias !4998
  br i1 %i.fm, label %bb.an, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %bb.ap, %bb.p, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.i, %bb.o, %bb.m, %bb.l, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !4998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !4998
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.ar, align 8, !noalias !4998
  %i.fn = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar) #45, !noalias !4998
  store ptr %i.fn, ptr %i.as, align 8, !noalias !4998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !4998
  %i.fo = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #45, !noalias !4998 ; 2 uses
  %i.fp = extractvalue { ptr, i64 } %i.fo, 0
  %i.fq = extractvalue { ptr, i64 } %i.fo, 1
  store ptr %i.fp, ptr %i.aq, align 8, !noalias !4998
  store i64 %i.fq, ptr %i.dn, align 8, !noalias !4998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !4998
  store ptr %i.aq, ptr %i.ap, align 8, !noalias !4998
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !4998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5007
  store ptr %i.as, ptr %i.aa, align 8, !noalias !5007
  store ptr null, ptr %i.do, align 8, !noalias !5007
  %i.fr = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull @5, ptr noundef nonnull %i.ap) #45, !noalias !4998
  %i.fs = load ptr, ptr %i.do, align 8, !noalias !5007, !noundef !12 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.fs, null          ; 2 uses
  br i1 %i.fr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
  br i1 %.not.i5.i.i, label %bb.v, label %bb.w, !prof !18

bb.r:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsl8pJiQOn4hA_9coreutils.exit.thread.i
  br i1 %.not.i5.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5008
  %i.ft = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fu = and i64 %i.ft, 3
  switch i64 %i.fu, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
    i64 1, label %bb.u
  ], !prof !22

bb.t:                                             ; preds = %bb.s
  %i.fv = icmp ult ptr %i.fs, inttoptr (i64 188978561024 to ptr)
  %i.fw = and i64 %i.ft, 1095216660480
  %i.fx = icmp ne i64 %i.fw, 1095216660480
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.assume(i1 %i.fx)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.fy = getelementptr i8, ptr %i.fs, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fy) ]
  store ptr %i.fy, ptr %i.dp, align 8, !alias.scope !5009, !noalias !5008
  store i8 3, ptr %i.z, align 8, !alias.scope !5009, !noalias !5008
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dp) #45, !noalias !5010
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5008
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i

bb.v:                                             ; preds = %bb.q
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50, !noalias !4998
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5007
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5011
  %i.fz = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.ga = and i64 %i.fz, 3
  switch i64 %i.ga, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 3, label %bb.x
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 1, label %bb.y
  ], !prof !22

bb.x:                                             ; preds = %bb.w
  %i.gb = icmp ult ptr %i.fs, inttoptr (i64 188978561024 to ptr)
  %i.gc = and i64 %i.fz, 1095216660480
  %i.gd = icmp ne i64 %i.gc, 1095216660480
  call void @llvm.assume(i1 %i.gb)
  call void @llvm.assume(i1 %i.gd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.ge = getelementptr i8, ptr %i.fs, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ge) ]
  store ptr %i.ge, ptr %i.dq, align 8, !alias.scope !5012, !noalias !5011
  store i8 3, ptr %i.y, align 8, !alias.scope !5012, !noalias !5011
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dq) #45, !noalias !5011
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

end_hunk_3
begin_hunk_4_@_RINvCsegQB1SVjmxI_9uu_factor6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBC_6cloned6ClonedINtNtNtBG_5slice4iter4IterB2d_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.ah = alloca [8 x i8], align 8                ; 6 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 9 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [40 x i8], align 8               ; 13 uses
  %i.ax = alloca [8 x i8], align 8                ; 5 uses
  %i.ay = alloca [712 x i8], align 8              ; 4 uses
  %i.az = alloca [56 x i8], align 8               ; 8 uses
  %i.ba = alloca [56 x i8], align 8               ; 12 uses
  %i.bb = alloca [4 x i8], align 4                ; 3 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [8 x i8], align 8                ; 6 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 7 uses
  %i.bn = alloca [16 x i8], align 8               ; 9 uses
  %i.bo = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.bo, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bp = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bq = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.bq, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !12264
  store i32 %i.bq, ptr %i.bb, align 4, !noalias !12264
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !12265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !12265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !12265
  call void @_RNvCsegQB1SVjmxI_9uu_factor6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.ay) #45, !noalias !12265
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.az, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !12265
  %i.br = load i64, ptr %i.az, align 8, !range !13, !noalias !12265, !noundef !12 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !12265 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !12265 ; 2 uses
  br i1 %i.bs, label %_RINvNvCsegQB1SVjmxI_9uu_factor6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils.exit.thread57, label %bb.e

_RINvNvCsegQB1SVjmxI_9uu_factor6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils.exit.thread57: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !12265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !12265
  br label %.split

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663.0..sroa_idx.i, i64 32, i1 false), !noalias !12265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !12265
  store i64 %i.br, ptr %i.ba, align 8, !noalias !12265
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !12265
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bw, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12265
  %i.bx = load ptr, ptr @_RNvNtCsegQB1SVjmxI_9uu_factor7options9EXPONENTS, align 8, !noalias !12265, !nonnull !12, !noundef !12
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsegQB1SVjmxI_9uu_factor7options9EXPONENTS, i64 8), align 8, !noalias !12265, !noundef !12
  %i.bz = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.by) #45, !noalias !12265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !12265
  %i.ca = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #45, !noalias !12265
  store ptr %i.ca, ptr %i.ax, align 8, !noalias !12265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !12265
  %i.cb = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax) #45, !noalias !12265
  call void @llvm.experimental.noalias.scope.decl(metadata !12266)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12267
  %i.cc = call noundef dereferenceable_or_null(4096) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4096, i64 noundef range(i64 1, 9) 1) #45, !noalias !12267 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.f, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCsl8pJiQOn4hA_9coreutils.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4096) #52, !noalias !12268
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.e
  store i64 4096, ptr %i.aw, align 8, !alias.scope !12266, !noalias !12265
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !12266, !noalias !12265
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !12266, !noalias !12265
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.ce, align 8, !alias.scope !12266, !noalias !12265
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  store ptr %i.cb, ptr %i.cf, align 8, !alias.scope !12266, !noalias !12265
  %i.cg = load ptr, ptr @_RNvNtCsegQB1SVjmxI_9uu_factor7options6NUMBER, align 8, !noalias !12265, !nonnull !12, !noundef !12 ; 2 uses
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsegQB1SVjmxI_9uu_factor7options6NUMBER, i64 8), align 8, !noalias !12265, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !12265
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.ch) #45, !noalias !12265
  call void @llvm.experimental.noalias.scope.decl(metadata !12269)
  call void @llvm.experimental.noalias.scope.decl(metadata !12270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12265
  store ptr %i.cg, ptr %i.ab, align 8, !noalias !12271
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !noalias !12271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !12271
  %i.cj = load i64, ptr %i.ac, align 8, !range !16, !alias.scope !12270, !noalias !12265, !noundef !12
  %i.ck = trunc nuw i64 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  br i1 %i.ck, label %bb.g, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.g:                                             ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cl, i64 40, i1 false), !noalias !12272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12271
  store ptr %i.ab, ptr %i.z, align 8, !noalias !12271
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !12271
  %i.cm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.cm, align 8, !noalias !12271
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !12271
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !12273
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.0.0.copyload163.i = load ptr, ptr %i.cl, align 8, !alias.scope !12274, !noalias !12265 ; 2 uses
  %.sroa.7.0..sroa_idx164.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.7.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx164.i, align 8, !alias.scope !12274, !noalias !12265
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx164.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.7.sroa.6.0.copyload.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx164.sroa_idx.i, align 8, !alias.scope !12274, !noalias !12265 ; 2 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx164.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.7.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx164.sroa_idx.i, align 8, !alias.scope !12274, !noalias !12265
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx164.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.7.sroa.8.0.copyload.i = load ptr, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx164.sroa_idx.i, align 8, !alias.scope !12274, !noalias !12265
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx164.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.7.sroa.9.0.copyload.i = load ptr, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx164.sroa_idx.i, align 8, !alias.scope !12274, !noalias !12265
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx164.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.7.sroa.10.0.copyload.i = load ptr, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx164.sroa_idx.i, align 8, !alias.scope !12274, !noalias !12265 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !12265
  %.not.i28 = icmp eq ptr %.sroa.0.0.copyload163.i, null
  br i1 %.not.i28, label %bb.h, label %.preheader.i

bb.h:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !12265
  %i.cn = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #45, !noalias !12265
  store ptr %i.cn, ptr %i.av, align 8, !noalias !12265
  %i.co = call { ptr, i1 } @_RNvMs1_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5Stdin4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av) #45, !noalias !12265 ; 2 uses
  %i.cp = extractvalue { ptr, i1 } %i.co, 0
  %i.cq = extractvalue { ptr, i1 } %i.co, 1
  %i.cr = zext i1 %i.cq to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !12265
  store ptr %i.cp, ptr %i.au, align 8, !noalias !12265
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  store i8 %i.cr, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !12265
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  store i8 10, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !12265
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br label %bb.k

.preheader.i:                                     ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.i
  %.sroa.14.0.i = phi ptr [ %.sroa.14.1.i, %bb.i ], [ %.sroa.7.sroa.9.0.copyload.i, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 5 uses
  %.sroa.12.0.i = phi ptr [ %.sroa.12.1.i91, %bb.i ], [ %.sroa.7.sroa.8.0.copyload.i, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.9.2.i, %bb.i ], [ %.sroa.7.sroa.7.0.copyload.i, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %.sroa.5168.0.i = phi ptr [ %.sroa.5168.1.i88, %bb.i ], [ %.sroa.7.sroa.0.0.copyload.i, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 5 uses
  %.not.i.i.i.i94 = icmp eq ptr %.sroa.9.0.i, null
  %i.cu = icmp eq ptr %.sroa.9.0.i, %.sroa.12.0.i
  %or.cond371.i95 = select i1 %.not.i.i.i.i94, i1 true, i1 %i.cu
  br i1 %or.cond371.i95, label %select.unfold.i.i.i.preheader, label %.loopexit251.i

select.unfold.i.i.i.preheader:                    ; preds = %.preheader.i
  %.not.i5.i.i.i224 = icmp eq ptr %.sroa.5168.0.i, null
  %i.cv = icmp eq ptr %.sroa.5168.0.i, %.sroa.7.sroa.6.0.copyload.i
  %or.cond.i.i.i.i225 = select i1 %.not.i5.i.i.i224, i1 true, i1 %i.cv
  br i1 %or.cond.i.i.i.i225, label %select.unfold.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i:                              ; preds = %.lr.ph
  %i.cw = icmp eq ptr %i.cx, %.sroa.7.sroa.6.0.copyload.i
  br i1 %i.cw, label %select.unfold.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.preheader, %select.unfold.i.i.i
  %.sroa.5168.1.i97226 = phi ptr [ %i.cx, %select.unfold.i.i.i ], [ %.sroa.5168.0.i, %select.unfold.i.i.i.preheader ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.5168.1.i97226, i64 24 ; 4 uses
  %i.cy = getelementptr i8, ptr %.sroa.5168.1.i97226, i64 16
  %.val4.i.i.i = load i64, ptr %i.cy, align 8, !noalias !12275, !noundef !12 ; 3 uses
  %i.cz = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.cz, label %select.unfold.i.i.i, label %.loopexit251.i.loopexit

select.unfold.i.i.i._crit_edge.loopexit:          ; preds = %select.unfold.i.i.i
  %i.da = getelementptr i8, ptr %.sroa.5168.1.i97226, i64 8
  %.val.i.i.i.le290 = load ptr, ptr %i.da, align 8, !noalias !12275, !nonnull !12, !noundef !12
  %.idx.le287 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le290, i64 %.idx.le287
  br label %select.unfold.i.i.i._crit_edge

select.unfold.i.i.i._crit_edge:                   ; preds = %select.unfold.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.preheader
  %.sroa.5168.1.i97.lcssa = phi ptr [ %.sroa.5168.0.i, %select.unfold.i.i.i.preheader ], [ %i.cx, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.sroa.12.1.i96.lcssa = phi ptr [ %.sroa.12.0.i, %select.unfold.i.i.i.preheader ], [ %i.db, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i = icmp eq ptr %.sroa.14.0.i, null
  br i1 %.not.i7.i.i.i, label %.loopexit252.i, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %select.unfold.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.10.0.copyload.i) ]
  %i.dc = icmp eq ptr %.sroa.14.0.i, %.sroa.7.sroa.10.0.copyload.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.14.0.i, i64 32
  br i1 %i.dc, label %.loopexit252.i, label %bb.i

.loopexit251.i.loopexit:                          ; preds = %.lr.ph
  %i.de = getelementptr i8, ptr %.sroa.5168.1.i97226, i64 8
  %.val.i.i.i.le = load ptr, ptr %i.de, align 8, !noalias !12275, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le, i64 %.idx.le
  br label %.loopexit251.i

.loopexit251.i:                                   ; preds = %.loopexit251.i.loopexit, %.preheader.i
  %.sroa.12.1.i.lcssa = phi ptr [ %.sroa.12.0.i, %.preheader.i ], [ %i.df, %.loopexit251.i.loopexit ]
  %.sroa.9.1.i.lcssa = phi ptr [ %.sroa.9.0.i, %.preheader.i ], [ %.val.i.i.i.le, %.loopexit251.i.loopexit ] ; 2 uses
  %.sroa.5168.1.i.lcssa = phi ptr [ %.sroa.5168.0.i, %.preheader.i ], [ %i.cx, %.loopexit251.i.loopexit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.lcssa, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.loopexit251.i, %.sink.split.i8.i.i.i
  %.sroa.12.1.i91 = phi ptr [ %.sroa.12.1.i96.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.12.1.i.lcssa, %.loopexit251.i ]
  %.sroa.5168.1.i88 = phi ptr [ %.sroa.5168.1.i97.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.5168.1.i.lcssa, %.loopexit251.i ]
  %.sroa.14.1.i = phi ptr [ %i.dd, %.sink.split.i8.i.i.i ], [ %.sroa.14.0.i, %.loopexit251.i ]
  %.sroa.9.2.i = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.dg, %.loopexit251.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.14.0.i, %.sink.split.i8.i.i.i ], [ %.sroa.9.1.i.lcssa, %.loopexit251.i ]
  %i.dh = call noundef nonnull align 8 ptr %.sroa.0.0.copyload163.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !12276, !inline_history !12140 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !12265, !nonnull !12, !noundef !12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !12265, !noundef !12
  %i.dm = call fastcc { ptr, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dj, i64 noundef %i.dl) #45, !noalias !12265 ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0
  %i.do = extractvalue { ptr, i64 } %i.dm, 1
  %i.dp = call fastcc { ptr, ptr } @_RINvCsegQB1SVjmxI_9uu_factor17write_factors_strNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.do, ptr noalias nofree noundef align 8 dereferenceable(40) %i.aw, i1 noundef zeroext %i.bz) #45, !noalias !12265 ; 2 uses
  %i.dq = extractvalue { ptr, ptr } %i.dp, 0      ; 2 uses
  %.not92.i = icmp eq ptr %i.dq, null
  br i1 %.not92.i, label %.preheader.i, label %bb.j

.loopexit252.i:                                   ; preds = %.sink.split.i8.i.i.i, %select.unfold.i.i.i._crit_edge, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEECsl8pJiQOn4hA_9coreutils.exit.i
  %i.dr = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aw) #45, !noalias !12265 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.loopexit252.i
  %i.ds = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #45, !noalias !12265 ; 2 uses
  %.not91.i = icmp eq ptr %i.ds, null
  br i1 %.not91.i, label %_RINvNvCsegQB1SVjmxI_9uu_factor6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils.exit.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsl8pJiQOn4hA_9coreutils.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.dt = extractvalue { ptr, ptr } %i.dp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  br label %_RINvNvCsegQB1SVjmxI_9uu_factor6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.k:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.h
  %i.du = phi i8 [ %.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsl8pJiQOn4hA_9coreutils.exit.i ], [ 10, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12277)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !12278
  store i64 0, ptr %i.y, align 8, !noalias !12278
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !noalias !12278
  store i64 0, ptr %i.ct, align 8, !noalias !12278
  %i.dv = call { i64, ptr } @_RNvXs8_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_9StdinLockNtNtNtCs7tKScEop1B6_5alloc2io8buf_read7BufRead10read_until(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au, i8 noundef %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #45, !noalias !12279 ; 2 uses
  %i.dw = extractvalue { i64, ptr } %i.dv, 0
  %i.dx = extractvalue { i64, ptr } %i.dv, 1      ; 2 uses
  %i.dy = trunc nuw i64 %i.dw to i1
  br i1 %i.dy, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dz = icmp eq ptr %i.dx, null
  br i1 %i.dz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = load i64, ptr %i.ct, align 8, !noalias !12278, !noundef !12 ; 4 uses
  %i.eb = icmp sgt i64 %i.ea, -1
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add nsw i64 %i.ea, -1                   ; 3 uses
  %.not.i103.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i103.i, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.k
  %.sroa.8170.0.i = phi ptr [ %i.dx, %bb.k ], [ undef, %bb.l ] ; 2 uses
  %.sroa.0169.0.i = phi i64 [ -1, %bb.k ], [ -2, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12280)
  %.val.i.i104.i = load i64, ptr %i.y, align 8, !range !19, !alias.scope !12280, !noalias !12278, !noundef !12 ; 2 uses
  %i.ed = icmp eq i64 %.val.i.i104.i, 0
  br i1 %i.ed, label %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !12280, !noalias !12278, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i104.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !12281
  br label %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.p:                                             ; preds = %bb.m
  %i.ee = load ptr, ptr %i.cs, align 8, !noalias !12278, !nonnull !12, !noundef !12 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !12279, !noundef !12
  %i.eh = load i8, ptr %.sroa.622.0..sroa_idx.i, align 8, !alias.scope !12277, !noalias !12265, !noundef !12
  %.not8.i.i = icmp eq i8 %i.eg, %i.eh
  %.sroa.0169.0.copyload.pre.i = load i64, ptr %i.y, align 8, !noalias !12282
  %spec.select.i = select i1 %.not8.i.i, i64 %i.ec, i64 %i.ea
  br label %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.q:                                             ; preds = %bb.m
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ec, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1280) #50, !noalias !12279
  unreachable

_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.10171.0.i = phi i64 [ undef, %bb.n ], [ undef, %bb.o ], [ %spec.select.i, %bb.p ] ; 6 uses
  %.sroa.8170.1.i = phi ptr [ %.sroa.8170.0.i, %bb.n ], [ %.sroa.8170.0.i, %bb.o ], [ %i.ee, %bb.p ] ; 15 uses
  %.sroa.0169.1.i = phi i64 [ %.sroa.0169.0.i, %bb.n ], [ %.sroa.0169.0.i, %bb.o ], [ %.sroa.0169.0.copyload.pre.i, %bb.p ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12278
  switch i64 %.sroa.0169.1.i, label %bb.bq [
    i64 -2, label %bb.r
    i64 -1, label %bb.as
  ]

bb.r:                                             ; preds = %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i
  %.val100.i = load ptr, ptr %i.au, align 8, !noalias !12265, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %.val101.i = load i8, ptr %.sroa.520.0..sroa_idx.i, align 8, !range !21, !noalias !12265, !noundef !12
  %i.ei = getelementptr inbounds nuw i8, ptr %.val100.i, i64 4
  %i.ej = trunc nuw i8 %.val101.i to i1
  br i1 %i.ej, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !12265
  %i.el = and i64 %i.ek, 9223372036854775807
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.en = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53, !noalias !12265
  br i1 %i.en, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.ei monotonic, align 4, !noalias !12265
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.eo = atomicrmw xchg ptr %.val100.i, i32 0 release, align 4, !noalias !12265
  %i.ep = icmp eq i32 %i.eo, 2
  br i1 %i.ep, label %bb.v, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.v:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val100.i) #45, !noalias !12265
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.v, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !12265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !12265
  br label %.loopexit252.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsl8pJiQOn4hA_9coreutils.exit.i, %.loopexit252.i
  %.sroa.0.0.i102213.i = phi ptr [ %i.ds, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.dr, %.loopexit252.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !12265
  store ptr %.sroa.0.0.i102213.i, ptr %i.ai, align 8, !noalias !12265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !12265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !12265
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.ag, align 8, !noalias !12265
  %i.eq = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag) #45, !noalias !12265
  store ptr %i.eq, ptr %i.ah, align 8, !noalias !12265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !12265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !12265
  %i.er = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #45, !noalias !12265 ; 2 uses
  %i.es = extractvalue { ptr, i64 } %i.er, 0
  %i.et = extractvalue { ptr, i64 } %i.er, 1
  store ptr %i.es, ptr %i.af, align 8, !noalias !12265
  %i.eu = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !noalias !12265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12265
  store ptr %i.af, ptr %i.ae, align 8, !noalias !12265
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.481.0..sroa_idx.i, align 8, !noalias !12265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12283
  store ptr %i.ah, ptr %i.x, align 8, !noalias !12283
  %i.ev = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr null, ptr %i.ev, align 8, !noalias !12283
  %i.ew = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull @5, ptr noundef nonnull %i.ae) #45, !noalias !12265
  %i.ex = load ptr, ptr %i.ev, align 8, !noalias !12283, !noundef !12 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.ex, null          ; 2 uses
  br i1 %i.ew, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsl8pJiQOn4hA_9coreutils.exit.thread.i
  br i1 %.not.i5.i.i, label %bb.ab, label %bb.ac, !prof !18

bb.x:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCsl8pJiQOn4hA_9coreutils.exit.thread.i
  br i1 %.not.i5.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !12284
  %i.ey = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.ez = and i64 %i.ey, 3
  switch i64 %i.ez, label %default.unreachable [
end_hunk_4
begin_hunk_5_@_RINvCsgN7rS7e43TA_7uu_more6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBA_6cloned6ClonedINtNtNtBE_5slice4iter4IterB2b_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.bv = alloca [16 x i8], align 8               ; 9 uses
  %i.bw = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.bw, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.by = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.by, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !13685
  store i32 %i.by, ptr %i.bj, align 4, !noalias !13685
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  tail call void @_RNvNtCs2vKOLqTMYjT_3std9panicking8set_hook(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @576) #45, !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !13686
  call void @_RNvCsgN7rS7e43TA_7uu_more6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bg) #45, !noalias !13686
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.bh, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !13686
  %i.bz = load i64, ptr %i.bh, align 8, !range !13, !noalias !13686, !noundef !12 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, -1
  %.sink8.i196.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sink8.i196.sroa.gep228.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sink8.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sink8.i.sroa.gep231.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sink8.i167.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sink8.i167.sroa.gep235.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !13686 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !13686 ; 2 uses
  br i1 %i.ca, label %_RINvNvCsgN7rS7e43TA_7uu_more6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils.exit.thread55, label %bb.e

_RINvNvCsgN7rS7e43TA_7uu_more6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils.exit.thread55: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %.split

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.643.0..sroa_idx.i, i64 32, i1 false), !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13686
  store i64 %i.bz, ptr %i.bi, align 8, !noalias !13686
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13686
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.ce, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !13686
  call void @_RNvMs0_CsgN7rS7e43TA_7uu_moreNtB5_7Options4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bi) #45, !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !13686
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @403, i64 noundef 5) #45, !noalias !13686
  call void @llvm.experimental.noalias.scope.decl(metadata !13687)
  call void @llvm.experimental.noalias.scope.decl(metadata !13688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !13686
  store ptr @403, ptr %i.ag, align 8, !noalias !13689
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 5, ptr %i.cf, align 8, !noalias !13689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !13689
  %i.cg = load i64, ptr %i.ah, align 8, !range !16, !alias.scope !13688, !noalias !13686, !noundef !12
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.f, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ci, i64 40, i1 false), !noalias !13690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !13689
  store ptr %i.ag, ptr %i.ae, align 8, !noalias !13689
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !13689
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.af, ptr %i.cj, align 8, !noalias !13689
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !13689
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !13691
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ci, align 8, !alias.scope !13692, !noalias !13686 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.7.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !13692, !noalias !13686
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.7.sroa.6.0.copyload.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13692, !noalias !13686 ; 4 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.7.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13692, !noalias !13686
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.7.sroa.8.0.copyload.i = load ptr, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13692, !noalias !13686
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.7.sroa.9.0.copyload.i = load ptr, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13692, !noalias !13686
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %.sroa.7.sroa.10.0.copyload.i = load ptr, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13692, !noalias !13686 ; 4 uses
  %.sroa.7226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.sroa.7226.0.copyload.i = load i64, ptr %.sroa.7226.0..sroa_idx.i, align 8, !alias.scope !13692, !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !13689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !13686
  %.not.i28 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.5257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.626.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.829.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.cl = icmp ugt i64 %.sroa.7226.0.copyload.i, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.4.0..sroa_idx.i162.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.0..sroa_idx.i163.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.4102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.4106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.sroa.578.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.4.0..sroa_idx.i191.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.0..sroa_idx.i192.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br label %.backedge.i

bb.h:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  %i.dr = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #45, !noalias !13686
  %i.ds = call noundef i32 @isatty(i32 noundef 0) #45, !noalias !13686
  %.not309.i = icmp eq i32 %i.ds, 0
  br i1 %.not309.i, label %bb.cz, label %bb.da

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.g
  %.sroa.34.0.i = phi ptr [ %.sroa.7.sroa.9.0.copyload.i, %bb.g ], [ %.sroa.34.4.i, %.backedge.i.backedge ] ; 6 uses
  %.sroa.28.0.i = phi ptr [ %.sroa.7.sroa.8.0.copyload.i, %bb.g ], [ %i.fb, %.backedge.i.backedge ] ; 4 uses
  %.sroa.22.0.i = phi ptr [ %.sroa.7.sroa.7.0.copyload.i, %bb.g ], [ %.sroa.22.4.i, %.backedge.i.backedge ] ; 4 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i, %bb.g ], [ %i.fc, %.backedge.i.backedge ] ; 6 uses
  %.sroa.7404.0.i = phi ptr [ undef, %bb.g ], [ %.sroa.0.0.i.i.i.i, %.backedge.i.backedge ]
  %.sroa.0.0411.i = phi i1 [ false, %bb.g ], [ true, %.backedge.i.backedge ]
  br i1 %.sroa.0.0411.i, label %bb.i, label %.preheader

.preheader:                                       ; preds = %.backedge.i
  %.not.i.i.i.i95 = icmp eq ptr %.sroa.22.0.i, null
  %i.dt = icmp eq ptr %.sroa.22.0.i, %.sroa.28.0.i
  %or.cond.i96 = select i1 %.not.i.i.i.i95, i1 true, i1 %i.dt
  br i1 %or.cond.i96, label %select.unfold.i.i.i.preheader, label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i

select.unfold.i.i.i.preheader:                    ; preds = %.preheader
  %.not.i5.i.i.i271 = icmp eq ptr %.sroa.13.0.i, null
  %i.du = icmp eq ptr %.sroa.13.0.i, %.sroa.7.sroa.6.0.copyload.i
  %or.cond.i.i.i.i272 = select i1 %.not.i5.i.i.i271, i1 true, i1 %i.du
  br i1 %or.cond.i.i.i.i272, label %select.unfold.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i:                              ; preds = %.lr.ph
  %i.dv = icmp eq ptr %i.dx, %.sroa.7.sroa.6.0.copyload.i
  br i1 %i.dv, label %select.unfold.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.preheader, %select.unfold.i.i.i
  %i.dw = phi ptr [ %i.dx, %select.unfold.i.i.i ], [ %.sroa.13.0.i, %select.unfold.i.i.i.preheader ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 4 uses
  %i.dy = getelementptr i8, ptr %i.dw, i64 16
  %.val4.i.i.i = load i64, ptr %i.dy, align 8, !noalias !13693, !noundef !12 ; 3 uses
  %i.dz = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.dz, label %select.unfold.i.i.i, label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit

select.unfold.i.i.i._crit_edge.loopexit:          ; preds = %select.unfold.i.i.i
  %i.ea = getelementptr i8, ptr %i.dw, i64 8
  %.val.i.i.i.le361 = load ptr, ptr %i.ea, align 8, !noalias !13693, !nonnull !12, !noundef !12
  %.idx.le358 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le361, i64 %.idx.le358
  br label %select.unfold.i.i.i._crit_edge

select.unfold.i.i.i._crit_edge:                   ; preds = %select.unfold.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.preheader
  %.lcssa235 = phi ptr [ %.sroa.13.0.i, %select.unfold.i.i.i.preheader ], [ %i.dx, %select.unfold.i.i.i._crit_edge.loopexit ] ; 3 uses
  %.lcssa233 = phi ptr [ %.sroa.28.0.i, %select.unfold.i.i.i.preheader ], [ %i.eb, %select.unfold.i.i.i._crit_edge.loopexit ] ; 3 uses
  %.not.i7.i.i.i = icmp eq ptr %.sroa.34.0.i, null
  br i1 %.not.i7.i.i.i, label %select.unfold.i.i.i.i.i.preheader, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %select.unfold.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.10.0.copyload.i) ]
  %i.ec = icmp eq ptr %.sroa.34.0.i, %.sroa.7.sroa.10.0.copyload.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.34.0.i, i64 32
  br i1 %i.ec, label %select.unfold.i.i.i.i.i.preheader, label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit: ; preds = %.lr.ph
  %i.ee = getelementptr i8, ptr %i.dw, i64 8
  %.val.i.i.i.le = load ptr, ptr %i.ee, align 8, !noalias !13693, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le, i64 %.idx.le
  br label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i

_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i: ; preds = %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit, %.preheader
  %.lcssa63 = phi ptr [ %.sroa.28.0.i, %.preheader ], [ %i.ef, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit ]
  %.lcssa = phi ptr [ %.sroa.13.0.i, %.preheader ], [ %i.dx, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit ]
  %spec.select.i18.i.i.i.lcssa = phi ptr [ %.sroa.22.0.i, %.preheader ], [ %.val.i.i.i.le, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i.loopexit ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.lcssa, i64 32
  br label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i, %.sink.split.i8.i.i.i
  %i.eh = phi ptr [ %.lcssa233, %.sink.split.i8.i.i.i ], [ %.lcssa63, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %i.ei = phi ptr [ %.lcssa235, %.sink.split.i8.i.i.i ], [ %.lcssa, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.34.1.i = phi ptr [ %i.ed, %.sink.split.i8.i.i.i ], [ %.sroa.34.0.i, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.22.1.i = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.eg, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.34.0.i, %.sink.split.i8.i.i.i ], [ %spec.select.i18.i.i.i.lcssa, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.loopexit.i ]
  %i.ej = call noundef nonnull align 8 ptr %.sroa.0.0.copyload.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !13694, !inline_history !13511
  br label %bb.i

bb.i:                                             ; preds = %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %.backedge.i
  %.sroa.34.2.i = phi ptr [ %.sroa.34.0.i, %.backedge.i ], [ %.sroa.34.1.i, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.28.2.i = phi ptr [ %.sroa.28.0.i, %.backedge.i ], [ %i.eh, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.sroa.22.2.i = phi ptr [ %.sroa.22.0.i, %.backedge.i ], [ %.sroa.22.1.i, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.0.i, %.backedge.i ], [ %i.ei, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.014.0.i = phi ptr [ %.sroa.7404.0.i, %.backedge.i ], [ %i.ej, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i99 = icmp eq ptr %.sroa.22.2.i, null
  %i.ek = icmp eq ptr %.sroa.22.2.i, %.sroa.28.2.i
  %or.cond485.i100 = select i1 %.not.i.i.i.i.i.i99, i1 true, i1 %i.ek
  br i1 %or.cond485.i100, label %select.unfold.i.i.i.i.i.preheader, label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %.sink.split.i8.i.i.i, %select.unfold.i.i.i._crit_edge, %bb.i
  %.sroa.014.0.i193 = phi ptr [ %.sroa.014.0.i, %bb.i ], [ null, %select.unfold.i.i.i._crit_edge ], [ null, %.sink.split.i8.i.i.i ] ; 4 uses
  %.sroa.13.2.i189 = phi ptr [ %.sroa.13.2.i, %bb.i ], [ %.lcssa235, %select.unfold.i.i.i._crit_edge ], [ %.lcssa235, %.sink.split.i8.i.i.i ] ; 4 uses
  %.sroa.28.2.i188 = phi ptr [ %.sroa.28.2.i, %bb.i ], [ %.lcssa233, %select.unfold.i.i.i._crit_edge ], [ %.lcssa233, %.sink.split.i8.i.i.i ]
  %.sroa.34.2.i186 = phi ptr [ %.sroa.34.2.i, %bb.i ], [ null, %select.unfold.i.i.i._crit_edge ], [ null, %.sink.split.i8.i.i.i ] ; 5 uses
  %.not.i5.i.i.i.i.i274 = icmp eq ptr %.sroa.13.2.i189, null
  %i.el = icmp eq ptr %.sroa.13.2.i189, %.sroa.7.sroa.6.0.copyload.i
  %or.cond.i.i.i.i.i.i275 = select i1 %.not.i5.i.i.i.i.i274, i1 true, i1 %i.el
  br i1 %or.cond.i.i.i.i.i.i275, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph276

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph276
  %i.em = icmp eq ptr %i.eo, %.sroa.7.sroa.6.0.copyload.i
  br i1 %i.em, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph276

.lr.ph276:                                        ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %i.en = phi ptr [ %i.eo, %select.unfold.i.i.i.i.i ], [ %.sroa.13.2.i189, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 4 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.ep, align 8, !noalias !13695, !noundef !12 ; 3 uses
  %i.eq = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.eq, label %select.unfold.i.i.i.i.i, label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.er = getelementptr i8, ptr %i.en, i64 8
  %.val.i.i.i.i.i.le371 = load ptr, ptr %i.er, align 8, !noalias !13695, !nonnull !12, !noundef !12
  %.idx104.le368 = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le371, i64 %.idx104.le368
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.lcssa241 = phi ptr [ %.sroa.13.2.i189, %select.unfold.i.i.i.i.i.preheader ], [ %i.eo, %select.unfold.i.i.i.i.i._crit_edge.loopexit ] ; 3 uses
  %.lcssa239 = phi ptr [ %.sroa.28.2.i188, %select.unfold.i.i.i.i.i.preheader ], [ %i.es, %select.unfold.i.i.i.i.i._crit_edge.loopexit ] ; 3 uses
  %.not.i7.i.i.i.i.i = icmp eq ptr %.sroa.34.2.i186, null
  br i1 %.not.i7.i.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Z_8PeekableINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBN_EE4peek0ECsl8pJiQOn4hA_9coreutils.exit.i, label %.sink.split.i8.i.i.i.i.i

.sink.split.i8.i.i.i.i.i:                         ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.10.0.copyload.i) ]
  %i.et = icmp eq ptr %.sroa.34.2.i186, %.sroa.7.sroa.10.0.copyload.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.34.2.i186, i64 32
  br i1 %i.et, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Z_8PeekableINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBN_EE4peek0ECsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i.loopexit: ; preds = %.lr.ph276
  %i.ev = getelementptr i8, ptr %i.en, i64 8
  %.val.i.i.i.i.i.le = load ptr, ptr %i.ev, align 8, !noalias !13695, !nonnull !12, !noundef !12 ; 2 uses
  %.idx104.le = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le, i64 %.idx104.le
  br label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i

_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i: ; preds = %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i.loopexit, %bb.i
  %.sroa.014.0.i192 = phi ptr [ %.sroa.014.0.i, %bb.i ], [ %.sroa.014.0.i193, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i.loopexit ]
  %.sroa.34.2.i187 = phi ptr [ %.sroa.34.2.i, %bb.i ], [ %.sroa.34.2.i186, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i.loopexit ]
  %.lcssa68 = phi ptr [ %.sroa.28.2.i, %bb.i ], [ %i.ew, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i.loopexit ]
  %.lcssa66 = phi ptr [ %.sroa.13.2.i, %bb.i ], [ %i.eo, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i.loopexit ]
  %spec.select.i18.i.i.i.i.i.lcssa = phi ptr [ %.sroa.22.2.i, %bb.i ], [ %.val.i.i.i.i.i.le, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i.loopexit ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.i.lcssa, i64 32
  br label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i, %.sink.split.i8.i.i.i.i.i
  %.sroa.014.0.i191 = phi ptr [ %.sroa.014.0.i193, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.014.0.i192, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i ]
  %i.ey = phi ptr [ %.lcssa239, %.sink.split.i8.i.i.i.i.i ], [ %.lcssa68, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i ]
  %i.ez = phi ptr [ %.lcssa241, %.sink.split.i8.i.i.i.i.i ], [ %.lcssa66, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i ]
  %.sroa.34.3.i = phi ptr [ %i.eu, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.34.2.i187, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i ]
  %.sroa.22.3.i = phi ptr [ null, %.sink.split.i8.i.i.i.i.i ], [ %i.ex, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.34.2.i186, %.sink.split.i8.i.i.i.i.i ], [ %spec.select.i18.i.i.i.i.i.lcssa, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.loopexit.i ]
  %i.fa = call noundef nonnull align 8 ptr %.sroa.0.0.copyload.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i) #45, !noalias !13696, !inline_history !13521
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Z_8PeekableINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBN_EE4peek0ECsl8pJiQOn4hA_9coreutils.exit.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Z_8PeekableINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBN_EE4peek0ECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.sink.split.i8.i.i.i.i.i, %select.unfold.i.i.i.i.i._crit_edge
  %.sroa.014.0.i190 = phi ptr [ %.sroa.014.0.i193, %select.unfold.i.i.i.i.i._crit_edge ], [ %.sroa.014.0.i193, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.014.0.i191, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %i.fb = phi ptr [ %.lcssa239, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa239, %.sink.split.i8.i.i.i.i.i ], [ %i.ey, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %i.fc = phi ptr [ %.lcssa241, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa241, %.sink.split.i8.i.i.i.i.i ], [ %i.ez, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.34.4.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ null, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.34.3.i, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.22.4.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ null, %.sink.split.i8.i.i.i.i.i ], [ %.sroa.22.3.i, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ null, %.sink.split.i8.i.i.i.i.i ], [ %i.fa, %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEEIB1c_B28_EENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 4 uses
  %.not111.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  %.not112.i = icmp eq ptr %.sroa.014.0.i190, null
  br i1 %.not112.i, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_RNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Z_8PeekableINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBN_EE4peek0ECsl8pJiQOn4hA_9coreutils.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i190, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !13686, !nonnull !12, !noundef !12 ; 7 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i190, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !13686, !noundef !12 ; 28 uses
  %i.fh = call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.fg) #45, !noalias !13686
  br i1 %i.fh, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !13697
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.fg) #45, !noalias !13698
  %i.fi = load i64, ptr %i.ad, align 8, !range !26, !noalias !13697, !noundef !12
  %i.fj = icmp eq i64 %i.fi, 2
  br i1 %i.fj, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.fk = load ptr, ptr %i.cz, align 8, !noalias !13697, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13699
  %i.fl = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fm = and i64 %i.fl, 3
  switch i64 %i.fm, label %.unreachabledefault [
    i64 2, label %bb.r
    i64 3, label %bb.m
    i64 0, label %bb.r
    i64 1, label %bb.n
  ], !prof !22

.unreachabledefault:                              ; preds = %bb.l
  unreachable

default.unreachable:                              ; preds = %bb.cq, %bb.cm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit188.i, %bb.bw, %bb.bs, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit149.thread297.i, %bb.af, %bb.ab, %bb.ed, %bb.dw, %bb.ds, %bb.dn, %bb.dj
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.fn = icmp ult ptr %i.fk, inttoptr (i64 188978561024 to ptr)
  %i.fo = and i64 %i.fl, 1095216660480
  %i.fp = icmp ne i64 %i.fo, 1095216660480
  call void @llvm.assume(i1 %i.fn)
  call void @llvm.assume(i1 %i.fp)
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.fq = getelementptr i8, ptr %i.fk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  store ptr %i.fq, ptr %i.da, align 8, !alias.scope !13700, !noalias !13699
  store i8 3, ptr %i.ac, align 8, !alias.scope !13700, !noalias !13699
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.da) #45, !noalias !13699
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !13686
  %.not.i137.i = icmp slt i64 %i.fg, 0
  br i1 %.not.i137.i, label %bb.cg, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  %i.fr = icmp eq i64 %i.fg, 0                    ; 2 uses
  br i1 %i.fr, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread303.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13701
  %i.fs = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fg, i64 noundef range(i64 1, 9) 1) #45, !noalias !13701 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.cg, label %bb.cx

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !13699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !13686
  %.not.i138.i = icmp slt i64 %i.fg, 0
  br i1 %.not.i138.i, label %bb.v, label %bb.s, !prof !27

bb.s:                                             ; preds = %bb.r
  %i.fu = icmp eq i64 %i.fg, 0                    ; 2 uses
  br i1 %i.fu, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit140.thread286.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13702
  %i.fv = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fg, i64 noundef range(i64 1, 9) 1) #45, !noalias !13702 ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.v, label %bb.am

bb.u:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !13703
  store i128 18446745954905227264, ptr %i.ab, align 16, !noalias !13703
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.fg) #45, !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13703
  %i.fx = load i32, ptr %i.as, align 8, !range !31, !noalias !13686, !noundef !12
  %i.fy = trunc nuw i32 %i.fx to i1
  br i1 %i.fy, label %bb.an, label %bb.aq

bb.v:                                             ; preds = %bb.t, %bb.r
  %.sroa.4250.0.ph.i = phi i64 [ 1, %bb.t ], [ 0, %bb.r ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4250.0.ph.i, i64 %i.fg) #52, !noalias !13686
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit140.thread286.i: ; preds = %bb.am, %bb.s
  %i.fz = phi ptr [ %i.fv, %bb.am ], [ inttoptr (i64 1 to ptr), %bb.s ] ; 2 uses
  store i64 %i.fg, ptr %.sink8.i.sroa.gep231.i, align 8, !noalias !13686
  store ptr %i.fz, ptr %.sink8.i.sroa.gep.i, align 8, !noalias !13686
  store i64 %i.fg, ptr %.sroa.578.0..sroa_idx.i, align 8, !noalias !13686
  store i64 -9223372036854775807, ptr %i.ax, align 8, !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13704
  store i64 0, ptr %i.aa, align 8, !noalias !13704
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !13704
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !13704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !13704
  store i64 1610612768, ptr %i.db, align 8, !noalias !13704
  store ptr %i.aa, ptr %i.z, align 8, !noalias !13704
  store ptr @113, ptr %i.dc, align 8, !noalias !13704
  %i.ga = call noundef zeroext i1 @_RNvXCsgN7rS7e43TA_7uu_moreNtB2_9MoreErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #45, !noalias !13705
  br i1 %i.ga, label %bb.w, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsgN7rS7e43TA_7uu_more9MoreErrorNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.w:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit140.thread286.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1323, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @895, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1325) #50, !noalias !13705
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsgN7rS7e43TA_7uu_more9MoreErrorNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit140.thread286.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0253.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !13704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13704
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13706
  %i.gb = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13706 ; 5 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsgN7rS7e43TA_7uu_more9MoreErrorNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !13706
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i: ; preds = %bb.y
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13707
  %.pre413.i = load ptr, ptr %i.ay, align 8, !noalias !13686
  %.pre414.i = load ptr, ptr %i.dd, align 8, !noalias !13686
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgN7rS7e43TA_7uu_more9MoreErrorECsl8pJiQOn4hA_9coreutils.exit.i

bb.y:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsgN7rS7e43TA_7uu_more9MoreErrorNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0253.i, i64 24, i1 false), !noalias !13686
  %.sroa.4254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store i32 0, ptr %.sroa.4254.0..sroa_idx.i, align 8, !noalias !13686
  store ptr %i.gb, ptr %i.ay, align 8, !noalias !13686
  store ptr @56, ptr %i.dd, align 8, !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0253.i)
  br i1 %i.fu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgN7rS7e43TA_7uu_more9MoreErrorECsl8pJiQOn4hA_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i

end_hunk_5
begin_hunk_6_@_RINvCshmuvWokFoRg_12uu_dircolors6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtBK_5slice4iter4IterB2h_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.on = load i64, ptr %i.om, align 8, !range !25, !invariant.load !12, !noalias !15751
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ok, i64 noundef range(i64 1, -9223372036854775807) %i.on) #45, !noalias !15751
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ed, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.cz
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RINvCshytdrR3ujnR_10uu_pathchk6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBE_6cloned6ClonedINtNtNtBI_5slice4iter4IterB2f_EEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = alloca [712 x i8], align 8               ; 4 uses
  %i.q = alloca [56 x i8], align 8                ; 8 uses
  %i.r = alloca [56 x i8], align 8                ; 13 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 9 uses
  %i.ae = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15823
  call void @_RNvCshytdrR3ujnR_10uu_pathchk6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.p) #45, !noalias !15823
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.q, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15823
  %i.ag = load i64, ptr %i.q, align 8, !range !13, !noalias !15823, !noundef !12 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !15823 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !15823 ; 2 uses
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15823
  br label %.split

bb.e:                                             ; preds = %bb.c
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.626.0..sroa_idx.i, i64 32, i1 false), !noalias !15823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15823
  store i64 %i.ag, ptr %i.r, align 8, !noalias !15823
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.aj, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !15823
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.al, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15823
  %i.am = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @641, i64 noundef 5) #45, !noalias !15823
  %i.an = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @642, i64 noundef 13) #45, !noalias !15823 ; 2 uses
  %i.ao = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @643, i64 noundef 11) #45, !noalias !15823 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15823
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ao, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %brmerge.i = or i1 %i.an, %i.ao
  br i1 %brmerge.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %..i = select i1 %i.an, i8 2, i8 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sink.i = phi i8 [ 3, %bb.i ], [ 1, %bb.g ], [ %..i, %bb.h ]
  store i8 %.sink.i, ptr %i.o, align 1, !noalias !15823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15823
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @463, i64 noundef 4) #45, !noalias !15823
  call void @llvm.experimental.noalias.scope.decl(metadata !15824)
  call void @llvm.experimental.noalias.scope.decl(metadata !15825)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15823
  store ptr @463, ptr %i.j, align 8, !noalias !15826
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 4, ptr %i.ap, align 8, !noalias !15826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15826
  %i.aq = load i64, ptr %i.l, align 8, !range !16, !alias.scope !15825, !noalias !15823, !noundef !12
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.ar, label %bb.k, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !18

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.as, i64 40, i1 false), !noalias !15827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15826
  store ptr %i.j, ptr %i.h, align 8, !noalias !15826
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !15826
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.at, align 8, !noalias !15826
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !15826
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !15828
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.j
  %.sroa.0.0.copyload50.i = load ptr, ptr %i.as, align 8, !alias.scope !15829, !noalias !15823 ; 2 uses
  %.sroa.6.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx51.i, align 8, !alias.scope !15829, !noalias !15823
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx51.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6.sroa.5.0.copyload.i = load ptr, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx51.sroa_idx.i, align 8, !alias.scope !15829, !noalias !15823 ; 2 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx51.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx51.sroa_idx.i, align 8, !alias.scope !15829, !noalias !15823
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx51.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.6.sroa.7.0.copyload.i = load ptr, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx51.sroa_idx.i, align 8, !alias.scope !15829, !noalias !15823
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx51.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.6.sroa.8.0.copyload.i = load ptr, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx51.sroa_idx.i, align 8, !alias.scope !15829, !noalias !15823
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx51.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.6.sroa.9.0.copyload.i = load ptr, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx51.sroa_idx.i, align 8, !alias.scope !15829, !noalias !15823 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15823
  %.not.i = icmp eq ptr %.sroa.0.0.copyload50.i, null
  br i1 %.not.i, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %bb.n

bb.l:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @644, i64 noundef 29) #45, !noalias !15823
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !15830
  %i.ay = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !15830 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.m, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !15

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !15830
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !15823
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 1, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !15823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15823
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.r) #45, !noalias !15823
  br label %.split

bb.n:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i, %.preheader.i
  %.sroa.13.0.i = phi ptr [ %.sroa.13.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.6.sroa.8.0.copyload.i, %.preheader.i ] ; 5 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i62, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.6.sroa.7.0.copyload.i, %.preheader.i ] ; 3 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.8.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.6.sroa.6.0.copyload.i, %.preheader.i ] ; 3 uses
  %.sroa.4.071.i = phi ptr [ %.sroa.4.172.i59, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.6.sroa.0.0.copyload.i, %.preheader.i ] ; 5 uses
  %.sroa.011.0.i = phi i1 [ %i.cw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i ], [ true, %.preheader.i ] ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %.sroa.8.0.i, null
  %i.ba = icmp eq ptr %.sroa.8.0.i, %.sroa.11.0.i
  %or.cond.i68 = select i1 %.not.i.i.i.i67, i1 true, i1 %i.ba
  br i1 %or.cond.i68, label %select.unfold.i.i.i.preheader, label %.loopexit.i

select.unfold.i.i.i.preheader:                    ; preds = %bb.n
  %.not.i5.i.i.i115 = icmp eq ptr %.sroa.4.071.i, null
  %i.bb = icmp eq ptr %.sroa.4.071.i, %.sroa.6.sroa.5.0.copyload.i
  %or.cond.i.i.i.i116 = select i1 %.not.i5.i.i.i115, i1 true, i1 %i.bb
  br i1 %or.cond.i.i.i.i116, label %select.unfold.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i:                              ; preds = %.lr.ph
  %i.bc = icmp eq ptr %i.bd, %.sroa.6.sroa.5.0.copyload.i
  br i1 %i.bc, label %select.unfold.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.preheader, %select.unfold.i.i.i
  %.sroa.4.172.i70117 = phi ptr [ %i.bd, %select.unfold.i.i.i ], [ %.sroa.4.071.i, %select.unfold.i.i.i.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.4.172.i70117, i64 24 ; 4 uses
  %i.be = getelementptr i8, ptr %.sroa.4.172.i70117, i64 16
  %.val4.i.i.i = load i64, ptr %i.be, align 8, !noalias !15831, !noundef !12 ; 3 uses
  %i.bf = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.bf, label %select.unfold.i.i.i, label %.loopexit.i.loopexit

select.unfold.i.i.i._crit_edge.loopexit:          ; preds = %select.unfold.i.i.i
  %i.bg = getelementptr i8, ptr %.sroa.4.172.i70117, i64 8
  %.val.i.i.i.le142 = load ptr, ptr %i.bg, align 8, !noalias !15831, !nonnull !12, !noundef !12
  %.idx.le140 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le142, i64 %.idx.le140
  br label %select.unfold.i.i.i._crit_edge

select.unfold.i.i.i._crit_edge:                   ; preds = %select.unfold.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.preheader
  %.sroa.4.172.i70.lcssa = phi ptr [ %.sroa.4.071.i, %select.unfold.i.i.i.preheader ], [ %i.bd, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.sroa.11.1.i69.lcssa = phi ptr [ %.sroa.11.0.i, %select.unfold.i.i.i.preheader ], [ %i.bh, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i = icmp eq ptr %.sroa.13.0.i, null
  br i1 %.not.i7.i.i.i, label %bb.o, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %select.unfold.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.9.0.copyload.i) ]
  %i.bi = icmp eq ptr %.sroa.13.0.i, %.sroa.6.sroa.9.0.copyload.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i, i64 32
  br i1 %i.bi, label %bb.o, label %.lr.ph.i

.loopexit.i.loopexit:                             ; preds = %.lr.ph
  %i.bk = getelementptr i8, ptr %.sroa.4.172.i70117, i64 8
  %.val.i.i.i.le = load ptr, ptr %i.bk, align 8, !noalias !15831, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.le, i64 %.idx.le
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.n
  %.sroa.11.1.i.lcssa = phi ptr [ %.sroa.11.0.i, %bb.n ], [ %i.bl, %.loopexit.i.loopexit ]
  %.sroa.8.1.i.lcssa = phi ptr [ %.sroa.8.0.i, %bb.n ], [ %.val.i.i.i.le, %.loopexit.i.loopexit ] ; 2 uses
  %.sroa.4.172.i.lcssa = phi ptr [ %.sroa.4.071.i, %bb.n ], [ %i.bd, %.loopexit.i.loopexit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i.lcssa, i64 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %.sink.split.i8.i.i.i
  %.sroa.11.1.i62 = phi ptr [ %.sroa.11.1.i69.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.11.1.i.lcssa, %.loopexit.i ]
  %.sroa.4.172.i59 = phi ptr [ %.sroa.4.172.i70.lcssa, %.sink.split.i8.i.i.i ], [ %.sroa.4.172.i.lcssa, %.loopexit.i ]
  %.sroa.13.1.i = phi ptr [ %i.bj, %.sink.split.i8.i.i.i ], [ %.sroa.13.0.i, %.loopexit.i ]
  %.sroa.8.2.i = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.bm, %.loopexit.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.13.0.i, %.sink.split.i8.i.i.i ], [ %.sroa.8.1.i.lcssa, %.loopexit.i ]
  %i.bn = call noundef nonnull align 8 ptr %.sroa.0.0.copyload50.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !15832, !inline_history !15764 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15823
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !15823, !nonnull !12, !noundef !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !15823, !noundef !12
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.br) #45, !noalias !15823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15823
  store i64 0, ptr %i.m, align 8, !noalias !15823
  store ptr inttoptr (i64 8 to ptr), ptr %i.au, align 8, !noalias !15823
  store i64 0, ptr %i.av, align 8, !noalias !15823
  %i.bs = load i64, ptr %i.n, align 8, !range !13, !noalias !15823, !noundef !12 ; 2 uses
  %i.bt = load ptr, ptr %i.aw, align 8, !noalias !15823 ; 6 uses
  %i.bu = load i64, ptr %i.ax, align 8, !noalias !15823 ; 6 uses
  %.not41.i = icmp eq ptr %i.bt, null
  br label %bb.q

bb.o:                                             ; preds = %.sink.split.i8.i.i.i, %select.unfold.i.i.i._crit_edge
  br i1 %.sroa.011.0.i, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #45, !noalias !15823
  br label %bb.ae

bb.q:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i, %.lr.ph.i
  %.lcssa103113.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa103111144.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %.lcssa98106108.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa98105145.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i ] ; 4 uses
  %i.bv = icmp ult i64 %i.bu, %.lcssa103113.i
  br i1 %i.bv, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.q, %bb.u
  %i.bw = phi i64 [ %i.cl, %bb.u ], [ %.lcssa103113.i, %bb.q ] ; 4 uses
  %i.bx = sub nuw i64 %i.bu, %i.bw                ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw ; 2 uses
  %i.bz = icmp samesign ult i64 %i.bx, 16
  br i1 %i.bz, label %.preheader.i.i.i.i, label %bb.r

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i46.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i46.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ca = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef range(i64 0, -9223372036854775808) %i.bx) #45, !noalias !15833
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.s, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bx, %bb.s ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.s ]
  %i.cb = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.cc = insertvalue { i64, i64 } %i.cb, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.s
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.cg, %bb.s ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.01.05.i.i.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !15834, !noalias !15833, !noundef !12
  %i.cf = icmp eq i8 %i.ce, 47
  br i1 %i.cf, label %._crit_edge.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cg = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cg, %i.bx
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.r
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.cc, %._crit_edge.i.i.i.i ], [ %i.ca, %bb.r ] ; 2 uses
  %i.ch = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %bb.t, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.t:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i
  %i.cj = extractvalue { i64, i64 } %.merged.i.i.i.i, 1 ; 2 uses
  %i.ck = add i64 %i.bw, 1
  %i.cl = add i64 %i.ck, %i.cj                    ; 5 uses
  %.not12.i.i.i = icmp ugt i64 %i.cl, %i.bu
  %i.cm = add i64 %i.cj, %i.bw                    ; 3 uses
  %or.cond.i.i.not.i = icmp ult i64 %i.cm, %i.bu
  br i1 %or.cond.i.i.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  br i1 %.not12.i.i.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph.split.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cm
  %lhsc.i = load i8, ptr %i.cn, align 1, !noalias !15823
  %i.co = icmp eq i8 %lhsc.i, 47
  br i1 %i.co, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread138.i, label %bb.u

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.u, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i, %bb.q
  %.lcssa103112.i = phi i64 [ %.lcssa103113.i, %bb.q ], [ %i.cl, %bb.u ], [ %i.bu, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i ]
  br i1 %.not41.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit._RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread138.i

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread138.i: ; preds = %bb.v, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i
  %.pn147.i = phi i64 [ %i.bu, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.cm, %bb.v ] ; 2 uses
  %i.cp = phi i1 [ true, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i ], [ false, %bb.v ]
  %.lcssa98105145.i = phi i64 [ %.lcssa98106108.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.cl, %bb.v ]
  %.lcssa103111144.i = phi i64 [ %.lcssa103112.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.cl, %bb.v ]
  %.sroa.4.1.i148.i = sub nuw i64 %.pn147.i, %.lcssa98106108.i ; 6 uses
  %.sroa.0.1.i149.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.lcssa98106108.i
  %.not.i.i = icmp slt i64 %.sroa.4.1.i148.i, 0
  br i1 %.not.i.i, label %bb.ab, label %bb.w, !prof !27

bb.w:                                             ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread138.i
  %i.cq = icmp eq i64 %.pn147.i, %.lcssa98106108.i
  br i1 %i.cq, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread86.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !15835
  %i.cr = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.1.i148.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !15835 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ab, label %bb.ad

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit._RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge.i: ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.i
  %.pre.i = load i64, ptr %i.av, align 8, !noalias !15823
  br label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit._RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge.i
  %i.ct = phi i64 [ %.pre.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit._RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge.i ], [ %i.dm, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i ]
  %i.cu = load ptr, ptr %i.au, align 8, !noalias !15823, !nonnull !12, !noundef !12
  %i.cv = call noundef zeroext i1 @_RNvCshytdrR3ujnR_10uu_pathchk10check_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cu, i64 noundef %i.ct) #45, !noalias !15823
  %i.cw = and i1 %.sroa.011.0.i, %i.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !15836)
  %.val.i47.i = load ptr, ptr %i.au, align 8, !alias.scope !15836, !noalias !15823, !nonnull !12, !noundef !12 ; 2 uses
  %.val1.i48.i = load i64, ptr %i.av, align 8, !alias.scope !15836, !noalias !15823, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15837)
  %i.cx = icmp eq i64 %.val1.i48.i, 0
  br i1 %i.cx, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i49.i

.lr.ph.i.i.i49.i:                                 ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.cz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ 0, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %.val.i47.i, i64 %.sroa.0.03.i.i.i.i ; 2 uses
  %i.cz = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15838)
  call void @llvm.experimental.noalias.scope.decl(metadata !15839)
  %.val.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !range !19, !alias.scope !15840, !noalias !15841, !noundef !12 ; 2 uses
  %i.da = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.da, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i49.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.db, align 8, !alias.scope !15840, !noalias !15841, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !15842
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.y, %.lr.ph.i.i.i49.i
  %i.dc = icmp eq i64 %i.cz, %.val1.i48.i
  br i1 %i.dc, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i49.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %.val2.i.i = load i64, ptr %i.m, align 8, !range !19, !alias.scope !15836, !noalias !15823, !noundef !12 ; 2 uses
  %i.dd = icmp eq i64 %.val2.i.i, 0
  br i1 %i.dd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.z

bb.z:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.de = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i47.i, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !15841
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.z, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15823
  %i.df = icmp sgt i64 %i.bs, 0
  br i1 %i.df, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i

bb.aa:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !15843
end_hunk_6
begin_hunk_7_@_RINvCslbrwWrVtb7E_5uu_tr6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBy_6cloned6ClonedINtNtNtBC_5slice4iter4IterB29_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [48 x i8], align 8               ; 10 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 12 uses
  %i.ap = alloca [16 x i8], align 8               ; 12 uses
  %i.aq = alloca [8 x i8], align 8                ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 10 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 8 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 10 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 10 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [24 x i8], align 8               ; 8 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %i.br = alloca [24 x i8], align 8               ; 10 uses
  %i.bs = alloca [24 x i8], align 8               ; 8 uses
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
  %i.bu = alloca [16 x i8], align 8               ; 6 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 10 uses
  %i.bx = alloca [24 x i8], align 8               ; 16 uses
  %i.by = alloca [712 x i8], align 8              ; 4 uses
  %i.bz = alloca [56 x i8], align 8               ; 8 uses
  %i.ca = alloca [56 x i8], align 8               ; 14 uses
  %i.cb = alloca [4 x i8], align 4                ; 3 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !17491
  store i32 %i.cq, ptr %i.cb, align 4, !noalias !17491
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !17492
  call void @_RNvCslbrwWrVtb7E_5uu_tr6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.by) #45, !noalias !17492
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1t_6cloned6ClonedINtNtNtB1x_5slice4iter4IterB34_EEEB34_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.bz, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, i32 noundef 1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !17492
  %i.cr = load i64, ptr %i.bz, align 8, !range !13, !noalias !17492, !noundef !12 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !17492 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !17492 ; 2 uses
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17492
  br label %.split

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.614.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.691.0..sroa_idx.i, i64 32, i1 false), !noalias !17492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17492
  store i64 %i.cr, ptr %i.ca, align 8, !noalias !17492
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17492
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cw, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !17492
  %i.cx = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @697, i64 noundef 6) #45, !noalias !17492 ; 4 uses
  %i.cy = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @503, i64 noundef 10) #45, !noalias !17492
  %i.cz = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @698, i64 noundef 15) #45, !noalias !17492 ; 5 uses
  %i.da = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @699, i64 noundef 13) #45, !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !17492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !17492
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @700, i64 noundef 4) #45, !noalias !17492
  call void @llvm.experimental.noalias.scope.decl(metadata !17493)
  call void @llvm.experimental.noalias.scope.decl(metadata !17494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17492
  store ptr @700, ptr %i.p, align 8, !noalias !17495
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 4, ptr %i.db, align 8, !noalias !17495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17495
  %i.dc = load i64, ptr %i.x, align 8, !range !16, !alias.scope !17494, !noalias !17492, !noundef !12
  %i.dd = trunc nuw i64 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  br i1 %i.dd, label %bb.g, label %.split.us.preheader.i.i.i, !prof !18

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.de, i64 40, i1 false), !noalias !17496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17495
  store ptr %i.p, ptr %i.n, align 8, !noalias !17495
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !17495
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.df, align 8, !noalias !17495
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !17495
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !17497
  unreachable

.split.us.preheader.i.i.i:                        ; preds = %bb.f
  %.sroa.0352.0.copyload.i = load ptr, ptr %i.de, align 8, !alias.scope !17498, !noalias !17492
  %.sroa.4353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4353.0.copyload.i = load ptr, ptr %.sroa.4353.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.5354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.5354.0.copyload.i = load ptr, ptr %.sroa.5354.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.6355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.6355.0.copyload.i = load ptr, ptr %.sroa.6355.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.7356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.7356.0.copyload.i = load ptr, ptr %.sroa.7356.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.8357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.8357.0.copyload.i = load ptr, ptr %.sroa.8357.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.9358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.9358.0.copyload.i = load ptr, ptr %.sroa.9358.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  %.sroa.10359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.10359.0.copyload.i = load i64, ptr %.sroa.10359.0..sroa_idx.i, align 8, !alias.scope !17498, !noalias !17492 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !17492
  call void @llvm.experimental.noalias.scope.decl(metadata !17499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17500
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
  %.val4.i.i.i.i.us.i.i.i = load i64, ptr %i.dk, align 8, !noalias !17501, !noundef !12 ; 3 uses
  %i.dl = icmp eq i64 %.val4.i.i.i.i.us.i.i.i, 0
  br i1 %i.dl, label %select.unfold.i.i.i.i.us.i.i.i, label %.loopexit437.i.loopexit

select.unfold.i.i.i.i.us.i.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.us.i.i.i
  %i.dm = getelementptr i8, ptr %.sroa.23.sroa.0.4.i194778, i64 8
  %.val.i.i.i.i.us.i.i.i.le1084 = load ptr, ptr %i.dm, align 8, !noalias !17501, !nonnull !12, !noundef !12
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
  %.val.i.i.i.i.us.i.i.i.le = load ptr, ptr %i.dp, align 8, !noalias !17501, !nonnull !12, !noundef !12 ; 2 uses
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
  %i.dt = call noundef nonnull align 8 ptr %.sroa.17.2.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i.i) #45, !noalias !17502, !inline_history !17311 ; 2 uses
  %i.du = add i64 %.sroa.23.sroa.31.2.i, -1       ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 8
  %.val.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !17503, !nonnull !12, !noundef !12
  %i.dw = getelementptr i8, ptr %i.dt, i64 16
  %.val2.i.i.i = load i64, ptr %i.dw, align 8, !noalias !17503, !noundef !12 ; 7 uses
  %i.dx = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dx, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !17504
  %i.dy = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !17504 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.j, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i) #52, !noalias !17505
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull readonly align 1 %.val.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.i.i, i1 false), !noalias !17506
  %.not.i.i = icmp eq i64 %.val2.i.i.i, -1
  br i1 %.not.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB2j_7flatten7FlattenINtNtB2n_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEENvYB11_NtNtB6_6borrow7ToOwned8to_ownedEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.h
  %.sroa.7.0169.i.i = phi ptr [ %i.dy, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ inttoptr (i64 1 to ptr), %bb.h ]
  %i.ea = call i64 @llvm.uadd.sat.i64(i64 %i.du, i64 1) ; 2 uses
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ea, i64 4) ; 3 uses
  %i.eb = mul i64 %..i.i.i, 24                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.ea, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !27

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !17507
  %i.ed = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.eb, i64 noundef range(i64 1, 9) 8) #45, !noalias !17507 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.m, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.m:                                             ; preds = %bb.l, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEENvYB2V_NtNtCs7tKScEop1B6_5alloc6borrow7ToOwned8to_ownedENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread163.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.eb) #52, !noalias !17500
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.ed, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %..i.i.i, %bb.l ] ; 2 uses
  %i.ef = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.ef)
  store i64 %.val2.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !17500
  %.sroa.479.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store ptr %.sroa.7.0169.i.i, ptr %.sroa.479.0..sroa_idx.i.i, align 8, !noalias !17500
  %.sroa.580.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store i64 %.val2.i.i.i, ptr %.sroa.580.0..sroa_idx.i.i, align 8, !noalias !17500
  store i64 %.sroa.4.0.i.i.i, ptr %i.m, align 8, !noalias !17500
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !17500
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !17500
  call void @llvm.experimental.noalias.scope.decl(metadata !17508)
  call void @llvm.experimental.noalias.scope.decl(metadata !17509)
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
  %.val4.i.i.i.i.us.i.i66.i.i = load i64, ptr %i.ek, align 8, !noalias !17510, !noundef !12 ; 2 uses
  %i.el = icmp eq i64 %.val4.i.i.i.i.us.i.i66.i.i, 0
  br i1 %i.el, label %select.unfold.i.i.i.i.us.i.i62.i.i, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB2j_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsl8pJiQOn4hA_9coreutils.exit.i.i19.loopexit.i.i.loopexit

select.unfold.i.i.i.i.us.i.i62.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.us.i.i62.i.i
  %i.em = getelementptr i8, ptr %.sroa.20.sroa.0.12.i523.i214, i64 8
  %.val.i.i.i.i.us.i.i65.i.i.le608 = load ptr, ptr %i.em, align 8, !noalias !17510, !nonnull !12, !noundef !12
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
  %.val.i.i.i.i.us.i.i65.i.i.le = load ptr, ptr %i.eo, align 8, !noalias !17510, !nonnull !12, !noundef !12 ; 2 uses
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
  %i.es = call noundef nonnull align 8 ptr %.sroa.11.8.i.i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i20.i.i) #45, !noalias !17511, !inline_history !17346
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
  %.val.i.i.i2.i.i = load ptr, ptr %i.ew, align 8, !noalias !17512, !nonnull !12, !noundef !12
  %i.ex = getelementptr i8, ptr %i.ev, i64 16
  %.val2.i.i.i.i.i = load i64, ptr %i.ex, align 8, !noalias !17512, !noundef !12 ; 7 uses
  %i.ey = icmp eq i64 %.val2.i.i.i.i.i, 0
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2N_8BTreeMapB16_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3N_8adapters3map3MapINtB2N_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5y_14PrimeBufferExt7factorsB16_E0EE0E0ECsl8pJiQOn4hA_9coreutils:bb.a
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %.sroa.4.0.i.i.i.i45 = phi i64 [ %i.ni, %bb.du ], [ 1, %bb.dw ], [ 0, %bb.dv ] ; 5 uses
  %.sroa.0.0.i.i.i.i46 = phi ptr [ %i.ng, %bb.du ], [ %i.nl, %bb.dw ], [ inttoptr (i64 8 to ptr), %bb.dv ] ; 2 uses
  %i.nm = load i64, ptr %i.lz, align 8, !range !13, !alias.scope !25996, !noundef !12
  %.not3.i.i.i.i47 = icmp eq i64 %i.nm, -1
  br i1 %.not3.i.i.i.i47, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nn = load ptr, ptr %i.mz, align 8, !alias.scope !25996, !nonnull !12, !noundef !12
  %i.no = load i64, ptr %i.na, align 8, !alias.scope !25996, !noundef !12
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.np = load i64, ptr %i.mz, align 8, !range !16, !alias.scope !25996, !noundef !12 ; 2 uses
  %i.nq = trunc nuw i64 %i.np to i1
  %spec.select23.i = select i1 %i.nq, ptr %i.na, ptr inttoptr (i64 8 to ptr)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sroa.42.0.i.i.i.i48 = phi i64 [ %i.no, %bb.dy ], [ %i.np, %bb.dz ] ; 2 uses
  %.sroa.01.0.i.i.i.i49 = phi ptr [ %i.nn, %bb.dy ], [ %spec.select23.i, %bb.dz ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25997)
  call void @llvm.experimental.noalias.scope.decl(metadata !25998)
  %i.nr = icmp eq i64 %.sroa.4.0.i.i.i.i45, %.sroa.42.0.i.i.i.i48
  br i1 %i.nr, label %bb.eb, label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50

bb.eb:                                            ; preds = %bb.ea
  %i.ns = icmp eq i64 %.sroa.4.0.i.i.i.i45, 0
  br i1 %i.ns, label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.eb
  %.idx122 = shl nuw nsw i64 %.sroa.4.0.i.i.i.i45, 3
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i46, i64 %.idx122
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i.i.i49, i64 %.sroa.4.0.i.i.i.i45
  br label %bb.ec

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51: ; preds = %bb.ec
  %i.nv = icmp eq ptr %.sroa.0.0.i.i.i.i46, %i.ny
  br i1 %i.nv, label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.ec

_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51, %bb.eb
  %i.nw = getelementptr inbounds i8, ptr %.sroa.19.114.i, i64 -32 ; 2 uses
  br label %bb.ee

bb.ec:                                            ; preds = %.lr.ph83, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51
  %i.nx = phi ptr [ %i.nt, %.lr.ph83 ], [ %i.ny, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51 ]
  %.sroa.3.08.i.i.i.i.i.i.i5282 = phi ptr [ %i.nu, %.lr.ph83 ], [ %i.nz, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51 ]
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i.i53 = load i64, ptr %i.ny, align 8, !alias.scope !25997, !noalias !25999
  %.val8.i.i.i.i.i.i.i.i.i.fr.i = freeze i64 %.val8.i.i.i.i.i.i.i.i.i.i53 ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i.i.i.i5282, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i54 = load i64, ptr %i.nz, align 8, !alias.scope !26000, !noalias !26001, !noundef !12 ; 2 uses
  %i.oa = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i54
  br i1 %i.oa, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55

.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55:         ; preds = %bb.ec
  %i.ob = icmp ult i64 %.val8.i.i.i.i.i.i.i.i.i.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i54
  %i.oc = getelementptr inbounds i8, ptr %.sroa.19.114.i, i64 -32 ; 3 uses
  br i1 %i.ob, label %bb.ed, label %bb.ee

_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50: ; preds = %bb.ea
  %i.od = icmp ult i64 %.sroa.4.0.i.i.i.i45, %.sroa.42.0.i.i.i.i48
  %i.oe = getelementptr inbounds i8, ptr %.sroa.19.114.i, i64 -32 ; 3 uses
  br i1 %i.od, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55
  %i.of = phi ptr [ %i.oc, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55 ], [ %i.oe, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50 ]
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.og = phi ptr [ %i.of, %bb.ed ], [ %i.oe, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50 ], [ %i.nw, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %i.oc, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55 ] ; 2 uses
  %.sroa.0.0.i.i.i.i11.i = phi i64 [ 1, %bb.ed ], [ 0, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50 ], [ 0, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ 0, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55 ]
  %i.oh = phi ptr [ %2, %bb.ed ], [ %i.oe, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50 ], [ %i.nw, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %i.oc, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55 ]
  %i.oi = getelementptr inbounds nuw [32 x i8], ptr %i.oh, i64 %.sroa.11.115.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oi, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.116.i, i64 32, i1 false), !alias.scope !26002, !noalias !26003
  %i.oj = add i64 %.sroa.0.0.i.i.i.i11.i, %.sroa.11.115.i ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.5.116.i, i64 32 ; 3 uses
  %i.ol = icmp ult ptr %i.ok, %i.nb
  br i1 %i.ol, label %.lr.ph.i43, label %._crit_edge.i

bb.ef:                                            ; preds = %._crit_edge.i
  %i.om = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -32 ; 2 uses
  %i.on = getelementptr inbounds nuw [32 x i8], ptr %i.om, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.on, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.1.lcssa.i, i64 32, i1 false), !alias.scope !26002, !noalias !26004
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 32
  br label %bb.dt

bb.eg:                                            ; preds = %._crit_edge.i
  %i.op = shl nuw nsw i64 %.sroa.11.1.lcssa.i, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph143, ptr nonnull align 8 %2, i64 %i.op, i1 false), !alias.scope !26002
  %i.oq = sub i64 %.sroa.16.013684, %.sroa.11.1.lcssa.i ; 4 uses
  %.not24.i = icmp eq i64 %.sroa.16.013684, %.sroa.11.1.lcssa.i
  br i1 %.not24.i, label %.loopexit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.eg
  %i.or = getelementptr [32 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.oq, 1
  %i.os = icmp eq i64 %.sroa.16.013684, %.neg
  br i1 %i.os, label %.epil.preheader, label %.lr.ph21.i.new

.lr.ph21.i.new:                                   ; preds = %.lr.ph21.i
  %unroll_iter = and i64 %i.oq, -2
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eh, %.lr.ph21.i.new
  %.sroa.06.019.i = phi i64 [ 0, %.lr.ph21.i.new ], [ %i.ow, %bb.eh ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph21.i.new ], [ %niter.next.1, %bb.eh ]
  %i.ot = xor i64 %.sroa.06.019.i, -1
  %i.ou = getelementptr [32 x i8], ptr %i.my, i64 %i.ot
  %i.ov = getelementptr [32 x i8], ptr %i.or, i64 %.sroa.06.019.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ov, ptr noundef nonnull align 8 dereferenceable(32) %i.ou, i64 32, i1 false), !alias.scope !26002
  %i.ow = add nuw i64 %.sroa.06.019.i, 2          ; 2 uses
  %i.ox = xor i64 %.sroa.06.019.i, -2
  %i.oy = getelementptr [32 x i8], ptr %i.my, i64 %i.ox
  %i.oz = getelementptr [32 x i8], ptr %i.or, i64 %.sroa.06.019.i
  %i.pa = getelementptr i8, ptr %i.oz, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pa, ptr noundef nonnull align 8 dereferenceable(32) %i.oy, i64 32, i1 false), !alias.scope !26002
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.eh

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.eh
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph21.i
  %.sroa.06.019.i.epil.init = phi i64 [ 0, %.lr.ph21.i ], [ %i.ow, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod239 = trunc i64 %i.oq to i1
  call void @llvm.assume(i1 %lcmp.mod239)
  %i.pb = xor i64 %.sroa.06.019.i.epil.init, -1
  %i.pc = getelementptr [32 x i8], ptr %i.my, i64 %i.pb
  %i.pd = getelementptr [32 x i8], ptr %i.or, i64 %.sroa.06.019.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pd, ptr noundef nonnull align 8 dereferenceable(32) %i.pc, i64 32, i1 false), !alias.scope !26002
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.eg
  %i.pe = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.pe, label %.thread, label %bb.ei

bb.ei:                                            ; preds = %.loopexit
  %.not.i56 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.013684
  br i1 %.not.i56, label %bb.ej, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12split_at_mutCsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.ej:                                            ; preds = %bb.ei
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @885, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50, !noalias !26005
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12split_at_mutCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ei
  %i.pf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph143) ]
  call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2N_8BTreeMapB16_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3N_8adapters3map3MapINtB2N_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5y_14PrimeBufferExt7factorsB16_E0EE0E0ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 %i.pf, i64 noundef %i.oq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.iw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.a) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pg = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.pg, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %.split.loop.exit17.i.i.i.i.i.i.i.i.i, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_E0EE0E0Csl8pJiQOn4hA_9coreutils.exit, %.loopexit, %bb.do, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26006)
  call void @llvm.experimental.noalias.scope.decl(metadata !26007)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.013684
  br i1 %.not83, label %bb.el, label %bb.ek, !prof !56

bb.ek:                                            ; preds = %.thread
  %i.ph = getelementptr [32 x i8], ptr %2, i64 %.sroa.16.013684 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  br label %bb.em

bb.el:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.em:                                            ; preds = %bb.fc, %bb.ek
  %.sroa.19.0.i59 = phi ptr [ %i.ph, %bb.ek ], [ %i.rw, %bb.fc ] ; 3 uses
  %.sroa.11.0.i60 = phi i64 [ 0, %bb.ek ], [ %i.ry, %bb.fc ] ; 3 uses
  %.sroa.5.0.i61 = phi ptr [ %.sroa.0.0.ph143, %bb.ek ], [ %i.rz, %bb.fc ] ; 4 uses
  %.sroa.0.0.i62 = phi i64 [ %.sroa.0.0.i38, %bb.ek ], [ %.sroa.16.013684, %bb.fc ] ; 2 uses
  %i.pk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.0.0.i62 ; 3 uses
  %i.pl = icmp ult ptr %.sroa.5.0.i61, %i.pk
  br i1 %i.pl, label %.lr.ph.i68, label %._crit_edge.i63

.lr.ph.i68:                                       ; preds = %bb.em
  %i.pm = load i64, ptr %i.lz, align 8, !range !13, !alias.scope !26008, !noundef !12
  %.not.i.i.i.i.i69 = icmp eq i64 %i.pm, -1
  br i1 %.not.i.i.i.i.i69, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i68, %bb.et
  %.sroa.5.111.us.i = phi ptr [ %i.qo, %bb.et ], [ %.sroa.5.0.i61, %.lr.ph.i68 ] ; 6 uses
  %.sroa.11.110.us.i = phi i64 [ %i.qn, %bb.et ], [ %.sroa.11.0.i60, %.lr.ph.i68 ] ; 2 uses
  %.sroa.19.19.us.i = phi ptr [ %i.qj, %bb.et ], [ %.sroa.19.0.i59, %.lr.ph.i68 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26009)
  call void @llvm.experimental.noalias.scope.decl(metadata !26010)
  call void @llvm.experimental.noalias.scope.decl(metadata !26011)
  call void @llvm.experimental.noalias.scope.decl(metadata !26012)
  call void @llvm.experimental.noalias.scope.decl(metadata !26013)
  call void @llvm.experimental.noalias.scope.decl(metadata !26014)
  call void @llvm.experimental.noalias.scope.decl(metadata !26015)
  call void @llvm.experimental.noalias.scope.decl(metadata !26016)
  %i.pn = load i64, ptr %i.pi, align 8, !range !16, !alias.scope !26008, !noundef !12 ; 6 uses
  %i.po = trunc nuw i64 %i.pn to i1
  %spec.select20.i = select i1 %i.po, ptr %i.pj, ptr inttoptr (i64 8 to ptr)
  %i.pp = load i64, ptr %.sroa.5.111.us.i, align 8, !range !13, !alias.scope !26017, !noundef !12
  %.not3.i.i.i.i.us.i = icmp eq i64 %i.pp, -1
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.5.111.us.i, i64 8 ; 2 uses
  br i1 %.not3.i.i.i.i.us.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.lr.ph.split.us.i
  %i.pr = load ptr, ptr %i.pq, align 8, !alias.scope !26017, !nonnull !12, !noundef !12
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.5.111.us.i, i64 16
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !26017, !noundef !12
  br label %bb.eq

bb.eo:                                            ; preds = %.lr.ph.split.us.i
  %i.pu = load i64, ptr %i.pq, align 8, !range !16, !alias.scope !26017, !noundef !12
  %i.pv = trunc nuw i64 %i.pu to i1
  br i1 %i.pv, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.5.111.us.i, i64 16
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %.sroa.42.0.i.i.i.i.us.i = phi i64 [ %i.pt, %bb.en ], [ 1, %bb.ep ], [ 0, %bb.eo ] ; 2 uses
  %.sroa.01.0.i.i.i.i.us.i = phi ptr [ %i.pr, %bb.en ], [ %i.pw, %bb.ep ], [ inttoptr (i64 8 to ptr), %bb.eo ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26018)
  call void @llvm.experimental.noalias.scope.decl(metadata !26019)
  %i.px = icmp eq i64 %i.pn, %.sroa.42.0.i.i.i.i.us.i
  br i1 %i.px, label %bb.er, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i

bb.er:                                            ; preds = %bb.eq
  %i.py = icmp eq i64 %i.pn, 0
  br i1 %i.py, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i, label %.lr.ph96

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i: ; preds = %.lr.ph96, %bb.er
  %i.pz = getelementptr inbounds i8, ptr %.sroa.19.19.us.i, i64 -32
  br label %bb.et

.lr.ph96:                                         ; preds = %bb.er
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i.i.i.us.i, i64 %i.pn
  %.idx124 = shl nuw nsw i64 %i.pn, 3
  %i.qb = getelementptr inbounds nuw i8, ptr %spec.select20.i, i64 %.idx124
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 -8
  %.val8.i.i.i.i.i.i.i.i.i.i.us.i = load i64, ptr %i.qc, align 8, !alias.scope !26018, !noalias !26020
  %.val8.i.i.i.i.i.i.i.i.i.i.us.fr.i = freeze i64 %.val8.i.i.i.i.i.i.i.i.i.i.us.i ; 2 uses
  %i.qd = getelementptr inbounds i8, ptr %i.qa, i64 -8
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.us.i = load i64, ptr %i.qd, align 8, !alias.scope !26021, !noalias !26022, !noundef !12 ; 2 uses
  %i.qe = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.us.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.us.i
  br i1 %i.qe, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i

.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i:      ; preds = %.lr.ph96
  %.not51.i = icmp ult i64 %.val8.i.i.i.i.i.i.i.i.i.i.us.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.us.i
  %i.qf = getelementptr inbounds i8, ptr %.sroa.19.19.us.i, i64 -32 ; 2 uses
  br i1 %.not51.i, label %bb.es, label %bb.et

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i: ; preds = %bb.eq
  %i.qg = icmp ult i64 %i.pn, %.sroa.42.0.i.i.i.i.us.i
  %i.qh = getelementptr inbounds i8, ptr %.sroa.19.19.us.i, i64 -32 ; 2 uses
  br i1 %i.qg, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i
  %i.qi = phi ptr [ %i.qf, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i ], [ %i.qh, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i ] ; 2 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i
  %i.qj = phi ptr [ %i.qi, %bb.es ], [ %i.qh, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i ], [ %i.pz, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i ], [ %i.qf, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %i.qk = phi i64 [ 0, %bb.es ], [ 1, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i ], [ 1, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i ], [ 1, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i ]
  %i.ql = phi ptr [ %i.qi, %bb.es ], [ %2, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i ], [ %2, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i ], [ %2, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i ]
  %i.qm = getelementptr inbounds nuw [32 x i8], ptr %i.ql, i64 %.sroa.11.110.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qm, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.111.us.i, i64 32, i1 false), !alias.scope !26023, !noalias !26024
  %i.qn = add i64 %i.qk, %.sroa.11.110.us.i       ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.5.111.us.i, i64 32 ; 3 uses
  %i.qp = icmp ult ptr %i.qo, %i.pk
  br i1 %i.qp, label %.lr.ph.split.us.i, label %._crit_edge.i63

._crit_edge.i63:                                  ; preds = %bb.fb, %bb.et, %bb.em
  %.sroa.19.1.lcssa.i64 = phi ptr [ %.sroa.19.0.i59, %bb.em ], [ %i.qj, %bb.et ], [ %i.rp, %bb.fb ]
  %.sroa.11.1.lcssa.i65 = phi i64 [ %.sroa.11.0.i60, %bb.em ], [ %i.qn, %bb.et ], [ %i.rt, %bb.fb ] ; 10 uses
  %.sroa.5.1.lcssa.i66 = phi ptr [ %.sroa.5.0.i61, %bb.em ], [ %i.qo, %bb.et ], [ %i.ru, %bb.fb ] ; 2 uses
  %i.qq = icmp eq i64 %.sroa.0.0.i62, %.sroa.16.013684
  br i1 %i.qq, label %bb.fd, label %bb.fc

.lr.ph.split.i:                                   ; preds = %.lr.ph.i68, %bb.fb
  %.sroa.5.111.i = phi ptr [ %i.ru, %bb.fb ], [ %.sroa.5.0.i61, %.lr.ph.i68 ] ; 6 uses
  %.sroa.11.110.i = phi i64 [ %i.rt, %bb.fb ], [ %.sroa.11.0.i60, %.lr.ph.i68 ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.rp, %bb.fb ], [ %.sroa.19.0.i59, %.lr.ph.i68 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26009)
  call void @llvm.experimental.noalias.scope.decl(metadata !26010)
  call void @llvm.experimental.noalias.scope.decl(metadata !26011)
  call void @llvm.experimental.noalias.scope.decl(metadata !26012)
  call void @llvm.experimental.noalias.scope.decl(metadata !26013)
  call void @llvm.experimental.noalias.scope.decl(metadata !26014)
  call void @llvm.experimental.noalias.scope.decl(metadata !26015)
  call void @llvm.experimental.noalias.scope.decl(metadata !26016)
  %i.qr = load ptr, ptr %i.pi, align 8, !alias.scope !26008, !nonnull !12, !noundef !12 ; 2 uses
  %i.qs = load i64, ptr %i.pj, align 8, !alias.scope !26008, !noundef !12 ; 5 uses
  %i.qt = load i64, ptr %.sroa.5.111.i, align 8, !range !13, !alias.scope !26017, !noundef !12
  %.not3.i.i.i.i.i70 = icmp eq i64 %i.qt, -1
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 8 ; 2 uses
  br i1 %.not3.i.i.i.i.i70, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.split.i
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !26017, !nonnull !12, !noundef !12
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !alias.scope !26017, !noundef !12
  br label %bb.ex

bb.ev:                                            ; preds = %.lr.ph.split.i
  %i.qy = load i64, ptr %i.qu, align 8, !range !16, !alias.scope !26017, !noundef !12
  %i.qz = trunc nuw i64 %i.qy to i1
  br i1 %i.qz, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 16
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu
  %.sroa.42.0.i.i.i.i.i71 = phi i64 [ %i.qx, %bb.eu ], [ 1, %bb.ew ], [ 0, %bb.ev ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i72 = phi ptr [ %i.qv, %bb.eu ], [ %i.ra, %bb.ew ], [ inttoptr (i64 8 to ptr), %bb.ev ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26018)
  call void @llvm.experimental.noalias.scope.decl(metadata !26019)
  %i.rb = icmp eq i64 %i.qs, %.sroa.42.0.i.i.i.i.i71
  br i1 %i.rb, label %bb.ey, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i

bb.ey:                                            ; preds = %bb.ex
  %i.rc = icmp eq i64 %i.qs, 0
  br i1 %i.rc, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.ey
  %.idx123 = shl nuw nsw i64 %i.qs, 3
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qr, i64 %.idx123
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i.i.i.i72, i64 %i.qs
  br label %bb.ez

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73: ; preds = %bb.ez
  %i.rf = icmp eq ptr %i.qr, %i.ri
  br i1 %i.rf, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.ez

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73, %bb.ey
  %i.rg = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -32
  br label %bb.fb

bb.ez:                                            ; preds = %.lr.ph93, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73
  %i.rh = phi ptr [ %i.rd, %.lr.ph93 ], [ %i.ri, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73 ]
  %.sroa.3.08.i.i.i.i.i.i.i.i7491 = phi ptr [ %i.re, %.lr.ph93 ], [ %i.rj, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73 ]
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i75 = load i64, ptr %i.ri, align 8, !alias.scope !26018, !noalias !26025
  %.val8.i.i.i.i.i.i.i.i.i.i.fr.i = freeze i64 %.val8.i.i.i.i.i.i.i.i.i.i.i75 ; 2 uses
  %i.rj = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i.i.i.i.i7491, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i76 = load i64, ptr %i.rj, align 8, !alias.scope !26021, !noalias !26022, !noundef !12 ; 2 uses
  %i.rk = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i76
  br i1 %i.rk, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77

.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77:       ; preds = %bb.ez
  %.not50.i = icmp ult i64 %.val8.i.i.i.i.i.i.i.i.i.i.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i76
  %i.rl = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -32 ; 2 uses
  br i1 %.not50.i, label %bb.fa, label %bb.fb

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ex
  %i.rm = icmp ult i64 %i.qs, %.sroa.42.0.i.i.i.i.i71
  %i.rn = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -32 ; 2 uses
  br i1 %i.rm, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77
  %i.ro = phi ptr [ %i.rl, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77 ], [ %i.rn, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.rp = phi ptr [ %i.ro, %bb.fa ], [ %i.rn, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i ], [ %i.rg, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %i.rl, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77 ] ; 2 uses
  %i.rq = phi i64 [ 0, %bb.fa ], [ 1, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i ], [ 1, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ 1, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77 ]
  %i.rr = phi ptr [ %i.ro, %bb.fa ], [ %2, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i ], [ %2, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_E0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %2, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77 ]
  %i.rs = getelementptr inbounds nuw [32 x i8], ptr %i.rr, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rs, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.111.i, i64 32, i1 false), !alias.scope !26023, !noalias !26024
  %i.rt = add i64 %i.rq, %.sroa.11.110.i          ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 32 ; 3 uses
  %i.rv = icmp ult ptr %i.ru, %i.pk
  br i1 %i.rv, label %.lr.ph.split.i, label %._crit_edge.i63

bb.fc:                                            ; preds = %._crit_edge.i63
  %i.rw = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i64, i64 -32
  %i.rx = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.1.lcssa.i66, i64 32, i1 false), !alias.scope !26023, !noalias !26026
  %i.ry = add i64 %.sroa.11.1.lcssa.i65, 1
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i66, i64 32
  br label %bb.em

bb.fd:                                            ; preds = %._crit_edge.i63
  %i.sa = shl nuw nsw i64 %.sroa.11.1.lcssa.i65, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph143, ptr nonnull align 8 %2, i64 %i.sa, i1 false), !alias.scope !26023
  %i.sb = sub i64 %.sroa.16.013684, %.sroa.11.1.lcssa.i65 ; 6 uses
  %.not21.i = icmp eq i64 %.sroa.16.013684, %.sroa.11.1.lcssa.i65
  br i1 %.not21.i, label %.outer._crit_edge.thread, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %bb.fd
  %i.sc = getelementptr [32 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.11.1.lcssa.i65 ; 3 uses
  %.neg247 = add i64 %.sroa.11.1.lcssa.i65, 1
  %xtraiter242 = and i64 %i.sb, 1
  %i.sd = icmp eq i64 %.sroa.16.013684, %.neg247
  br i1 %i.sd, label %.epil.preheader240, label %.lr.ph18.i.new

.lr.ph18.i.new:                                   ; preds = %.lr.ph18.i
  %unroll_iter245 = and i64 %i.sb, -2
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fe, %.lr.ph18.i.new
  %.sroa.06.016.i = phi i64 [ 0, %.lr.ph18.i.new ], [ %i.sh, %bb.fe ] ; 5 uses
  %niter246 = phi i64 [ 0, %.lr.ph18.i.new ], [ %niter246.next.1, %bb.fe ]
  %i.se = xor i64 %.sroa.06.016.i, -1
  %i.sf = getelementptr [32 x i8], ptr %i.ph, i64 %i.se
  %i.sg = getelementptr [32 x i8], ptr %i.sc, i64 %.sroa.06.016.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, ptr noundef nonnull align 8 dereferenceable(32) %i.sf, i64 32, i1 false), !alias.scope !26023
  %i.sh = add nuw i64 %.sroa.06.016.i, 2          ; 2 uses
  %i.si = xor i64 %.sroa.06.016.i, -2
  %i.sj = getelementptr [32 x i8], ptr %i.ph, i64 %i.si
  %i.sk = getelementptr [32 x i8], ptr %i.sc, i64 %.sroa.06.016.i
  %i.sl = getelementptr i8, ptr %i.sk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sl, ptr noundef nonnull align 8 dereferenceable(32) %i.sj, i64 32, i1 false), !alias.scope !26023
  %niter246.next.1 = add i64 %niter246, 2         ; 2 uses
  %niter246.ncmp.1 = icmp eq i64 %niter246.next.1, %unroll_iter245
  br i1 %niter246.ncmp.1, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_E0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa, label %bb.fe

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_E0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa: ; preds = %bb.fe
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_E0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit, label %.epil.preheader240

.epil.preheader240:                               ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_E0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa, %.lr.ph18.i
  %.sroa.06.016.i.epil.init = phi i64 [ 0, %.lr.ph18.i ], [ %i.sh, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_E0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod244 = trunc i64 %i.sb to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.sm = xor i64 %.sroa.06.016.i.epil.init, -1
  %i.sn = getelementptr [32 x i8], ptr %i.ph, i64 %i.sm
  %i.so = getelementptr [32 x i8], ptr %i.sc, i64 %.sroa.06.016.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.so, ptr noundef nonnull align 8 dereferenceable(32) %i.sn, i64 32, i1 false), !alias.scope !26023
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_E0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_E0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_E0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa, %.epil.preheader240
  %i.sp = icmp ugt i64 %.sroa.11.1.lcssa.i65, %.sroa.16.013684
  br i1 %i.sp, label %bb.ff, label %.outer, !prof !18

.outer._crit_edge.thread:                         ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapB1t_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4a_8adapters3map3MapINtB3a_8IntoIterojENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5V_14PrimeBufferExt7factorsB1t_E0EE0E0ECsl8pJiQOn4hA_9coreutils.exit
end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2N_8BTreeMapB16_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3N_8adapters3map3MapINtB2N_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5y_14PrimeBufferExt7factorsB16_Es_0EE0E0ECsl8pJiQOn4hA_9coreutils:bb.a
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %.sroa.4.0.i.i.i.i45 = phi i64 [ %i.ni, %bb.du ], [ 1, %bb.dw ], [ 0, %bb.dv ] ; 5 uses
  %.sroa.0.0.i.i.i.i46 = phi ptr [ %i.ng, %bb.du ], [ %i.nl, %bb.dw ], [ inttoptr (i64 8 to ptr), %bb.dv ] ; 2 uses
  %i.nm = load i64, ptr %i.lz, align 8, !range !13, !alias.scope !26451, !noundef !12
  %.not3.i.i.i.i47 = icmp eq i64 %i.nm, -1
  br i1 %.not3.i.i.i.i47, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nn = load ptr, ptr %i.mz, align 8, !alias.scope !26451, !nonnull !12, !noundef !12
  %i.no = load i64, ptr %i.na, align 8, !alias.scope !26451, !noundef !12
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.np = load i64, ptr %i.mz, align 8, !range !16, !alias.scope !26451, !noundef !12 ; 2 uses
  %i.nq = trunc nuw i64 %i.np to i1
  %spec.select23.i = select i1 %i.nq, ptr %i.na, ptr inttoptr (i64 8 to ptr)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sroa.42.0.i.i.i.i48 = phi i64 [ %i.no, %bb.dy ], [ %i.np, %bb.dz ] ; 2 uses
  %.sroa.01.0.i.i.i.i49 = phi ptr [ %i.nn, %bb.dy ], [ %spec.select23.i, %bb.dz ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26452)
  call void @llvm.experimental.noalias.scope.decl(metadata !26453)
  %i.nr = icmp eq i64 %.sroa.4.0.i.i.i.i45, %.sroa.42.0.i.i.i.i48
  br i1 %i.nr, label %bb.eb, label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50

bb.eb:                                            ; preds = %bb.ea
  %i.ns = icmp eq i64 %.sroa.4.0.i.i.i.i45, 0
  br i1 %i.ns, label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.eb
  %.idx122 = shl nuw nsw i64 %.sroa.4.0.i.i.i.i45, 3
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i46, i64 %.idx122
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i.i.i49, i64 %.sroa.4.0.i.i.i.i45
  br label %bb.ec

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51: ; preds = %bb.ec
  %i.nv = icmp eq ptr %.sroa.0.0.i.i.i.i46, %i.ny
  br i1 %i.nv, label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.ec

_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51, %bb.eb
  %i.nw = getelementptr inbounds i8, ptr %.sroa.19.114.i, i64 -32 ; 2 uses
  br label %bb.ee

bb.ec:                                            ; preds = %.lr.ph83, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51
  %i.nx = phi ptr [ %i.nt, %.lr.ph83 ], [ %i.ny, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51 ]
  %.sroa.3.08.i.i.i.i.i.i.i5282 = phi ptr [ %i.nu, %.lr.ph83 ], [ %i.nz, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51 ]
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i.i53 = load i64, ptr %i.ny, align 8, !alias.scope !26452, !noalias !26454
  %.val8.i.i.i.i.i.i.i.i.i.fr.i = freeze i64 %.val8.i.i.i.i.i.i.i.i.i.i53 ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i.i.i.i5282, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i54 = load i64, ptr %i.nz, align 8, !alias.scope !26455, !noalias !26456, !noundef !12 ; 2 uses
  %i.oa = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i54
  br i1 %i.oa, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i51, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55

.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55:         ; preds = %bb.ec
  %i.ob = icmp ult i64 %.val8.i.i.i.i.i.i.i.i.i.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i54
  %i.oc = getelementptr inbounds i8, ptr %.sroa.19.114.i, i64 -32 ; 3 uses
  br i1 %i.ob, label %bb.ed, label %bb.ee

_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50: ; preds = %bb.ea
  %i.od = icmp ult i64 %.sroa.4.0.i.i.i.i45, %.sroa.42.0.i.i.i.i48
  %i.oe = getelementptr inbounds i8, ptr %.sroa.19.114.i, i64 -32 ; 3 uses
  br i1 %i.od, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55
  %i.of = phi ptr [ %i.oc, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55 ], [ %i.oe, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50 ]
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.og = phi ptr [ %i.of, %bb.ed ], [ %i.oe, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50 ], [ %i.nw, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %i.oc, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55 ] ; 2 uses
  %.sroa.0.0.i.i.i.i11.i = phi i64 [ 1, %bb.ed ], [ 0, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50 ], [ 0, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ 0, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55 ]
  %i.oh = phi ptr [ %2, %bb.ed ], [ %i.oe, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.i50 ], [ %i.nw, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %i.oc, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i55 ]
  %i.oi = getelementptr inbounds nuw [32 x i8], ptr %i.oh, i64 %.sroa.11.115.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oi, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.116.i, i64 32, i1 false), !alias.scope !26457, !noalias !26458
  %i.oj = add i64 %.sroa.0.0.i.i.i.i11.i, %.sroa.11.115.i ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.5.116.i, i64 32 ; 3 uses
  %i.ol = icmp ult ptr %i.ok, %i.nb
  br i1 %i.ol, label %.lr.ph.i43, label %._crit_edge.i

bb.ef:                                            ; preds = %._crit_edge.i
  %i.om = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -32 ; 2 uses
  %i.on = getelementptr inbounds nuw [32 x i8], ptr %i.om, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.on, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.1.lcssa.i, i64 32, i1 false), !alias.scope !26457, !noalias !26459
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 32
  br label %bb.dt

bb.eg:                                            ; preds = %._crit_edge.i
  %i.op = shl nuw nsw i64 %.sroa.11.1.lcssa.i, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph143, ptr nonnull align 8 %2, i64 %i.op, i1 false), !alias.scope !26457
  %i.oq = sub i64 %.sroa.16.013684, %.sroa.11.1.lcssa.i ; 4 uses
  %.not24.i = icmp eq i64 %.sroa.16.013684, %.sroa.11.1.lcssa.i
  br i1 %.not24.i, label %.loopexit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.eg
  %i.or = getelementptr [32 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.oq, 1
  %i.os = icmp eq i64 %.sroa.16.013684, %.neg
  br i1 %i.os, label %.epil.preheader, label %.lr.ph21.i.new

.lr.ph21.i.new:                                   ; preds = %.lr.ph21.i
  %unroll_iter = and i64 %i.oq, -2
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eh, %.lr.ph21.i.new
  %.sroa.06.019.i = phi i64 [ 0, %.lr.ph21.i.new ], [ %i.ow, %bb.eh ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph21.i.new ], [ %niter.next.1, %bb.eh ]
  %i.ot = xor i64 %.sroa.06.019.i, -1
  %i.ou = getelementptr [32 x i8], ptr %i.my, i64 %i.ot
  %i.ov = getelementptr [32 x i8], ptr %i.or, i64 %.sroa.06.019.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ov, ptr noundef nonnull align 8 dereferenceable(32) %i.ou, i64 32, i1 false), !alias.scope !26457
  %i.ow = add nuw i64 %.sroa.06.019.i, 2          ; 2 uses
  %i.ox = xor i64 %.sroa.06.019.i, -2
  %i.oy = getelementptr [32 x i8], ptr %i.my, i64 %i.ox
  %i.oz = getelementptr [32 x i8], ptr %i.or, i64 %.sroa.06.019.i
  %i.pa = getelementptr i8, ptr %i.oz, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pa, ptr noundef nonnull align 8 dereferenceable(32) %i.oy, i64 32, i1 false), !alias.scope !26457
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.eh

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.eh
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph21.i
  %.sroa.06.019.i.epil.init = phi i64 [ 0, %.lr.ph21.i ], [ %i.ow, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod239 = trunc i64 %i.oq to i1
  call void @llvm.assume(i1 %lcmp.mod239)
  %i.pb = xor i64 %.sroa.06.019.i.epil.init, -1
  %i.pc = getelementptr [32 x i8], ptr %i.my, i64 %i.pb
  %i.pd = getelementptr [32 x i8], ptr %i.or, i64 %.sroa.06.019.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pd, ptr noundef nonnull align 8 dereferenceable(32) %i.pc, i64 32, i1 false), !alias.scope !26457
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.eg
  %i.pe = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.pe, label %.thread, label %bb.ei

bb.ei:                                            ; preds = %.loopexit
  %.not.i56 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.013684
  br i1 %.not.i56, label %bb.ej, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12split_at_mutCsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.ej:                                            ; preds = %bb.ei
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @885, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50, !noalias !26460
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12split_at_mutCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ei
  %i.pf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph143) ]
  call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2N_8BTreeMapB16_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3N_8adapters3map3MapINtB2N_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5y_14PrimeBufferExt7factorsB16_Es_0EE0E0ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 %i.pf, i64 noundef %i.oq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.iw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.a) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pg = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.pg, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %.split.loop.exit17.i.i.i.i.i.i.i.i.i, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB1D_8BTreeMapBz_jEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB2B_8adapters3map3MapINtB1D_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB4B_14PrimeBufferExt7factorsBz_Es_0EE0E0Csl8pJiQOn4hA_9coreutils.exit, %.loopexit, %bb.do, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26461)
  call void @llvm.experimental.noalias.scope.decl(metadata !26462)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.013684
  br i1 %.not83, label %bb.el, label %bb.ek, !prof !56

bb.ek:                                            ; preds = %.thread
  %i.ph = getelementptr [32 x i8], ptr %2, i64 %.sroa.16.013684 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  br label %bb.em

bb.el:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.em:                                            ; preds = %bb.fc, %bb.ek
  %.sroa.19.0.i59 = phi ptr [ %i.ph, %bb.ek ], [ %i.rw, %bb.fc ] ; 3 uses
  %.sroa.11.0.i60 = phi i64 [ 0, %bb.ek ], [ %i.ry, %bb.fc ] ; 3 uses
  %.sroa.5.0.i61 = phi ptr [ %.sroa.0.0.ph143, %bb.ek ], [ %i.rz, %bb.fc ] ; 4 uses
  %.sroa.0.0.i62 = phi i64 [ %.sroa.0.0.i38, %bb.ek ], [ %.sroa.16.013684, %bb.fc ] ; 2 uses
  %i.pk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.0.0.i62 ; 3 uses
  %i.pl = icmp ult ptr %.sroa.5.0.i61, %i.pk
  br i1 %i.pl, label %.lr.ph.i68, label %._crit_edge.i63

.lr.ph.i68:                                       ; preds = %bb.em
  %i.pm = load i64, ptr %i.lz, align 8, !range !13, !alias.scope !26463, !noundef !12
  %.not.i.i.i.i.i69 = icmp eq i64 %i.pm, -1
  br i1 %.not.i.i.i.i.i69, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i68, %bb.et
  %.sroa.5.111.us.i = phi ptr [ %i.qo, %bb.et ], [ %.sroa.5.0.i61, %.lr.ph.i68 ] ; 6 uses
  %.sroa.11.110.us.i = phi i64 [ %i.qn, %bb.et ], [ %.sroa.11.0.i60, %.lr.ph.i68 ] ; 2 uses
  %.sroa.19.19.us.i = phi ptr [ %i.qj, %bb.et ], [ %.sroa.19.0.i59, %.lr.ph.i68 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26464)
  call void @llvm.experimental.noalias.scope.decl(metadata !26465)
  call void @llvm.experimental.noalias.scope.decl(metadata !26466)
  call void @llvm.experimental.noalias.scope.decl(metadata !26467)
  call void @llvm.experimental.noalias.scope.decl(metadata !26468)
  call void @llvm.experimental.noalias.scope.decl(metadata !26469)
  call void @llvm.experimental.noalias.scope.decl(metadata !26470)
  call void @llvm.experimental.noalias.scope.decl(metadata !26471)
  %i.pn = load i64, ptr %i.pi, align 8, !range !16, !alias.scope !26463, !noundef !12 ; 6 uses
  %i.po = trunc nuw i64 %i.pn to i1
  %spec.select20.i = select i1 %i.po, ptr %i.pj, ptr inttoptr (i64 8 to ptr)
  %i.pp = load i64, ptr %.sroa.5.111.us.i, align 8, !range !13, !alias.scope !26472, !noundef !12
  %.not3.i.i.i.i.us.i = icmp eq i64 %i.pp, -1
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.5.111.us.i, i64 8 ; 2 uses
  br i1 %.not3.i.i.i.i.us.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.lr.ph.split.us.i
  %i.pr = load ptr, ptr %i.pq, align 8, !alias.scope !26472, !nonnull !12, !noundef !12
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.5.111.us.i, i64 16
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !26472, !noundef !12
  br label %bb.eq

bb.eo:                                            ; preds = %.lr.ph.split.us.i
  %i.pu = load i64, ptr %i.pq, align 8, !range !16, !alias.scope !26472, !noundef !12
  %i.pv = trunc nuw i64 %i.pu to i1
  br i1 %i.pv, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.5.111.us.i, i64 16
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %.sroa.42.0.i.i.i.i.us.i = phi i64 [ %i.pt, %bb.en ], [ 1, %bb.ep ], [ 0, %bb.eo ] ; 2 uses
  %.sroa.01.0.i.i.i.i.us.i = phi ptr [ %i.pr, %bb.en ], [ %i.pw, %bb.ep ], [ inttoptr (i64 8 to ptr), %bb.eo ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26473)
  call void @llvm.experimental.noalias.scope.decl(metadata !26474)
  %i.px = icmp eq i64 %i.pn, %.sroa.42.0.i.i.i.i.us.i
  br i1 %i.px, label %bb.er, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i

bb.er:                                            ; preds = %bb.eq
  %i.py = icmp eq i64 %i.pn, 0
  br i1 %i.py, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i, label %.lr.ph96

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i: ; preds = %.lr.ph96, %bb.er
  %i.pz = getelementptr inbounds i8, ptr %.sroa.19.19.us.i, i64 -32
  br label %bb.et

.lr.ph96:                                         ; preds = %bb.er
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i.i.i.us.i, i64 %i.pn
  %.idx124 = shl nuw nsw i64 %i.pn, 3
  %i.qb = getelementptr inbounds nuw i8, ptr %spec.select20.i, i64 %.idx124
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 -8
  %.val8.i.i.i.i.i.i.i.i.i.i.us.i = load i64, ptr %i.qc, align 8, !alias.scope !26473, !noalias !26475
  %.val8.i.i.i.i.i.i.i.i.i.i.us.fr.i = freeze i64 %.val8.i.i.i.i.i.i.i.i.i.i.us.i ; 2 uses
  %i.qd = getelementptr inbounds i8, ptr %i.qa, i64 -8
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.us.i = load i64, ptr %i.qd, align 8, !alias.scope !26476, !noalias !26477, !noundef !12 ; 2 uses
  %i.qe = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.us.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.us.i
  br i1 %i.qe, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i

.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i:      ; preds = %.lr.ph96
  %.not51.i = icmp ult i64 %.val8.i.i.i.i.i.i.i.i.i.i.us.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.us.i
  %i.qf = getelementptr inbounds i8, ptr %.sroa.19.19.us.i, i64 -32 ; 2 uses
  br i1 %.not51.i, label %bb.es, label %bb.et

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i: ; preds = %bb.eq
  %i.qg = icmp ult i64 %i.pn, %.sroa.42.0.i.i.i.i.us.i
  %i.qh = getelementptr inbounds i8, ptr %.sroa.19.19.us.i, i64 -32 ; 2 uses
  br i1 %i.qg, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i
  %i.qi = phi ptr [ %i.qf, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i ], [ %i.qh, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i ] ; 2 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i
  %i.qj = phi ptr [ %i.qi, %bb.es ], [ %i.qh, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i ], [ %i.pz, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i ], [ %i.qf, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i ] ; 2 uses
  %i.qk = phi i64 [ 0, %bb.es ], [ 1, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i ], [ 1, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i ], [ 1, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i ]
  %i.ql = phi ptr [ %i.qi, %bb.es ], [ %2, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.i ], [ %2, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.us.thread.i ], [ %2, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.us.i ]
  %i.qm = getelementptr inbounds nuw [32 x i8], ptr %i.ql, i64 %.sroa.11.110.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qm, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.111.us.i, i64 32, i1 false), !alias.scope !26478, !noalias !26479
  %i.qn = add i64 %i.qk, %.sroa.11.110.us.i       ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.5.111.us.i, i64 32 ; 3 uses
  %i.qp = icmp ult ptr %i.qo, %i.pk
  br i1 %i.qp, label %.lr.ph.split.us.i, label %._crit_edge.i63

._crit_edge.i63:                                  ; preds = %bb.fb, %bb.et, %bb.em
  %.sroa.19.1.lcssa.i64 = phi ptr [ %.sroa.19.0.i59, %bb.em ], [ %i.qj, %bb.et ], [ %i.rp, %bb.fb ]
  %.sroa.11.1.lcssa.i65 = phi i64 [ %.sroa.11.0.i60, %bb.em ], [ %i.qn, %bb.et ], [ %i.rt, %bb.fb ] ; 10 uses
  %.sroa.5.1.lcssa.i66 = phi ptr [ %.sroa.5.0.i61, %bb.em ], [ %i.qo, %bb.et ], [ %i.ru, %bb.fb ] ; 2 uses
  %i.qq = icmp eq i64 %.sroa.0.0.i62, %.sroa.16.013684
  br i1 %i.qq, label %bb.fd, label %bb.fc

.lr.ph.split.i:                                   ; preds = %.lr.ph.i68, %bb.fb
  %.sroa.5.111.i = phi ptr [ %i.ru, %bb.fb ], [ %.sroa.5.0.i61, %.lr.ph.i68 ] ; 6 uses
  %.sroa.11.110.i = phi i64 [ %i.rt, %bb.fb ], [ %.sroa.11.0.i60, %.lr.ph.i68 ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.rp, %bb.fb ], [ %.sroa.19.0.i59, %.lr.ph.i68 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26464)
  call void @llvm.experimental.noalias.scope.decl(metadata !26465)
  call void @llvm.experimental.noalias.scope.decl(metadata !26466)
  call void @llvm.experimental.noalias.scope.decl(metadata !26467)
  call void @llvm.experimental.noalias.scope.decl(metadata !26468)
  call void @llvm.experimental.noalias.scope.decl(metadata !26469)
  call void @llvm.experimental.noalias.scope.decl(metadata !26470)
  call void @llvm.experimental.noalias.scope.decl(metadata !26471)
  %i.qr = load ptr, ptr %i.pi, align 8, !alias.scope !26463, !nonnull !12, !noundef !12 ; 2 uses
  %i.qs = load i64, ptr %i.pj, align 8, !alias.scope !26463, !noundef !12 ; 5 uses
  %i.qt = load i64, ptr %.sroa.5.111.i, align 8, !range !13, !alias.scope !26472, !noundef !12
  %.not3.i.i.i.i.i70 = icmp eq i64 %i.qt, -1
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 8 ; 2 uses
  br i1 %.not3.i.i.i.i.i70, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.split.i
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !26472, !nonnull !12, !noundef !12
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !alias.scope !26472, !noundef !12
  br label %bb.ex

bb.ev:                                            ; preds = %.lr.ph.split.i
  %i.qy = load i64, ptr %i.qu, align 8, !range !16, !alias.scope !26472, !noundef !12
  %i.qz = trunc nuw i64 %i.qy to i1
  br i1 %i.qz, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 16
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu
  %.sroa.42.0.i.i.i.i.i71 = phi i64 [ %i.qx, %bb.eu ], [ 1, %bb.ew ], [ 0, %bb.ev ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i72 = phi ptr [ %i.qv, %bb.eu ], [ %i.ra, %bb.ew ], [ inttoptr (i64 8 to ptr), %bb.ev ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26473)
  call void @llvm.experimental.noalias.scope.decl(metadata !26474)
  %i.rb = icmp eq i64 %i.qs, %.sroa.42.0.i.i.i.i.i71
  br i1 %i.rb, label %bb.ey, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i

bb.ey:                                            ; preds = %bb.ex
  %i.rc = icmp eq i64 %i.qs, 0
  br i1 %i.rc, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.ey
  %.idx123 = shl nuw nsw i64 %i.qs, 3
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qr, i64 %.idx123
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i.i.i.i72, i64 %i.qs
  br label %bb.ez

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73: ; preds = %bb.ez
  %i.rf = icmp eq ptr %i.qr, %i.ri
  br i1 %i.rf, label %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.ez

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73, %bb.ey
  %i.rg = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -32
  br label %bb.fb

bb.ez:                                            ; preds = %.lr.ph93, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73
  %i.rh = phi ptr [ %i.rd, %.lr.ph93 ], [ %i.ri, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73 ]
  %.sroa.3.08.i.i.i.i.i.i.i.i7491 = phi ptr [ %i.re, %.lr.ph93 ], [ %i.rj, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73 ]
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i75 = load i64, ptr %i.ri, align 8, !alias.scope !26473, !noalias !26480
  %.val8.i.i.i.i.i.i.i.i.i.i.fr.i = freeze i64 %.val8.i.i.i.i.i.i.i.i.i.i.i75 ; 2 uses
  %i.rj = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i.i.i.i.i7491, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i76 = load i64, ptr %i.rj, align 8, !alias.scope !26476, !noalias !26477, !noundef !12 ; 2 uses
  %i.rk = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i76
  br i1 %i.rk, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i.i.i73, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77

.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77:       ; preds = %bb.ez
  %.not50.i = icmp ult i64 %.val8.i.i.i.i.i.i.i.i.i.i.fr.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i76
  %i.rl = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -32 ; 2 uses
  br i1 %.not50.i, label %bb.fa, label %bb.fb

_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ex
  %i.rm = icmp ult i64 %i.qs, %.sroa.42.0.i.i.i.i.i71
  %i.rn = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -32 ; 2 uses
  br i1 %i.rm, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77
  %i.ro = phi ptr [ %i.rl, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77 ], [ %i.rn, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.rp = phi ptr [ %i.ro, %bb.fa ], [ %i.rn, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i ], [ %i.rg, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %i.rl, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77 ] ; 2 uses
  %i.rq = phi i64 [ 0, %bb.fa ], [ 1, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i ], [ 1, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ 1, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77 ]
  %i.rr = phi ptr [ %i.ro, %bb.fa ], [ %2, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i ], [ %2, %_RNCINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB17_7sort_byNCINvXs1o_NtNtNtB22_11collections5btree3mapINtB2P_8BTreeMapB18_jEINtNtNtNtBc_4iter6traits7collect12FromIteratorB17_E9from_iterINtNtNtB3P_8adapters3map3MapINtB2P_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5A_14PrimeBufferExt7factorsB18_Es_0EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %2, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i.i77 ]
  %i.rs = getelementptr inbounds nuw [32 x i8], ptr %i.rr, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rs, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.111.i, i64 32, i1 false), !alias.scope !26478, !noalias !26479
  %i.rt = add i64 %i.rq, %.sroa.11.110.i          ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 32 ; 3 uses
  %i.rv = icmp ult ptr %i.ru, %i.pk
  br i1 %i.rv, label %.lr.ph.split.i, label %._crit_edge.i63

bb.fc:                                            ; preds = %._crit_edge.i63
  %i.rw = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i64, i64 -32
  %i.rx = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.1.lcssa.i66, i64 32, i1 false), !alias.scope !26478, !noalias !26481
  %i.ry = add i64 %.sroa.11.1.lcssa.i65, 1
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i66, i64 32
  br label %bb.em

bb.fd:                                            ; preds = %._crit_edge.i63
  %i.sa = shl nuw nsw i64 %.sroa.11.1.lcssa.i65, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph143, ptr nonnull align 8 %2, i64 %i.sa, i1 false), !alias.scope !26478
  %i.sb = sub i64 %.sroa.16.013684, %.sroa.11.1.lcssa.i65 ; 6 uses
  %.not21.i = icmp eq i64 %.sroa.16.013684, %.sroa.11.1.lcssa.i65
  br i1 %.not21.i, label %.outer._crit_edge.thread, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %bb.fd
  %i.sc = getelementptr [32 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.11.1.lcssa.i65 ; 3 uses
  %.neg247 = add i64 %.sroa.11.1.lcssa.i65, 1
  %xtraiter242 = and i64 %i.sb, 1
  %i.sd = icmp eq i64 %.sroa.16.013684, %.neg247
  br i1 %i.sd, label %.epil.preheader240, label %.lr.ph18.i.new

.lr.ph18.i.new:                                   ; preds = %.lr.ph18.i
  %unroll_iter245 = and i64 %i.sb, -2
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fe, %.lr.ph18.i.new
  %.sroa.06.016.i = phi i64 [ 0, %.lr.ph18.i.new ], [ %i.sh, %bb.fe ] ; 5 uses
  %niter246 = phi i64 [ 0, %.lr.ph18.i.new ], [ %niter246.next.1, %bb.fe ]
  %i.se = xor i64 %.sroa.06.016.i, -1
  %i.sf = getelementptr [32 x i8], ptr %i.ph, i64 %i.se
  %i.sg = getelementptr [32 x i8], ptr %i.sc, i64 %.sroa.06.016.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, ptr noundef nonnull align 8 dereferenceable(32) %i.sf, i64 32, i1 false), !alias.scope !26478
  %i.sh = add nuw i64 %.sroa.06.016.i, 2          ; 2 uses
  %i.si = xor i64 %.sroa.06.016.i, -2
  %i.sj = getelementptr [32 x i8], ptr %i.ph, i64 %i.si
  %i.sk = getelementptr [32 x i8], ptr %i.sc, i64 %.sroa.06.016.i
  %i.sl = getelementptr i8, ptr %i.sk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sl, ptr noundef nonnull align 8 dereferenceable(32) %i.sj, i64 32, i1 false), !alias.scope !26478
  %niter246.next.1 = add i64 %niter246, 2         ; 2 uses
  %niter246.ncmp.1 = icmp eq i64 %niter246.next.1, %unroll_iter245
  br i1 %niter246.ncmp.1, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_Es_0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa, label %bb.fe

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_Es_0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa: ; preds = %bb.fe
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_Es_0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit, label %.epil.preheader240

.epil.preheader240:                               ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_Es_0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa, %.lr.ph18.i
  %.sroa.06.016.i.epil.init = phi i64 [ 0, %.lr.ph18.i ], [ %i.sh, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_Es_0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod244 = trunc i64 %i.sb to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.sm = xor i64 %.sroa.06.016.i.epil.init, -1
  %i.sn = getelementptr [32 x i8], ptr %i.ph, i64 %i.sm
  %i.so = getelementptr [32 x i8], ptr %i.sc, i64 %.sroa.06.016.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.so, ptr noundef nonnull align 8 dereferenceable(32) %i.sn, i64 32, i1 false), !alias.scope !26478
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_Es_0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_Es_0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2u_11collections5btree3mapINtB3h_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4h_8adapters3map3MapINtB3h_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB62_14PrimeBufferExt7factorsB1e_Es_0EE0E0E0ECsl8pJiQOn4hA_9coreutils.exit.unr-lcssa, %.epil.preheader240
  %i.sp = icmp ugt i64 %.sroa.11.1.lcssa.i65, %.sroa.16.013684
  br i1 %i.sp, label %bb.ff, label %.outer, !prof !18

.outer._crit_edge.thread:                         ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjENCINvMNtCs7tKScEop1B6_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2n_11collections5btree3mapINtB3a_8BTreeMapB1t_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4a_8adapters3map3MapINtB3a_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5V_14PrimeBufferExt7factorsB1t_Es_0EE0E0ECsl8pJiQOn4hA_9coreutils.exit
end_hunk_9
begin_hunk_10_@_RINvNvCs44SRMMtlaHN_9uu_csplit6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.bj = alloca [40 x i8], align 8               ; 11 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [40 x i8], align 8               ; 8 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 5 uses
  %i.br = alloca [40 x i8], align 8               ; 11 uses
  %i.bs = alloca [32 x i8], align 8               ; 11 uses
  %i.bt = alloca [32 x i8], align 8               ; 6 uses
  %i.bu = alloca [40 x i8], align 8               ; 12 uses
  %i.bv = alloca [40 x i8], align 8               ; 8 uses
  %i.bw = alloca [32 x i8], align 8               ; 8 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [32 x i8], align 8               ; 11 uses
  %i.ca = alloca [40 x i8], align 8               ; 11 uses
  %i.cb = alloca [40 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [32 x i8], align 8               ; 11 uses
  %i.ch = alloca [40 x i8], align 8               ; 15 uses
  %i.ci = alloca [24 x i8], align 8               ; 6 uses
  %i.cj = alloca [24 x i8], align 8               ; 7 uses
  %i.ck = alloca [56 x i8], align 8               ; 11 uses
  %i.cl = alloca [40 x i8], align 8               ; 9 uses
  %i.cm = alloca [32 x i8], align 8               ; 13 uses
  %i.cn = alloca [40 x i8], align 8               ; 15 uses
  %i.co = alloca [40 x i8], align 8               ; 13 uses
  %i.cp = alloca [56 x i8], align 8               ; 11 uses
  %i.cq = alloca [40 x i8], align 8               ; 8 uses
  %i.cr = alloca [32 x i8], align 8               ; 10 uses
  %i.cs = alloca [64 x i8], align 8               ; 8 uses
  %i.ct = alloca [40 x i8], align 8               ; 8 uses
  %i.cu = alloca [32 x i8], align 8               ; 9 uses
  %i.cv = alloca [40 x i8], align 8               ; 20 uses
  %i.cw = alloca [40 x i8], align 8               ; 9 uses
  %i.cx = alloca [64 x i8], align 8               ; 39 uses
  %i.cy = alloca [64 x i8], align 8               ; 32 uses
  %i.cz = alloca [16 x i8], align 8               ; 5 uses
  %i.da = alloca [32 x i8], align 8               ; 7 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !27109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store ptr @181, ptr %i.di, align 8, !noalias !27110
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 4, ptr %i.dy, align 8, !noalias !27110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !27110
  %i.dz = load i64, ptr %i.dk, align 8, !range !26, !alias.scope !27109, !noundef !12
  %.not.i = icmp eq i64 %i.dz, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dk, i64 40, i1 false), !noalias !27111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !27110
  store ptr %i.di, ptr %i.dg, align 8, !noalias !27110
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !27110
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %i.dh, ptr %i.ea, align 8, !noalias !27110
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !27110
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !27109
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !27109, !align !23, !noundef !12 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !27110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  %.not = icmp eq ptr %i.ec, null
  br i1 %.not, label %bb.g, label %bb.e, !prof !18

bb.e:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @398, i64 noundef 7) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !27112)
  call void @llvm.experimental.noalias.scope.decl(metadata !27113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  store ptr @398, ptr %i.df, align 8, !noalias !27114
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 7, ptr %i.ed, align 8, !noalias !27114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !27114
  %i.ee = load i64, ptr %i.dj, align 8, !range !16, !alias.scope !27113, !noundef !12
  %i.ef = trunc nuw i64 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  br i1 %i.ef, label %bb.f, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.eg, i64 40, i1 false), !noalias !27115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !27114
  store ptr %i.df, ptr %i.dd, align 8, !noalias !27114
  %.sroa.42.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i40, align 8, !noalias !27114
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.de, ptr %i.eh, align 8, !noalias !27114
  %.sroa.46.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i41, align 8, !noalias !27114
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !27116
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.e
  %.sroa.0463.0.copyload = load ptr, ptr %i.eg, align 8, !alias.scope !27116 ; 3 uses
  %.sroa.5464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.5464.0.copyload = load ptr, ptr %.sroa.5464.0..sroa_idx, align 8, !alias.scope !27116 ; 5 uses
  %.sroa.6465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.sroa.6465.0.copyload = load ptr, ptr %.sroa.6465.0..sroa_idx, align 8, !alias.scope !27116 ; 4 uses
  %.sroa.7466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %.sroa.7466.0.copyload = load ptr, ptr %.sroa.7466.0..sroa_idx, align 8, !alias.scope !27116 ; 3 uses
  %.sroa.8467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %.sroa.8467.0.copyload = load ptr, ptr %.sroa.8467.0..sroa_idx, align 8, !alias.scope !27116 ; 3 uses
  %.sroa.9468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %.sroa.9468.0.copyload = load ptr, ptr %.sroa.9468.0..sroa_idx, align 8, !alias.scope !27116 ; 5 uses
  %.sroa.10469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %.sroa.10469.0.copyload = load ptr, ptr %.sroa.10469.0..sroa_idx, align 8, !alias.scope !27116 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !27116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !27114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  %.not31 = icmp eq ptr %.sroa.0463.0.copyload, null
  br i1 %.not31, label %bb.m, label %bb.h, !prof !18

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @397) #50
  unreachable

bb.h:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !27117
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
  %.val4.i.i.i.i = load i64, ptr %i.em, align 8, !noalias !27118, !noundef !12 ; 3 uses
  %i.en = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.en, label %select.unfold.i.i.i.i, label %.loopexit.i.loopexit.loopexit

select.unfold.i.i.i.i._crit_edge.loopexit:        ; preds = %select.unfold.i.i.i.i
  %i.eo = getelementptr i8, ptr %.sroa.48.0.copyload.i11902844, i64 8
  %.val.i.i.i.i.le3878 = load ptr, ptr %i.eo, align 8, !noalias !27118, !nonnull !12, !noundef !12
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
  %.val.i.i.i.i.le = load ptr, ptr %i.es, align 8, !noalias !27118, !nonnull !12, !noundef !12 ; 2 uses
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
  %i.ev = call noundef nonnull align 8 ptr %.sroa.0463.0.copyload(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i) #45, !noalias !27119, !inline_history !26498 ; 2 uses
  %i.ew = add i64 %.sroa.11.0.copyload, -1        ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ev, i64 8
  %.val.i.i = load ptr, ptr %i.ex, align 8, !noalias !27120, !nonnull !12, !noundef !12
  %i.ey = getelementptr i8, ptr %i.ev, i64 16
  %.val3.i.i = load i64, ptr %i.ey, align 8, !noalias !27120, !noundef !12
  %i.ez = call i64 @llvm.uadd.sat.i64(i64 %i.ew, i64 1) ; 2 uses
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.ez, i64 4) ; 2 uses
  %i.fa = shl i64 %..i.i, 4                       ; 3 uses
  %i.fb = icmp ugt i64 %i.ez, 1152921504606846975
  %.not.i.i.i = icmp ugt i64 %i.fa, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.fb, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.j, label %bb.i, !prof !27

bb.i:                                             ; preds = %.loopexit.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !27121
  %i.fc = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fa, i64 noundef range(i64 1, 9) 8) #45, !noalias !27121 ; 5 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.j, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i

bb.j:                                             ; preds = %bb.i, %.loopexit.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.i ], [ 0, %.loopexit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.fa) #52, !noalias !27117
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.i
  store ptr %.val.i.i, ptr %i.fc, align 8, !noalias !27117, !captures !39
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %.val3.i.i, ptr %i.fe, align 8, !noalias !27117
  store i64 %..i.i, ptr %i.dc, align 8, !noalias !27117
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  store ptr %i.fc, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !27117
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !27117
  call void @llvm.experimental.noalias.scope.decl(metadata !27122)
  call void @llvm.experimental.noalias.scope.decl(metadata !27123)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i
  %i.ff = phi ptr [ %i.gg, %bb.l ], [ %i.fc, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit.i ]
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
  %.val4.i.i.i.i.i.i = load i64, ptr %i.fo, align 8, !noalias !27124, !noundef !12 ; 2 uses
  %i.fp = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.fp, label %select.unfold.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit.i

select.unfold.i.i.i.i.i._crit_edge.loopexit.i:    ; preds = %select.unfold.i.i.i.i.i.i
  %i.fq = getelementptr i8, ptr %i.fm, i64 8
  %.val.i.i.i.i.i.le54.i = load ptr, ptr %i.fq, align 8, !noalias !27124, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge.i

select.unfold.i.i.i.i.i._crit_edge.i:             ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit.i, %select.unfold.i.i.i.i.i.preheader.i
  %.lcssa14.i = phi ptr [ %i.fi, %select.unfold.i.i.i.i.i.preheader.i ], [ %i.fn, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.lcssa.i = phi ptr [ %i.fh, %select.unfold.i.i.i.i.i.preheader.i ], [ %.val.i.i.i.i.i.le54.i, %select.unfold.i.i.i.i.i._crit_edge.loopexit.i ]
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i16.i.i.i, null
  %i.fr = icmp eq ptr %spec.select.i9.i.i.i16.i.i.i, %.sroa.10469.0.copyload
  %i.fs = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i16.i.i.i, i64 32
  %or.cond33.i.i.i = select i1 %.not.i7.i.i.i.i.i.i, i1 true, i1 %i.fr
  %.pre1679 = load i64, ptr %i.dc, align 8, !noalias !27125 ; 2 uses
  br i1 %or.cond33.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i, label %.loopexit.i.i.i

.loopexit.loopexit.i.i.loopexit.i:                ; preds = %.lr.ph.i
  %i.ft = getelementptr i8, ptr %i.fm, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.ft, align 8, !noalias !27124, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  br label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.loopexit.loopexit.i.i.loopexit.i, %bb.k
  %.lcssa3.i.i = phi ptr [ %i.fh, %bb.k ], [ %i.fu, %.loopexit.loopexit.i.i.loopexit.i ]
  %.lcssa.i.i = phi ptr [ %i.fi, %bb.k ], [ %i.fn, %.loopexit.loopexit.i.i.loopexit.i ]
  %.val.i.i.i10.i.lcssa.i.i = phi ptr [ %.val.i.i.i11.i.i.i, %bb.k ], [ %.val.i.i.i.i.i.le.i, %.loopexit.loopexit.i.i.loopexit.i ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i.i, i64 32
  %.pre = load i64, ptr %i.dc, align 8, !range !19, !alias.scope !27126, !noalias !27117
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i
  %i.fw = phi i64 [ %.pre1679, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.pre, %.loopexit.loopexit.i.i.i ]
  %i.fx = phi ptr [ %.lcssa.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.lcssa3.i.i, %.loopexit.loopexit.i.i.i ]
  %i.fy = phi ptr [ %.lcssa14.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.lcssa.i.i, %.loopexit.loopexit.i.i.i ]
  %spec.select.i9.i.i.i15.i.i.i = phi ptr [ %i.fs, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %spec.select.i9.i.i.i16.i.i.i, %.loopexit.loopexit.i.i.i ]
  %.val.i.i.i8.i.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %i.fv, %.loopexit.loopexit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i16.i.i.i, %select.unfold.i.i.i.i.i._crit_edge.i ], [ %.val.i.i.i10.i.lcssa.i.i, %.loopexit.loopexit.i.i.i ]
  %i.fz = call noundef nonnull align 8 ptr %.sroa.0463.0.copyload(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i) #45, !noalias !27127, !inline_history !26513 ; 2 uses
  %i.ga = add i64 %i.fg, -1                       ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fz, i64 8
  %.val.i.i.i6.i = load ptr, ptr %i.gb, align 8, !noalias !27128, !nonnull !12, !noundef !12
  %i.gc = getelementptr i8, ptr %i.fz, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.gc, align 8, !noalias !27128, !noundef !12
  %i.gd = icmp samesign ult i64 %.sroa.12.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp eq i64 %.sroa.12.0.copyload, %i.fw
  br i1 %i.ge, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.l

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %.loopexit.i.i.i
  %i.gf = call i64 @llvm.uadd.sat.i64(i64 %i.ga, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef %.sroa.12.0.copyload, i64 noundef range(i64 1, 0) %i.gf, i64 noundef 8, i64 noundef 16) #45, !noalias !27129
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !27126, !noalias !27117
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %.loopexit.i.i.i
  %i.gg = phi ptr [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.ff, %.loopexit.i.i.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %.sroa.12.0.copyload ; 2 uses
  store ptr %.val.i.i.i6.i, ptr %i.gh, align 8, !noalias !27130, !captures !39
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 %.val3.i.i.i.i, ptr %i.gi, align 8, !noalias !27130
  %i.gj = add nuw nsw i64 %.sroa.12.0.copyload, 1 ; 2 uses
  store i64 %i.gj, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !27126, !noalias !27117
  br label %bb.k

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %select.unfold.i.i.i.i.i._crit_edge.i
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !27125
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3z_INtNtB1H_6borrow6BorroweE6borrowEE9from_iterCsl8pJiQOn4hA_9coreutils.exit

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3z_INtNtB1H_6borrow6BorroweE6borrowEE9from_iterCsl8pJiQOn4hA_9coreutils.exit: ; preds = %select.unfold.i.i.i.i._crit_edge, %.sink.split.i8.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.12.0 = phi i64 [ %.sroa.12.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ 0, %.sink.split.i8.i.i.i.i ], [ 0, %select.unfold.i.i.i.i._crit_edge ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ inttoptr (i64 8 to ptr), %.sink.split.i8.i.i.i.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i._crit_edge ] ; 6 uses
  %.sroa.0.0 = phi i64 [ %.pre1679, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvYB3g_INtNtB1o_6borrow6BorroweE6borrowEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ 0, %.sink.split.i8.i.i.i.i ], [ 0, %select.unfold.i.i.i.i._crit_edge ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !27117
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
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !27131
  %i.gn = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !27131 ; 3 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.o, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #52, !noalias !27131
  unreachable

end_hunk_10
begin_hunk_11_@_RINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils:bb.a
bb.ca:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartEECsl8pJiQOn4hA_9coreutils.exit116.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val78.i, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28672
  br label %.split.sink.split.i

bb.cb:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !28602
  %i.qz = load i64, ptr %i.jn, align 8, !alias.scope !28673, !noalias !28602, !noundef !12 ; 4 uses
  %i.ra = load i64, ptr %i.bs, align 8, !range !19, !alias.scope !28673, !noalias !28602, !noundef !12
  %i.rb = icmp eq i64 %i.qz, %i.ra
  br i1 %i.rb, label %bb.cc, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCsl8pJiQOn4hA_9coreutils.exit123.i

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #53, !noalias !28674
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCsl8pJiQOn4hA_9coreutils.exit123.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCsl8pJiQOn4hA_9coreutils.exit123.i: ; preds = %bb.cc, %bb.cb
  %i.rc = load ptr, ptr %i.jm, align 8, !alias.scope !28673, !noalias !28602, !nonnull !12, !noundef !12
  %i.rd = getelementptr inbounds nuw [24 x i8], ptr %i.rc, i64 %i.qz ; 3 uses
  store i64 %.sroa.01.0.i, ptr %i.rd, align 8, !noalias !28602
  %.sroa.4176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store ptr %.sroa.9.sroa.0.0.i, ptr %.sroa.4176.0..sroa_idx.i, align 8, !noalias !28602
  %.sroa.5177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store i64 %.sroa.9.sroa.8.0.i, ptr %.sroa.5177.0..sroa_idx.i, align 8, !noalias !28602
  %i.re = add i64 %i.qz, 1                        ; 3 uses
  store i64 %i.re, ptr %i.jn, align 8, !alias.scope !28673, !noalias !28602
  %i.rf = load i64, ptr %i.bs, align 8, !range !19, !alias.scope !28675, !noalias !28602, !noundef !12
  %i.rg = icmp eq i64 %i.re, %i.rf
  br i1 %i.rg, label %bb.cd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit127.i

bb.cd:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCsl8pJiQOn4hA_9coreutils.exit123.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #53, !noalias !28676
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit127.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit127.i: ; preds = %bb.cd, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCsl8pJiQOn4hA_9coreutils.exit123.i
  %i.rh = load ptr, ptr %i.jm, align 8, !alias.scope !28675, !noalias !28602, !nonnull !12, !noundef !12
  %i.ri = getelementptr inbounds nuw [24 x i8], ptr %i.rh, i64 %i.re ; 3 uses
  store i64 %i.oe, ptr %i.ri, align 8, !noalias !28602
  %.sroa.4179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store ptr %.val78.i, ptr %.sroa.4179.0..sroa_idx.i, align 8, !noalias !28602
  %.sroa.5180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  store i64 %.val79.i, ptr %.sroa.5180.0..sroa_idx.i, align 8, !noalias !28602
  %i.rj = add i64 %i.qz, 2
  store i64 %i.rj, ptr %i.jn, align 8, !alias.scope !28675, !noalias !28602
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ol, i64 noundef %i.oh, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28677
  %.val86.i = load i64, ptr %i.bm, align 8, !range !13, !noalias !28602, !noundef !12 ; 2 uses
  %i.rk = icmp sgt i64 %.val86.i, 0
  br i1 %i.rk, label %bb.ce, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartEECsl8pJiQOn4hA_9coreutils.exit130.i

bb.ce:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit127.i
  %.val87.i = load ptr, ptr %i.jv, align 8, !noalias !28602, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val87.i, i64 noundef %.val86.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28678
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartEECsl8pJiQOn4hA_9coreutils.exit130.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartEECsl8pJiQOn4hA_9coreutils.exit130.i: ; preds = %bb.ce, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit127.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !28602
  %.val82.i = load i64, ptr %i.bn, align 8, !range !19, !alias.scope !28667, !noalias !28602, !noundef !12 ; 2 uses
  %i.rl = icmp eq i64 %.val82.i, 0
  br i1 %i.rl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartECsl8pJiQOn4hA_9coreutils.exit131.i, label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartEECsl8pJiQOn4hA_9coreutils.exit130.i
  %.val83.i = load ptr, ptr %i.jw, align 8, !noalias !28602, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val83.i, i64 noundef %.val82.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28679
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartECsl8pJiQOn4hA_9coreutils.exit131.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartECsl8pJiQOn4hA_9coreutils.exit131.i: ; preds = %bb.cf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartEECsl8pJiQOn4hA_9coreutils.exit130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !28602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !28602
  %i.rm = icmp sgt i64 %i.ld, 0
  br i1 %i.rm, label %bb.cg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit134.i

bb.cg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartECsl8pJiQOn4hA_9coreutils.exit131.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.le, i64 noundef %i.ld, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28680
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit134.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit134.i: ; preds = %bb.cg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort13LegacyKeyPartECsl8pJiQOn4hA_9coreutils.exit131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !28602
  br label %thread-pre-split.i

_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterB2h_EEENvYB2h_INtNtB4_7convert4IntoB2h_E4intoEECsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.ae, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekable8PeekableINtNtB22_3map3MapINtNtB22_5chain5ChainINtNtB6_9into_iter8IntoIterBT_EINtNtB22_6cloned6ClonedINtNtNtB26_5slice4iter4IterBT_EEENvYBT_INtNtB26_7convert4IntoBT_E4intoEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.10651.0 = phi ptr [ %.sroa.10651.24.copyload653, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekable8PeekableINtNtB22_3map3MapINtNtB22_5chain5ChainINtNtB6_9into_iter8IntoIterBT_EINtNtB22_6cloned6ClonedINtNtNtB26_5slice4iter4IterBT_EEENvYBT_INtNtB26_7convert4IntoBT_E4intoEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.10651.24.copyload, %bb.ae ], [ %.sroa.10651.24.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterB2h_EEENvYB2h_INtNtB4_7convert4IntoB2h_E4intoEECsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 4 uses
  %.sroa.6649.0 = phi i64 [ %.sroa.6649.24.copyload650, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekable8PeekableINtNtB22_3map3MapINtNtB22_5chain5ChainINtNtB6_9into_iter8IntoIterBT_EINtNtB22_6cloned6ClonedINtNtNtB26_5slice4iter4IterBT_EEENvYBT_INtNtB26_7convert4IntoBT_E4intoEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.6649.24.copyload, %bb.ae ], [ %.sroa.6649.24.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterB2h_EEENvYB2h_INtNtB4_7convert4IntoB2h_E4intoEECsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !28602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !28602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0648, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0648)
  %i.rn = icmp ult i64 %.sroa.12.24.copyload655, 144115188075855872
  call void @llvm.assume(i1 %i.rn)
  %i.ro = icmp eq i64 %.sroa.12.24.copyload655, 0
  br i1 %i.ro, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit
  %i.rp = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8, !nonnull !12, !noundef !12
  %i.rr = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.rs = load i64, ptr %i.rr, align 8, !noundef !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10651.0) ]
  call void @_RNvCsgcf5BHVXlUt_7uu_sort21index_legacy_warnings(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.rq, i64 noundef %i.rs, ptr noalias nofree noundef nonnull align 8 %.sroa.10651.0, i64 noundef %.sroa.12.24.copyload655) #45
  br label %bb.ci

bb.ci:                                            ; preds = %_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit.thread, %bb.ch, %_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit
  %.sroa.6649.1864 = phi i64 [ 0, %_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit.thread ], [ %.sroa.6649.0, %bb.ch ], [ %.sroa.6649.0, %_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit ] ; 4 uses
  %.sroa.10651.1863 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit.thread ], [ %.sroa.10651.0, %bb.ch ], [ %.sroa.10651.0, %_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit ] ; 6 uses
  %.sroa.12.1862 = phi i64 [ 0, %_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit.thread ], [ %.sroa.12.24.copyload655, %bb.ch ], [ 0, %_RINvCsgcf5BHVXlUt_7uu_sort22preprocess_legacy_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBR_6cloned6ClonedINtNtNtBV_5slice4iter4IterB2s_EEEECsl8pJiQOn4hA_9coreutils.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  call void @_RNvCsgcf5BHVXlUt_7uu_sort6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.ff) #45
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEB1V_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.fg, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.ff, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.fi, i32 noundef 2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  %i.rt = load i64, ptr %i.fg, align 8, !range !13, !noundef !12 ; 2 uses
  %i.ru = icmp eq i64 %i.rt, -1
  %i.rv = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8            ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8            ; 2 uses
  br i1 %i.ru, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  br label %bb.ne

bb.ck:                                            ; preds = %bb.ci
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6195.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  store i64 %i.rt, ptr %i.fh, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.rw, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  store ptr %i.ry, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @580, i64 noundef 6) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !28681)
  call void @llvm.experimental.noalias.scope.decl(metadata !28682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr @580, ptr %i.bd, align 8, !noalias !28683
  %i.rz = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 6, ptr %i.rz, align 8, !noalias !28683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !28683
  %i.sa = load i64, ptr %i.ct, align 8, !range !16, !alias.scope !28682, !noundef !12
  %i.sb = trunc nuw i64 %i.sa to i1
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  br i1 %i.sb, label %bb.cl, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.sc, i64 40, i1 false), !noalias !28684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !28683
  store ptr %i.bd, ptr %i.bb, align 8, !noalias !28683
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !28683
  %i.sd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bc, ptr %i.sd, align 8, !noalias !28683
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !28683
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !28685
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ck
  %.sroa.0656.0.copyload657 = load ptr, ptr %i.sc, align 8, !alias.scope !28685 ; 3 uses
  %.sroa.6658.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.6658.sroa.0.0.copyload = load ptr, ptr %.sroa.6658.0..sroa_idx659, align 8, !alias.scope !28685 ; 5 uses
  %.sroa.6658.sroa.5.0..sroa.6658.0..sroa_idx659.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.sroa.6658.sroa.5.0.copyload = load ptr, ptr %.sroa.6658.sroa.5.0..sroa.6658.0..sroa_idx659.sroa_idx, align 8, !alias.scope !28685 ; 4 uses
  %.sroa.6658.sroa.6.0..sroa.6658.0..sroa_idx659.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %.sroa.6658.sroa.6.0.copyload = load ptr, ptr %.sroa.6658.sroa.6.0..sroa.6658.0..sroa_idx659.sroa_idx, align 8, !alias.scope !28685 ; 3 uses
  %.sroa.6658.sroa.7.0..sroa.6658.0..sroa_idx659.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %.sroa.6658.sroa.7.0.copyload = load ptr, ptr %.sroa.6658.sroa.7.0..sroa.6658.0..sroa_idx659.sroa_idx, align 8, !alias.scope !28685 ; 3 uses
  %.sroa.6658.sroa.8.0..sroa.6658.0..sroa_idx659.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %.sroa.6658.sroa.8.0.copyload = load ptr, ptr %.sroa.6658.sroa.8.0..sroa.6658.0..sroa_idx659.sroa_idx, align 8, !alias.scope !28685 ; 5 uses
  %.sroa.6658.sroa.9.0..sroa.6658.0..sroa_idx659.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %.sroa.6658.sroa.9.0.copyload = load ptr, ptr %.sroa.6658.sroa.9.0..sroa.6658.0..sroa_idx659.sroa_idx, align 8, !alias.scope !28685 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !28683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  %.not = icmp eq ptr %.sroa.0656.0.copyload657, null
  br i1 %.not, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit.thread, label %.preheader

.preheader:                                       ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit
  %.not.i.i.i.i4331067 = icmp eq ptr %.sroa.6658.sroa.6.0.copyload, null
  %i.se = icmp eq ptr %.sroa.6658.sroa.6.0.copyload, %.sroa.6658.sroa.7.0.copyload
  %or.cond9661068 = select i1 %.not.i.i.i.i4331067, i1 true, i1 %i.se
  br i1 %or.cond9661068, label %select.unfold.i.i.i.preheader, label %.loopexit.i435.loopexit

select.unfold.i.i.i.preheader:                    ; preds = %.preheader
  %.not.i5.i.i.i1508 = icmp eq ptr %.sroa.6658.sroa.0.0.copyload, null
  %i.sf = icmp eq ptr %.sroa.6658.sroa.0.0.copyload, %.sroa.6658.sroa.5.0.copyload
  %or.cond.i.i.i.i1509 = select i1 %.not.i5.i.i.i1508, i1 true, i1 %i.sf
  br i1 %or.cond.i.i.i.i1509, label %select.unfold.i.i.i._crit_edge, label %.lr.ph1511

select.unfold.i.i.i:                              ; preds = %.lr.ph1511
  %i.sg = icmp eq ptr %i.sh, %.sroa.6658.sroa.5.0.copyload
  br i1 %i.sg, label %select.unfold.i.i.i._crit_edge.loopexit, label %.lr.ph1511

.lr.ph1511:                                       ; preds = %select.unfold.i.i.i.preheader, %select.unfold.i.i.i
  %.promoted17.i.i10701510 = phi ptr [ %i.sh, %select.unfold.i.i.i ], [ %.sroa.6658.sroa.0.0.copyload, %select.unfold.i.i.i.preheader ] ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.promoted17.i.i10701510, i64 24 ; 4 uses
  %i.si = getelementptr i8, ptr %.promoted17.i.i10701510, i64 16
  %.val4.i.i.i = load i64, ptr %i.si, align 8, !noalias !28686, !noundef !12 ; 3 uses
  %i.sj = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.sj, label %select.unfold.i.i.i, label %.loopexit.i435.loopexit.loopexit

select.unfold.i.i.i._crit_edge.loopexit:          ; preds = %select.unfold.i.i.i
  %i.sk = getelementptr i8, ptr %.promoted17.i.i10701510, i64 8
  %.val.i.i.i441.le1713 = load ptr, ptr %i.sk, align 8, !noalias !28686, !nonnull !12, !noundef !12
  %.idx.le1710 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.sl = getelementptr inbounds nuw i8, ptr %.val.i.i.i441.le1713, i64 %.idx.le1710
  br label %select.unfold.i.i.i._crit_edge

select.unfold.i.i.i._crit_edge:                   ; preds = %select.unfold.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.preheader
  %.promoted17.i.i1070.lcssa = phi ptr [ %.sroa.6658.sroa.0.0.copyload, %select.unfold.i.i.i.preheader ], [ %i.sh, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.promoted18.i.i1069.lcssa = phi ptr [ %.sroa.6658.sroa.7.0.copyload, %select.unfold.i.i.i.preheader ], [ %i.sl, %select.unfold.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i = icmp eq ptr %.sroa.6658.sroa.8.0.copyload, null
  br i1 %.not.i7.i.i.i, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit.thread, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %select.unfold.i.i.i._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6658.sroa.9.0.copyload) ]
  %i.sm = icmp eq ptr %.sroa.6658.sroa.8.0.copyload, %.sroa.6658.sroa.9.0.copyload
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.6658.sroa.8.0.copyload, i64 32
  br i1 %i.sm, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit.thread, label %.loopexit.i435

.loopexit.i435.loopexit.loopexit:                 ; preds = %.lr.ph1511
  %i.so = getelementptr i8, ptr %.promoted17.i.i10701510, i64 8
  %.val.i.i.i441.le = load ptr, ptr %i.so, align 8, !noalias !28686, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.sp = getelementptr inbounds nuw i8, ptr %.val.i.i.i441.le, i64 %.idx.le
  br label %.loopexit.i435.loopexit

.loopexit.i435.loopexit:                          ; preds = %.loopexit.i435.loopexit.loopexit, %.preheader
  %spec.select.i18.i.i.i.lcssa1066 = phi ptr [ %.sroa.6658.sroa.6.0.copyload, %.preheader ], [ %.val.i.i.i441.le, %.loopexit.i435.loopexit.loopexit ] ; 2 uses
  %.promoted18.i.i.lcssa = phi ptr [ %.sroa.6658.sroa.7.0.copyload, %.preheader ], [ %i.sp, %.loopexit.i435.loopexit.loopexit ]
  %.promoted17.i.i.lcssa = phi ptr [ %.sroa.6658.sroa.0.0.copyload, %.preheader ], [ %i.sh, %.loopexit.i435.loopexit.loopexit ]
  %i.sq = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.lcssa1066, i64 32
  br label %.loopexit.i435

.loopexit.i435:                                   ; preds = %.loopexit.i435.loopexit, %.sink.split.i8.i.i.i
  %.promoted18.i.i1056 = phi ptr [ %.promoted18.i.i1069.lcssa, %.sink.split.i8.i.i.i ], [ %.promoted18.i.i.lcssa, %.loopexit.i435.loopexit ]
  %.promoted17.i.i1054 = phi ptr [ %.promoted17.i.i1070.lcssa, %.sink.split.i8.i.i.i ], [ %.promoted17.i.i.lcssa, %.loopexit.i435.loopexit ]
  %.promoted19.i.i = phi ptr [ %i.sn, %.sink.split.i8.i.i.i ], [ %.sroa.6658.sroa.8.0.copyload, %.loopexit.i435.loopexit ]
  %.promoted.i.i = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.sq, %.loopexit.i435.loopexit ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.6658.sroa.8.0.copyload, %.sink.split.i8.i.i.i ], [ %spec.select.i18.i.i.i.lcssa1066, %.loopexit.i435.loopexit ]
  %i.sr = call noundef nonnull align 8 ptr %.sroa.0656.0.copyload657(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !28687, !inline_history !28200 ; 2 uses
  %i.ss = getelementptr i8, ptr %i.sr, i64 16
  %i.st = getelementptr i8, ptr %i.sr, i64 8
  br label %bb.cm

bb.cm:                                            ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNCNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtBc_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB1c_EINtNtB2K_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1c_EEEE000E0Csl8pJiQOn4hA_9coreutils.exit.i.i, %.loopexit.i435
  %spec.select.i9.i.i21.i.i = phi ptr [ %spec.select.i9.i.i20.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNCNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtBc_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB1c_EINtNtB2K_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1c_EEEE000E0Csl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.promoted19.i.i, %.loopexit.i435 ] ; 5 uses
  %i.su = phi ptr [ %i.tk, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNCNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtBc_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB1c_EINtNtB2K_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1c_EEEE000E0Csl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.promoted18.i.i1056, %.loopexit.i435 ] ; 3 uses
  %i.sv = phi ptr [ %i.tl, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNCNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtBc_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB1c_EINtNtB2K_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1c_EEEE000E0Csl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.promoted17.i.i1054, %.loopexit.i435 ] ; 5 uses
  %.val.i.i16.i.i = phi ptr [ %.val.i.i13.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNCNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtBc_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB1c_EINtNtB2K_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1c_EEEE000E0Csl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.promoted.i.i, %.loopexit.i435 ] ; 3 uses
  %.not.i.i.i.i.i4361074 = icmp eq ptr %.val.i.i16.i.i, null
  %i.sw = icmp eq ptr %.val.i.i16.i.i, %i.su
  %or.cond.i4371075 = select i1 %.not.i.i.i.i.i4361074, i1 true, i1 %i.sw
  br i1 %or.cond.i4371075, label %select.unfold.i.i.i.i.preheader, label %.loopexit.i.loopexit.i

select.unfold.i.i.i.i.preheader:                  ; preds = %bb.cm
  %.not.i5.i.i.i.i1513 = icmp eq ptr %i.sv, null
  %i.sx = icmp eq ptr %i.sv, %.sroa.6658.sroa.5.0.copyload
  %or.cond.i.i.i.i.i4401514 = select i1 %.not.i5.i.i.i.i1513, i1 true, i1 %i.sx
  br i1 %or.cond.i.i.i.i.i4401514, label %select.unfold.i.i.i.i._crit_edge, label %.lr.ph1515

select.unfold.i.i.i.i:                            ; preds = %.lr.ph1515
  %i.sy = icmp eq ptr %i.ta, %.sroa.6658.sroa.5.0.copyload
  br i1 %i.sy, label %select.unfold.i.i.i.i._crit_edge.loopexit, label %.lr.ph1515

.lr.ph1515:                                       ; preds = %select.unfold.i.i.i.i.preheader, %select.unfold.i.i.i.i
  %i.sz = phi ptr [ %i.ta, %select.unfold.i.i.i.i ], [ %i.sv, %select.unfold.i.i.i.i.preheader ] ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24 ; 4 uses
  %i.tb = getelementptr i8, ptr %i.sz, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.tb, align 8, !noalias !28688, !noundef !12 ; 3 uses
  %i.tc = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.tc, label %select.unfold.i.i.i.i, label %.loopexit.i.loopexit.i.loopexit

select.unfold.i.i.i.i._crit_edge.loopexit:        ; preds = %select.unfold.i.i.i.i
  %i.td = getelementptr i8, ptr %i.sz, i64 8
  %.val.i.i.i.i.le1722 = load ptr, ptr %i.td, align 8, !noalias !28688, !nonnull !12, !noundef !12
  %.idx1110.le1719 = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.te = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le1722, i64 %.idx1110.le1719
  br label %select.unfold.i.i.i.i._crit_edge

select.unfold.i.i.i.i._crit_edge:                 ; preds = %select.unfold.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.preheader
  %.lcssa1486 = phi ptr [ %i.sv, %select.unfold.i.i.i.i.preheader ], [ %i.ta, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.lcssa1484 = phi ptr [ %i.su, %select.unfold.i.i.i.i.preheader ], [ %i.te, %select.unfold.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i = icmp eq ptr %spec.select.i9.i.i21.i.i, null
  %i.tf = icmp eq ptr %spec.select.i9.i.i21.i.i, %.sroa.6658.sroa.9.0.copyload
  %i.tg = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i21.i.i, i64 32
  %or.cond37.i = select i1 %.not.i7.i.i.i.i, i1 true, i1 %i.tf
  br i1 %or.cond37.i, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit.thread, label %.loopexit.i.i

.loopexit.i.loopexit.i.loopexit:                  ; preds = %.lr.ph1515
  %i.th = getelementptr i8, ptr %i.sz, i64 8
  %.val.i.i.i.i.le = load ptr, ptr %i.th, align 8, !noalias !28688, !nonnull !12, !noundef !12 ; 2 uses
  %.idx1110.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.ti = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 %.idx1110.le
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i:                           ; preds = %.loopexit.i.loopexit.i.loopexit, %bb.cm
  %.lcssa1048 = phi ptr [ %i.su, %bb.cm ], [ %i.ti, %.loopexit.i.loopexit.i.loopexit ]
  %.lcssa1046 = phi ptr [ %i.sv, %bb.cm ], [ %i.ta, %.loopexit.i.loopexit.i.loopexit ]
  %.val.i.i15.i.i.lcssa = phi ptr [ %.val.i.i16.i.i, %bb.cm ], [ %.val.i.i.i.i.le, %.loopexit.i.loopexit.i.loopexit ] ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.val.i.i15.i.i.lcssa, i64 32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %select.unfold.i.i.i.i._crit_edge
  %i.tk = phi ptr [ %.lcssa1484, %select.unfold.i.i.i.i._crit_edge ], [ %.lcssa1048, %.loopexit.i.loopexit.i ]
  %i.tl = phi ptr [ %.lcssa1486, %select.unfold.i.i.i.i._crit_edge ], [ %.lcssa1046, %.loopexit.i.loopexit.i ]
  %spec.select.i9.i.i20.i.i = phi ptr [ %i.tg, %select.unfold.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i21.i.i, %.loopexit.i.loopexit.i ]
  %.val.i.i13.i.i = phi ptr [ null, %select.unfold.i.i.i.i._crit_edge ], [ %i.tj, %.loopexit.i.loopexit.i ]
  %.sroa.0.0.i.i.i.i438 = phi ptr [ %spec.select.i9.i.i21.i.i, %select.unfold.i.i.i.i._crit_edge ], [ %.val.i.i15.i.i.lcssa, %.loopexit.i.loopexit.i ]
  %i.tm = call noundef nonnull align 8 ptr %.sroa.0656.0.copyload657(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i438) #45, !noalias !28689, !inline_history !28208 ; 2 uses
  %i.tn = getelementptr i8, ptr %i.tm, i64 16
  %.val6.i.i = load i64, ptr %i.tn, align 8, !noalias !28690, !noundef !12 ; 2 uses
  %.val3.i.i.i.i = load i64, ptr %i.ss, align 8, !noalias !28690, !noundef !12
  %i.to = icmp eq i64 %.val6.i.i, %.val3.i.i.i.i
  br i1 %i.to, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNCNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtBc_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB1c_EINtNtB2K_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1c_EEEE000E0Csl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNCNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtBc_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB1c_EINtNtB2K_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1c_EEEE000E0Csl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.loopexit.i.i
  %i.tp = getelementptr i8, ptr %i.tm, i64 8
  %.val5.i.i = load ptr, ptr %i.tp, align 8, !noalias !28690, !nonnull !12, !noundef !12
  %.val2.i.i.i.i = load ptr, ptr %i.st, align 8, !noalias !28690, !nonnull !12, !noundef !12
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val5.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %.val6.i.i), !noalias !28690
  %.not.i.i439 = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not.i.i439, label %bb.cm, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit

_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %select.unfold.i.i.i.i._crit_edge, %select.unfold.i.i.i._crit_edge, %.sink.split.i8.i.i.i, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit
  %i.tq = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 5) #45
  %i.tr = zext i1 %i.tq to i8
  store i8 %i.tr, ptr %i.fp, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @415, i64 noundef 13) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !28691)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr @415, ptr %i.ba, align 8, !noalias !28692
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 13, ptr %i.ts, align 8, !noalias !28692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !28692
  %i.tt = load i64, ptr %i.cs, align 8, !range !26, !alias.scope !28691, !noundef !12
  %.not.i = icmp eq i64 %i.tt, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit, label %bb.cn, !prof !11

bb.cn:                                            ; preds = %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !28693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !28692
  store ptr %i.ba, ptr %i.ay, align 8, !noalias !28692
  %.sroa.42.0..sroa_idx.i442 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i442, align 8, !noalias !28692
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.az, ptr %i.tu, align 8, !noalias !28692
  %.sroa.46.0..sroa_idx.i443 = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i443, align 8, !noalias !28692
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !28691
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit.thread
  %i.tv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !alias.scope !28691, !align !23, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !28692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  %.not375 = icmp eq ptr %i.tw, null
  br i1 %.not375, label %bb.cw, label %bb.cp

_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNCNCNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtBc_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterB1c_EINtNtB2K_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1c_EEEE000E0Csl8pJiQOn4hA_9coreutils.exit.i.i, %.loopexit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28694
  %i.tx = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28694 ; 3 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %bb.co, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !15

bb.co:                                            ; preds = %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #52, !noalias !28694
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEE0Csl8pJiQOn4hA_9coreutils.exit
  store i64 -9223372036854775800, ptr %i.tx, align 8
  br label %bb.nd

bb.cp:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !nonnull !12, !noundef !12
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.uc = load i64, ptr %i.ub, align 8, !noundef !12 ; 7 uses
  %.not.i444 = icmp slt i64 %i.uc, 0
  br i1 %.not.i444, label %bb.cs, label %bb.cq, !prof !27

bb.cq:                                            ; preds = %bb.cp
  %i.ud = icmp eq i64 %i.uc, 0
  br i1 %i.ud, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread871, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28695
  %i.ue = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.uc, i64 noundef range(i64 1, 9) 1) #45, !noalias !28695 ; 3 uses
  %i.uf = icmp eq ptr %i.ue, null
  br i1 %i.uf, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cp, %bb.cr
  %.sroa.4788.0.ph = phi i64 [ 1, %bb.cr ], [ 0, %bb.cp ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4788.0.ph, i64 %i.uc) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread871: ; preds = %bb.cq, %bb.cv
  %i.ug = phi ptr [ %i.ue, %bb.cv ], [ inttoptr (i64 1 to ptr), %bb.cq ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28696)
  %i.uh = load i64, ptr %i.gh, align 8, !range !13, !alias.scope !28696, !noundef !12 ; 3 uses
  %i.ui = icmp eq i64 %i.uh, -1
  br i1 %i.ui, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit, label %bb.ct

bb.ct:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread871
  call void @llvm.experimental.noalias.scope.decl(metadata !28697)
  call void @llvm.experimental.noalias.scope.decl(metadata !28698)
  %i.uj = icmp eq i64 %i.uh, 0
  br i1 %i.uj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uk = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %.val1.i.i.i446 = load ptr, ptr %i.uk, align 8, !alias.scope !28699, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i446, i64 noundef %i.uh, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28700
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
  call void @llvm.experimental.noalias.scope.decl(metadata !28701)
  call void @llvm.experimental.noalias.scope.decl(metadata !28702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr @403, ptr %i.ax, align 8, !noalias !28703
  %i.um = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 5, ptr %i.um, align 8, !noalias !28703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !28703
  %i.un = load i64, ptr %i.cn, align 8, !range !16, !alias.scope !28702, !noundef !12
  %i.uo = trunc nuw i64 %i.un to i1
  %i.up = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  br i1 %i.uo, label %bb.cy, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit449, !prof !18

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.up, i64 40, i1 false), !noalias !28704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !28703
  store ptr %i.ax, ptr %i.av, align 8, !noalias !28703
  %.sroa.42.0..sroa_idx.i447 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i447, align 8, !noalias !28703
  %i.uq = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr %i.uq, align 8, !noalias !28703
  %.sroa.46.0..sroa_idx.i448 = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i448, align 8, !noalias !28703
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !28705
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit449: ; preds = %bb.cx
  %.sroa.0713.0.copyload714 = load ptr, ptr %i.up, align 8, !alias.scope !28705 ; 3 uses
  %.sroa.6715.0..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.sroa.6715.sroa.0.0.copyload = load ptr, ptr %.sroa.6715.0..sroa_idx716, align 8, !alias.scope !28705 ; 5 uses
  %.sroa.6715.sroa.5.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %.sroa.6715.sroa.5.0.copyload = load ptr, ptr %.sroa.6715.sroa.5.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28705 ; 4 uses
  %.sroa.6715.sroa.6.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %.sroa.6715.sroa.6.0.copyload = load ptr, ptr %.sroa.6715.sroa.6.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28705 ; 3 uses
  %.sroa.6715.sroa.7.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %.sroa.6715.sroa.7.0.copyload = load ptr, ptr %.sroa.6715.sroa.7.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28705 ; 3 uses
  %.sroa.6715.sroa.8.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %.sroa.6715.sroa.8.0.copyload = load ptr, ptr %.sroa.6715.sroa.8.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28705 ; 5 uses
  %.sroa.6715.sroa.9.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %.sroa.6715.sroa.9.0.copyload = load ptr, ptr %.sroa.6715.sroa.9.0..sroa.6715.0..sroa_idx716.sroa_idx, align 8, !alias.scope !28705 ; 3 uses
  %.sroa.6715.sroa.10.0..sroa.6715.0..sroa_idx716.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
end_hunk_11
