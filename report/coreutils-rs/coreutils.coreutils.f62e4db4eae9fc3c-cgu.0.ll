Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCsfIwuYbgPzJV_5uu_du6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBy_6cloned6ClonedINtNtNtBC_5slice4iter4IterB29_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %.not104.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.al
  %.sroa.0.4149.i.i = phi ptr [ %i.ig, %bb.al ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.if, %bb.al ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.ii, %bb.al ], [ 0, %.preheader.i.i ]
  %i.ia = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !13073, !noalias !13047, !noundef !12
  %i.ib = zext i8 %i.ia to i32
  %i.ic = add nsw i32 %i.ib, -48                  ; 2 uses
  %i.id = icmp ult i32 %i.ic, 10
  br i1 %i.id, label %bb.al, label %.loopexit617.i

bb.al:                                            ; preds = %.lr.ph150.i.i
  %i.ie = mul i64 %.sroa.084.4147.i.i, 10
  %i.if = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.ih = zext nneg i32 %i.ic to i64
  %i.ii = add i64 %i.ie, %i.ih                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.if, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

bb.am:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit283.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #50, !noalias !13047
  unreachable

.loopexit617.i:                                   ; preds = %bb.ae, %bb.ad, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.aj, %bb.ai, %.preheader111.i.i, %.lr.ph150.i.i, %bb.z, %bb.z, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !13047
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload443.i, i64 noundef %.sroa.8.0.copyload446.i) #53, !noalias !13047
  %i.ij = load i8, ptr %i.cx, align 8, !range !21, !noalias !13047, !noundef !12
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.ap, label %bb.aq

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.af, %bb.ag, %bb.ak, %bb.al, %.preheader.i.i, %.preheader114.i.i
  %.sroa.15450.0.i = phi i64 [ %i.ii, %bb.al ], [ %i.hl, %bb.ag ], [ %i.hz, %bb.ak ], [ 0, %.preheader.i.i ], [ 0, %.preheader114.i.i ], [ %i.hc, %bb.af ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, i64 noundef %.sroa.15450.0.i) #45, !noalias !13047
  br label %bb.an

bb.an:                                            ; preds = %bb.aq, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !13047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !noalias !13047
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @543, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cv) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !13047
  %i.il = icmp eq i64 %.sroa.0.0.copyload440.i, 0
  br i1 %i.il, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload443.i, i64 noundef %.sroa.0.0.copyload440.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13074
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i

bb.ap:                                            ; preds = %.loopexit617.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !13047
  store i64 %.sroa.0.0.copyload440.i, ptr %i.cw, align 8, !noalias !13047
  %.sroa.5.0..sroa_idx441.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %.sroa.5.0.copyload443.i, ptr %.sroa.5.0..sroa_idx441.i, align 8, !noalias !13047
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %.sroa.8.0.copyload446.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !13047
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cw) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !13047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !noalias !13047
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @543, i64 noundef 39, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cv) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !13047
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i

bb.aq:                                            ; preds = %.loopexit617.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.in = load double, ptr %i.im, align 8, !noalias !13047, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, double noundef %i.in) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !13047
  br label %bb.an

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !13047
  %i.io = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newNtNtB7_6string6StringECs6mPptk5f3AV_6notify(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.da) #53, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !13047
  br label %bb.w

bb.ar:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.4.0..sroa_idx455.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !13047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx455.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i, i64 56, i1 false), !noalias !13047
  store ptr %.sroa.0451.0.copyload452.i, ptr %i.ct, align 8, !noalias !13047
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB15_3ffi6os_str8OsStringENvYB11_INtNtB2e_7convert4FromRB46_E4fromEE9from_iterCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.db, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.ct) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.v

bb.as:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13047
  %i.ip = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13047 ; 5 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.at, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !15

bb.at:                                            ; preds = %bb.as
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #52, !noalias !13047
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.as
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13075
  %i.ir = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #45, !noalias !13075 ; 3 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #52, !noalias !13047
  unreachable

bb.av:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  store i8 46, ptr %i.ir, align 1, !noalias !13047
  store i64 1, ptr %i.ip, align 8, !noalias !13047
  %.sroa.4174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %i.ir, ptr %.sroa.4174.0..sroa_idx.i, align 8, !noalias !13047
  %.sroa.5175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 1, ptr %.sroa.5175.0..sroa_idx.i, align 8, !noalias !13047
  store i64 1, ptr %i.db, align 8, !noalias !13047
  %i.it = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.ip, ptr %i.it, align 8, !noalias !13047
  %i.iu = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 1, ptr %i.iu, align 8, !noalias !13047
  br label %bb.v

bb.aw:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !13076
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @545, i64 noundef 4) #45, !noalias !13047
  call void @llvm.experimental.noalias.scope.decl(metadata !13077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !13076
  store ptr @545, ptr %i.ae, align 8, !noalias !13078
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 4, ptr %i.iv, align 8, !noalias !13078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !13078
  %i.iw = load i64, ptr %i.af, align 8, !range !26, !alias.scope !13077, !noalias !13076, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.iw, 2
  br i1 %.not.i.i.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.ax, !prof !11

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.af, i64 40, i1 false), !noalias !13079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13078
  store ptr %i.ae, ptr %i.ac, align 8, !noalias !13078
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !13078
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.ix, align 8, !noalias !13078
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !13078
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !13080
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.aw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !13077, !noalias !13076, !align !23, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !13076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !13076
  call void @llvm.experimental.noalias.scope.decl(metadata !13081)
  %.not.i1.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i1.i.i, label %_RNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEE0Csl8pJiQOn4hA_9coreutils.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ja = getelementptr i8, ptr %i.iz, i64 8
  %.val.i.i285.i = load ptr, ptr %i.ja, align 8, !alias.scope !13081, !noalias !13076, !nonnull !12, !noundef !12
  %i.jb = getelementptr i8, ptr %i.iz, i64 16
  %.val4.i.i.i = load i64, ptr %i.jb, align 8, !alias.scope !13081, !noalias !13076, !noundef !12
  %i.jc = call noundef range(i8 0, 4) i8 @_RNvXNtNtCsh036I4OHgIr_6uucore8features5fsextNtB2_17MetadataTimeFieldINtNtCs6JMX4GRUq9U_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i285.i, i64 noundef %.val4.i.i.i) #45, !noalias !13082
  br label %_RNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEE0Csl8pJiQOn4hA_9coreutils.exit.i

_RNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEE0Csl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ay, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.v
  %.sroa.031.0.i = phi i8 [ -1, %bb.v ], [ %i.jc, %bb.ay ], [ 0, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !13047
  call void @_RNvCsfIwuYbgPzJV_5uu_du17parse_size_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df) #45, !noalias !13047
  %i.jd = load i64, ptr %i.cs, align 8, !range !16, !noalias !13047, !noundef !12
  %i.je = trunc nuw i64 %i.jd to i1
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  br i1 %i.je, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_RNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEE0Csl8pJiQOn4hA_9coreutils.exit.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.jh = load ptr, ptr %i.jf, align 8, !noalias !13047, !nonnull !12, !noundef !12
  %i.ji = load ptr, ptr %i.jg, align 8, !noalias !13047, !nonnull !12, !align !23, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !13047
  br label %bb.hg

bb.ba:                                            ; preds = %_RNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEE0Csl8pJiQOn4hA_9coreutils.exit.i
  %i.jj = load <2 x i64>, ptr %i.jf, align 8, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !13047
  %i.jk = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @546, i64 noundef 3) #45, !noalias !13047
  %i.jl = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1) #45, !noalias !13047
  %i.jm = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef 15) #45, !noalias !13047
  %i.jn = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @549, i64 noundef 11) #45, !noalias !13047
  br i1 %i.jn, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jo = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @550, i64 noundef 16) #45, !noalias !13047
  br i1 %i.jo, label %bb.bc, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.jp = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.val244.i = load ptr, ptr %i.jp, align 8, !noalias !13047, !nonnull !12, !noundef !12
  %i.jq = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.val245.i = load i64, ptr %i.jq, align 8, !noalias !13047, !noundef !12 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13083)
  %i.jr = mul nuw nsw i64 %.val245.i, 24          ; 2 uses
  %i.js = icmp eq i64 %.val245.i, 0
  br i1 %i.js, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13084
  %i.jt = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.jr, i64 noundef range(i64 1, 9) 8) #45, !noalias !13084 ; 3 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.jr) #52, !noalias !13085
  unreachable

bb.bf:                                            ; preds = %bb.bd, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.0.034.i.i.i = phi ptr [ %i.jv, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ %.val244.i, %bb.bd ] ; 3 uses
  %.sroa.7.033.i.i.i = phi i64 [ %i.jw, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ 0, %bb.bd ] ; 2 uses
  %.sroa.10.032.i.i.i = phi i64 [ %1, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ %.val245.i, %bb.bd ]
  %1 = add nsw i64 %.sroa.10.032.i.i.i, -1        ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i.i, i64 24
  %i.jw = add nuw nsw i64 %.sroa.7.033.i.i.i, 1
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %i.jt, i64 %.sroa.7.033.i.i.i ; 3 uses
  %i.jy = getelementptr i8, ptr %.sroa.0.034.i.i.i, i64 8
  %.val.i.i286.i = load ptr, ptr %i.jy, align 8, !alias.scope !13083, !noalias !13086, !nonnull !12, !noundef !12
  %i.jz = getelementptr i8, ptr %.sroa.0.034.i.i.i, i64 16
  %.val13.i.i.i = load i64, ptr %i.jz, align 8, !alias.scope !13083, !noalias !13086, !noundef !12 ; 6 uses
  %i.ka = icmp eq i64 %.val13.i.i.i, 0
  br i1 %i.ka, label %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13087
  %i.kb = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val13.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !13087 ; 3 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val13.i.i.i) #52, !noalias !13088
  unreachable

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kb, ptr nonnull readonly align 1 %.val.i.i286.i, i64 range(i64 0, -9223372036854775808) %.val13.i.i.i, i1 false), !noalias !13089
  br label %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i

