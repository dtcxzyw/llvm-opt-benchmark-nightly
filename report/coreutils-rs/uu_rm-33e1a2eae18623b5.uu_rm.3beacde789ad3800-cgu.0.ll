Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_rm-33e1a2eae18623b5.uu_rm.3beacde789ad3800-cgu.0?download=true
inline.NumInlined: 1389
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvCs58W9blM4WiW_5uu_rm18handle_parse_error:bb.a
  %i.if = icmp eq i64 %i.ie, -1
  br i1 %i.if, label %bb.az, label %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit

bb.az:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB28_ECs58W9blM4WiW_5uu_rm.exit.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !958, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !958
  store ptr %i.ih, ptr %i.c, align 8, !noalias !1037
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 249
  %i.ij = load i8, ptr %i.ii, align 1, !range !957, !alias.scope !1036, !noalias !958, !noundef !5
  switch i8 %i.ij, label %bb.bb [
    i8 12, label %bb.ba
    i8 14, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.ik = call { ptr, ptr } @_RNvXsp_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCsgNwXemyrBWj_12clap_builder5error5ErrorE4from(ptr noalias noundef nonnull align 8 %i.ih) #21, !noalias !958
  br label %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit.thread

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1037
  %i.il = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #21, !noalias !958 ; 2 uses
  %i.im = extractvalue { ptr, i64 } %i.il, 0
  %i.in = extractvalue { ptr, i64 } %i.il, 1
  call void @_RNvMs0_NtNtCsh036I4OHgIr_6uucore4mods17clap_localizationNtB5_14ErrorFormatter3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.im, i64 noundef %i.in) #21, !noalias !958
  %i.io = call noundef i32 @_RNvMs0_NtNtCsh036I4OHgIr_6uucore4mods17clap_localizationNtB5_14ErrorFormatter11print_error(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i32 noundef 1) #21, !noalias !958
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1038
  %i.ip = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #21, !noalias !1038 ; 6 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.bc, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, !prof !12

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24, !noalias !1038
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.bb
  store i64 0, ptr %i.ip, align 8, !noalias !958
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !958
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !958
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  store i32 %i.io, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1037
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgNwXemyrBWj_12clap_builder5error5ErrorECs58W9blM4WiW_5uu_rm(ptr nonnull align 8 %i.ih) #21, !noalias !958
  %i.ir = insertvalue { ptr, ptr } poison, ptr %i.ip, 0
  %i.is = insertvalue { ptr, ptr } %i.ir, ptr @13, 1
  br label %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit.thread

_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit.thread: ; preds = %bb.ba, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i
  %.merged.i.i = phi { ptr, ptr } [ %i.is, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i ], [ %i.ik, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !958
  br label %.thread

_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB28_ECs58W9blM4WiW_5uu_rm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !1039
  %.pr = load i64, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !958
  %i.it = icmp eq i64 %.pr, -1
  br i1 %i.it, label %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit..thread_crit_edge, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECs58W9blM4WiW_5uu_rm.exit

_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit..thread_crit_edge: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert315 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre316 = load ptr, ptr %.phi.trans.insert315, align 8
  %i.iu = insertvalue { ptr, ptr } poison, ptr %.pre, 0
  %i.iv = insertvalue { ptr, ptr } %i.iu, ptr %.pre316, 1
  br label %.thread

bb.bd:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style24locale_aware_escape_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ak, i24 1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style24locale_aware_escape_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ak, i24 257) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.iw = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() #21 ; 2 uses
  %i.ix = extractvalue { ptr, i64 } %i.iw, 0
  %i.iy = extractvalue { ptr, i64 } %i.iw, 1      ; 16 uses
  %.not.i50 = icmp slt i64 %i.iy, 0
  br i1 %.not.i50, label %bb.bg, label %bb.be, !prof !22

bb.be:                                            ; preds = %bb.bd
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %.thread200, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.be
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1040
  %i.ja = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.iy, i64 noundef range(i64 1, 9) 1) #21, !noalias !1040 ; 18 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.bg, label %bb.bh

.thread:                                          ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit.thread, %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit..thread_crit_edge, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECs58W9blM4WiW_5uu_rm.exit
  %.merged241 = phi { ptr, ptr } [ %i.jc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECs58W9blM4WiW_5uu_rm.exit ], [ %i.iv, %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit..thread_crit_edge ], [ %.merged.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bf

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECs58W9blM4WiW_5uu_rm.exit: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization33handle_clap_result_with_exit_codeINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringERB24_ECs58W9blM4WiW_5uu_rm.exit
  %i.jc = call { ptr, ptr } @_RNvXso_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromlE4from(i32 noundef 1) #21
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.n) #21
  br label %.thread

bb.bf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit143, %.thread
  %.merged = phi { ptr, ptr } [ %i.rd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs58W9blM4WiW_5uu_rm.exit143 ], [ %.merged241, %.thread ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgNwXemyrBWj_12clap_builder5error5ErrorECs58W9blM4WiW_5uu_rm(ptr nonnull %0) #21
  ret { ptr, ptr } %.merged

bb.bg:                                            ; preds = %bb.bd, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0182.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.bd ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0182.ph, i64 %i.iy) #24
  unreachable

bb.bh:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ja, ptr align 1 %i.ix, i64 %i.iy, i1 false)
  %cond = icmp eq i64 %i.iy, 1
  %i.jd = load i8, ptr %i.ja, align 1, !alias.scope !1041, !noalias !1042 ; 2 uses
  br i1 %cond, label %bb.bi, label %thread-pre-split.i

bb.bi:                                            ; preds = %bb.bh
  switch i8 %i.jd, label %bb.bp [
    i8 43, label %.thread200
    i8 45, label %.thread200
  ]

thread-pre-split.i:                               ; preds = %bb.bh
  switch i8 %i.jd, label %bb.bp [
    i8 43, label %bb.bj
    i8 45, label %bb.bk
  ]

