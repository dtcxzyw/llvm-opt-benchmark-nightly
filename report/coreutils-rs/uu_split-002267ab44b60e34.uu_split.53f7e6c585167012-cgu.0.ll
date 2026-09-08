Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_split-002267ab44b60e34.uu_split.53f7e6c585167012-cgu.0?download=true
inline.NumInlined: 1204
inline.NumDeleted: 607
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs8_NtCs7cXCwYFNYaI_8uu_split9filenamesNtB5_11SuffixErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %i.eu = extractvalue { ptr, i64 } %i.et, 0
  %i.ev = extractvalue { ptr, i64 } %i.et, 1      ; 16 uses
  %.not.i = icmp slt i64 %i.ev, 0
  br i1 %.not.i, label %bb.at, label %bb.ag, !prof !19

bb.ag:                                            ; preds = %bb.af
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.thread, label %bb.ah

.thread:                                          ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit226

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3985
  %i.ex = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ev, i64 noundef range(i64 1, 9) 1) #26, !noalias !3985 ; 18 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.at, label %bb.au

.loopexit:                                        ; preds = %.lr.ph.i, %bb.i, %bb.h, %.lr.ph141.i, %.preheader111.i, %bb.m, %bb.n, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs7cXCwYFNYaI_8uu_split.exit, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload153, i64 noundef %.sroa.8.0.copyload156) #28
  %i.ez = load i8, ptr %i.w, align 8, !range !15, !noundef !8
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.ak, label %bb.al

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.j, %bb.k, %bb.o, %bb.p, %.preheader.i, %.preheader114.i
  %.sroa.15160.0 = phi i64 [ %i.ci, %bb.p ], [ %i.bl, %bb.k ], [ %i.bz, %bb.o ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.bc, %bb.j ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, i64 noundef %.sroa.15160.0) #26
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fb = icmp eq i64 %.sroa.0.0.copyload150, 0
  br i1 %i.fb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload153, i64 noundef %.sroa.0.0.copyload150, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3986
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit

bb.ak:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.sroa.0.0.copyload150, ptr %i.v, align 8
  %.sroa.5.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.5.0.copyload153, ptr %.sroa.5.0..sroa_idx151, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.8.0.copyload156, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit

bb.al:                                            ; preds = %.loopexit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fd = load double, ptr %i.fc, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, double noundef %i.fd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ai

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit: ; preds = %bb.aj, %bb.ai, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.z, ptr %i.t, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.fe = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !nonnull !8, !align !14, !noundef !8
  %i.fh = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.fe, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fg, ptr noundef nonnull @52, ptr noundef nonnull %i.t) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  %.val.i101 = load i64, ptr %i.z, align 8, !range !13, !alias.scope !3987, !noundef !8 ; 2 uses
  %i.fi = icmp eq i64 %.val.i101, 0
  br i1 %i.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103, label %bb.am

bb.am:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i102 = load ptr, ptr %i.fj, align 8, !alias.scope !3987, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i102, i64 noundef %.val.i101, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3987
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.an

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103
  %.sroa.0.1.in = phi i1 [ %i.fh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103 ], [ %i.fs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109 ], [ %i.id, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149 ]
  ret i1 %.sroa.0.1.in

.loopexit219:                                     ; preds = %.lr.ph.i67, %bb.x, %bb.w, %.lr.ph141.i77, %.preheader111.i84, %bb.ab, %bb.ac, %.lr.ph150.i92, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs7cXCwYFNYaI_8uu_split.exit65, %bb.s, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5163.0.copyload165, i64 noundef %.sroa.8167.0.copyload169) #28
  %i.fk = load i8, ptr %i.p, align 8, !range !15, !noundef !8
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.aq, label %bb.ar

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit99: ; preds = %bb.y, %bb.z, %bb.ad, %bb.ae, %.preheader.i90, %.preheader114.i75
  %.sroa.15174.0 = phi i64 [ %i.eq, %bb.ae ], [ %i.dt, %bb.z ], [ %i.eh, %bb.ad ], [ 0, %.preheader.i90 ], [ 0, %.preheader114.i75 ], [ %i.dk, %bb.y ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, i64 noundef %.sroa.15174.0) #26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 37, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fm = icmp eq i64 %.sroa.0161.0.copyload162, 0
  br i1 %i.fm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5163.0.copyload165, i64 noundef %.sroa.0161.0.copyload162, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3988
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106