_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.bi, %bb.bf
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.kb, %bb.bi ], [ inttoptr (i64 1 to ptr), %bb.bf ]
  store i64 %.val13.i.i.i, ptr %i.jx, align 8, !noalias !13085
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr %.sroa.5.0.i.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !13085
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store i64 %.val13.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i, align 8, !noalias !13085
  %i.kd = icmp eq i64 %1, 0
  br i1 %i.kd, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.bf

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.bc, %bb.bb, %bb.ba
  %.sroa.9.0.i = phi i64 [ undef, %bb.ba ], [ undef, %bb.bb ], [ 0, %bb.bc ], [ %.val245.i, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 7 uses
  %.sroa.8457.0.i = phi ptr [ undef, %bb.ba ], [ undef, %bb.bb ], [ inttoptr (i64 8 to ptr), %bb.bc ], [ %i.jt, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 8 uses
  %.sroa.0455.0.i = phi i64 [ -9223372036854775808, %bb.ba ], [ -9223372036854775806, %bb.bb ], [ 0, %bb.bc ], [ %.val245.i, %_RNvXss_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 15 uses
  %i.ke = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @424, i64 noundef 7) #45, !noalias !13047 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !13047
  call void @_RNvCsfIwuYbgPzJV_5uu_du22build_exclude_patterns(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df) #45, !noalias !13047
  %i.kf = load i64, ptr %i.cq, align 8, !range !13, !noalias !13047, !noundef !12 ; 2 uses
  %i.kg = icmp eq i64 %i.kf, -1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !13047 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !13047 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !13047
  br i1 %i.kg, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i
  %i.kl = icmp ne i64 %.sroa.0455.0.i, -9223372036854775807
  call void @llvm.assume(i1 %i.kl)
  %i.km = icmp sgt i64 %.sroa.0455.0.i, -1
  br i1 %i.km, label %bb.bk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du5DerefECsl8pJiQOn4hA_9coreutils.exit.i

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8457.0.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13090)
  %i.kn = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.kn, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.kp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ 0, %bb.bk ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8457.0.i, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.kp = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13091)
  call void @llvm.experimental.noalias.scope.decl(metadata !13092)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ko, align 8, !range !19, !alias.scope !13093, !noalias !13094, !noundef !12 ; 2 uses
  %i.kq = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.kq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.kr, align 8, !alias.scope !13095, !noalias !13094, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13096
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.bl, %.lr.ph.i.i.i.i.i
  %i.ks = icmp eq i64 %i.kp, %.sroa.9.0.i
  br i1 %i.ks, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.bk
  %i.kt = icmp eq i64 %.sroa.0455.0.i, 0
  br i1 %i.kt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du5DerefECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.ku = mul nuw i64 %.sroa.0455.0.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8457.0.i, i64 noundef %i.ku, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13094
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du5DerefECsl8pJiQOn4hA_9coreutils.exit.i

bb.bn:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.kw = zext i1 %i.jk to i8
  store i8 %i.kw, ptr %i.kv, align 8, !noalias !13047
  %i.kx = getelementptr inbounds nuw i8, ptr %i.cr, i64 49
  %i.ky = zext i1 %i.jl to i8
  store i8 %i.ky, ptr %i.kx, align 1, !noalias !13047
  %i.kz = getelementptr inbounds nuw i8, ptr %i.cr, i64 50
  %i.la = zext i1 %i.jm to i8
  store i8 %i.la, ptr %i.kz, align 2, !noalias !13047
  %i.lb = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i64 %.sroa.0455.0.i, ptr %i.lb, align 8, !noalias !13047
  %.sroa.8458.0..sroa_idx459.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr %.sroa.8457.0.i, ptr %.sroa.8458.0..sroa_idx459.i, align 8, !noalias !13047
  %.sroa.9.0..sroa_idx461.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx461.i, align 8, !noalias !13047
  %i.lc = getelementptr inbounds nuw i8, ptr %i.cr, i64 51
  %i.ld = zext i1 %i.ed to i8
  store i8 %i.ld, ptr %i.lc, align 1, !noalias !13047
  %i.le = getelementptr inbounds nuw i8, ptr %i.cr, i64 52
  %i.lf = zext i1 %i.ke to i8
  store i8 %i.lf, ptr %i.le, align 4, !noalias !13047
  store i64 %i.kf, ptr %i.cr, align 8, !noalias !13047
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.ki, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !13047
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  store ptr %i.kk, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !13047
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cr, i64 53
  store i8 %.sroa.031.0.i, ptr %i.lg, align 1, !noalias !13047
  %.not223.i = icmp eq i8 %.sroa.031.0.i, -1
  br i1 %.not223.i, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.lh = load ptr, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, align 8, !noalias !13047, !nonnull !12, !noundef !12
  %i.li = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, i64 8), align 8, !noalias !13047, !noundef !12 ; 7 uses
  %.not.i289.i = icmp slt i64 %i.li, 0
  br i1 %.not.i289.i, label %bb.bt, label %bb.bp, !prof !27

bb.bp:                                            ; preds = %bb.bo
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit291.thread571.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13097
  %i.lk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.li, i64 noundef range(i64 1, 9) 1) #45, !noalias !13097 ; 3 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.bt, label %bb.bu

bb.br:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !13047
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 10) #45, !noalias !13047
  call void @llvm.experimental.noalias.scope.decl(metadata !13098)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !13047
  store ptr @551, ptr %i.ab, align 8, !noalias !13099
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 10, ptr %i.lm, align 8, !noalias !13099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13099
  %i.ln = load i64, ptr %i.be, align 8, !range !26, !alias.scope !13098, !noalias !13047, !noundef !12
  %.not.i292.i = icmp eq i64 %i.ln, 2
  br i1 %.not.i292.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit295.i, label %bb.bs, !prof !11

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.be, i64 40, i1 false), !noalias !13100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !13099
  store ptr %i.ab, ptr %i.z, align 8, !noalias !13099
  %.sroa.42.0..sroa_idx.i293.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i293.i, align 8, !noalias !13099
  %i.lo = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.lo, align 8, !noalias !13099
  %.sroa.46.0..sroa_idx.i294.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i294.i, align 8, !noalias !13099
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !13101
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit295.i: ; preds = %bb.br
  %i.lp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !alias.scope !13098, !noalias !13047, !align !23, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !13047
  call void @_RNvCsfIwuYbgPzJV_5uu_du16parse_time_style(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.lq) #45, !noalias !13047
  %i.lr = load i64, ptr %i.cp, align 8, !range !13, !noalias !13047, !noundef !12 ; 2 uses
  %i.ls = icmp eq i64 %i.lr, -1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !noalias !13047 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !13047 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !13047
  br i1 %i.ls, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit303.i, label %bb.bw

bb.bt:                                            ; preds = %bb.bq, %bb.bo
  %.sroa.4542.0.ph.i = phi i64 [ 1, %bb.bq ], [ 0, %bb.bo ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4542.0.ph.i, i64 %i.li) #52, !noalias !13047
  unreachable

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lk, ptr nonnull align 1 %i.lh, i64 %i.li, i1 false), !noalias !13047
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit291.thread571.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit291.thread571.i: ; preds = %bb.bw, %bb.bu, %bb.bp
  %.sroa.11472.0.i = phi i64 [ %i.me, %bb.bw ], [ %i.li, %bb.bu ], [ 0, %bb.bp ]
  %.sroa.8471.0.i = phi ptr [ %i.lu, %bb.bw ], [ %i.lk, %bb.bu ], [ inttoptr (i64 1 to ptr), %bb.bp ] ; 3 uses
  %.sroa.0470.0.i = phi i64 [ %i.lr, %bb.bw ], [ %i.li, %bb.bu ], [ 0, %bb.bp ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i), !noalias !13047
  %i.lx = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1) #45, !noalias !13047
  %i.ly = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @553, i64 noundef 6) #45, !noalias !13047 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !13047
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @554, i64 noundef 9) #45, !noalias !13047
  call void @llvm.experimental.noalias.scope.decl(metadata !13102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13047
  store ptr @554, ptr %i.y, align 8, !noalias !13103
  %i.lz = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 9, ptr %i.lz, align 8, !noalias !13103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !13103
  %i.ma = load i64, ptr %i.bd, align 8, !range !26, !alias.scope !13102, !noalias !13047, !noundef !12
  %.not.i296.i = icmp eq i64 %i.ma, 2
  br i1 %.not.i296.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit299.i, label %bb.bv, !prof !11

bb.bv:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit291.thread571.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !noalias !13104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !13103
  store ptr %i.y, ptr %i.w, align 8, !noalias !13103
  %.sroa.42.0..sroa_idx.i297.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i297.i, align 8, !noalias !13103
  %i.mb = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.mb, align 8, !noalias !13103
  %.sroa.46.0..sroa_idx.i298.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i298.i, align 8, !noalias !13103
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !13105
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit299.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit291.thread571.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !alias.scope !13102, !noalias !13047, !align !23, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !13103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !13047
  %.not225.i = icmp eq ptr %i.md, null
  br i1 %.not225.i, label %bb.ca, label %bb.bx

bb.bw:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit295.i
  %i.me = ptrtoint ptr %i.lw to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit291.thread571.i

bb.bx:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit299.i
  %i.mf = getelementptr i8, ptr %i.md, i64 8
  %.val246.i = load ptr, ptr %i.mf, align 8, !noalias !13047, !nonnull !12, !noundef !12 ; 2 uses
  %i.mg = getelementptr i8, ptr %i.md, i64 16
  %.val247.i = load i64, ptr %i.mg, align 8, !noalias !13047, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !13106
  call void @_RNvXs1_CsfIwuYbgPzJV_5uu_duNtB5_9ThresholdNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val246.i, i64 noundef %.val247.i) #45, !noalias !13106
  %i.mh = load i64, ptr %i.v, align 8, !range !65, !noalias !13106, !noundef !12
  %.not.i300.i = icmp eq i64 %i.mh, -1
  br i1 %.not.i300.i, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !13106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !13106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !13106
  call void @_RNvCsfIwuYbgPzJV_5uu_du20format_error_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val246.i, i64 noundef %.val247.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @554, i64 noundef 9) #45, !noalias !13106
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13107
  %i.mi = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13107 ; 5 uses
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %bb.bz, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !15

bb.bz:                                            ; preds = %bb.by
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !13107
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mi, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !13106
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !13106
  call void @llvm.experimental.noalias.scope.decl(metadata !13108)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i.i1.i.i.i.i = load i64, ptr %i.mk, align 8, !range !19, !alias.scope !13109, !noalias !13106, !noundef !12 ; 2 uses
  %i.ml = icmp eq i64 %.val.i.i1.i.i.i.i, 0
  br i1 %i.ml, label %bb.cb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val1.i.i8.i.i.i.i = load ptr, ptr %i.mm, align 8, !alias.scope !13109, !noalias !13106, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i8.i.i.i.i, i64 noundef %.val.i.i1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13110
  br label %bb.cb

bb.ca:                                            ; preds = %bb.cd, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit299.i
  %i.mn = phi <2 x i64> [ %i.mr, %bb.cd ], [ <i64 2, i64 undef>, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit299.i ]
  %i.mo = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @555, i64 noundef 13) #45, !noalias !13047
  br i1 %i.mo, label %bb.cf, label %bb.ce

bb.cb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !13106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i), !noalias !13047
  %i.mp = icmp eq i64 %.sroa.0470.0.i, 0
  br i1 %i.mp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit303.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8471.0.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8471.0.i, i64 noundef %.sroa.0470.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13111
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit303.i

bb.cd:                                            ; preds = %bb.bx
  %i.mq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.mr = load <2 x i64>, ptr %i.mq, align 8, !noalias !13106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !13106
  br label %bb.ca

bb.ce:                                            ; preds = %bb.ca
  %i.ms = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @556, i64 noundef 1) #45, !noalias !13047
  %i.mt = zext i1 %i.ms to i8
  br label %bb.cf
end_hunk_0
begin_hunk_1_@_RINvCsfIwuYbgPzJV_5uu_du6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBy_6cloned6ClonedINtNtNtBC_5slice4iter4IterB29_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  store atomic i64 %i.on, ptr @_RNvNCNvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !noalias !13114
  br label %bb.ct