bb.bj:                                            ; preds = %thread-pre-split.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.jf = add nsw i64 %i.iy, -1
  br label %bb.bp

bb.bk:                                            ; preds = %thread-pre-split.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 1 ; 2 uses
  %i.jh = add nsw i64 %i.iy, -1                   ; 2 uses
  %i.ji = icmp samesign ult i64 %i.iy, 17
  br i1 %i.ji, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk, %bb.bn
  %.sroa.0.1136.i = phi ptr [ %i.jj, %bb.bn ], [ %i.jg, %bb.bk ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.jk, %bb.bn ], [ %i.jh, %bb.bk ]
  %.sroa.084.0134.i = phi i64 [ %i.jv, %bb.bn ], [ 0, %bb.bk ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.jk = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.jl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.jm = extractvalue { i64, i1 } %i.jl, 0
  %i.jn = extractvalue { i64, i1 } %i.jl, 1
  br i1 %i.jn, label %.thread200, label %bb.bl, !prof !12

bb.bl:                                            ; preds = %.lr.ph.i
  %i.jo = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !1041, !noalias !1042, !noundef !5
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add nsw i32 %i.jp, -48                  ; 2 uses
  %i.jr = icmp ult i32 %i.jq, 10
  br i1 %i.jr, label %bb.bm, label %.thread200

bb.bm:                                            ; preds = %bb.bl
  %i.js = zext nneg i32 %i.jq to i64
  %i.jt = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.jm, i64 %i.js) ; 2 uses
  %i.ju = extractvalue { i64, i1 } %i.jt, 1
  br i1 %i.ju, label %.thread200, label %bb.bn, !prof !12

bb.bn:                                            ; preds = %bb.bm
  %i.jv = extractvalue { i64, i1 } %i.jt, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.jk, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.bk, %bb.bo
  %.sroa.0.2140.i = phi ptr [ %i.kc, %bb.bo ], [ %i.jg, %bb.bk ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.kb, %bb.bo ], [ %i.jh, %bb.bk ]
  %.sroa.084.2138.i = phi i64 [ %i.ke, %bb.bo ], [ 0, %bb.bk ]
  %i.jw = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !1041, !noalias !1042, !noundef !5
  %i.jx = zext i8 %i.jw to i32
  %i.jy = add nsw i32 %i.jx, -48                  ; 2 uses
  %i.jz = icmp ult i32 %i.jy, 10
  br i1 %i.jz, label %bb.bo, label %.thread200

bb.bo:                                            ; preds = %.lr.ph141.i
  %i.ka = mul i64 %.sroa.084.2138.i, 10
  %i.kb = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.kd = zext nneg i32 %i.jy to i64
  %i.ke = sub i64 %i.ka, %i.kd                    ; 2 uses
  %.not103.i = icmp eq i64 %i.kb, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.bp:                                            ; preds = %bb.bi, %bb.bj, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.jf, %bb.bj ], [ %i.iy, %thread-pre-split.i ], [ %i.iy, %bb.bi ] ; 3 uses
  %.sroa.0.0.i54 = phi ptr [ %i.je, %bb.bj ], [ %i.ja, %thread-pre-split.i ], [ %i.ja, %bb.bi ] ; 2 uses
  %i.kf = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.kf, label %.lr.ph150.i, label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.bp, %bb.bs
  %.sroa.0.3145.i = phi ptr [ %i.kg, %bb.bs ], [ %.sroa.0.0.i54, %bb.bp ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.kh, %bb.bs ], [ %.sroa.26.0.i, %bb.bp ]
  %.sroa.084.3143.i = phi i64 [ %i.ks, %bb.bs ], [ 0, %bb.bp ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.kh = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.ki = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.kj = extractvalue { i64, i1 } %i.ki, 0
  %i.kk = extractvalue { i64, i1 } %i.ki, 1
  br i1 %i.kk, label %.thread200, label %bb.bq, !prof !12

bb.bq:                                            ; preds = %.preheader111.i
  %i.kl = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !1041, !noalias !1042, !noundef !5
  %i.km = zext i8 %i.kl to i32
  %i.kn = add nsw i32 %i.km, -48                  ; 2 uses
  %i.ko = icmp ult i32 %i.kn, 10
  br i1 %i.ko, label %bb.br, label %.thread200

bb.br:                                            ; preds = %bb.bq
  %i.kp = zext nneg i32 %i.kn to i64
  %i.kq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.kj, i64 %i.kp) ; 2 uses
  %i.kr = extractvalue { i64, i1 } %i.kq, 1
  br i1 %i.kr, label %.thread200, label %bb.bs, !prof !12

bb.bs:                                            ; preds = %bb.br
  %i.ks = extractvalue { i64, i1 } %i.kq, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.kh, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %bb.bp, %bb.bt
  %.sroa.0.4149.i = phi ptr [ %i.kz, %bb.bt ], [ %.sroa.0.0.i54, %bb.bp ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.ky, %bb.bt ], [ %.sroa.26.0.i, %bb.bp ]
  %.sroa.084.4147.i = phi i64 [ %i.lb, %bb.bt ], [ 0, %bb.bp ]
  %i.kt = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !1041, !noalias !1042, !noundef !5
  %i.ku = zext i8 %i.kt to i32
  %i.kv = add nsw i32 %i.ku, -48                  ; 2 uses
  %i.kw = icmp ult i32 %i.kv, 10
  br i1 %i.kw, label %bb.bt, label %.thread200