bb.aq:                                            ; preds = %.loopexit219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0161.0.copyload162, ptr %i.o, align 8
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5163.0.copyload165, ptr %.sroa.5163.0..sroa_idx, align 8
  %.sroa.8167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.8167.0.copyload169, ptr %.sroa.8167.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 37, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106

bb.ar:                                            ; preds = %.loopexit219
  %i.fn = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, double noundef %i.fo) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ao

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106: ; preds = %bb.ap, %bb.ao, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.s, ptr %i.m, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.fp = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !8, !align !14, !noundef !8
  %i.fs = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.fp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fr, ptr noundef nonnull @52, ptr noundef nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  %.val.i107 = load i64, ptr %i.s, align 8, !range !13, !alias.scope !3989, !noundef !8 ; 2 uses
  %i.ft = icmp eq i64 %.val.i107, 0
  br i1 %i.ft, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109, label %bb.as

bb.as:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106
  %i.fu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i108 = load ptr, ptr %i.fu, align 8, !alias.scope !3989, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i108, i64 noundef %.val.i107, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3989
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.an

bb.at:                                            ; preds = %bb.af, %bb.ah
  %.sroa.4.0.ph = phi i64 [ 1, %bb.ah ], [ 0, %bb.af ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.ev) #29
  unreachable

bb.au:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr align 1 %i.eu, i64 %i.ev, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %cond = icmp eq i64 %i.ev, 1
  %i.fv = load i8, ptr %i.ex, align 1, !alias.scope !3990, !noalias !3991 ; 2 uses
  br i1 %cond, label %bb.av, label %thread-pre-split.i141

bb.av:                                            ; preds = %bb.au
  switch i8 %i.fv, label %bb.bc [
    i8 43, label %.loopexit226
    i8 45, label %.loopexit226
  ]

thread-pre-split.i141:                            ; preds = %bb.au
  switch i8 %i.fv, label %bb.bc [
    i8 43, label %bb.aw
    i8 45, label %bb.ax
  ]

bb.aw:                                            ; preds = %thread-pre-split.i141
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fx = add nsw i64 %i.ev, -1
  br label %bb.bc

bb.ax:                                            ; preds = %thread-pre-split.i141
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ex, i64 1 ; 2 uses
  %i.fz = add nsw i64 %i.ev, -1                   ; 3 uses
  %i.ga = icmp samesign ult i64 %i.ev, 17
  br i1 %i.ga, label %.preheader114.i119, label %.lr.ph.i111

.preheader114.i119:                               ; preds = %bb.ax
  %.not103137.i120 = icmp eq i64 %i.fz, 0
  br i1 %.not103137.i120, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph141.i121

.lr.ph.i111:                                      ; preds = %bb.ax, %bb.ba
  %.sroa.0.1136.i112 = phi ptr [ %i.gb, %bb.ba ], [ %i.fy, %bb.ax ] ; 2 uses
  %.sroa.26.1135.i113 = phi i64 [ %i.gc, %bb.ba ], [ %i.fz, %bb.ax ]
  %.sroa.084.0134.i114 = phi i64 [ %i.gn, %bb.ba ], [ 0, %bb.ax ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i112, i64 1
  %i.gc = add nsw i64 %.sroa.26.1135.i113, -1     ; 2 uses
  %i.gd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i114, i64 10) ; 2 uses
  %i.ge = extractvalue { i64, i1 } %i.gd, 0
  %i.gf = extractvalue { i64, i1 } %i.gd, 1
  br i1 %i.gf, label %.loopexit226, label %bb.ay, !prof !9

bb.ay:                                            ; preds = %.lr.ph.i111
  %i.gg = load i8, ptr %.sroa.0.1136.i112, align 1, !alias.scope !3990, !noalias !3991, !noundef !8
  %i.gh = zext i8 %i.gg to i32
  %i.gi = add nsw i32 %i.gh, -48                  ; 2 uses
  %i.gj = icmp ult i32 %i.gi, 10
  br i1 %i.gj, label %bb.az, label %.loopexit226

bb.az:                                            ; preds = %bb.ay
  %i.gk = zext nneg i32 %i.gi to i64
  %i.gl = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ge, i64 %i.gk) ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  br i1 %i.gm, label %.loopexit226, label %bb.ba, !prof !9

bb.ba:                                            ; preds = %bb.az
  %i.gn = extractvalue { i64, i1 } %i.gl, 0       ; 2 uses
  %.not102.i116 = icmp eq i64 %i.gc, 0
  br i1 %.not102.i116, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph.i111