bb.ct:                                            ; preds = %_RNCNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtBa_3ffi6os_str8OsStringEINtNtB1K_6cloned6ClonedINtNtNtB1O_5slice4iter4IterB3l_EEEEs0_0INtNtB1O_6result6ResultuINtNtB2E_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE00Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.ck
  %.sroa.03.0.i.i.i = phi i64 [ %i.ng, %bb.ck ], [ %.sroa.0.0.i.i.i.i, %_RNCNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtBa_3ffi6os_str8OsStringEINtNtB1K_6cloned6ClonedINtNtNtB1O_5slice4iter4IterB3l_EEEEs0_0INtNtB1O_6result6ResultuINtNtB2E_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE00Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %i.oo = call noundef i64 @_RNvMNtNtCs2vKOLqTMYjT_3std6thread2idNtB2_8ThreadId3new() #45, !noalias !13114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13114
  %i.op = call noundef nonnull ptr @_RNvMs_NtNtCs2vKOLqTMYjT_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.oo, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.nb) #45, !noalias !13118
  store ptr %i.op, ptr %i.s, align 8, !noalias !13114
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #45, !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13114
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13119
  %i.oq = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13119 ; 10 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.cu, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i304.i, !prof !15

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #52, !noalias !13119
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i304.i: ; preds = %bb.ct
  store i64 1, ptr %i.oq, align 8, !noalias !13114
  %.sroa.46.0..sroa_idx.i.i305.i = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store i64 1, ptr %.sroa.46.0..sroa_idx.i.i305.i, align 8, !noalias !13114
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store ptr null, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !13114
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !13114
  store ptr %i.oq, ptr %i.r, align 8, !noalias !13114
  %i.os = atomicrmw add ptr %i.oq, i64 1 monotonic, align 8, !noalias !13114
  %i.ot = icmp slt i64 %i.os, 0
  br i1 %i.ot, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i304.i
  call void @llvm.trap()
  unreachable

bb.cw:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i304.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13120
  %i.ou = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13120 ; 19 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.cx, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i.i, !prof !15

bb.cx:                                            ; preds = %bb.cw
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #52, !noalias !13120
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i.i: ; preds = %bb.cw
  store <2 x i64> %i.et, ptr %i.ou, align 8, !noalias !13114
  %.sroa.09.i.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store <2 x i64> %i.mn, ptr %.sroa.09.i.i.sroa.6.0..sroa_idx.i, align 8, !noalias !13114
  %.sroa.09.i.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  store <2 x i64> %i.jj, ptr %.sroa.09.i.i.sroa.8.0..sroa_idx.i, align 8, !noalias !13114
  %.sroa.09.i.i.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  store i64 %.sroa.0470.0.i, ptr %.sroa.09.i.i.sroa.10.0..sroa_idx.i, align 8, !noalias !13114
  %.sroa.09.i.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 56
  store ptr %.sroa.8471.0.i, ptr %.sroa.09.i.i.sroa.11.0..sroa_idx.i, align 8, !noalias !13114
  %.sroa.09.i.i.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 64
  store i64 %.sroa.11472.0.i, ptr %.sroa.09.i.i.sroa.12.0..sroa_idx.i, align 8, !noalias !13114
  %.sroa.09.i.i.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.i.i.sroa.13.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12485.i, i64 24, i1 false), !noalias !13047
  %.sroa.09.i.i.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 96
  store i8 %i.mv, ptr %.sroa.09.i.i.sroa.14.0..sroa_idx.i, align 8, !noalias !13114
  %.sroa.09.i.i.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 97
  store i8 %i.mw, ptr %.sroa.09.i.i.sroa.15.0..sroa_idx.i, align 1, !noalias !13114
  %.sroa.09.i.i.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 98
  store i8 %.sroa.075.0.i, ptr %.sroa.09.i.i.sroa.16.0..sroa_idx.i, align 2, !noalias !13114
  %.sroa.09.i.i.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 99
  store i8 %i.mx, ptr %.sroa.09.i.i.sroa.17.0..sroa_idx.i, align 1, !noalias !13114
  %.sroa.09.i.i.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 100
  store i8 %.sroa.031.0.i, ptr %.sroa.09.i.i.sroa.18.0..sroa_idx.i, align 4, !noalias !13114
  %.sroa.09.i.i.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 101
  store i8 %..i, ptr %.sroa.09.i.i.sroa.19.0..sroa_idx.i, align 1, !noalias !13114
  %.sroa.09.i.i.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 104
  store i64 1, ptr %.sroa.09.i.i.sroa.21.0..sroa_idx.i, align 8, !noalias !13114
  %.sroa.09.i.i.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 112
  store ptr %i.my, ptr %.sroa.09.i.i.sroa.22.0..sroa_idx.i, align 8, !noalias !13114
  %.sroa.09.i.i.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.i.i.sroa.23.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !13047
  %.sroa.4.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 152
  store ptr %i.oq, ptr %.sroa.4.0..sroa_idx1.i.i.i, align 8, !noalias !13114
  %i.ow = load ptr, ptr %i.s, align 8, !noalias !13114, !nonnull !12, !noundef !12
  %i.ox = atomicrmw add ptr %i.ow, i64 1 monotonic, align 8, !noalias !13114
  %i.oy = icmp slt i64 %i.ox, 0
  br i1 %i.oy, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i.i
  %i.oz = load ptr, ptr %i.s, align 8, !noalias !13114, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13121
  %i.pa = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13121 ; 5 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %bb.cz, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit28.i.i.i, !prof !15

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #52, !noalias !13121
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit28.i.i.i: ; preds = %bb.cy
  store ptr %i.oz, ptr %i.pa, align 8, !noalias !13114
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store ptr %i.ou, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !13114
  %.sroa.5.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  store ptr @317, ptr %.sroa.5.0..sroa_idx4.i.i.i, align 8, !noalias !13114
  %i.pc = call { i64, ptr } @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef %.sroa.03.0.i.i.i, ptr noalias noundef nonnull align 8 %i.pa) #45, !noalias !13114 ; 2 uses
  %i.pd = extractvalue { i64, ptr } %i.pc, 0
  %i.pe = extractvalue { i64, ptr } %i.pc, 1      ; 3 uses
  %i.pf = trunc nuw i64 %i.pd to i1
  br i1 %i.pf, label %bb.db, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsl8pJiQOn4hA_9coreutils.exit.i

bb.da:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit27.i.i.i
  call void @llvm.trap()
  unreachable

bb.db:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit28.i.i.i
  %i.pg = atomicrmw add ptr %i.oq, i64 -1 release, align 8, !noalias !13122
  %i.ph = icmp eq i64 %i.pg, 1
  br i1 %i.ph, label %bb.dc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.dc:                                            ; preds = %bb.db
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #53, !noalias !13114
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13114
  call void @llvm.experimental.noalias.scope.decl(metadata !13123)
  call void @llvm.experimental.noalias.scope.decl(metadata !13124)
  call void @llvm.experimental.noalias.scope.decl(metadata !13125)
  call void @llvm.experimental.noalias.scope.decl(metadata !13126)
  %i.pi = load ptr, ptr %i.s, align 8, !alias.scope !13127, !noalias !13114, !nonnull !12, !noundef !12
  %i.pj = atomicrmw add ptr %i.pi, i64 -1 release, align 8, !noalias !13128
  %i.pk = icmp eq i64 %i.pj, 1
  br i1 %i.pk, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs2vKOLqTMYjT_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #53, !noalias !13114
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13114
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pe) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13129
  store ptr %i.pe, ptr %i.n, align 8, !noalias !13129
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @559, i64 noundef 22, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @887, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @561) #50, !noalias !13129
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit28.i.i.i
  %i.pl = ptrtoint ptr %i.pe to i64
  %i.pm = load ptr, ptr %i.s, align 8, !noalias !13114, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !13047
  call void @llvm.experimental.noalias.scope.decl(metadata !13130)
  call void @llvm.experimental.noalias.scope.decl(metadata !13131)
  store ptr %i.pm, ptr %i.ch, align 8, !alias.scope !13132, !noalias !13047
  %.sroa.6553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.oq, ptr %.sroa.6553.0..sroa_idx.i, align 8, !alias.scope !13132, !noalias !13047
  %.sroa.9554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.pl, ptr %.sroa.9554.0..sroa_idx.i, align 8, !alias.scope !13132, !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !13047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) @341, i64 32, i1 false), !noalias !13047
  %i.pn = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !noalias !13047, !nonnull !12, !noundef !12 ; 4 uses
  %i.pp = load i64, ptr %i.db, align 8, !range !19, !noalias !13047, !noundef !12
  %i.pq = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.pr = load i64, ptr %i.pq, align 8, !noalias !13047, !noundef !12 ; 3 uses
  %i.ps = icmp ult i64 %i.pr, 384307168202282326
  call void @llvm.assume(i1 %i.ps)
  %.idx.i = mul nuw nsw i64 %i.pr, 24
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !13047
  store ptr %i.po, ptr %i.cf, align 8, !noalias !13047
  %.sroa.578.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 10 uses
  store ptr %i.po, ptr %.sroa.578.0..sroa_idx.i, align 8, !noalias !13047
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.pp, ptr %.sroa.679.0..sroa_idx.i, align 8, !noalias !13047
  %.sroa.780.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.pt, ptr %.sroa.780.0..sroa_idx.i, align 8, !noalias !13047
  %i.pu = icmp eq i64 %i.pr, 0
  br i1 %i.pu, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsl8pJiQOn4hA_9coreutils.exit.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.4196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.5197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.4199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.5200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %.sroa.4.0..sroa_idx.i315.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i316.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.pz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.5505.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.8509.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.4204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.qc = icmp ne i64 %.sroa.0455.0.i, -9223372036854775807
  %i.qd = icmp eq i64 %.sroa.0455.0.i, -9223372036854775808
  %i.qe = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.qh = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bv, i64 240
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bv, i64 248
  %i.qk = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %.sroa.495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 288
  %i.qm = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.4206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.5207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.6208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.6128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.7129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 288
  %.sroa.4214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.5215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.4217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.5218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.qn = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %.sroa.4.0..sroa_idx.i370.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i371.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.qp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.5523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.8527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.qr = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.qt = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.df:                                            ; preds = %bb.cf
  %i.qu = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @555, i64 noundef 13) #45, !noalias !13047
  br i1 %i.qu, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qv = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @556, i64 noundef 1) #45, !noalias !13047
  br i1 %i.qv, label %bb.dh, label %bb.cg