bb.bt:                                            ; preds = %.lr.ph150.i
  %i.kx = mul i64 %.sroa.084.4147.i, 10
  %i.ky = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.la = zext nneg i32 %i.kv to i64
  %i.lb = add i64 %i.kx, %i.la                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ky, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread200:                                       ; preds = %.lr.ph.i, %bb.bm, %bb.bl, %.lr.ph141.i, %.preheader111.i, %bb.bq, %bb.br, %.lr.ph150.i, %bb.bi, %bb.bi, %bb.be
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.be ], [ %i.ja, %.preheader111.i ], [ %i.ja, %.lr.ph150.i ], [ %i.ja, %bb.bi ], [ %i.ja, %.lr.ph141.i ], [ %i.ja, %bb.bi ], [ %i.ja, %bb.br ], [ %i.ja, %bb.bq ], [ %i.ja, %bb.bl ], [ %i.ja, %bb.bm ], [ %i.ja, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.iy) #20
  %i.lc = load i8, ptr %i.x, align 8, !range !10, !noundef !5
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.bw, label %bb.bx

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.bn, %bb.bo, %bb.bs, %bb.bt
  %.sroa.15154.0 = phi i64 [ %i.ks, %bb.bs ], [ %i.ke, %bb.bo ], [ %i.lb, %bb.bt ], [ %i.jv, %bb.bn ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 9, i64 noundef %.sroa.15154.0) #21
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bx, %bb.bw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.le = phi ptr [ %.ph, %bb.bw ], [ %.ph, %bb.bx ], [ %i.ja, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.03.0.not = phi i1 [ true, %bb.bw ], [ false, %bb.bx ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.li = load i64, ptr %i.lh, align 8, !noundef !5
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lg, i64 noundef %i.li) #21
  %i.lj = load i64, ptr %i.v, align 8, !range !15, !noundef !5 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8            ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ln = load i64, ptr %i.lm, align 8            ; 14 uses
  %.not.i55 = icmp slt i64 %i.ln, 0
  br i1 %.not.i55, label %bb.by, label %bb.bv, !prof !22

bb.bv:                                            ; preds = %bb.bu
  %i.lo = icmp eq i64 %i.ln, 0                    ; 3 uses
  br i1 %i.lo, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs58W9blM4WiW_5uu_rm.exit58.thread220, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i56

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i56: ; preds = %bb.bv
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1043
  %i.lp = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ln, i64 noundef range(i64 1, 9) 1) #21, !noalias !1043 ; 3 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.by, label %bb.cn

bb.bw:                                            ; preds = %.thread200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.iy, ptr %i.w, align 8
  %.sroa.5.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx150, align 8
  %.sroa.8151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.iy, ptr %.sroa.8151.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 9, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bu

bb.bx:                                            ; preds = %.thread200
  %i.lr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ls = load double, ptr %i.lr, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 9, double noundef %i.ls) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bu

bb.by:                                            ; preds = %bb.bu, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i56
  %.sroa.4175.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i56 ], [ 0, %bb.bu ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4175.0.ph, i64 %i.ln) #24
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs58W9blM4WiW_5uu_rm.exit58.thread220: ; preds = %bb.bv, %bb.cn
  %i.lt = phi ptr [ %i.lp, %bb.cn ], [ inttoptr (i64 1 to ptr), %bb.bv ] ; 8 uses
  %i.lu = icmp sgt i64 %i.lj, 0
  br i1 %i.lu, label %bb.bz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit

bb.bz:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs58W9blM4WiW_5uu_rm.exit58.thread220
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ll) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ll, i64 noundef %i.lj, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1044
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs58W9blM4WiW_5uu_rm.exit58.thread220, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  switch i64 %i.ln, label %thread-pre-split.i90 [
    i64 0, label %.loopexit250
    i64 1, label %bb.ca
  ]

bb.ca:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit
  %i.lv = load i8, ptr %i.lt, align 1, !alias.scope !1045, !noalias !1046, !noundef !5 ; 2 uses
  switch i8 %i.lv, label %bb.cb [
    i8 43, label %.loopexit250
    i8 45, label %.loopexit250
  ]

thread-pre-split.i90:                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs58W9blM4WiW_5uu_rm.exit
  %.pr.i91 = load i8, ptr %i.lt, align 1, !alias.scope !1045, !noalias !1046
  br label %bb.cb

bb.cb:                                            ; preds = %thread-pre-split.i90, %bb.ca
  %i.lw = phi i8 [ %.pr.i91, %thread-pre-split.i90 ], [ %i.lv, %bb.ca ]
  switch i8 %i.lw, label %bb.ci [
    i8 43, label %bb.cc
    i8 45, label %bb.cd
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  %i.ly = add nsw i64 %i.ln, -1
  br label %bb.ci

bb.cd:                                            ; preds = %bb.cb
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 1 ; 2 uses
  %i.ma = add nsw i64 %i.ln, -1                   ; 3 uses
  %i.mb = icmp samesign ult i64 %i.ln, 17
  br i1 %i.mb, label %.preheader114.i68, label %.lr.ph.i60

.preheader114.i68:                                ; preds = %bb.cd
  %.not103137.i69 = icmp eq i64 %i.ma, 0
  br i1 %.not103137.i69, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92, label %.lr.ph141.i70

.lr.ph.i60:                                       ; preds = %bb.cd, %bb.cg
  %.sroa.0.1136.i61 = phi ptr [ %i.mc, %bb.cg ], [ %i.lz, %bb.cd ] ; 2 uses
  %.sroa.26.1135.i62 = phi i64 [ %i.md, %bb.cg ], [ %i.ma, %bb.cd ]
  %.sroa.084.0134.i63 = phi i64 [ %i.mo, %bb.cg ], [ 0, %bb.cd ]
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i61, i64 1
  %i.md = add nsw i64 %.sroa.26.1135.i62, -1      ; 2 uses
  %i.me = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i63, i64 10) ; 2 uses
  %i.mf = extractvalue { i64, i1 } %i.me, 0
  %i.mg = extractvalue { i64, i1 } %i.me, 1
  br i1 %i.mg, label %.loopexit250, label %bb.ce, !prof !12