.lr.ph141.i121:                                   ; preds = %.preheader114.i119, %bb.bb
  %.sroa.0.2140.i122 = phi ptr [ %i.gu, %bb.bb ], [ %i.fy, %.preheader114.i119 ] ; 2 uses
  %.sroa.26.2139.i123 = phi i64 [ %i.gt, %bb.bb ], [ %i.fz, %.preheader114.i119 ]
  %.sroa.084.2138.i124 = phi i64 [ %i.gw, %bb.bb ], [ 0, %.preheader114.i119 ]
  %i.go = load i8, ptr %.sroa.0.2140.i122, align 1, !alias.scope !3990, !noalias !3991, !noundef !8
  %i.gp = zext i8 %i.go to i32
  %i.gq = add nsw i32 %i.gp, -48                  ; 2 uses
  %i.gr = icmp ult i32 %i.gq, 10
  br i1 %i.gr, label %bb.bb, label %.loopexit226

bb.bb:                                            ; preds = %.lr.ph141.i121
  %i.gs = mul i64 %.sroa.084.2138.i124, 10
  %i.gt = add nsw i64 %.sroa.26.2139.i123, -1     ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i122, i64 1
  %i.gv = zext nneg i32 %i.gq to i64
  %i.gw = sub i64 %i.gs, %i.gv                    ; 2 uses
  %.not103.i125 = icmp eq i64 %i.gt, 0
  br i1 %.not103.i125, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph141.i121

bb.bc:                                            ; preds = %bb.av, %bb.aw, %thread-pre-split.i141
  %.sroa.26.0.i126 = phi i64 [ %i.fx, %bb.aw ], [ %i.ev, %thread-pre-split.i141 ], [ %i.ev, %bb.av ] ; 4 uses
  %.sroa.0.0.i127 = phi ptr [ %i.fw, %bb.aw ], [ %i.ex, %thread-pre-split.i141 ], [ %i.ex, %bb.av ] ; 2 uses
  %i.gx = icmp samesign ult i64 %.sroa.26.0.i126, 16
  br i1 %i.gx, label %.preheader.i134, label %.preheader111.i128

.preheader.i134:                                  ; preds = %bb.bc
  %.not105146.i135 = icmp eq i64 %.sroa.26.0.i126, 0
  br i1 %.not105146.i135, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph150.i136

.preheader111.i128:                               ; preds = %bb.bc, %bb.bf
  %.sroa.0.3145.i129 = phi ptr [ %i.gy, %bb.bf ], [ %.sroa.0.0.i127, %bb.bc ] ; 2 uses
  %.sroa.26.3144.i130 = phi i64 [ %i.gz, %bb.bf ], [ %.sroa.26.0.i126, %bb.bc ]
  %.sroa.084.3143.i131 = phi i64 [ %i.hk, %bb.bf ], [ 0, %bb.bc ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i129, i64 1
  %i.gz = add nsw i64 %.sroa.26.3144.i130, -1     ; 2 uses
  %i.ha = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i131, i64 10) ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 0
  %i.hc = extractvalue { i64, i1 } %i.ha, 1
  br i1 %i.hc, label %.loopexit226, label %bb.bd, !prof !9

bb.bd:                                            ; preds = %.preheader111.i128
  %i.hd = load i8, ptr %.sroa.0.3145.i129, align 1, !alias.scope !3990, !noalias !3991, !noundef !8
  %i.he = zext i8 %i.hd to i32
  %i.hf = add nsw i32 %i.he, -48                  ; 2 uses
  %i.hg = icmp ult i32 %i.hf, 10
  br i1 %i.hg, label %bb.be, label %.loopexit226

bb.be:                                            ; preds = %bb.bd
  %i.hh = zext nneg i32 %i.hf to i64
  %i.hi = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hb, i64 %i.hh) ; 2 uses
  %i.hj = extractvalue { i64, i1 } %i.hi, 1
  br i1 %i.hj, label %.loopexit226, label %bb.bf, !prof !9

bb.bf:                                            ; preds = %bb.be
  %i.hk = extractvalue { i64, i1 } %i.hi, 0       ; 2 uses
  %.not104.i133 = icmp eq i64 %i.gz, 0
  br i1 %.not104.i133, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.preheader111.i128