bb.dh:                                            ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !13047
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.cn, align 8, !noalias !13047
  %i.qw = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn) #45, !noalias !13047
  store ptr %i.qw, ptr %i.co, align 8, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !13047
  %i.qx = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #45, !noalias !13047 ; 2 uses
  %i.qy = extractvalue { ptr, i64 } %i.qx, 0
  %i.qz = extractvalue { ptr, i64 } %i.qx, 1
  store ptr %i.qy, ptr %i.cm, align 8, !noalias !13047
  %i.ra = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.qz, ptr %i.ra, align 8, !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !13047
  store ptr %i.cm, ptr %i.cl, align 8, !noalias !13047
  %.sroa.4188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.4188.0..sroa_idx.i, align 8, !noalias !13047
  %i.rb = call fastcc noundef ptr @_RNvYNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(8) %i.co, ptr noundef nonnull @369, ptr noundef nonnull %i.cl) #45, !noalias !13047
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils(ptr %i.rb) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !13047
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 48) #45, !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !13047
  store ptr %i.ck, ptr %i.cj, align 8, !noalias !13047
  %.sroa.4192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4192.0..sroa_idx.i, align 8, !noalias !13047
  %i.rc = call fastcc noundef ptr @_RNvYNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(8) %i.co, ptr noundef nonnull @6, ptr noundef nonnull %i.cj) #45, !noalias !13047
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils(ptr %i.rc) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !13047
  call void @llvm.experimental.noalias.scope.decl(metadata !13133)
  call void @llvm.experimental.noalias.scope.decl(metadata !13134)
  %.val.i.i308.i = load i64, ptr %i.ck, align 8, !range !19, !alias.scope !13135, !noalias !13047, !noundef !12 ; 2 uses
  %i.rd = icmp eq i64 %.val.i.i308.i, 0
  br i1 %i.rd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit310.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.re = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.val1.i.i309.i = load ptr, ptr %i.re, align 8, !alias.scope !13135, !noalias !13047, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i309.i, i64 noundef %.val.i.i308.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13136
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit310.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit310.i: ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !13047
  %.val243.i = load ptr, ptr %i.co, align 8, !noalias !13047, !nonnull !12, !align !23, !noundef !12
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils(ptr nonnull %.val243.i) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !13047
  br label %bb.cg

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.backedge.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i
  %i.rf = phi ptr [ %i.po, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.lr.ph.i ], [ %i.rg, %.backedge.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13137)
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24 ; 11 uses
  %.sroa.0488.0.copyload489.i = load i64, ptr %i.rf, align 8, !noalias !13138 ; 6 uses
  %.sroa.9490.0..sroa_idx491.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %.sroa.9490.sroa.0.0.copyload.i = load ptr, ptr %.sroa.9490.0..sroa_idx491.i, align 8, !noalias !13138 ; 9 uses
  %.sroa.9490.sroa.7.0..sroa.9490.0..sroa_idx491.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %.sroa.9490.sroa.7.0.copyload.i = load i64, ptr %.sroa.9490.sroa.7.0..sroa.9490.0..sroa_idx491.sroa_idx.i, align 8, !noalias !13138 ; 4 uses
  %.not226.i = icmp eq i64 %.sroa.0488.0.copyload489.i, -1
  br i1 %.not226.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.loopexit, label %bb.dj

bb.dj:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i
  %i.rh = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !13047, !noundef !12 ; 3 uses
  %i.ri = icmp ult i64 %i.rh, 164703072086692426
  call void @llvm.assume(i1 %i.ri)
  %.not228.i = icmp eq i64 %i.rh, 0
  br i1 %.not228.i, label %bb.ds, label %.lr.ph

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.loopexit: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, %.backedge.i
  store ptr %i.rg, ptr %.sroa.578.0..sroa_idx.i, align 8, !alias.scope !13137, !noalias !13047
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i.loopexit, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleIBv_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtB4_2io5error5ErrorE6expectCsl8pJiQOn4hA_9coreutils.exit.i
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cf) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !13047
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils(i64 1, ptr nonnull %i.my) #45, !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !13047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !noalias !13047
  call fastcc void @_RNvMs1_NtNtCs2vKOLqTMYjT_3std6thread9lifecycleINtB5_9JoinInnerINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4joinCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bk, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ax) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !13047
  %i.rj = load i64, ptr %i.bk, align 8, !range !16, !noalias !13047, !noundef !12
  %i.rk = trunc nuw i64 %i.rj to i1
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !noalias !13047, !noundef !12 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8, !noalias !13047 ; 3 uses
  br i1 %i.rk, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i
  %i.rp = call fastcc ptr @_RNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs5_0Csl8pJiQOn4hA_9coreutils(ptr noundef nonnull %i.rm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ro) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !13047
  br label %bb.dn

bb.dl:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !13047
  %.not227.i = icmp eq ptr %i.rm, null
  br i1 %.not227.i, label %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ro) ]
  br label %bb.dn

_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.dl
  %.val258.i = load ptr, ptr %i.cg, align 8, !noalias !13047
  %i.rq = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.val259.i = load i64, ptr %i.rq, align 8, !noalias !13047, !noundef !12
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtCsfIwuYbgPzJV_5uu_du8FileInfoNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECsl8pJiQOn4hA_9coreutils(ptr %.val258.i, i64 %.val259.i) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i), !noalias !13047
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.cr) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !13047
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.df) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12485.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.hj

bb.dn:                                            ; preds = %bb.dm, %bb.dk
  %.sroa.17.3.i = phi ptr [ @56, %bb.dk ], [ %i.ro, %bb.dm ]
  %.sroa.0.3.i = phi ptr [ %i.rp, %bb.dk ], [ %i.rm, %bb.dm ]
  %.val256.i = load ptr, ptr %i.cg, align 8, !noalias !13047
  %i.rr = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.val257.i = load i64, ptr %i.rr, align 8, !noalias !13047, !noundef !12
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtCsfIwuYbgPzJV_5uu_du8FileInfoNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECsl8pJiQOn4hA_9coreutils(ptr %.val256.i, i64 %.val257.i) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !13047
  br label %bb.do

bb.do:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit423.i, %bb.dn
  %.sroa.17.4.i = phi ptr [ @56, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit423.i ], [ %.sroa.17.3.i, %bb.dn ]
  %.sroa.0.4.i = phi ptr [ %.sroa.0.7.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit423.i ], [ %.sroa.0.3.i, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i), !noalias !13047
  %i.rs = icmp ne i64 %.sroa.0455.0.i, -9223372036854775807
  call void @llvm.assume(i1 %i.rs)
  %i.rt = icmp sgt i64 %.sroa.0455.0.i, -1
  br i1 %i.rt, label %bb.dp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit.i

bb.dp:                                            ; preds = %bb.do
  call void @llvm.experimental.noalias.scope.decl(metadata !13139)
  %i.ru = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.ru, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i311.i

.lr.ph.i.i.i.i.i311.i:                            ; preds = %bb.dp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.rw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ 0, %bb.dp ] ; 2 uses
  %i.rv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8457.0.i, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.rw = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13140)
  call void @llvm.experimental.noalias.scope.decl(metadata !13141)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.rv, align 8, !range !19, !alias.scope !13142, !noalias !13143, !noundef !12 ; 2 uses
  %i.rx = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.rx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph.i.i.i.i.i311.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ry, align 8, !alias.scope !13144, !noalias !13143, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13145
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.dq, %.lr.ph.i.i.i.i.i311.i
  %i.rz = icmp eq i64 %i.rw, %.sroa.9.0.i
  br i1 %i.rz, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i311.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %bb.dp
  %i.sa = icmp eq i64 %.sroa.0455.0.i, 0
  br i1 %i.sa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.dr

bb.dr:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.sb = mul nuw i64 %.sroa.0455.0.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8457.0.i, i64 noundef %i.sb, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13143
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.dr, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.do
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs8P23TVsEbeF_4glob7PatternEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.cr) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !13047
  br label %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit

.lr.ph:                                           ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !13047
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9490.sroa.0.0.copyload.i) ]
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9490.sroa.0.0.copyload.i, i64 noundef %.sroa.9490.sroa.7.0.copyload.i) #45, !noalias !13047
  %.idx = mul nuw nsw i64 %i.rh, 56
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx
  %i.sd = load ptr, ptr %i.pv, align 8, !noalias !13047, !nonnull !12 ; 4 uses
  %i.se = load i64, ptr %i.pw, align 8, !noalias !13047 ; 2 uses
  br label %bb.du

bb.ds:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.dj
  call void @llvm.assume(i1 %i.qc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9490.sroa.0.0.copyload.i) ]
  call void @_RNvMCsfIwuYbgPzJV_5uu_duNtB2_4Stat3new(ptr noalias nofree noundef nonnull sret([288 x i8]) align 16 captures(none) dereferenceable(288) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9490.sroa.0.0.copyload.i, i64 noundef %.sroa.9490.sroa.7.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cr) #45, !noalias !13047
  %i.sf = load i128, ptr %i.bv, align 16, !range !66, !noalias !13047, !noundef !12 ; 2 uses
  %i.sg = trunc i128 %i.sf to i1
  br i1 %i.sg, label %bb.eu, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCsfIwuYbgPzJV_5uu_du8FileInfouNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCsl8pJiQOn4hA_9coreutils.exit.i

bb.dt:                                            ; preds = %bb.du
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i373, i64 56 ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.sc
  br i1 %i.si, label %._crit_edge, label %bb.du

bb.du:                                            ; preds = %.lr.ph, %bb.dt
  %.sroa.081.0.i373 = phi ptr [ %i.ki, %.lr.ph ], [ %i.sh, %bb.dt ] ; 2 uses
  %i.sj = call noundef zeroext i1 @_RNvMsa_Cs8P23TVsEbeF_4globNtB5_7Pattern7matches(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.081.0.i373, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sd, i64 noundef %i.se) #45, !noalias !13047
  br i1 %i.sj, label %bb.dw, label %bb.dt

._crit_edge:                                      ; preds = %bb.dt
  %.val241.i = load i64, ptr %i.ce, align 8, !range !13, !noalias !13047, !noundef !12 ; 2 uses
  %i.sk = icmp sgt i64 %.val241.i, 0
  br i1 %i.sk, label %bb.dv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i

bb.dv:                                            ; preds = %._crit_edge
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sd, i64 noundef %.val241.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13146
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.dv, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !13047
  br label %bb.ds

bb.dw:                                            ; preds = %bb.du
  br i1 %i.ke, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit357.i, %bb.dw
  %.val239.i = load i64, ptr %i.ce, align 8, !range !13, !noalias !13047, !noundef !12 ; 2 uses
  %i.sl = icmp sgt i64 %.val239.i, 0
  br i1 %i.sl, label %bb.dy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit314.i

bb.dy:                                            ; preds = %bb.dx
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sd, i64 noundef %.val239.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13147
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit314.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsl8pJiQOn4hA_9coreutils.exit314.i: ; preds = %bb.dy, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !13047
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du4StatECsl8pJiQOn4hA_9coreutils.exit.i

bb.dz:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !13047
  store i64 0, ptr %i.cc, align 8, !noalias !13047
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4196.0..sroa_idx.i, align 8, !noalias !13047
  store i64 0, ptr %.sroa.5197.0..sroa_idx.i, align 8, !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !13047
  store i64 0, ptr %i.cb, align 8, !noalias !13047
  store ptr %i.sd, ptr %.sroa.4199.0..sroa_idx.i, align 8, !noalias !13047
  store i64 %i.se, ptr %.sroa.5200.0..sroa_idx.i, align 8, !noalias !13047
  store i8 1, ptr %i.px, align 8, !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13148
  store i64 0, ptr %i.m, align 8, !noalias !13148
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i315.i, align 8, !noalias !13148
  store i64 0, ptr %.sroa.5.0..sroa_idx.i316.i, align 8, !noalias !13148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13148
  store i64 1610612768, ptr %i.py, align 8, !noalias !13148
  store ptr %i.m, ptr %i.l, align 8, !noalias !13148
  store ptr @113, ptr %i.pz, align 8, !noalias !13148
  %i.sm = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #45, !noalias !13149
  br i1 %i.sm, label %bb.ea, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit317.i, !prof !18