bb.ce:                                            ; preds = %.lr.ph.i60
  %i.mh = load i8, ptr %.sroa.0.1136.i61, align 1, !alias.scope !1045, !noalias !1046, !noundef !5
  %i.mi = zext i8 %i.mh to i32
  %i.mj = add nsw i32 %i.mi, -48                  ; 2 uses
  %i.mk = icmp ult i32 %i.mj, 10
  br i1 %i.mk, label %bb.cf, label %.loopexit250

bb.cf:                                            ; preds = %bb.ce
  %i.ml = zext nneg i32 %i.mj to i64
  %i.mm = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mf, i64 %i.ml) ; 2 uses
  %i.mn = extractvalue { i64, i1 } %i.mm, 1
  br i1 %i.mn, label %.loopexit250, label %bb.cg, !prof !12

bb.cg:                                            ; preds = %bb.cf
  %i.mo = extractvalue { i64, i1 } %i.mm, 0       ; 2 uses
  %.not102.i65 = icmp eq i64 %i.md, 0
  br i1 %.not102.i65, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92, label %.lr.ph.i60

.lr.ph141.i70:                                    ; preds = %.preheader114.i68, %bb.ch
  %.sroa.0.2140.i71 = phi ptr [ %i.mv, %bb.ch ], [ %i.lz, %.preheader114.i68 ] ; 2 uses
  %.sroa.26.2139.i72 = phi i64 [ %i.mu, %bb.ch ], [ %i.ma, %.preheader114.i68 ]
  %.sroa.084.2138.i73 = phi i64 [ %i.mx, %bb.ch ], [ 0, %.preheader114.i68 ]
  %i.mp = load i8, ptr %.sroa.0.2140.i71, align 1, !alias.scope !1045, !noalias !1046, !noundef !5
  %i.mq = zext i8 %i.mp to i32
  %i.mr = add nsw i32 %i.mq, -48                  ; 2 uses
  %i.ms = icmp ult i32 %i.mr, 10
  br i1 %i.ms, label %bb.ch, label %.loopexit250

bb.ch:                                            ; preds = %.lr.ph141.i70
  %i.mt = mul i64 %.sroa.084.2138.i73, 10
  %i.mu = add nsw i64 %.sroa.26.2139.i72, -1      ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i71, i64 1
  %i.mw = zext nneg i32 %i.mr to i64
  %i.mx = sub i64 %i.mt, %i.mw                    ; 2 uses
  %.not103.i74 = icmp eq i64 %i.mu, 0
  br i1 %.not103.i74, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92, label %.lr.ph141.i70

bb.ci:                                            ; preds = %bb.cc, %bb.cb
  %.sroa.26.0.i75 = phi i64 [ %i.ly, %bb.cc ], [ %i.ln, %bb.cb ] ; 4 uses
  %.sroa.0.0.i76 = phi ptr [ %i.lx, %bb.cc ], [ %i.lt, %bb.cb ] ; 2 uses
  %i.my = icmp samesign ult i64 %.sroa.26.0.i75, 16
  br i1 %i.my, label %.preheader.i83, label %.preheader111.i77

.preheader.i83:                                   ; preds = %bb.ci
  %.not105146.i84 = icmp eq i64 %.sroa.26.0.i75, 0
  br i1 %.not105146.i84, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92, label %.lr.ph150.i85

.preheader111.i77:                                ; preds = %bb.ci, %bb.cl
  %.sroa.0.3145.i78 = phi ptr [ %i.mz, %bb.cl ], [ %.sroa.0.0.i76, %bb.ci ] ; 2 uses
  %.sroa.26.3144.i79 = phi i64 [ %i.na, %bb.cl ], [ %.sroa.26.0.i75, %bb.ci ]
  %.sroa.084.3143.i80 = phi i64 [ %i.nl, %bb.cl ], [ 0, %bb.ci ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i78, i64 1
  %i.na = add nsw i64 %.sroa.26.3144.i79, -1      ; 2 uses
  %i.nb = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i80, i64 10) ; 2 uses
  %i.nc = extractvalue { i64, i1 } %i.nb, 0
  %i.nd = extractvalue { i64, i1 } %i.nb, 1
  br i1 %i.nd, label %.loopexit250, label %bb.cj, !prof !12

bb.cj:                                            ; preds = %.preheader111.i77
  %i.ne = load i8, ptr %.sroa.0.3145.i78, align 1, !alias.scope !1045, !noalias !1046, !noundef !5
  %i.nf = zext i8 %i.ne to i32
  %i.ng = add nsw i32 %i.nf, -48                  ; 2 uses
  %i.nh = icmp ult i32 %i.ng, 10
  br i1 %i.nh, label %bb.ck, label %.loopexit250

bb.ck:                                            ; preds = %bb.cj
  %i.ni = zext nneg i32 %i.ng to i64
  %i.nj = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.nc, i64 %i.ni) ; 2 uses
  %i.nk = extractvalue { i64, i1 } %i.nj, 1
  br i1 %i.nk, label %.loopexit250, label %bb.cl, !prof !12

bb.cl:                                            ; preds = %bb.ck
  %i.nl = extractvalue { i64, i1 } %i.nj, 0       ; 2 uses
  %.not104.i82 = icmp eq i64 %i.na, 0
  br i1 %.not104.i82, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit92, label %.preheader111.i77

.lr.ph150.i85:                                    ; preds = %.preheader.i83, %bb.cm
  %.sroa.0.4149.i86 = phi ptr [ %i.ns, %bb.cm ], [ %.sroa.0.0.i76, %.preheader.i83 ] ; 2 uses
  %.sroa.26.4148.i87 = phi i64 [ %i.nr, %bb.cm ], [ %.sroa.26.0.i75, %.preheader.i83 ]
  %.sroa.084.4147.i88 = phi i64 [ %i.nu, %bb.cm ], [ 0, %.preheader.i83 ]
  %i.nm = load i8, ptr %.sroa.0.4149.i86, align 1, !alias.scope !1045, !noalias !1046, !noundef !5
  %i.nn = zext i8 %i.nm to i32
  %i.no = add nsw i32 %i.nn, -48                  ; 2 uses
  %i.np = icmp ult i32 %i.no, 10
  br i1 %i.np, label %bb.cm, label %.loopexit250
