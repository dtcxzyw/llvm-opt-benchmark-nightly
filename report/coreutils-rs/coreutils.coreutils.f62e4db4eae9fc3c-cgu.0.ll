Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCsgzkSwV7OBv7_7uu_head6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBA_6cloned6ClonedINtNtNtBE_5slice4iter4IterB2b_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val1.i.i = load ptr, ptr %i.ks, align 8, !alias.scope !15139, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !15139
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !15140)
  %i.kt = load ptr, ptr %i.hv, align 8, !alias.scope !15140, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !invariant.load !12, !noalias !15140 ; 2 uses
  %.not.i44 = icmp eq ptr %i.ku, null
  br i1 %.not.i44, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit
  %i.kv = load ptr, ptr %i.aq, align 8, !alias.scope !15140, !nonnull !12, !noundef !12
  call void %i.ku(ptr noundef nonnull %i.kv) #51, !noalias !15140, !inline_history !266
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !range !63, !invariant.load !12, !noalias !15140 ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.cv
  %.val.i = load ptr, ptr %i.aq, align 8, !alias.scope !15140, !nonnull !12, !noundef !12
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.la = load i64, ptr %i.kz, align 8, !range !267, !invariant.load !12, !noalias !15140
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.kx, i64 noundef range(i64 1, -9223372036854775807) %i.la) #45, !noalias !15140
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.cv, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.br
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RINvCshDScVpnq8df_5uu_pr6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBy_6cloned6ClonedINtNtNtBC_5slice4iter4IterB29_EEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [72 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [320 x i8], align 8               ; 6 uses
  %i.r = alloca [320 x i8], align 8               ; 9 uses
  %i.s = alloca [48 x i8], align 8                ; 13 uses
  %.sroa.6.i = alloca [56 x i8], align 8          ; 5 uses
  %i.t = alloca [56 x i8], align 8                ; 8 uses
  %i.u = alloca [56 x i8], align 8                ; 14 uses
  %i.v = alloca [712 x i8], align 8               ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [4 x i8], align 4                 ; 3 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 6 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 9 uses
  %i.al = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.al, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.an = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.an, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !15143
  store i32 %i.an, ptr %i.y, align 4, !noalias !15143
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !15146
  call fastcc void @_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterB1I_EEENtCsh036I4OHgIr_6uucore4Args14collect_ignoreCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !15146
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !15146, !nonnull !12, !noundef !12 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !15146, !noundef !12 ; 3 uses
  call void @_RNvCshDScVpnq8df_5uu_pr18recreate_arguments(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.ar) #45, !noalias !15146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !15146
  call void @_RNvCshDScVpnq8df_5uu_pr6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.v) #45, !noalias !15146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !15146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !15146
  call fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtB1t_6string6StringEB1V_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.t, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %i.v, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w) #45
  %i.as = load i64, ptr %i.t, align 8, !range !13, !noalias !15146, !noundef !12 ; 2 uses
  %i.at = icmp eq i64 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !15146 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !15146 ; 2 uses
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15146
  br label %bb.ao

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.610.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.632.0..sroa_idx.i, i64 32, i1 false), !noalias !15146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15146
  store i64 %i.as, ptr %i.u, align 8, !noalias !15146
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15146
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.ax, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !15146
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15146
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @403, i64 noundef 5) #45, !noalias !15146
  call void @llvm.experimental.noalias.scope.decl(metadata !15149)
  call void @llvm.experimental.noalias.scope.decl(metadata !15152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15146
  store ptr @403, ptr %i.k, align 8, !noalias !15154
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 5, ptr %i.ay, align 8, !noalias !15154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15154
  %i.az = load i64, ptr %i.m, align 8, !range !46, !alias.scope !15152, !noalias !15156, !noundef !12
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.ba, label %bb.g, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i, !prof !48

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !15156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15154
  store ptr %i.k, ptr %i.i, align 8, !noalias !15154
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !15154
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.bc, align 8, !noalias !15154
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !15154
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !15157
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.f
  %.sroa.0.0.copyload68.i = load ptr, ptr %i.bb, align 8, !alias.scope !15158, !noalias !15159 ; 2 uses
  %.sroa.6.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx69.i, i64 56, i1 false), !alias.scope !15158, !noalias !15159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15146
  %.not.i28 = icmp eq ptr %.sroa.0.0.copyload68.i, null
  br i1 %.not.i28, label %bb.i, label %bb.h, !prof !48