bb.ea:                                            ; preds = %bb.dz
  store ptr %i.rg, ptr %.sroa.578.0..sroa_idx.i, align 8, !alias.scope !13137, !noalias !13047
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1323, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @895, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1325) #50, !noalias !13149
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit317.i: ; preds = %bb.dz
  %.sroa.0503.0.copyload504.i = load i64, ptr %i.m, align 8, !noalias !13150 ; 3 uses
  %.sroa.5505.0.copyload507.i = load ptr, ptr %.sroa.4.0..sroa_idx.i315.i, align 8, !noalias !13150, !nonnull !12, !noundef !12 ; 8 uses
  %.sroa.8509.0.copyload511.i = load i64, ptr %.sroa.5.0..sroa_idx.i316.i, align 8, !noalias !13150 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !13047
  switch i64 %.sroa.8509.0.copyload511.i, label %thread-pre-split.i349.i [
    i64 0, label %.loopexit608.i
    i64 1, label %bb.eb
  ]

bb.eb:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit317.i
  %i.sn = load i8, ptr %.sroa.5505.0.copyload507.i, align 1, !alias.scope !13151, !noalias !13047, !noundef !12 ; 2 uses
  switch i8 %i.sn, label %bb.ec [
    i8 43, label %.loopexit608.i
    i8 45, label %.loopexit608.i
  ]

thread-pre-split.i349.i:                          ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils.exit317.i
  %.pr.i350.i = load i8, ptr %.sroa.5505.0.copyload507.i, align 1, !alias.scope !13151, !noalias !13047
  br label %bb.ec

bb.ec:                                            ; preds = %thread-pre-split.i349.i, %bb.eb
  %i.so = phi i8 [ %.pr.i350.i, %thread-pre-split.i349.i ], [ %i.sn, %bb.eb ]
  switch i8 %i.so, label %bb.ej [
    i8 43, label %bb.ed
    i8 45, label %bb.ee
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.5505.0.copyload507.i, i64 1
  %i.sq = add nsw i64 %.sroa.8509.0.copyload511.i, -1
  br label %bb.ej

bb.ee:                                            ; preds = %bb.ec
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.5505.0.copyload507.i, i64 1 ; 2 uses
  %i.ss = add nsw i64 %.sroa.8509.0.copyload511.i, -1 ; 3 uses
  %i.st = icmp samesign ult i64 %.sroa.8509.0.copyload511.i, 17
  br i1 %i.st, label %.preheader114.i327.i, label %.lr.ph.i319.i

.preheader114.i327.i:                             ; preds = %bb.ee
  %.not103137.i328.i = icmp eq i64 %i.ss, 0
  br i1 %.not103137.i328.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit351.i, label %.lr.ph141.i329.i

.lr.ph.i319.i:                                    ; preds = %bb.ee, %bb.eh
  %.sroa.0.1136.i320.i = phi ptr [ %i.su, %bb.eh ], [ %i.sr, %bb.ee ] ; 2 uses
  %.sroa.26.1135.i321.i = phi i64 [ %i.sv, %bb.eh ], [ %i.ss, %bb.ee ]
  %.sroa.084.0134.i322.i = phi i64 [ %i.tg, %bb.eh ], [ 0, %bb.ee ]
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i320.i, i64 1
  %i.sv = add nsw i64 %.sroa.26.1135.i321.i, -1   ; 2 uses
  %i.sw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i322.i, i64 10) ; 2 uses
  %i.sx = extractvalue { i64, i1 } %i.sw, 0
  %i.sy = extractvalue { i64, i1 } %i.sw, 1
  br i1 %i.sy, label %.loopexit608.i, label %bb.ef, !prof !18

bb.ef:                                            ; preds = %.lr.ph.i319.i
  %i.sz = load i8, ptr %.sroa.0.1136.i320.i, align 1, !alias.scope !13151, !noalias !13047, !noundef !12
  %i.ta = zext i8 %i.sz to i32
  %i.tb = add nsw i32 %i.ta, -48                  ; 2 uses
  %i.tc = icmp ult i32 %i.tb, 10
  br i1 %i.tc, label %bb.eg, label %.loopexit608.i

bb.eg:                                            ; preds = %bb.ef
  %i.td = zext nneg i32 %i.tb to i64
  %i.te = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.sx, i64 %i.td) ; 2 uses
  %i.tf = extractvalue { i64, i1 } %i.te, 1
  br i1 %i.tf, label %.loopexit608.i, label %bb.eh, !prof !18

bb.eh:                                            ; preds = %bb.eg
  %i.tg = extractvalue { i64, i1 } %i.te, 0       ; 2 uses
  %.not102.i324.i = icmp eq i64 %i.sv, 0
  br i1 %.not102.i324.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit351.i, label %.lr.ph.i319.i

.lr.ph141.i329.i:                                 ; preds = %.preheader114.i327.i, %bb.ei
  %.sroa.0.2140.i330.i = phi ptr [ %i.tn, %bb.ei ], [ %i.sr, %.preheader114.i327.i ] ; 2 uses
  %.sroa.26.2139.i331.i = phi i64 [ %i.tm, %bb.ei ], [ %i.ss, %.preheader114.i327.i ]
  %.sroa.084.2138.i332.i = phi i64 [ %i.tp, %bb.ei ], [ 0, %.preheader114.i327.i ]
  %i.th = load i8, ptr %.sroa.0.2140.i330.i, align 1, !alias.scope !13151, !noalias !13047, !noundef !12
  %i.ti = zext i8 %i.th to i32
  %i.tj = add nsw i32 %i.ti, -48                  ; 2 uses
  %i.tk = icmp ult i32 %i.tj, 10
  br i1 %i.tk, label %bb.ei, label %.loopexit608.i

bb.ei:                                            ; preds = %.lr.ph141.i329.i
  %i.tl = mul i64 %.sroa.084.2138.i332.i, 10
  %i.tm = add nsw i64 %.sroa.26.2139.i331.i, -1   ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i330.i, i64 1
  %i.to = zext nneg i32 %i.tj to i64
  %i.tp = sub i64 %i.tl, %i.to                    ; 2 uses
  %.not103.i333.i = icmp eq i64 %i.tm, 0
  br i1 %.not103.i333.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit351.i, label %.lr.ph141.i329.i

bb.ej:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.26.0.i334.i = phi i64 [ %i.sq, %bb.ed ], [ %.sroa.8509.0.copyload511.i, %bb.ec ] ; 4 uses
  %.sroa.0.0.i335.i = phi ptr [ %i.sp, %bb.ed ], [ %.sroa.5505.0.copyload507.i, %bb.ec ] ; 2 uses
  %i.tq = icmp samesign ult i64 %.sroa.26.0.i334.i, 16
  br i1 %i.tq, label %.preheader.i342.i, label %.preheader111.i336.i

.preheader.i342.i:                                ; preds = %bb.ej
  %.not105146.i343.i = icmp eq i64 %.sroa.26.0.i334.i, 0
  br i1 %.not105146.i343.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit351.i, label %.lr.ph150.i344.i

.preheader111.i336.i:                             ; preds = %bb.ej, %bb.em
  %.sroa.0.3145.i337.i = phi ptr [ %i.tr, %bb.em ], [ %.sroa.0.0.i335.i, %bb.ej ] ; 2 uses
  %.sroa.26.3144.i338.i = phi i64 [ %i.ts, %bb.em ], [ %.sroa.26.0.i334.i, %bb.ej ]
  %.sroa.084.3143.i339.i = phi i64 [ %i.ud, %bb.em ], [ 0, %bb.ej ]
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i337.i, i64 1
  %i.ts = add nsw i64 %.sroa.26.3144.i338.i, -1   ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvCsfIwuYbgPzJV_5uu_du6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBy_6cloned6ClonedINtNtNtBC_5slice4iter4IterB29_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !13047
  store i64 %.sroa.0521.0.copyload522.i, ptr %i.bn, align 8, !noalias !13047
  store ptr %.sroa.5523.0.copyload525.i, ptr %.sroa.5523.0..sroa_idx.i, align 8, !noalias !13047
  store i64 %.sroa.8527.0.copyload529.i, ptr %.sroa.8527.0..sroa_idx.i, align 8, !noalias !13047
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @463, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bn) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !13047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !noalias !13047
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @563, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bm) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !13047
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit409.i

bb.gj:                                            ; preds = %.loopexit.i
  %i.abl = load double, ptr %i.qq, align 8, !noalias !13047, !noundef !12
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @463, i64 noundef 4, double noundef %i.abl) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !13047
  br label %bb.gg

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit409.i: ; preds = %bb.gi, %bb.gh, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !13047
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13178
  %i.abm = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13178 ; 4 uses
  %i.abn = icmp eq ptr %i.abm, null
  br i1 %i.abn, label %bb.gk, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit410.i, !prof !15

bb.gk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit409.i
  store ptr %i.rg, ptr %.sroa.578.0..sroa_idx.i, align 8, !alias.scope !13137, !noalias !13047
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #52, !noalias !13178
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit410.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit409.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abm, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !13047
  %.sroa.4559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  store i32 1, ptr %.sroa.4559.0..sroa_idx.i, align 8, !noalias !13047
  store ptr %i.abm, ptr %i.qr, align 16, !noalias !13047
  store ptr @56, ptr %i.qs, align 8, !noalias !13047
  store i128 2, ptr %i.bl, align 16, !noalias !13047
  call fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.ay, i64 1, ptr nonnull %i.my, ptr noalias nofree noundef align 16 captures(address) dereferenceable(304) %i.bl) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !13047
  %i.abo = load i128, ptr %i.ay, align 16, !range !67, !noalias !13047, !noundef !12
  %.not232.i = icmp eq i128 %i.abo, -1
  br i1 %.not232.i, label %bb.ge, label %bb.gf

.unreachabledefault480:                           ; preds = %bb.ge
  unreachable

default.unreachable:                              ; preds = %bb.ii, %bb.ib, %bb.hx, %bb.hs, %bb.ho
  unreachable

bb.gl:                                            ; preds = %bb.ge
  %i.abp = icmp ult ptr %.val.i.i414.i, inttoptr (i64 188978561024 to ptr)
  %i.abq = and i64 %i.abf, 1095216660480
  %i.abr = icmp ne i64 %i.abq, 1095216660480
  call void @llvm.assume(i1 %i.abp)
  call void @llvm.assume(i1 %i.abr)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du4StatNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit417.i

bb.gm:                                            ; preds = %bb.ge
  %i.abs = getelementptr i8, ptr %.val.i.i414.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abs) ]
  store ptr %i.abs, ptr %i.qt, align 8, !alias.scope !13179, !noalias !13176
  store i8 3, ptr %i.i, align 8, !alias.scope !13179, !noalias !13176
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qt) #45, !noalias !13176
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du4StatNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit417.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du4StatNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit417.i: ; preds = %bb.gm, %bb.gl, %bb.ge, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13176
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gt, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du4StatNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit417.i, %.thread.i
  %i.abt = icmp eq i64 %.sroa.0488.0.copyload489.i, 0
  br i1 %i.abt, label %.backedge.i, label %.backedge.sink.split.i