end_hunk_0
begin_hunk_1_@_RNvXs3_Cs58W9blM4WiW_5uu_rmNtB5_7RmErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  br i1 %i.jl, label %bb.bh, label %.loopexit458

bb.bh:                                            ; preds = %bb.bg
  %i.jm = zext nneg i32 %i.jk to i64
  %i.jn = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.jg, i64 %i.jm) ; 2 uses
  %i.jo = extractvalue { i64, i1 } %i.jn, 1
  br i1 %i.jo, label %.loopexit458, label %bb.bi, !prof !12

bb.bi:                                            ; preds = %bb.bh
  %i.jp = extractvalue { i64, i1 } %i.jn, 0       ; 2 uses
  %.not102.i242 = icmp eq i64 %i.je, 0
  br i1 %.not102.i242, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit269, label %.lr.ph.i237

.lr.ph141.i247:                                   ; preds = %.preheader114.i245, %bb.bj
  %.sroa.0.2140.i248 = phi ptr [ %i.jw, %bb.bj ], [ %i.ja, %.preheader114.i245 ] ; 2 uses
  %.sroa.26.2139.i249 = phi i64 [ %i.jv, %bb.bj ], [ %i.jb, %.preheader114.i245 ]
  %.sroa.084.2138.i250 = phi i64 [ %i.jy, %bb.bj ], [ 0, %.preheader114.i245 ]
  %i.jq = load i8, ptr %.sroa.0.2140.i248, align 1, !alias.scope !3126, !noalias !3127, !noundef !5
  %i.jr = zext i8 %i.jq to i32
  %i.js = add nsw i32 %i.jr, -48                  ; 2 uses
  %i.jt = icmp ult i32 %i.js, 10
  br i1 %i.jt, label %bb.bj, label %.loopexit458

bb.bj:                                            ; preds = %.lr.ph141.i247
  %i.ju = mul i64 %.sroa.084.2138.i250, 10
  %i.jv = add nsw i64 %.sroa.26.2139.i249, -1     ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i248, i64 1
  %i.jx = zext nneg i32 %i.js to i64
  %i.jy = sub i64 %i.ju, %i.jx                    ; 2 uses
  %.not103.i251 = icmp eq i64 %i.jv, 0
  br i1 %.not103.i251, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit269, label %.lr.ph141.i247

bb.bk:                                            ; preds = %bb.be, %bb.bd
  %.sroa.26.0.i252 = phi i64 [ %i.iz, %bb.be ], [ %.sroa.8389.0.copyload391, %bb.bd ] ; 4 uses
  %.sroa.0.0.i253 = phi ptr [ %i.iy, %bb.be ], [ %.sroa.5385.0.copyload387, %bb.bd ] ; 2 uses
  %i.jz = icmp samesign ult i64 %.sroa.26.0.i252, 16
  br i1 %i.jz, label %.preheader.i260, label %.preheader111.i254

.preheader.i260:                                  ; preds = %bb.bk
  %.not105146.i261 = icmp eq i64 %.sroa.26.0.i252, 0
  br i1 %.not105146.i261, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit269, label %.lr.ph150.i262

.preheader111.i254:                               ; preds = %bb.bk, %bb.bn
  %.sroa.0.3145.i255 = phi ptr [ %i.ka, %bb.bn ], [ %.sroa.0.0.i253, %bb.bk ] ; 2 uses
  %.sroa.26.3144.i256 = phi i64 [ %i.kb, %bb.bn ], [ %.sroa.26.0.i252, %bb.bk ]
  %.sroa.084.3143.i257 = phi i64 [ %i.km, %bb.bn ], [ 0, %bb.bk ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i255, i64 1
  %i.kb = add nsw i64 %.sroa.26.3144.i256, -1     ; 2 uses
  %i.kc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i257, i64 10) ; 2 uses
  %i.kd = extractvalue { i64, i1 } %i.kc, 0
  %i.ke = extractvalue { i64, i1 } %i.kc, 1
  br i1 %i.ke, label %.loopexit458, label %bb.bl, !prof !12

bb.bl:                                            ; preds = %.preheader111.i254
  %i.kf = load i8, ptr %.sroa.0.3145.i255, align 1, !alias.scope !3126, !noalias !3127, !noundef !5
  %i.kg = zext i8 %i.kf to i32
  %i.kh = add nsw i32 %i.kg, -48                  ; 2 uses
  %i.ki = icmp ult i32 %i.kh, 10
  br i1 %i.ki, label %bb.bm, label %.loopexit458

bb.bm:                                            ; preds = %bb.bl
  %i.kj = zext nneg i32 %i.kh to i64
  %i.kk = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.kd, i64 %i.kj) ; 2 uses
  %i.kl = extractvalue { i64, i1 } %i.kk, 1
  br i1 %i.kl, label %.loopexit458, label %bb.bn, !prof !12

bb.bn:                                            ; preds = %bb.bm
  %i.km = extractvalue { i64, i1 } %i.kk, 0       ; 2 uses
  %.not104.i259 = icmp eq i64 %i.kb, 0
  br i1 %.not104.i259, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit269, label %.preheader111.i254