bb.h:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.495.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i, i64 56, i1 false), !noalias !15146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15146
  store ptr %.sroa.0.0.copyload68.i, ptr %i.h, align 8, !noalias !15164
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.h) #45, !noalias !15165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15160
  %.sroa.018.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !15146 ; 4 uses
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.419.0.copyload.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !15146 ; 5 uses
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.520.0.copyload.i = load i64, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !15146 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15146
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.bd = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @602, i64 noundef 5) #45, !noalias !15146
  br i1 %i.bd, label %bb.p, label %bb.j

bb.i:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @628) #50, !noalias !15146
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.419.0.copyload.i) ]
  %i.be = icmp ult i64 %.sroa.520.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.be)
  %.idx.i = shl nuw nsw i64 %.sroa.520.0.copyload.i, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i, i64 %.idx.i
  %i.bg = icmp sgt i64 %.sroa.018.0.copyload.i, -1
  call void @llvm.assume(i1 %i.bg)
  %i.bh = mul nuw nsw i64 %.sroa.520.0.copyload.i, 24 ; 2 uses
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %.sroa.520.0.copyload.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.m, label %bb.k, !prof !328

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp eq i64 %.sroa.520.0.copyload.i, 0
  br i1 %i.bi, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !15166
  %i.bj = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bh, i64 noundef range(i64 1, 9) 8) #45, !noalias !15166 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.m, label %.lr.ph.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.bh, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i) #52, !noalias !15175
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.l, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldReINtNtCs7tKScEop1B6_5alloc3vec3VecBU_EuNCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB6_5chain5ChainINtNtBZ_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2Y_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_BZ_IBX_BW_E14extend_trustedINtB4_3MapIB2y_BU_EB1y_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %i.bv, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldReINtNtCs7tKScEop1B6_5alloc3vec3VecBU_EuNCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB6_5chain5ChainINtNtBZ_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2Y_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_BZ_IBX_BW_E14extend_trustedINtB4_3MapIB2y_BU_EB1y_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.l ] ; 2 uses
  %i.bm = phi ptr [ %i.bs, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldReINtNtCs7tKScEop1B6_5alloc3vec3VecBU_EuNCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB6_5chain5ChainINtNtBZ_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2Y_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_BZ_IBX_BW_E14extend_trustedINtB4_3MapIB2y_BU_EB1y_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i ], [ %.sroa.419.0.copyload.i, %bb.l ] ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !15176, !nonnull !12, !noundef !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !15176, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !15192
  %i.bq = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !15192 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.n, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldReINtNtCs7tKScEop1B6_5alloc3vec3VecBU_EuNCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB6_5chain5ChainINtNtBZ_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2Y_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_BZ_IBX_BW_E14extend_trustedINtB4_3MapIB2y_BU_EB1y_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i, !prof !28

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #52, !noalias !15192
  unreachable

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldReINtNtCs7tKScEop1B6_5alloc3vec3VecBU_EuNCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB6_5chain5ChainINtNtBZ_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2Y_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_BZ_IBX_BW_E14extend_trustedINtB4_3MapIB2y_BU_EB1y_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  store ptr %i.bn, ptr %i.bq, align 8, !noalias !15192
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.bp, ptr %i.bt, align 8, !noalias !15199
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl ; 3 uses
  store i64 1, ptr %i.bu, align 8, !noalias !15200
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bq, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !15200
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !15200
  %i.bv = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldReINtNtCs7tKScEop1B6_5alloc3vec3VecBU_EuNCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB6_5chain5ChainINtNtBZ_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2Y_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_BZ_IBX_BW_E14extend_trustedINtB4_3MapIB2y_BU_EB1y_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i, %bb.k
  %.sroa.10.0.i.i.i143.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.bj, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldReINtNtCs7tKScEop1B6_5alloc3vec3VecBU_EuNCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB6_5chain5ChainINtNtBZ_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2Y_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_BZ_IBX_BW_E14extend_trustedINtB4_3MapIB2y_BU_EB1y_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bv, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldReINtNtCs7tKScEop1B6_5alloc3vec3VecBU_EuNCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB6_5chain5ChainINtNtBZ_9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2Y_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_BZ_IBX_BW_E14extend_trustedINtB4_3MapIB2y_BU_EB1y_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bw = icmp eq i64 %.sroa.018.0.copyload.i, 0
  br i1 %i.bw, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecIBP_ReEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB12_ENCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB1Q_5chain5ChainIB2A_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1Q_6cloned6ClonedINtNtNtB1U_5slice4iter4IterB4a_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bx = shl nuw i64 %.sroa.018.0.copyload.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.419.0.copyload.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !15176
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecIBP_ReEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB12_ENCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB1Q_5chain5ChainIB2A_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1Q_6cloned6ClonedINtNtNtB1U_5slice4iter4IterB4a_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i