bb.go:                                            ; preds = %bb.gu, %bb.gf, %.thread794.i
  %.sroa.0.7.i = phi ptr [ %.sroa.0.8.i, %bb.gu ], [ %i.abh, %bb.gf ], [ %.sroa.0.6796.i, %.thread794.i ]
  %i.abu = icmp eq i64 %.sroa.0488.0.copyload489.i, 0
  br i1 %i.abu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit423.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9490.sroa.0.0.copyload.i, i64 noundef %.sroa.0488.0.copyload489.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13180
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit423.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit423.i: ; preds = %bb.gp, %bb.go
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cf) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !13047
  %.val254.i = load ptr, ptr %i.cg, align 8, !noalias !13047
  %.val255.i = load i64, ptr %i.qh, align 8, !noalias !13047, !noundef !12
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtCsfIwuYbgPzJV_5uu_du8FileInfoNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECsl8pJiQOn4hA_9coreutils(ptr %.val254.i, i64 %.val255.i) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !13047
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std6thread11join_handle10JoinHandleINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ch) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !13047
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc6SenderINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils(i64 1, ptr nonnull %i.my) #45, !noalias !13047
  br label %bb.do

bb.gq:                                            ; preds = %bb.fk
  %i.abv = load ptr, ptr %i.qm, align 16, !noalias !13047, !nonnull !12, !align !68, !noundef !12 ; 8 uses
  %i.abw = load i128, ptr %i.abv, align 16, !range !66, !noalias !13047, !noundef !12
  %i.abx = icmp eq i128 %i.abw, 2
  br i1 %i.abx, label %bb.gv, label %bb.gw

bb.gr:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !13047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.bu, ptr noundef nonnull align 16 dereferenceable(288) %i.bw, i64 288, i1 false), !noalias !13047
  store i64 0, ptr %.sroa.495.0..sroa_idx.i, align 16, !noalias !13047
  call fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.bb, i64 1, ptr nonnull %i.my, ptr noalias nofree noundef align 16 captures(address) dereferenceable(304) %i.bu) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !13047
  %i.aby = load i128, ptr %i.bb, align 16, !range !67, !noalias !13047, !noundef !12
  %.not234.i = icmp eq i128 %i.aby, -1
  br i1 %.not234.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store ptr %i.rg, ptr %.sroa.578.0..sroa_idx.i, align 8, !alias.scope !13137, !noalias !13047
  %i.abz = call fastcc ptr @_RNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEEs1_0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 16 captures(address) dereferenceable(304) %i.bb) #51
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !13047
  br label %bb.gn

bb.gu:                                            ; preds = %bb.gw, %bb.gs
  %.sroa.0.8.i = phi ptr [ %i.aci, %bb.gw ], [ %i.abz, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !13047
  br label %bb.go

bb.gv:                                            ; preds = %bb.gq
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abv, i64 16 ; 3 uses
  %i.acb = load ptr, ptr %i.aca, align 16, !noalias !13047, !nonnull !12, !noundef !12
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abv, i64 24 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !noalias !13047, !nonnull !12, !align !23, !noundef !12
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 88
  %i.acf = load ptr, ptr %i.ace, align 8, !invariant.load !12, !noalias !13047, !nonnull !12
  %i.acg = call noundef i32 %i.acf(ptr noundef nonnull %i.acb) #51, !noalias !13047, !inline_history !12962
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gq
  store ptr %i.rg, ptr %.sroa.578.0..sroa_idx.i, align 8, !alias.scope !13137, !noalias !13047
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0555.i), !noalias !13047
  call fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringINtNtB7_5boxed3BoxINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBz_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEENtB5_12SpecToString14spec_to_stringCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %.sroa.0555.i) #51, !noalias !13047
  %i.aci = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #51, !noalias !13181 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aci, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0555.i, i64 24, i1 false), !noalias !13047
  %.sroa.4556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aci, i64 24
  store i32 1, ptr %.sroa.4556.0..sroa_idx.i, align 8, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0555.i), !noalias !13047
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils(ptr nonnull %i.abv) #45, !noalias !13047
  br label %bb.gu

bb.gx:                                            ; preds = %bb.gv
  call void @llvm.experimental.noalias.scope.decl(metadata !13182)
  call void @llvm.experimental.noalias.scope.decl(metadata !13183)
  %i.acj = load i128, ptr %i.abv, align 16, !range !66, !alias.scope !13184, !noalias !13047, !noundef !12
  %.not.i.i.i424.i = icmp eq i128 %i.acj, 2
  br i1 %.not.i.i.i424.i, label %bb.ha, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abv, i64 240
  %.val.i.i.i425.i = load i64, ptr %i.ack, align 16, !range !19, !alias.scope !13185, !noalias !13047, !noundef !12 ; 2 uses
  %i.acl = icmp eq i64 %.val.i.i.i425.i, 0
  br i1 %i.acl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abv, i64 248
  %.val1.i.i.i426.i = load ptr, ptr %i.acm, align 8, !alias.scope !13184, !noalias !13047, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i426.i, i64 noundef %.val.i.i.i425.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13186
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i

bb.ha:                                            ; preds = %bb.gx
  call void @llvm.experimental.noalias.scope.decl(metadata !13187)
  %i.acn = load ptr, ptr %i.acc, align 8, !alias.scope !13188, !noalias !13047, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.aco = load ptr, ptr %i.acn, align 8, !invariant.load !12, !noalias !13189 ; 2 uses
  %.not.i.i.i.i427.i = icmp eq ptr %i.aco, null
  br i1 %.not.i.i.i.i427.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.acp = load ptr, ptr %i.aca, align 16, !alias.scope !13188, !noalias !13047, !nonnull !12, !noundef !12
  call void %i.aco(ptr noundef nonnull %i.acp) #51, !noalias !13189, !inline_history !12983
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acr = load i64, ptr %i.acq, align 8, !range !19, !invariant.load !12, !noalias !13189 ; 2 uses
  %i.acs = icmp eq i64 %i.acr, 0
  br i1 %i.acs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.hc
  %.val.i.i.i.i.i = load ptr, ptr %i.aca, align 16, !alias.scope !13188, !noalias !13047, !nonnull !12, !noundef !12
  %i.act = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %i.acu = load i64, ptr %i.act, align 8, !range !25, !invariant.load !12, !noalias !13189
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.acr, i64 noundef range(i64 1, -9223372036854775807) %i.acu) #45, !noalias !13189
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.hc, %bb.gz, %bb.gy
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abv, i64 noundef 304, i64 noundef 16) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !13047
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du4StatECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit303.i: ; preds = %bb.cc, %bb.cb, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit295.i
  %.sroa.17.9.i = phi ptr [ @56, %bb.cc ], [ @56, %bb.cb ], [ %i.lw, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit295.i ]
  %.sroa.0.9.i = phi ptr [ %i.mi, %bb.cc ], [ %i.mi, %bb.cb ], [ %i.lu, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit295.i ]
  %i.acv = icmp ne i64 %.sroa.0455.0.i, -9223372036854775807
  call void @llvm.assume(i1 %i.acv)
  %i.acw = icmp sgt i64 %.sroa.0455.0.i, -1
  br i1 %i.acw, label %bb.hd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit436.i

bb.hd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit303.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13190)
  %i.acx = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.acx, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i435.i, label %.lr.ph.i.i.i.i.i430.i

.lr.ph.i.i.i.i.i430.i:                            ; preds = %bb.hd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i434.i
  %.sroa.0.03.i.i.i.i.i431.i = phi i64 [ %i.acz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i434.i ], [ 0, %bb.hd ] ; 2 uses
  %i.acy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8457.0.i, i64 %.sroa.0.03.i.i.i.i.i431.i ; 2 uses
  %i.acz = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i431.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13191)
  call void @llvm.experimental.noalias.scope.decl(metadata !13192)
  %.val.i.i.i.i.i.i.i432.i = load i64, ptr %i.acy, align 8, !range !19, !alias.scope !13193, !noalias !13194, !noundef !12 ; 2 uses
  %i.ada = icmp eq i64 %.val.i.i.i.i.i.i.i432.i, 0
  br i1 %i.ada, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i434.i, label %bb.he

bb.he:                                            ; preds = %.lr.ph.i.i.i.i.i430.i
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %.val1.i.i.i.i.i.i.i433.i = load ptr, ptr %i.adb, align 8, !alias.scope !13195, !noalias !13194, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i433.i, i64 noundef %.val.i.i.i.i.i.i.i432.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13196
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i434.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i434.i: ; preds = %bb.he, %.lr.ph.i.i.i.i.i430.i
  %i.adc = icmp eq i64 %i.acz, %.sroa.9.0.i
  br i1 %i.adc, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i435.i, label %.lr.ph.i.i.i.i.i430.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i435.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i434.i, %bb.hd
  %i.add = icmp eq i64 %.sroa.0455.0.i, 0
  br i1 %i.add, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit436.i, label %bb.hf

bb.hf:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i435.i
  %i.ade = mul nuw i64 %.sroa.0455.0.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8457.0.i, i64 noundef %i.ade, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13194
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit436.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit436.i: ; preds = %bb.hf, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i435.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit303.i
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs8P23TVsEbeF_4glob7PatternEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.cr) #45, !noalias !13047
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du5DerefECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du5DerefECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit436.i, %bb.bm, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.bj
  %.sroa.17.10.i = phi ptr [ %.sroa.17.9.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit436.i ], [ %i.kk, %bb.bj ], [ %i.kk, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.kk, %bb.bm ]
  %.sroa.0.10.i = phi ptr [ %.sroa.0.9.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit436.i ], [ %i.ki, %bb.bj ], [ %i.ki, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.ki, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !13047
  br label %bb.hg

bb.hg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du5DerefECsl8pJiQOn4hA_9coreutils.exit.i, %bb.az
  %.sroa.17.11.i = phi ptr [ %i.ji, %bb.az ], [ %.sroa.17.10.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du5DerefECsl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %.sroa.0.11.i = phi ptr [ %i.jh, %bb.az ], [ %.sroa.0.10.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du5DerefECsl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13197)
  %i.adf = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.val.i437.i = load ptr, ptr %i.adf, align 8, !alias.scope !13197, !noalias !13047, !nonnull !12, !noundef !12 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.val1.i438.i = load i64, ptr %i.adg, align 8, !alias.scope !13197, !noalias !13047, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13198)
  %i.adh = icmp eq i64 %.val1.i438.i, 0
  br i1 %i.adh, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i439.i

.lr.ph.i.i.i439.i:                                ; preds = %bb.hg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.adj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ 0, %bb.hg ] ; 2 uses
  %i.adi = getelementptr inbounds nuw [24 x i8], ptr %.val.i437.i, i64 %.sroa.0.03.i.i.i.i ; 2 uses
  %i.adj = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13199)
  call void @llvm.experimental.noalias.scope.decl(metadata !13200)
  %.val.i.i.i.i.i.i = load i64, ptr %i.adi, align 8, !range !19, !alias.scope !13201, !noalias !13202, !noundef !12 ; 2 uses
  %i.adk = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.adk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.hh