.lr.ph150.i262:                                   ; preds = %.preheader.i260, %bb.bo
  %.sroa.0.4149.i263 = phi ptr [ %i.kt, %bb.bo ], [ %.sroa.0.0.i253, %.preheader.i260 ] ; 2 uses
  %.sroa.26.4148.i264 = phi i64 [ %i.ks, %bb.bo ], [ %.sroa.26.0.i252, %.preheader.i260 ]
  %.sroa.084.4147.i265 = phi i64 [ %i.kv, %bb.bo ], [ 0, %.preheader.i260 ]
  %i.kn = load i8, ptr %.sroa.0.4149.i263, align 1, !alias.scope !3126, !noalias !3127, !noundef !5
  %i.ko = zext i8 %i.kn to i32
  %i.kp = add nsw i32 %i.ko, -48                  ; 2 uses
  %i.kq = icmp ult i32 %i.kp, 10
  br i1 %i.kq, label %bb.bo, label %.loopexit458

bb.bo:                                            ; preds = %.lr.ph150.i262
  %i.kr = mul i64 %.sroa.084.4147.i265, 10
  %i.ks = add nsw i64 %.sroa.26.4148.i264, -1     ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i263, i64 1
  %i.ku = zext nneg i32 %i.kp to i64
  %i.kv = add i64 %i.kr, %i.ku                    ; 2 uses
  %.not105.i266 = icmp eq i64 %i.ks, 0
  br i1 %.not105.i266, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit269, label %.lr.ph150.i262

bb.bp:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 44) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4142.0..sroa_idx, align 8
  %i.kw = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !nonnull !5, !align !9, !noundef !5
  %i.kz = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.kw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ky, ptr noundef nonnull @101, ptr noundef nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  %.val.i270 = load i64, ptr %i.k, align 8, !range !6, !alias.scope !3128, !noundef !5 ; 2 uses
  %i.la = icmp eq i64 %.val.i270, 0
  br i1 %i.la, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit272, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i271 = load ptr, ptr %i.lb, align 8, !alias.scope !3128, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i271, i64 noundef %.val.i270, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !3128
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit272

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit272: ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ck

bb.br:                                            ; preds = %bb.b, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.b ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.ba) #24
  unreachable

bb.bs:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.az, i64 %i.ba, i1 false)
  %cond = icmp eq i64 %i.ba, 1
  %i.lc = load i8, ptr %i.bc, align 1, !alias.scope !3129, !noalias !3130 ; 2 uses
  br i1 %cond, label %bb.bt, label %thread-pre-split.i304

bb.bt:                                            ; preds = %bb.bs
  switch i8 %i.lc, label %bb.ca [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i304:                            ; preds = %bb.bs
  switch i8 %i.lc, label %bb.ca [
    i8 43, label %bb.bu
    i8 45, label %bb.bv
  ]

bb.bu:                                            ; preds = %thread-pre-split.i304
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.le = add nsw i64 %i.ba, -1
  br label %bb.ca

bb.bv:                                            ; preds = %thread-pre-split.i304
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.lg = add nsw i64 %i.ba, -1                   ; 2 uses
  %i.lh = icmp samesign ult i64 %i.ba, 17
  br i1 %i.lh, label %.lr.ph141.i284, label %.lr.ph.i274

.lr.ph.i274:                                      ; preds = %bb.bv, %bb.by
  %.sroa.0.1136.i275 = phi ptr [ %i.li, %bb.by ], [ %i.lf, %bb.bv ] ; 2 uses
  %.sroa.26.1135.i276 = phi i64 [ %i.lj, %bb.by ], [ %i.lg, %bb.bv ]
  %.sroa.084.0134.i277 = phi i64 [ %i.lu, %bb.by ], [ 0, %bb.bv ]
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i275, i64 1
  %i.lj = add nsw i64 %.sroa.26.1135.i276, -1     ; 2 uses
  %i.lk = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i277, i64 10) ; 2 uses
  %i.ll = extractvalue { i64, i1 } %i.lk, 0
  %i.lm = extractvalue { i64, i1 } %i.lk, 1
  br i1 %i.lm, label %.thread, label %bb.bw, !prof !12

bb.bw:                                            ; preds = %.lr.ph.i274
  %i.ln = load i8, ptr %.sroa.0.1136.i275, align 1, !alias.scope !3129, !noalias !3130, !noundef !5
  %i.lo = zext i8 %i.ln to i32
  %i.lp = add nsw i32 %i.lo, -48                  ; 2 uses
  %i.lq = icmp ult i32 %i.lp, 10
  br i1 %i.lq, label %bb.bx, label %.thread

bb.bx:                                            ; preds = %bb.bw
  %i.lr = zext nneg i32 %i.lp to i64
  %i.ls = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ll, i64 %i.lr) ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 1
  br i1 %i.lt, label %.thread, label %bb.by, !prof !12

bb.by:                                            ; preds = %bb.bx
  %i.lu = extractvalue { i64, i1 } %i.ls, 0       ; 2 uses
  %.not102.i279 = icmp eq i64 %i.lj, 0
  br i1 %.not102.i279, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit306, label %.lr.ph.i274

.lr.ph141.i284:                                   ; preds = %bb.bv, %bb.bz
  %.sroa.0.2140.i285 = phi ptr [ %i.mb, %bb.bz ], [ %i.lf, %bb.bv ] ; 2 uses
  %.sroa.26.2139.i286 = phi i64 [ %i.ma, %bb.bz ], [ %i.lg, %bb.bv ]
  %.sroa.084.2138.i287 = phi i64 [ %i.md, %bb.bz ], [ 0, %bb.bv ]
  %i.lv = load i8, ptr %.sroa.0.2140.i285, align 1, !alias.scope !3129, !noalias !3130, !noundef !5
  %i.lw = zext i8 %i.lv to i32
  %i.lx = add nsw i32 %i.lw, -48                  ; 2 uses
  %i.ly = icmp ult i32 %i.lx, 10
  br i1 %i.ly, label %bb.bz, label %.thread