bb.p:                                             ; preds = %bb.h
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !15146
  %i.by = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !15146 ; 5 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.q, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !28

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #52, !noalias !15146
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.p
  store i64 %.sroa.018.0.copyload.i, ptr %i.by, align 8, !noalias !15146
  %.sroa.613.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %.sroa.419.0.copyload.i, ptr %.sroa.613.0..sroa_idx14.i, align 8, !noalias !15146
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %.sroa.520.0.copyload.i, ptr %.sroa.7.0..sroa_idx16.i, align 8, !noalias !15146
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecIBP_ReEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB12_ENCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB1Q_5chain5ChainIB2A_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1Q_6cloned6ClonedINtNtNtB1U_5slice4iter4IterB4a_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecIBP_ReEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB12_ENCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB1Q_5chain5ChainIB2A_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1Q_6cloned6ClonedINtNtNtB1U_5slice4iter4IterB4a_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.o, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.9.0.i = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.42.0.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.42.0.i.i.i.i.i.i.i, %bb.o ] ; 3 uses
  %.sroa.671.0.i = phi ptr [ %i.by, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.10.0.i.i.i143.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i143.i, %bb.o ] ; 5 uses
  %.sroa.070.0.i = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.520.0.copyload.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.sroa.520.0.copyload.i, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15146
  call void @_RNvCshDScVpnq8df_5uu_pr26parse_column_page_operands(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.ar) #45, !noalias !15146
  %i.ca = icmp ult i64 %.sroa.9.0.i, 384307168202282326
  call void @llvm.assume(i1 %i.ca)
  %.idx114.i = mul nuw nsw i64 %.sroa.9.0.i, 24
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.671.0.i, i64 %.idx114.i ; 5 uses
  %i.cc = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.cc, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecIBP_ReEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB12_ENCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB1Q_5chain5ChainIB2A_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1Q_6cloned6ClonedINtNtNtB1U_5slice4iter4IterB4a_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.676.0112.i = phi ptr [ %i.cd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.671.0.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecIBP_ReEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB12_ENCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB1Q_5chain5ChainIB2A_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1Q_6cloned6ClonedINtNtNtB1U_5slice4iter4IterB4a_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.676.0112.i, i64 24 ; 7 uses
  %.sroa.078.0.copyload79.i = load i64, ptr %.sroa.676.0112.i, align 8, !noalias !15205 ; 5 uses
  %.sroa.880.0..sroa.676.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.676.0112.i, i64 8
  %.sroa.880.sroa.0.0.copyload.i = load ptr, ptr %.sroa.880.0..sroa.676.8..sroa_idx.i, align 8, !noalias !15205 ; 7 uses
  %.sroa.880.sroa.6.0..sroa.880.0..sroa.676.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.676.0112.i, i64 16
  %.sroa.880.sroa.6.0.copyload.i = load i64, ptr %.sroa.880.sroa.6.0..sroa.880.0..sroa.676.8..sroa_idx.sroa_idx.i, align 8, !noalias !15205 ; 3 uses
  %.not33.i = icmp eq i64 %.sroa.078.0.copyload79.i, -1
  br i1 %.not33.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15146
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.880.sroa.0.0.copyload.i) ]
  call void @_RNvCshDScVpnq8df_5uu_pr13build_options(ptr noalias nofree noundef nonnull sret([320 x i8]) align 8 captures(none) dereferenceable(320) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.880.sroa.0.0.copyload.i, i64 noundef %.sroa.880.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s) #45, !noalias !15146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15146
  %i.ce = load i64, ptr %i.r, align 8, !range !279, !noalias !15146, !noundef !12
  %i.cf = icmp eq i64 %i.ce, 2
  br i1 %i.cf, label %bb.z, label %bb.aa

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecIBP_ReEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB12_ENCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB1Q_5chain5ChainIB2A_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1Q_6cloned6ClonedINtNtNtB1U_5slice4iter4IterB4a_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.676.1101.i = phi ptr [ %.sroa.671.0.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecIBP_ReEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB12_ENCINvNvCshDScVpnq8df_5uu_pr6uumain6uumainINtNtB1Q_5chain5ChainIB2A_NtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1Q_6cloned6ClonedINtNtNtB1U_5slice4iter4IterB4a_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.cd, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.cd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = ptrtoint ptr %.sroa.676.1101.i to i64
  %i.ci = sub nuw i64 %i.cg, %i.ch
  %i.cj = udiv exact i64 %i.ci, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !15208)
  %i.ck = icmp eq ptr %i.cb, %.sroa.676.1101.i
  br i1 %i.ck, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.cm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.676.1101.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.cl, align 8, !range !63, !alias.scope !15208, !noalias !15211, !noundef !12 ; 2 uses
  %i.cn = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.co = getelementptr i8, ptr %i.cl, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.co, align 8, !alias.scope !15208, !noalias !15211, !nonnull !12, !noundef !12
  %i.cp = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !15216
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.cq = icmp eq i64 %i.cm, %i.cj
  br i1 %i.cq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecReEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.cr = icmp eq i64 %.sroa.070.0.i, 0
  br i1 %i.cr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtBG_3VecReEEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.cs = mul nuw nsw i64 %.sroa.070.0.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.671.0.i, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !15211
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtBG_3VecReEEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtBG_3VecReEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.t, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15217)
  call void @llvm.experimental.noalias.scope.decl(metadata !15220)
  %i.ct = load i64, ptr %i.s, align 8, !range !13, !alias.scope !15223, !noalias !15146, !noundef !12 ; 3 uses
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtBG_3VecReEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15224)
  call void @llvm.experimental.noalias.scope.decl(metadata !15227)
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !15230, !noalias !15146, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !15231
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.v, %bb.u, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtBG_3VecReEEECsl8pJiQOn4hA_9coreutils.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !15232)
  %i.cy = load i64, ptr %i.cx, align 8, !range !13, !alias.scope !15235, !noalias !15146, !noundef !12 ; 3 uses
  %i.cz = icmp eq i64 %i.cy, -1
  br i1 %i.cz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr18ColumnPageOperandsECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15236)
  call void @llvm.experimental.noalias.scope.decl(metadata !15239)
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr18ColumnPageOperandsECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.val1.i.i.i1.i.i = load ptr, ptr %i.db, align 8, !alias.scope !15242, !noalias !15146, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1.i.i, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !15243
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr18ColumnPageOperandsECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr18ColumnPageOperandsECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.x, %bb.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15146
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.u) #45, !noalias !15146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !15146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15146
  call void @llvm.experimental.noalias.scope.decl(metadata !15244)
  %.val.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !15244, !noalias !15146, !nonnull !12, !noundef !12 ; 2 uses
  %.val1.i.i = load i64, ptr %i.aq, align 8, !alias.scope !15244, !noalias !15146, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15247)
  %i.dc = icmp eq i64 %.val1.i.i, 0
  br i1 %i.dc, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i43.i

end_hunk_0