bb.hh:                                            ; preds = %.lr.ph.i.i.i439.i
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.adl, align 8, !alias.scope !13203, !noalias !13202, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13204
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.hh, %.lr.ph.i.i.i439.i
  %i.adm = icmp eq i64 %i.adj, %.val1.i438.i
  br i1 %i.adm, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i439.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.hg
  %.val2.i.i = load i64, ptr %i.db, align 8, !range !19, !alias.scope !13197, !noalias !13047, !noundef !12 ; 2 uses
  %i.adn = icmp eq i64 %.val2.i.i, 0
  br i1 %i.adn, label %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.hi

bb.hi:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ado = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i437.i, i64 noundef %i.ado, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !13202
  br label %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.hi
  %.sroa.17.1.i = phi ptr [ %.sroa.17.0.i, %bb.w ], [ %.sroa.17.4.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.17.11.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.17.11.i, %bb.hi ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.w ], [ %.sroa.0.4.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du16TraversalOptionsECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.0.11.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.0.11.i, %bb.hi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !13047
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.df) #45, !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12485.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.not = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not, label %bb.hj, label %.split

.split.sink.split:                                ; preds = %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit.thread54, %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit.thread250
  %.sroa.0.2.i59.ph = phi ptr [ %i.er, %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit.thread250 ], [ %i.dz, %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit.thread54 ]
  %.sroa.17.2.i58.ph = phi ptr [ %i.es, %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit.thread250 ], [ %i.eb, %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit.thread54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !13047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12485.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %.split

.split:                                           ; preds = %.split.sink.split, %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit
  %.sroa.0.2.i59 = phi ptr [ %.sroa.0.1.i, %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.0.2.i59.ph, %.split.sink.split ]
  %.sroa.17.2.i58 = phi ptr [ %.sroa.17.1.i, %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.17.2.i58.ph, %.split.sink.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.2.i58) ]
  store ptr %.sroa.0.2.i59, ptr %i.ds, align 8
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  store ptr %.sroa.17.2.i58, ptr %i.adp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  store ptr %i.ds, ptr %i.dp, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dq, ptr noundef nonnull @3, ptr noundef nonnull %i.dp) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  %i.adq = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.adr = load i64, ptr %i.adq, align 8, !noundef !12
  %i.ads = icmp eq i64 %i.adr, 0
  br i1 %i.ads, label %bb.ig, label %bb.hl

bb.hj:                                            ; preds = %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit.thread, %_RINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBH_6cloned6ClonedINtNtNtBL_5slice4iter4IterB2i_EEEECsl8pJiQOn4hA_9coreutils.exit
  %i.adt = call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13get_exit_code() #45
  br label %bb.hk

bb.hk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit, %bb.hj
  %.sroa.0.0 = phi i32 [ %i.agk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit ], [ %i.adt, %bb.hj ]
  ret i32 %.sroa.0.0

bb.hl:                                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.dn, align 8
  %i.adu = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dn) #45
  store ptr %i.adu, ptr %i.do, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %i.adv = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #45 ; 2 uses
  %i.adw = extractvalue { ptr, i64 } %i.adv, 0
  %i.adx = extractvalue { ptr, i64 } %i.adv, 1
  store ptr %i.adw, ptr %i.dm, align 8
  %i.ady = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.adx, ptr %i.ady, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store ptr %i.dm, ptr %i.dl, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13205
  store ptr %i.do, ptr %i.h, align 8, !noalias !13205
  %i.adz = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr null, ptr %i.adz, align 8, !noalias !13205
  %i.aea = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull @5, ptr noundef nonnull %i.dl) #45
  %i.aeb = load ptr, ptr %i.adz, align 8, !noalias !13205, !noundef !12 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.aeb, null           ; 2 uses
  br i1 %i.aea, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  br i1 %.not.i5.i, label %bb.hr, label %bb.hs, !prof !18

bb.hn:                                            ; preds = %bb.hl
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13206
  %i.aec = ptrtoint ptr %i.aeb to i64             ; 2 uses
  %i.aed = and i64 %i.aec, 3
  switch i64 %i.aed, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i
    i64 3, label %bb.hp
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i
    i64 1, label %bb.hq
  ], !prof !22

bb.hp:                                            ; preds = %bb.ho
  %i.aee = icmp ult ptr %i.aeb, inttoptr (i64 188978561024 to ptr)
  %i.aef = and i64 %i.aec, 1095216660480
  %i.aeg = icmp ne i64 %i.aef, 1095216660480
  call void @llvm.assume(i1 %i.aee)
  call void @llvm.assume(i1 %i.aeg)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.hq:                                            ; preds = %bb.ho
  %i.aeh = getelementptr i8, ptr %i.aeb, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aeh) ]
  %i.aei = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aeh, ptr %i.aei, align 8, !alias.scope !13207, !noalias !13206
  store i8 3, ptr %i.g, align 8, !alias.scope !13207, !noalias !13206
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aei) #45, !noalias !13208
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.hq, %bb.hp, %bb.ho, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13206
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread

bb.hr:                                            ; preds = %bb.hm
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread: ; preds = %bb.hn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13205
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit

bb.hs:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13209
  %i.aej = ptrtoint ptr %i.aeb to i64             ; 2 uses
  %i.aek = and i64 %i.aej, 3
  switch i64 %i.aek, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i
    i64 3, label %bb.ht
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i
    i64 1, label %bb.hu
  ], !prof !22

bb.ht:                                            ; preds = %bb.hs
end_hunk_2
begin_hunk_3_@_RINvCsgN7rS7e43TA_7uu_more6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBA_6cloned6ClonedINtNtNtBE_5slice4iter4IterB2b_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  store atomic i64 0, ptr %.val27 monotonic, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %.val27, i64 8 ; 2 uses
  %i.pc = atomicrmw xchg ptr %i.pb, i32 0 release, align 4
  %i.pd = icmp eq i32 %i.pc, 2
  br i1 %i.pd, label %bb.ea, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.ea:                                            ; preds = %bb.dz
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.pb) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit43, %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.eb

bb.eb:                                            ; preds = %.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit
  %i.pe = load ptr, ptr %i.bv, align 8, !nonnull !12, !noundef !12
  %i.pf = load ptr, ptr %i.nf, align 8, !nonnull !12, !align !23, !noundef !12
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 96
  %i.ph = load ptr, ptr %i.pg, align 8, !invariant.load !12, !nonnull !12
  %i.pi = call noundef zeroext i1 %i.ph(ptr noundef nonnull %i.pe) #51
  br i1 %i.pi, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.pj = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() #45 ; 2 uses
  %i.pk = extractvalue { ptr, i64 } %i.pj, 0
  %i.pl = extractvalue { ptr, i64 } %i.pj, 1
  store ptr %i.pk, ptr %i.bl, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.pl, ptr %i.pm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store ptr %i.bl, ptr %i.bk, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.420.0..sroa_idx, align 8
  %i.pn = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @7, ptr noundef nonnull %i.bk) #45 ; 4 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit46, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13780
  %i.pp = ptrtoint ptr %i.pn to i64               ; 2 uses
  %i.pq = and i64 %i.pp, 3
  switch i64 %i.pq, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i44
    i64 3, label %bb.ee
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i44
    i64 1, label %bb.ef
  ], !prof !22

bb.ee:                                            ; preds = %bb.ed
  %i.pr = icmp ult ptr %i.pn, inttoptr (i64 188978561024 to ptr)
  %i.ps = and i64 %i.pp, 1095216660480
  %i.pt = icmp ne i64 %i.ps, 1095216660480
  call void @llvm.assume(i1 %i.pr)
  call void @llvm.assume(i1 %i.pt)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i44

bb.ef:                                            ; preds = %bb.ed
  %i.pu = getelementptr i8, ptr %i.pn, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pu) ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.pu, ptr %i.pv, align 8, !alias.scope !13781, !noalias !13780
  store i8 3, ptr %i.b, align 8, !alias.scope !13781, !noalias !13780
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pv) #45, !noalias !13780
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i44

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i44: ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13780
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit46

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit46: ; preds = %bb.ec, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit46
  %i.pw = load ptr, ptr %i.bv, align 8, !nonnull !12, !noundef !12
  %i.px = load ptr, ptr %i.nf, align 8, !nonnull !12, !align !23, !noundef !12
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 88
  %i.pz = load ptr, ptr %i.py, align 8, !invariant.load !12, !nonnull !12
  %i.qa = call noundef i32 %i.pz(ptr noundef nonnull %i.pw) #51
  call void @llvm.experimental.noalias.scope.decl(metadata !13782)
  call void @llvm.experimental.noalias.scope.decl(metadata !13783)
  %.val.i.i47 = load i64, ptr %i.bu, align 8, !range !19, !alias.scope !13784, !noundef !12 ; 2 uses
  %i.qb = icmp eq i64 %.val.i.i47, 0
  br i1 %i.qb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.val1.i.i = load ptr, ptr %i.qc, align 8, !alias.scope !13784, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i47, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13784
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.experimental.noalias.scope.decl(metadata !13785)
  %i.qd = load ptr, ptr %i.nf, align 8, !alias.scope !13785, !nonnull !12, !align !23, !noundef !12 ; 3 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !invariant.load !12, !noalias !13785 ; 2 uses
  %.not.i48 = icmp eq ptr %i.qe, null
  br i1 %.not.i48, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit
  %i.qf = load ptr, ptr %i.bv, align 8, !alias.scope !13785, !nonnull !12, !noundef !12
  call void %i.qe(ptr noundef nonnull %i.qf) #51, !noalias !13785, !inline_history !24
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qh = load i64, ptr %i.qg, align 8, !range !19, !invariant.load !12, !noalias !13785 ; 2 uses
  %i.qi = icmp eq i64 %i.qh, 0
  br i1 %i.qi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.ej
  %.val.i = load ptr, ptr %i.bv, align 8, !alias.scope !13785, !nonnull !12, !noundef !12
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qk = load i64, ptr %i.qj, align 8, !range !25, !invariant.load !12, !noalias !13785
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.qh, i64 noundef range(i64 1, -9223372036854775807) %i.qk) #45, !noalias !13785
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ej, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.df
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RINvCsgZlHlzpN0xi_7uu_tail6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBA_6cloned6ClonedINtNtNtBE_5slice4iter4IterB2b_EEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.5.i.i = alloca [56 x i8], align 8        ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 8 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %i.m = alloca [56 x i8], align 8                ; 5 uses
  %i.n = alloca [80 x i8], align 8                ; 15 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [712 x i8], align 8               ; 5 uses
  %i.q = alloca [56 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.21.i = alloca [56 x i8], align 8         ; 8 uses
  %i.y = alloca [80 x i8], align 8                ; 14 uses
  %i.z = alloca [4 x i8], align 4                 ; 3 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 9 uses
  %i.am = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.am, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ao = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.ao, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !13910
  store i32 %i.ao, ptr %i.z, align 4, !noalias !13910
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13911
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13912
  call fastcc void @_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterB1J_EEENtNtNtBa_6traits8iterator8Iterator7collectINtB10_3VecB1J_EECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0) #51, !noalias !13913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13912
  call void @_RNvNtCsgZlHlzpN0xi_7uu_tail4args6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.p) #45, !noalias !13912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13912
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i = load ptr, ptr %i.ap, align 8, !noalias !13912, !nonnull !12, !noundef !12 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val39.i.i = load i64, ptr %i.aq, align 8, !noalias !13912, !noundef !12 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13916)
  %i.ar = mul nuw nsw i64 %.val39.i.i, 24         ; 2 uses
  %i.as = icmp eq i64 %.val39.i.i, 0              ; 2 uses
  br i1 %i.as, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13917
  %i.at = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ar, i64 noundef range(i64 1, 9) 8) #45, !noalias !13917 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ar) #52, !noalias !13918
  unreachable