bb.bz:                                            ; preds = %.lr.ph141.i284
  %i.lz = mul i64 %.sroa.084.2138.i287, 10
  %i.ma = add nsw i64 %.sroa.26.2139.i286, -1     ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i285, i64 1
  %i.mc = zext nneg i32 %i.lx to i64
  %i.md = sub i64 %i.lz, %i.mc                    ; 2 uses
  %.not103.i288 = icmp eq i64 %i.ma, 0
  br i1 %.not103.i288, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit306, label %.lr.ph141.i284

bb.ca:                                            ; preds = %bb.bt, %bb.bu, %thread-pre-split.i304
  %.sroa.26.0.i289 = phi i64 [ %i.le, %bb.bu ], [ %i.ba, %thread-pre-split.i304 ], [ %i.ba, %bb.bt ] ; 3 uses
  %.sroa.0.0.i290 = phi ptr [ %i.ld, %bb.bu ], [ %i.bc, %thread-pre-split.i304 ], [ %i.bc, %bb.bt ] ; 2 uses
  %i.me = icmp samesign ult i64 %.sroa.26.0.i289, 16
  br i1 %i.me, label %.lr.ph150.i299, label %.preheader111.i291

.preheader111.i291:                               ; preds = %bb.ca, %bb.cd
  %.sroa.0.3145.i292 = phi ptr [ %i.mf, %bb.cd ], [ %.sroa.0.0.i290, %bb.ca ] ; 2 uses
  %.sroa.26.3144.i293 = phi i64 [ %i.mg, %bb.cd ], [ %.sroa.26.0.i289, %bb.ca ]
  %.sroa.084.3143.i294 = phi i64 [ %i.mr, %bb.cd ], [ 0, %bb.ca ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i292, i64 1
  %i.mg = add nsw i64 %.sroa.26.3144.i293, -1     ; 2 uses
  %i.mh = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i294, i64 10) ; 2 uses
  %i.mi = extractvalue { i64, i1 } %i.mh, 0
  %i.mj = extractvalue { i64, i1 } %i.mh, 1
  br i1 %i.mj, label %.thread, label %bb.cb, !prof !12

bb.cb:                                            ; preds = %.preheader111.i291
  %i.mk = load i8, ptr %.sroa.0.3145.i292, align 1, !alias.scope !3129, !noalias !3130, !noundef !5
  %i.ml = zext i8 %i.mk to i32
  %i.mm = add nsw i32 %i.ml, -48                  ; 2 uses
  %i.mn = icmp ult i32 %i.mm, 10
  br i1 %i.mn, label %bb.cc, label %.thread

bb.cc:                                            ; preds = %bb.cb
  %i.mo = zext nneg i32 %i.mm to i64
  %i.mp = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.mi, i64 %i.mo) ; 2 uses
  %i.mq = extractvalue { i64, i1 } %i.mp, 1
  br i1 %i.mq, label %.thread, label %bb.cd, !prof !12

bb.cd:                                            ; preds = %bb.cc
  %i.mr = extractvalue { i64, i1 } %i.mp, 0       ; 2 uses
  %.not104.i296 = icmp eq i64 %i.mg, 0
  br i1 %.not104.i296, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit306, label %.preheader111.i291

.lr.ph150.i299:                                   ; preds = %bb.ca, %bb.ce
  %.sroa.0.4149.i300 = phi ptr [ %i.my, %bb.ce ], [ %.sroa.0.0.i290, %bb.ca ] ; 2 uses
  %.sroa.26.4148.i301 = phi i64 [ %i.mx, %bb.ce ], [ %.sroa.26.0.i289, %bb.ca ]
  %.sroa.084.4147.i302 = phi i64 [ %i.na, %bb.ce ], [ 0, %bb.ca ]
  %i.ms = load i8, ptr %.sroa.0.4149.i300, align 1, !alias.scope !3129, !noalias !3130, !noundef !5
  %i.mt = zext i8 %i.ms to i32
  %i.mu = add nsw i32 %i.mt, -48                  ; 2 uses
  %i.mv = icmp ult i32 %i.mu, 10
  br i1 %i.mv, label %bb.ce, label %.thread

bb.ce:                                            ; preds = %.lr.ph150.i299
  %i.mw = mul i64 %.sroa.084.4147.i302, 10
  %i.mx = add nsw i64 %.sroa.26.4148.i301, -1     ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i300, i64 1
  %i.mz = zext nneg i32 %i.mu to i64
  %i.na = add i64 %i.mw, %i.mz                    ; 2 uses
  %.not105.i303 = icmp eq i64 %i.mx, 0
  br i1 %.not105.i303, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit306, label %.lr.ph150.i299

.thread:                                          ; preds = %.lr.ph.i274, %bb.bx, %bb.bw, %.lr.ph141.i284, %.preheader111.i291, %bb.cb, %bb.cc, %.lr.ph150.i299, %bb.bt, %bb.bt, %bb.c
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.bc, %.preheader111.i291 ], [ %i.bc, %.lr.ph150.i299 ], [ %i.bc, %bb.bt ], [ %i.bc, %.lr.ph141.i284 ], [ %i.bc, %bb.bt ], [ %i.bc, %bb.cc ], [ %i.bc, %bb.cb ], [ %i.bc, %bb.bw ], [ %i.bc, %bb.bx ], [ %i.bc, %.lr.ph.i274 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ba) #20
  %i.nb = load i8, ptr %i.au, align 8, !range !10, !noundef !5
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.ch, label %bb.ci

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit306: ; preds = %bb.by, %bb.bz, %bb.cd, %bb.ce
  %.sroa.15340.0 = phi i64 [ %i.mr, %bb.cd ], [ %i.md, %bb.bz ], [ %i.na, %bb.ce ], [ %i.lu, %bb.by ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 9, i64 noundef %.sroa.15340.0) #21
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ci, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit306
  %i.nd = phi ptr [ %.ph, %bb.ci ], [ %i.bc, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit306 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.ne = icmp eq i64 %i.ba, 0
  br i1 %i.ne, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit309, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nd, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !3131
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit309

bb.ch:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 %i.ba, ptr %i.at, align 8
  %.sroa.5.0..sroa_idx337 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx337, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.ba, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 9, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.at) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit309