.lr.ph150.i136:                                   ; preds = %.preheader.i134, %bb.bg
  %.sroa.0.4149.i137 = phi ptr [ %i.hr, %bb.bg ], [ %.sroa.0.0.i127, %.preheader.i134 ] ; 2 uses
  %.sroa.26.4148.i138 = phi i64 [ %i.hq, %bb.bg ], [ %.sroa.26.0.i126, %.preheader.i134 ]
  %.sroa.084.4147.i139 = phi i64 [ %i.ht, %bb.bg ], [ 0, %.preheader.i134 ]
  %i.hl = load i8, ptr %.sroa.0.4149.i137, align 1, !alias.scope !3990, !noalias !3991, !noundef !8
  %i.hm = zext i8 %i.hl to i32
  %i.hn = add nsw i32 %i.hm, -48                  ; 2 uses
  %i.ho = icmp ult i32 %i.hn, 10
  br i1 %i.ho, label %bb.bg, label %.loopexit226

bb.bg:                                            ; preds = %.lr.ph150.i136
  %i.hp = mul i64 %.sroa.084.4147.i139, 10
  %i.hq = add nsw i64 %.sroa.26.4148.i138, -1     ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i137, i64 1
  %i.hs = zext nneg i32 %i.hn to i64
  %i.ht = add i64 %i.hp, %i.hs                    ; 2 uses
  %.not105.i140 = icmp eq i64 %i.hq, 0
  br i1 %.not105.i140, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph150.i136

.loopexit226:                                     ; preds = %.lr.ph.i111, %bb.az, %bb.ay, %.lr.ph141.i121, %.preheader111.i128, %bb.bd, %bb.be, %.lr.ph150.i136, %bb.av, %bb.av, %.thread
  %.ph = phi ptr [ %i.ex, %.preheader111.i128 ], [ %i.ex, %.lr.ph141.i121 ], [ %i.ex, %.lr.ph150.i136 ], [ %i.ex, %bb.av ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.ex, %bb.av ], [ %i.ex, %bb.be ], [ %i.ex, %bb.bd ], [ %i.ex, %bb.ay ], [ %i.ex, %bb.az ], [ %i.ex, %.lr.ph.i111 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ev) #28
  %i.hu = load i8, ptr %i.j, align 8, !range !15, !noundef !8
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.bj, label %bb.bk

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143: ; preds = %bb.ba, %bb.bb, %bb.bf, %bb.bg, %.preheader.i134, %.preheader114.i119
  %.sroa.15181.0 = phi i64 [ %i.gw, %bb.bb ], [ 0, %.preheader114.i119 ], [ %i.ht, %bb.bg ], [ 0, %.preheader.i134 ], [ %i.hk, %bb.bf ], [ %i.gn, %bb.ba ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 6, i64 noundef %.sroa.15181.0) #26
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143
  %i.hw = phi ptr [ %.ph, %bb.bk ], [ %i.ex, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.hx = icmp eq i64 %i.ev, 0
  br i1 %i.hx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3992
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146

bb.bj:                                            ; preds = %.loopexit226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.ev, ptr %i.i, align 8
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.ph, ptr %.sroa.5176.0..sroa_idx, align 8
  %.sroa.8177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ev, ptr %.sroa.8177.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146

bb.bk:                                            ; preds = %.loopexit226
  %i.hy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hz = load double, ptr %i.hy, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 6, double noundef %i.hz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bh

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146: ; preds = %bb.bi, %bb.bh, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.l, ptr %i.g, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.ia = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !nonnull !8, !align !14, !noundef !8
  %i.id = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ia, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ic, ptr noundef nonnull @52, ptr noundef nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !3993)
  %.val.i147 = load i64, ptr %i.l, align 8, !range !13, !alias.scope !3993, !noundef !8 ; 2 uses
  %i.ie = icmp eq i64 %.val.i147, 0
  br i1 %i.ie, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146
  %i.if = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i148 = load ptr, ptr %i.if, align 8, !alias.scope !3993, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i148, i64 noundef %.val.i147, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3993
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.an
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs7cXCwYFNYaI_8uu_split(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.d, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @165, ptr %i.e, align 8
  %i.f = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs7cXCwYFNYaI_8uu_split.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #25
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs7cXCwYFNYaI_8uu_split.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 5) #26
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7tKScEop1B6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !20, !noundef !8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @171) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 4) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3998)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3998, !noundef !8 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !13, !alias.scope !3999, !noundef !8
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1) #26
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3998, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
end_hunk_0