bb.g:                                             ; preds = %bb.e, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i
  %.sroa.0.034.i.i.i.i = phi ptr [ %i.av, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val.i.i, %bb.e ] ; 3 uses
  %.sroa.7.033.i.i.i.i = phi i64 [ %i.aw, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %.sroa.10.032.i.i.i.i = phi i64 [ %1, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val39.i.i, %bb.e ]
  %1 = add nsw i64 %.sroa.10.032.i.i.i.i, -1      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i.i.i, i64 24
  %i.aw = add nuw nsw i64 %.sroa.7.033.i.i.i.i, 1
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.sroa.7.033.i.i.i.i ; 3 uses
  %i.ay = getelementptr i8, ptr %.sroa.0.034.i.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !13916, !noalias !13919, !nonnull !12, !noundef !12
  %i.az = getelementptr i8, ptr %.sroa.0.034.i.i.i.i, i64 16
  %.val13.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !13916, !noalias !13919, !noundef !12 ; 6 uses
  %i.ba = icmp eq i64 %.val13.i.i.i.i, 0
  br i1 %i.ba, label %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !13920
  %i.bb = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val13.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !13920 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val13.i.i.i.i) #52, !noalias !13921
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %.val.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val13.i.i.i.i, i1 false), !noalias !13922
  br label %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.j, %bb.g
  %.sroa.5.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.j ], [ inttoptr (i64 1 to ptr), %bb.g ]
  store i64 %.val13.i.i.i.i, ptr %i.ax, align 8, !noalias !13918
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 8, !noalias !13918
  %.sroa.524.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.val13.i.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i.i, align 8, !noalias !13918
  %i.bd = icmp eq i64 %1, 0
  br i1 %i.bd, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.g

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.10.0.i44.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit ], [ %i.at, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i ]
  store i64 %.val39.i.i, ptr %i.o, align 8, !alias.scope !13923, !noalias !13912
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.10.0.i44.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13923, !noalias !13912
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.val39.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13923, !noalias !13912
  call fastcc void @_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEB1Z_ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.q, ptr noalias nofree noundef align 8 dereferenceable(712) %i.p, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o) #45, !noalias !13912
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder7builder7command7CommandECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(712) %i.p) #45, !noalias !13912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13912
  %i.be = load i64, ptr %i.q, align 8, !range !13, !noalias !13912, !noundef !12
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false), !noalias !13912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13912
  call void @_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail4argsNtB5_8Settings4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m) #45, !noalias !13912
  %i.bg = load i64, ptr %i.l, align 8, !range !69, !noalias !13912, !noundef !12 ; 5 uses
  %i.bh = icmp eq i64 %i.bg, -2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !13912 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !13912 ; 5 uses
  br i1 %i.bh, label %bb.l, label %.thread57.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13912
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.q) #45, !noalias !13912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13912
  br label %bb.n

bb.m:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !13912, !nonnull !12, !align !23, !noundef !12
  %i.bo = call { ptr, ptr } @_RNvXsp_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCsgNwXemyrBWj_12clap_builder5error5ErrorE4from(ptr noalias noundef nonnull align 8 %i.bn) #45, !noalias !13912 ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bp, ptr %i.br, align 8, !noalias !13912
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.bq, ptr %i.bs, align 8, !noalias !13912
  store i64 -2, ptr %i.n, align 8, !noalias !13912
  %i.bt = icmp ult i64 %.val39.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.bt)
  %i.bu = and i64 %.val39.i.i, 576460752303423486
  %switch.i.i = icmp eq i64 %i.bu, 2
  br i1 %switch.i.i, label %bb.q, label %bb.p

.thread57.i.i:                                    ; preds = %bb.k
  %.sroa.630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.630.0..sroa_idx.i.i, i64 56, i1 false), !noalias !13912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13912
  store i64 %i.bg, ptr %i.n, align 8, !noalias !13912
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bj, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !13912
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.bl, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !13912
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.q) #45, !noalias !13912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13912
  %i.bv = icmp ult i64 %.val39.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.bv)
  %i.bw = and i64 %.val39.i.i, 576460752303423486
  %switch58.i.i = icmp eq i64 %i.bw, 2
  br i1 %switch58.i.i, label %bb.r, label %bb.p

.thread.i.i:                                      ; preds = %bb.t, %.critedge.i.i
  %.sroa.16.4.i = phi ptr [ %i.cn, %bb.t ], [ %i.bl, %.critedge.i.i ]
  %.sroa.11.4.i = phi ptr [ %i.cl, %bb.t ], [ %i.bj, %.critedge.i.i ]
  %.sroa.0.4.i = phi i64 [ -2, %bb.t ], [ %i.bg, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13912
  br label %.lr.ph.i.i.i.preheader.i.i

bb.n:                                             ; preds = %bb.p, %bb.l
  %.sroa.16.0.i = phi ptr [ %.sroa.529.0.copyload.i70.i, %bb.p ], [ %i.bl, %bb.l ] ; 2 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.428.0.copyload.i68.i, %bb.p ], [ %i.bj, %bb.l ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.cd, %bb.p ], [ -2, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13912
  call void @llvm.experimental.noalias.scope.decl(metadata !13924)
  call void @llvm.experimental.noalias.scope.decl(metadata !13925)
  br i1 %i.as, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.n, %.thread.i.i
  %.sroa.16.1.i = phi ptr [ %.sroa.16.4.i, %.thread.i.i ], [ %.sroa.16.0.i, %bb.n ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.4.i, %.thread.i.i ], [ %.sroa.11.0.i, %bb.n ]
  %.sroa.0.172.i = phi i64 [ %.sroa.0.4.i, %.thread.i.i ], [ %.sroa.0.0.i, %bb.n ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.by, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13926)
  %.val.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !range !19, !alias.scope !13927, !noalias !13928, !noundef !12 ; 2 uses
  %i.bz = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !13929, !noalias !13928, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !13930
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.cb = icmp eq i64 %i.by, %.val39.i.i
  br i1 %i.cb, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.n
  %.sroa.16.2.i = phi ptr [ %.sroa.16.0.i, %bb.n ], [ %.sroa.16.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.11.2.i = phi ptr [ %.sroa.11.0.i, %bb.n ], [ %.sroa.11.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.273.i = phi i64 [ %.sroa.0.0.i, %bb.n ], [ %.sroa.0.172.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.r, align 8, !range !19, !alias.scope !13924, !noalias !13912, !noundef !12 ; 2 uses
  %i.cc = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cc, label %_RINvNtCsgZlHlzpN0xi_7uu_tail4args10parse_argsINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBM_6cloned6ClonedINtNtNtBQ_5slice4iter4IterB2n_EEEECsl8pJiQOn4hA_9coreutils.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.sink.split.i.i

bb.p:                                             ; preds = %.thread57.i.i, %bb.m
  %.sroa.529.0.copyload.i70.i = phi ptr [ %i.bl, %.thread57.i.i ], [ %i.bq, %bb.m ]
  %.sroa.428.0.copyload.i68.i = phi ptr [ %i.bj, %.thread57.i.i ], [ %i.bp, %bb.m ]
  %i.cd = phi i64 [ %i.bg, %.thread57.i.i ], [ -2, %bb.m ]
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.21.0..sroa_idx.i, i64 56, i1 false), !noalias !13931
  br label %bb.n

bb.q:                                             ; preds = %bb.s, %bb.m
  %.sroa.529.0.copyload.i71.i = phi ptr [ %i.bl, %bb.s ], [ %i.bq, %bb.m ]
  %.sroa.428.0.copyload.i69.i = phi ptr [ %i.bj, %bb.s ], [ %i.bp, %bb.m ]
  %i.ce = phi i64 [ %i.bg, %bb.s ], [ -2, %bb.m ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13912
  %i.cg = icmp samesign ugt i64 %.val39.i.i, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  %.sroa.016.0.i.i = select i1 %i.cg, ptr %i.ch, ptr null
  call void @_RNvNtCsgZlHlzpN0xi_7uu_tail4args14parse_obsolete(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.016.0.i.i) #45, !noalias !13912
  %i.ci = load i64, ptr %i.k, align 8, !range !13932, !noalias !13912, !noundef !12 ; 3 uses
  %i.cj = icmp eq i64 %i.ci, -3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !13912 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !13912 ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.r:                                             ; preds = %.thread57.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !noalias !13912, !noundef !12
  %.not37.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !13912, !nonnull !12, !noundef !12
  %i.cs = load i8, ptr %i.cr, align 1, !noalias !13912, !noundef !12
  %.not50.i.i = icmp eq i8 %i.cs, 43
  br i1 %.not50.i.i, label %bb.q, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.s, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i.i, i64 56, i1 false), !noalias !13931
  br label %.thread.i.i

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13912
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args8SettingsINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(80) %i.n) #45, !noalias !13912
  br label %.thread.i.i

bb.u:                                             ; preds = %bb.q
  %.sroa.635.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.635.0..sroa_idx.i.i, i64 56, i1 false), !noalias !13912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13912
  %.not38.i.i = icmp eq i64 %i.ci, -2
  br i1 %.not38.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, i64 56, i1 false), !noalias !13931
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args8SettingsINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(80) %i.n) #45, !noalias !13912
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %.sroa.21.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.21.0..sroa_idx53.i, i64 56, i1 false), !noalias !13931
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.16.5.i = phi ptr [ %.sroa.529.0.copyload.i71.i, %bb.w ], [ %i.cn, %bb.v ] ; 2 uses
  %.sroa.11.5.i = phi ptr [ %.sroa.428.0.copyload.i69.i, %bb.w ], [ %i.cl, %bb.v ] ; 2 uses
  %.sroa.0.5.i = phi i64 [ %i.ce, %bb.w ], [ %i.ci, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13912
  call void @llvm.experimental.noalias.scope.decl(metadata !13933)
  call void @llvm.experimental.noalias.scope.decl(metadata !13934)
  br label %.lr.ph.i.i.i42.i.i

.lr.ph.i.i.i42.i.i:                               ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i46.i.i, %bb.x
  %.sroa.0.03.i.i.i43.i.i = phi i64 [ %i.cu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i46.i.i ], [ 0, %bb.x ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.03.i.i.i43.i.i ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.0.03.i.i.i43.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13935)
  %.val.i.i.i.i44.i.i = load i64, ptr %i.ct, align 8, !range !19, !alias.scope !13936, !noalias !13937, !noundef !12 ; 2 uses
end_hunk_3