bb.ci:                                            ; preds = %.thread
  %i.nf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ng = load double, ptr %i.nf, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 9, double noundef %i.ng) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.cf

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit309: ; preds = %bb.cg, %bb.cf, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.aw, ptr %i.ar, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.nh = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !nonnull !5, !align !9, !noundef !5
  %i.nk = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.nh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nj, ptr noundef nonnull @101, ptr noundef nonnull %i.ar) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  %.val.i310 = load i64, ptr %i.aw, align 8, !range !6, !alias.scope !3132, !noundef !5 ; 2 uses
  %i.nl = icmp eq i64 %.val.i310, 0
  br i1 %i.nl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit312, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit309
  %i.nm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val1.i311 = load ptr, ptr %i.nm, align 8, !alias.scope !3132, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i311, i64 noundef %.val.i310, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !3132
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit312

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit312: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit309, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit272, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit336, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit232, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit330, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit324, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit318, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit312
  %.sroa.0.1.in = phi i1 [ %i.nk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit312 ], [ %i.nv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit318 ], [ %i.og, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit324 ], [ %i.or, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit330 ], [ %i.if, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit ], [ %i.il, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit232 ], [ %i.pc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit336 ], [ %i.kz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit272 ]
  ret i1 %.sroa.0.1.in

.loopexit:                                        ; preds = %.lr.ph.i, %bb.k, %bb.j, %.lr.ph141.i, %.preheader111.i, %bb.o, %bb.p, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs58W9blM4WiW_5uu_rm.exit, %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5343.0.copyload345, i64 noundef %.sroa.8347.0.copyload349) #20
  %i.nn = load i8, ptr %i.an, align 8, !range !10, !noundef !5
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.cn, label %bb.co

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.l, %bb.m, %bb.q, %bb.r, %.preheader.i, %.preheader114.i
  %.sroa.15354.0 = phi i64 [ %i.dl, %bb.r ], [ %i.co, %bb.m ], [ %i.dc, %bb.q ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.cf, %bb.l ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, i64 noundef %.sroa.15354.0) #21
  br label %bb.cl

bb.cl:                                            ; preds = %bb.co, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 35, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.np = icmp eq i64 %.sroa.0341.0.copyload342, 0
  br i1 %i.np, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit315, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5343.0.copyload345, i64 noundef %.sroa.0341.0.copyload342, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !3133
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit315

bb.cn:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 %.sroa.0341.0.copyload342, ptr %i.am, align 8
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.5343.0.copyload345, ptr %.sroa.5343.0..sroa_idx, align 8
  %.sroa.8347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.8347.0.copyload349, ptr %.sroa.8347.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 35, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit315

bb.co:                                            ; preds = %.loopexit
  %i.nq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.nr = load double, ptr %i.nq, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, double noundef %i.nr) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.cl

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit315: ; preds = %bb.cm, %bb.cl, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.aq, ptr %i.ak, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  %i.ns = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !nonnull !5, !align !9, !noundef !5
  %i.nv = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ns, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nu, ptr noundef nonnull @101, ptr noundef nonnull %i.ak) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  %.val.i316 = load i64, ptr %i.aq, align 8, !range !6, !alias.scope !3134, !noundef !5 ; 2 uses
  %i.nw = icmp eq i64 %.val.i316, 0
  br i1 %i.nw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit318, label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit315
  %i.nx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val1.i317 = load ptr, ptr %i.nx, align 8, !alias.scope !3134, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i317, i64 noundef %.val.i316, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !3134
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit318

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit318: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit315, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ck

.loopexit444:                                     ; preds = %.lr.ph.i160, %bb.z, %bb.y, %.lr.ph141.i170, %.preheader111.i177, %bb.ad, %bb.ae, %.lr.ph150.i185, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs58W9blM4WiW_5uu_rm.exit158, %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5357.0.copyload359, i64 noundef %.sroa.8361.0.copyload363) #20
  %i.ny = load i8, ptr %i.ag, align 8, !range !10, !noundef !5
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.cs, label %bb.ct

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit192: ; preds = %bb.aa, %bb.ab, %bb.af, %bb.ag, %.preheader.i183, %.preheader114.i168
  %.sroa.15368.0 = phi i64 [ %i.ft, %bb.ag ], [ %i.ew, %bb.ab ], [ %i.fk, %bb.af ], [ 0, %.preheader.i183 ], [ 0, %.preheader114.i168 ], [ %i.en, %bb.aa ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, i64 noundef %.sroa.15368.0) #21
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ct, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.oa = icmp eq i64 %.sroa.0355.0.copyload356, 0
  br i1 %i.oa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit321, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5357.0.copyload359, i64 noundef %.sroa.0355.0.copyload356, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !3135
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit321

bb.cs:                                            ; preds = %.loopexit444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.sroa.0355.0.copyload356, ptr %i.af, align 8
  %.sroa.5357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.5357.0.copyload359, ptr %.sroa.5357.0..sroa_idx, align 8
  %.sroa.8361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.8361.0.copyload363, ptr %.sroa.8361.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit321

bb.ct:                                            ; preds = %.loopexit444
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.oc = load double, ptr %i.ob, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs58W9blM4WiW_5uu_rm(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, double noundef %i.oc) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.cq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs58W9blM4WiW_5uu_rm.exit321: ; preds = %bb.cr, %bb.cq, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.aj, ptr %i.ad, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8
  %i.od = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !nonnull !5, !align !9, !noundef !5
  %i.og = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.od, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.of, ptr noundef nonnull @101, ptr noundef nonnull %i.ad) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
end_hunk_1
