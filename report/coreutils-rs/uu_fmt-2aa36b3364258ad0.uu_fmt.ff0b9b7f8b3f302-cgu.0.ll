Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_fmt-2aa36b3364258ad0.uu_fmt.ff0b9b7f8b3f302-cgu.0?download=true
inline.NumInlined: 782
inline.NumDeleted: 499
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs1mQHuhqOwPS_6uu_fmt12process_file:bb.a

bb.an:                                            ; preds = %bb.am
  %i.fj = zext nneg i32 %i.fh to i64
  %i.fk = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fd, i64 %i.fj) ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 1
  br i1 %i.fl, label %.loopexit.i.i97, label %bb.ao, !prof !240

bb.ao:                                            ; preds = %bb.an
  %i.fm = extractvalue { i64, i1 } %i.fk, 0       ; 2 uses
  %.not104.i.i.i122 = icmp eq i64 %i.fb, 0
  br i1 %.not104.i.i.i122, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i107, label %.preheader111.i.i.i118

.lr.ph150.i.i.i125:                               ; preds = %.preheader.i.i.i123, %bb.ap
  %.sroa.0.4149.i.i.i126 = phi ptr [ %i.ft, %bb.ap ], [ %.sroa.0.0.i.i.i117, %.preheader.i.i.i123 ] ; 2 uses
  %.sroa.26.4148.i.i.i127 = phi i64 [ %i.fs, %bb.ap ], [ %.sroa.26.0.i.i.i116, %.preheader.i.i.i123 ]
  %.sroa.084.4147.i.i.i128 = phi i64 [ %i.fv, %bb.ap ], [ 0, %.preheader.i.i.i123 ]
  %i.fn = load i8, ptr %.sroa.0.4149.i.i.i126, align 1, !alias.scope !334, !noalias !337, !noundef !4
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nsw i32 %i.fo, -48                  ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 10
  br i1 %i.fq, label %bb.ap, label %.loopexit.i.i97

bb.ap:                                            ; preds = %.lr.ph150.i.i.i125
  %i.fr = mul i64 %.sroa.084.4147.i.i.i128, 10
  %i.fs = add nsw i64 %.sroa.26.4148.i.i.i127, -1 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i126, i64 1
  %i.fu = zext nneg i32 %i.fp to i64
  %i.fv = add i64 %i.fr, %i.fu                    ; 2 uses
  %.not105.i.i.i129 = icmp eq i64 %i.fs, 0
  br i1 %.not105.i.i.i129, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i107, label %.lr.ph150.i.i.i125

.loopexit.i.i97:                                  ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i.i102, %.lr.ph141.i.i.i111, %bb.an, %bb.am, %.preheader111.i.i.i118, %.lr.ph150.i.i.i125, %bb.ad, %bb.ad, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs1mQHuhqOwPS_6uu_fmt.exit.i.i93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !324
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload7.i.i95, i64 noundef %.sroa.8.0.copyload10.i.i96) #22, !noalias !339
  %i.fw = load i8, ptr %i.s, align 8, !range !251, !noalias !324, !noundef !4
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.as, label %bb.at

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i107: ; preds = %bb.aj, %bb.ak, %bb.ao, %bb.ap, %.preheader.i.i.i123, %.preheader114.i.i.i109
  %.sroa.1514.0.i.i108 = phi i64 [ %i.fv, %bb.ap ], [ %i.ey, %bb.ak ], [ %i.fm, %bb.ao ], [ 0, %.preheader.i.i.i123 ], [ 0, %.preheader114.i.i.i109 ], [ %i.ep, %bb.aj ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4, i64 noundef %.sroa.1514.0.i.i108) #23, !noalias !339
  br label %bb.aq

bb.aq:                                            ; preds = %bb.at, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !324
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 29, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #23, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !324
  %i.fy = icmp eq i64 %.sroa.0.0.copyload4.i.i94, 0
  br i1 %i.fy, label %_RNCNvCs1mQHuhqOwPS_6uu_fmt12process_files_0B3_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload7.i.i95, i64 noundef %.sroa.0.0.copyload4.i.i94, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !341
  br label %_RNCNvCs1mQHuhqOwPS_6uu_fmt12process_files_0B3_.exit.i

bb.as:                                            ; preds = %.loopexit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !324
  store i64 %.sroa.0.0.copyload4.i.i94, ptr %i.r, align 8, !noalias !324
  %.sroa.5.0..sroa_idx5.i.i100 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.5.0.copyload7.i.i95, ptr %.sroa.5.0..sroa_idx5.i.i100, align 8, !noalias !324
  %.sroa.8.0..sroa_idx.i.i101 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.8.0.copyload10.i.i96, ptr %.sroa.8.0..sroa_idx.i.i101, align 8, !noalias !324
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r) #23, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !324
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 29, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #23, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !324
  br label %_RNCNvCs1mQHuhqOwPS_6uu_fmt12process_files_0B3_.exit.i

bb.at:                                            ; preds = %.loopexit.i.i97
  %i.fz = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ga = load double, ptr %i.fz, align 8, !noalias !324, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4, double noundef %i.ga) #23, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !324
  br label %bb.aq

_RNCNvCs1mQHuhqOwPS_6uu_fmt12process_files_0B3_.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !324
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !344
  %i.gb = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !344 ; 4 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.au, label %bb.av, !prof !240

bb.au:                                            ; preds = %_RNCNvCs1mQHuhqOwPS_6uu_fmt12process_files_0B3_.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !344
  unreachable

bb.av:                                            ; preds = %_RNCNvCs1mQHuhqOwPS_6uu_fmt12process_files_0B3_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !340
  %.sroa.4.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store ptr %i.dr, ptr %.sroa.4.0..sroa_idx.i99, align 8, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ba

bb.aw:                                            ; preds = %bb.aa
  %.sroa.10209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.10209.0.copyload = load i32, ptr %.sroa.10209.0..sroa_idx, align 8, !alias.scope !340, !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.gd = and i32 %.sroa.10209.0.copyload, 61440
  %i.ge = icmp eq i32 %i.gd, 16384
  br i1 %i.ge, label %bb.az, label %.split

.split:                                           ; preds = %bb.aw
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.gf = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 4) #23 ; 3 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ax, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit132, !prof !240

bb.ax:                                            ; preds = %.split
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #26
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit132: ; preds = %.split
  store i32 %i.dn, ptr %i.gf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !348
  %i.gh = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8192, i64 noundef range(i64 1, 9) 1) #23, !noalias !348 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.ay, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtB8_5boxed3BoxDNtNtB6_4read4ReadEL_EE13with_capacityCs1mQHuhqOwPS_6uu_fmt.exit

bb.ay:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit132
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #26, !noalias !354
  unreachable

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i32 6, ptr %i.ai, align 8
  %i.gj = call { ptr, ptr } @_RNvXCs1mQHuhqOwPS_6uu_fmtINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtB2_8FmtErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ai) #23
  %i.gk = extractvalue { ptr, ptr } %i.gj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.ba

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtB8_5boxed3BoxDNtNtB6_4read4ReadEL_EE13with_capacityCs1mQHuhqOwPS_6uu_fmt.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit132, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sink1285 = phi ptr [ %i.dk, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.gh, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit132 ]
  %.sink1283 = phi ptr [ %i.di, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.gf, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit132 ]
  %.sink = phi ptr [ @39, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ @38, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit132 ]
  store ptr %.sink1285, ptr %i.am, align 8, !noalias !4
  %.sroa.42.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 8192, ptr %.sroa.42.0..sroa_idx.i133, align 8, !noalias !4
  %.sroa.5.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx.i134, i8 0, i64 17, i1 false), !noalias !4
  store ptr %.sink1283, ptr %i.gl, align 8, !noalias !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr %.sink, ptr %i.gm, align 8, !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 -3, ptr %i.ah, align 8
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %1, ptr %.sroa.013.sroa.5.0..sroa_idx, align 8
  %.sroa.013.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store ptr %i.am, ptr %.sroa.013.sroa.6.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i8 1, ptr %.sroa.614.0..sroa_idx, align 8
  call void @_RNvXs2_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_15ParagraphStreamNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ah) #23
  %i.gn = load i64, ptr %i.ag, align 8, !range !355, !noundef !4 ; 2 uses
  %.not79591 = icmp eq i64 %i.gn, -2
  br i1 %.not79591, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtB8_5boxed3BoxDNtNtB6_4read4ReadEL_EE13with_capacityCs1mQHuhqOwPS_6uu_fmt.exit
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.618.sroa.6.0..sroa.618.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.618.sroa.7.0..sroa.618.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %.sroa.618.sroa.6.0..sroa.618.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %.sroa.618.sroa.7.0..sroa.618.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %.sroa.720.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.gp = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i150 = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gt = load i8, ptr %i.gs, align 8, !range !251
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.gw = load i8, ptr %i.gv, align 1, !range !251
  %i.gx = trunc nuw i8 %i.gw to i1
  %or.cond.i.i = select i1 %i.gu, i1 true, i1 %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.gz = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.021.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.021.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %.sroa.021.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.sroa.021.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %.sroa.522.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 5 uses
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 4 uses
  %.sroa.424.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %.sroa.525.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %.sroa.626.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %.sroa.727.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.8.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.i.i.i.i.sroa.5.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8.i.i.i.i.sroa.6.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.8.i.i.i.i.sroa.7.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.8.i.i.i.i.sroa.8.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8.i.i.i.i.sroa.9.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.8.i.i.i.i.sroa.10.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.8.i.i.i.i.sroa.11.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 57
  %.sroa.8.i.i.i.i.sroa.12.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  %.sroa.8.i.i.i.i.sroa.13.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 59
  %i.hk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 36 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 18 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.hr = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.ht = load i8, ptr %i.hs, align 2, !range !251
  %.fr.i = freeze i8 %i.ht                        ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 79
  %i.hv = load i8, ptr %i.hu, align 1, !range !251
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hy = load i64, ptr %i.hw, align 8            ; 7 uses
  %i.hz = icmp eq i64 %i.hy, 0                    ; 3 uses
  %i.ia = load i64, ptr %i.hx, align 8            ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 10 uses
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ig = load i64, ptr %i.if, align 8            ; 7 uses
  %i.ih = sub i64 %i.ia, %i.ig                    ; 8 uses
  %i.ii = icmp ult i64 %i.ig, 11
  %i.ij = add i64 %i.ih, 1
  %..i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ij, i64 %i.ig)
  %i.ik = sub i64 %..i.i.i.i, %i.ih
  %i.il = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.in = trunc nuw i8 %.fr.i to i1               ; 2 uses
  %i.io = uitofp i64 %i.ih to float               ; 2 uses
  %i.ip = add i64 %i.ih, -1
  %i.iq = uitofp i64 %i.ip to float               ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %spec.select = select i1 %i.ii, i64 1, i64 %i.ik ; 3 uses
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.sroa.9.0 = phi ptr [ @24, %bb.av ], [ @92, %bb.az ]
  %.sroa.0.0 = phi ptr [ %i.gb, %bb.av ], [ %i.gk, %bb.az ]
  %i.iu = call noundef i32 @close(i32 noundef %i.dn) #23, !noalias !356 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.z
  %.sroa.9.1 = phi ptr [ @24, %bb.z ], [ %.sroa.9.0, %bb.ba ]
  %.sroa.0.1 = phi ptr [ %i.df, %bb.z ], [ %.sroa.0.0, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECs1mQHuhqOwPS_6uu_fmt.exit148

bb.bc:                                            ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit
  %i.iv = phi i64 [ %i.gn, %.lr.ph ], [ %i.ary, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit ] ; 2 uses
  %.sroa.618.sroa.0.0.copyload = load i64, ptr %.sroa.618.0..sroa_idx, align 8 ; 6 uses
  %.sroa.618.sroa.6.0.copyload = load ptr, ptr %.sroa.618.sroa.6.0..sroa.618.0..sroa_idx.sroa_idx, align 8 ; 8 uses
  %.sroa.618.sroa.7.0.copyload = load i64, ptr %.sroa.618.sroa.7.0..sroa.618.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %i.iw = icmp eq i64 %i.iv, -1
  br i1 %i.iw, label %bb.bn, label %bb.bo

._crit_edge:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit, %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtB8_5boxed3BoxDNtNtB6_4read4ReadEL_EE13with_capacityCs1mQHuhqOwPS_6uu_fmt.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.ix = load i64, ptr %i.ah, align 8, !range !368, !alias.scope !369, !noundef !4 ; 4 uses
  %i.iy = icmp eq i64 %i.ix, -3
  br i1 %i.iy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.iz = icmp eq i64 %i.ix, -2
  br i1 %i.iz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  switch i64 %i.ix, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8FileLineEBF_.exit.sink.split.i.i.i.i.i [
    i64 -1, label %bb.bf
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit
  ]

bb.bf:                                            ; preds = %bb.be
  %.val.i.i.i.i.i = load i64, ptr %.sink4.i.i.i.i.i.sroa.gep, align 8, !range !40, !alias.scope !376, !noundef !4 ; 2 uses
  %i.ja = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ja, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8FileLineEBF_.exit.sink.split.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8FileLineEBF_.exit.sink.split.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.sink4.i.i.i.i.i.sroa.phi = phi ptr [ %.sink4.i.i.i.i.i.sroa.gep, %bb.be ], [ %.sink4.i.i.i.i.i.sroa.gep210, %bb.bf ]
  %.val.sink.i.i.i.i.i = phi i64 [ %i.ix, %bb.be ], [ %.val.i.i.i.i.i, %bb.bf ]
  %.val1.i.i.i.i.i = load ptr, ptr %.sink4.i.i.i.i.i.sroa.phi, align 8, !alias.scope !376, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.sink.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !376
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit: ; preds = %._crit_edge, %bb.bd, %bb.be, %bb.bf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8FileLineEBF_.exit.sink.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.jb = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE9flush_bufCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23 ; 2 uses
  %.not.i = icmp eq ptr %i.jb, null
  br i1 %.not.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit.thread

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jd = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jc) #23 ; 2 uses
  %.not.i136 = icmp eq ptr %i.jd, null
  br i1 %.not.i136, label %bb.bh, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit.thread

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit
  %.sroa.0.0.i243 = phi ptr [ %i.jd, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit ], [ %i.jb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 32) #23
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !377
  %i.je = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !377 ; 4 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.bg, label %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs1mQHuhqOwPS_6uu_fmt12process_files3_0EB3d_.exit, !prof !240

bb.bg:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit.thread
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !377
  unreachable

_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs1mQHuhqOwPS_6uu_fmt12process_files3_0EB3d_.exit: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store ptr %.sroa.0.0.i243, ptr %.sroa.4.0..sroa_idx.i138, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.bk

bb.bh:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCs1mQHuhqOwPS_6uu_fmt.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val1.i = load i64, ptr %i.jg, align 8, !alias.scope !380, !noundef !4 ; 2 uses
  %i.jh = icmp eq i64 %.val1.i, 0
  br i1 %i.jh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs1mQHuhqOwPS_6uu_fmt.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.bh
  %.val.i139 = load ptr, ptr %i.am, align 8, !alias.scope !380, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i139, i64 noundef %.val1.i, i64 noundef 1) #23, !noalias !380
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs1mQHuhqOwPS_6uu_fmt.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs1mQHuhqOwPS_6uu_fmt.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.bh
  %i.ji = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.val2.i = load ptr, ptr %i.ji, align 8, !alias.scope !380 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.val3.i = load ptr, ptr %i.jj, align 8, !alias.scope !380, !nonnull !4, !align !144, !noundef !4 ; 3 uses
  %i.jk = load ptr, ptr %.val3.i, align 8, !invariant.load !4, !noalias !380 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs1mQHuhqOwPS_6uu_fmt.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  call void %i.jk(ptr noundef nonnull %.val2.i) #25, !noalias !380, !inline_history !383
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs1mQHuhqOwPS_6uu_fmt.exit.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.jm = load i64, ptr %i.jl, align 8, !range !40, !invariant.load !4, !noalias !380 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECs1mQHuhqOwPS_6uu_fmt.exit148, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.bj
  %i.jo = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !range !145, !invariant.load !4, !noalias !380
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.jm, i64 noundef range(i64 1, -9223372036854775807) %i.jp) #23, !noalias !380
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECs1mQHuhqOwPS_6uu_fmt.exit148

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECs1mQHuhqOwPS_6uu_fmt.exit148: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.bj, %bb.bb, %bb.bm, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i147
  %.sroa.9.3 = phi ptr [ @24, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i147 ], [ %.sroa.9.1, %bb.bb ], [ @24, %bb.bm ], [ undef, %bb.bj ], [ undef, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i147 ], [ %.sroa.0.1, %bb.bb ], [ %.sroa.0.4, %bb.bm ], [ null, %bb.bj ], [ null, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.jq = insertvalue { ptr, ptr } poison, ptr %.sroa.0.3, 0
  %i.jr = insertvalue { ptr, ptr } %i.jq, ptr %.sroa.9.3, 1
  ret { ptr, ptr } %i.jr

bb.bk:                                            ; preds = %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs1mQHuhqOwPS_6uu_fmt12process_files3_0EB3d_.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit187
  %.sroa.0.4 = phi ptr [ %.sroa.0.5, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit15ParagraphStreamEBF_.exit187 ], [ %i.je, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs1mQHuhqOwPS_6uu_fmt12process_files3_0EB3d_.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.js = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val1.i140 = load i64, ptr %i.js, align 8, !alias.scope !384, !noundef !4 ; 2 uses
  %i.jt = icmp eq i64 %.val1.i140, 0
  br i1 %i.jt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs1mQHuhqOwPS_6uu_fmt.exit.i143, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i141

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i141: ; preds = %bb.bk
  %.val.i142 = load ptr, ptr %i.am, align 8, !alias.scope !384, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i142, i64 noundef %.val1.i140, i64 noundef 1) #23, !noalias !384
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs1mQHuhqOwPS_6uu_fmt.exit.i143
end_hunk_0
begin_hunk_1_@_RNvCs1mQHuhqOwPS_6uu_fmt12process_file:bb.a
bb.cj:                                            ; preds = %bb.ch
  %i.nz = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !noalias !458, !nonnull !4, !noundef !4 ; 2 uses
  %i.ob = sub nuw i64 %i.nx, %i.nv                ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.nv ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.nx
  %i.oe = icmp samesign eq i64 %i.ob, 0
  br i1 %i.oe, label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cj, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i
  %.sroa.02.07.i.i.i.i.i = phi i64 [ %i.oh, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i ], [ 0, %bb.cj ] ; 3 uses
  %i.of = phi ptr [ %i.og, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i ], [ %i.oc, %bb.cj ] ; 2 uses
  %.val.i.i.i.i.i151 = load i8, ptr %i.of, align 1, !alias.scope !459, !noalias !462, !noundef !4
  switch i8 %.val.i.i.i.i.i151, label %bb.ck [
    i8 32, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i
    i8 9, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i
    i8 10, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i
    i8 13, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i
    i8 11, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i
    i8 12, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i
  ]

_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 1 ; 2 uses
  %i.oh = add nuw nsw i64 %.sroa.02.07.i.i.i.i.i, 1
  %i.oi = icmp eq ptr %i.og, %i.od
  br i1 %i.oi, label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.oj = icmp samesign ult i64 %.sroa.02.07.i.i.i.i.i, %i.ob
  call void @llvm.assume(i1 %i.oj)
  br label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit.i.i.i

_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit.i.i.i: ; preds = %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i, %bb.ck, %bb.cj
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.02.07.i.i.i.i.i, %bb.ck ], [ 0, %bb.cj ], [ %i.ob, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i ] ; 2 uses
  %i.ok = sub nuw nsw i64 %i.ob, %.sroa.0.0.i.i.i.i.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.sroa.0.0.i.i.i.i.i
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ch
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.nv, i64 noundef %i.nx, i64 noundef %i.nx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #24, !noalias !458
  unreachable

bb.cm:                                            ; preds = %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit50.i.i.i, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit.i.i.i
  %.sink146.i.i.i = phi ptr [ %i.pt, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit50.i.i.i ], [ %i.ol, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit.i.i.i ]
  %.sink144.i.i.i = phi i64 [ %i.ps, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit50.i.i.i ], [ %i.ok, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit.i.i.i ] ; 2 uses
  store ptr %1, ptr %i.m, align 8, !noalias !467
  store ptr %.sink146.i.i.i, ptr %i.ha, align 8, !noalias !467
  store i64 %.sink144.i.i.i, ptr %i.hb, align 8, !noalias !467
  store i64 %.sink144.i.i.i, ptr %i.hc, align 8, !noalias !467
  store i64 0, ptr %i.hd, align 8, !noalias !467
  store i8 0, ptr %i.he, align 8, !noalias !467
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !467
  call void @_RNvXs5_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplitNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #23, !noalias !471
  %i.om = load i64, ptr %i.i, align 8, !range !321, !noalias !472, !noundef !4
  %.not1.i.i.i.i = icmp eq i64 %i.om, 2
  br i1 %.not1.i.i.i.i, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cm, %bb.cn
  %i.on = phi ptr [ %i.os, %bb.cn ], [ inttoptr (i64 8 to ptr), %bb.cm ]
  %i.oo = phi i64 [ %i.ot, %bb.cn ], [ 0, %bb.cm ] ; 3 uses
  %i.op = phi i64 [ %i.ov, %bb.cn ], [ 0, %bb.cm ] ; 4 uses
  %i.oq = icmp samesign ult i64 %i.op, 144115188075855872
  call void @llvm.assume(i1 %i.oq)
  %i.or = icmp eq i64 %i.op, %i.oo
  br i1 %i.or, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i44.i.i.i, label %bb.cn

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i44.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef %i.oo, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 64) #23, !noalias !474
  %.pre2.i.i.i.i = load i64, ptr %i.n, align 8, !range !40, !alias.scope !475, !noalias !476
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i149, align 8, !alias.scope !475, !noalias !476
  br label %bb.cn

bb.cn:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i44.i.i.i, %.lr.ph.i.i.i.i
  %i.os = phi ptr [ %i.on, %.lr.ph.i.i.i.i ], [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i44.i.i.i ] ; 3 uses
  %i.ot = phi i64 [ %i.oo, %.lr.ph.i.i.i.i ], [ %.pre2.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i44.i.i.i ]
  %i.ou = getelementptr inbounds nuw [64 x i8], ptr %i.os, i64 %i.op
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ou, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !477
  %i.ov = add nuw nsw i64 %i.op, 1                ; 3 uses
  store i64 %i.ov, ptr %.sroa.5.0..sroa_idx.i.i150, align 8, !alias.scope !475, !noalias !476
  call void @_RNvXs5_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplitNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #23, !noalias !471
  %i.ow = load i64, ptr %i.i, align 8, !range !321, !noalias !472, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.ow, 2
  br i1 %.not.i.i.i.i, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.loopexit.i.i.i: ; preds = %bb.cn
  %.pre.i.i.i = load ptr, ptr %i.gq, align 8, !alias.scope !400, !noalias !397 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !458
  br label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.i.i.i

_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.i.i.i: ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.loopexit.i.i.i, %bb.cm
  %i.ox = phi i64 [ %.pre.i, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.loopexit.i.i.i ], [ %i.kk, %bb.cm ] ; 3 uses
  %i.oy = phi ptr [ %i.os, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.loopexit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.cm ]
  %i.oz = phi i64 [ %i.ov, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.loopexit.i.i.i ], [ 0, %bb.cm ] ; 2 uses
  %i.pa = phi ptr [ %.pre.i.i.i, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.loopexit.i.i.i ], [ %i.af, %bb.cm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !467
  %i.pb = icmp ult i64 %i.ox, 384307168202282326
  call void @llvm.assume(i1 %i.pb)
  %i.pc = icmp samesign ugt i64 %i.ox, 1
  br i1 %i.pc, label %bb.ct, label %_RNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9ParaWords3new.exit.i

bb.co:                                            ; preds = %bb.cf
  %i.pd = load i64, ptr %i.gz, align 8, !alias.scope !403, !noalias !404, !noundef !4 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.pf = load i64, ptr %i.pe, align 8, !noalias !458, !noundef !4 ; 5 uses
  %i.pg = icmp ugt i64 %i.pd, %i.pf
  br i1 %i.pg, label %bb.cs, label %bb.cq, !prof !240

bb.cp:                                            ; preds = %bb.cf
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #24, !noalias !458
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.ph = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !458, !nonnull !4, !noundef !4 ; 2 uses
  %i.pj = sub nuw i64 %i.pf, %i.pd                ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pd ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pf
  %i.pm = icmp samesign eq i64 %i.pj, 0
  br i1 %i.pm, label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit50.i.i.i, label %.lr.ph.i.i45.i.i.i

.lr.ph.i.i45.i.i.i:                               ; preds = %bb.cq, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i
  %.sroa.02.07.i.i46.i.i.i = phi i64 [ %i.pp, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i ], [ 0, %bb.cq ] ; 3 uses
  %i.pn = phi ptr [ %i.po, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i ], [ %i.pk, %bb.cq ] ; 2 uses
  %.val.i.i47.i.i.i = load i8, ptr %i.pn, align 1, !alias.scope !478, !noalias !481, !noundef !4
  switch i8 %.val.i.i47.i.i.i, label %bb.cr [
    i8 32, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i
    i8 9, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i
    i8 10, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i
    i8 13, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i
    i8 11, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i
    i8 12, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i
  ]

_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i: ; preds = %.lr.ph.i.i45.i.i.i, %.lr.ph.i.i45.i.i.i, %.lr.ph.i.i45.i.i.i, %.lr.ph.i.i45.i.i.i, %.lr.ph.i.i45.i.i.i, %.lr.ph.i.i45.i.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 1 ; 2 uses
  %i.pp = add nuw nsw i64 %.sroa.02.07.i.i46.i.i.i, 1
  %i.pq = icmp eq ptr %i.po, %i.pl
  br i1 %i.pq, label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit50.i.i.i, label %.lr.ph.i.i45.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.i45.i.i.i
  %i.pr = icmp samesign ult i64 %.sroa.02.07.i.i46.i.i.i, %i.pj
  call void @llvm.assume(i1 %i.pr)
  br label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit50.i.i.i

_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit3new.exit50.i.i.i: ; preds = %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i, %bb.cr, %bb.cq
  %.sroa.0.0.i.i49.i.i.i = phi i64 [ %.sroa.02.07.i.i46.i.i.i, %bb.cr ], [ 0, %bb.cq ], [ %i.pj, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i48.i.i.i ] ; 2 uses
  %i.ps = sub nuw nsw i64 %i.pj, %.sroa.0.0.i.i49.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.sroa.0.0.i.i49.i.i.i
  br label %bb.cm

bb.cs:                                            ; preds = %bb.co
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.pd, i64 noundef %i.pf, i64 noundef %i.pf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #24, !noalias !458
  unreachable

bb.ct:                                            ; preds = %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !467
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pa, i64 96
  %i.pv = load i64, ptr %i.pu, align 8, !noalias !458, !noundef !4
  store i64 %i.pv, ptr %i.l, align 8, !noalias !467
  %i.pw = load ptr, ptr %i.gp, align 8, !alias.scope !400, !noalias !397, !nonnull !4, !align !144, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !467
  %i.px = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !noalias !458, !nonnull !4, !noundef !4 ; 3 uses
  %i.pz = getelementptr inbounds nuw [24 x i8], ptr %i.py, i64 %i.ox ; 2 uses
  store ptr %i.py, ptr %i.k, align 8, !noalias !467
  store ptr %i.pz, ptr %.sroa.021.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !467
  store i64 1, ptr %.sroa.021.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !467
  store ptr %i.pw, ptr %.sroa.021.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !467
  store ptr %i.l, ptr %.sroa.021.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !467
  store i8 2, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !noalias !467
  store i8 2, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !467
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.sroa.13)
  br label %bb.cu

bb.cu:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i, %bb.ct
  %.val2.i.i.i.i.i.i.i.i = phi ptr [ %.val2.i.i.i.i.i.i.i.i.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i ], [ %i.l, %bb.ct ]
  %.val.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i ], [ %i.pw, %bb.ct ] ; 2 uses
  %i.qa = phi ptr [ %.pre849, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i ], [ %i.pz, %bb.ct ] ; 3 uses
  %.sroa.021.sroa.5.0..sroa_idx.i.i.i.promoted = phi i64 [ %.sroa.021.sroa.5.0..sroa_idx.i.i.i.promoted.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i ], [ 1, %bb.ct ]
  %.promoted558 = phi ptr [ %.promoted558.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i ], [ %i.py, %bb.ct ]
  %i.qb = phi ptr [ %i.sw, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i ], [ %i.oy, %bb.ct ]
  %i.qc = phi i64 [ %i.sy, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i ], [ %i.oz, %bb.ct ] ; 6 uses
  %.sroa.522.0..sroa_idx.i.i.i.promoted = phi i8 [ %.pre.i.i.i.pre.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i ], [ 2, %bb.ct ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.qd = icmp eq i8 %.sroa.522.0..sroa_idx.i.i.i.promoted, 2
  %.promoted = load ptr, ptr %i.hf, align 8
  %i.qe = ptrtoint ptr %i.qa to i64
  %.promoted571 = load i64, ptr %.sroa.727.0..sroa_idx.i.i.i.i.i.i, align 8
  %.promoted572 = load i64, ptr %.sroa.626.0..sroa_idx.i.i.i.i.i.i, align 8
  %.promoted573 = load i64, ptr %.sroa.525.0..sroa_idx.i.i.i.i.i.i, align 8
  %.promoted574 = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i.i.i.i, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit.i.i.i.i.i.i, %bb.cu
  %i.qf = phi ptr [ %i.sq, %.loopexit.i.i.i.i.i.i ], [ %.promoted574, %bb.cu ] ; 4 uses
  %i.qg = phi i64 [ %i.sp, %.loopexit.i.i.i.i.i.i ], [ %.promoted573, %bb.cu ] ; 9 uses
  %i.qh = phi i64 [ %i.sp, %.loopexit.i.i.i.i.i.i ], [ %.promoted572, %bb.cu ] ; 4 uses
  %i.qi = phi i64 [ 0, %.loopexit.i.i.i.i.i.i ], [ %.promoted571, %bb.cu ] ; 10 uses
  %i.qj = phi i64 [ 0, %.loopexit.i.i.i.i.i.i ], [ %.sroa.021.sroa.5.0..sroa_idx.i.i.i.promoted, %bb.cu ] ; 5 uses
  %.sink.i.ph.i.i.i.i.i.i.i.i559 = phi ptr [ %.sink.i.ph.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.promoted558, %bb.cu ] ; 7 uses
  %i.qk = phi i8 [ 0, %.loopexit.i.i.i.i.i.i ], [ %.sroa.522.0..sroa_idx.i.i.i.promoted, %bb.cu ] ; 2 uses
  %.val.i200540 = phi ptr [ %.val.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.promoted, %bb.cu ] ; 6 uses
  %.not.i.i.i.i.i.i.i = phi i1 [ false, %.loopexit.i.i.i.i.i.i ], [ %i.qd, %bb.cu ]
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNtB18_8WordInfoNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1a_.exit.thread.i.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %.not.i199 = icmp ult i64 %i.qi, %i.qh
  br i1 %.not.i199, label %bb.cx, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNtB18_8WordInfoNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1a_.exit.thread.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.ql = icmp ugt i64 %i.qi, %i.qg
  br i1 %i.ql, label %bb.dg, label %bb.cy, !prof !240

bb.cy:                                            ; preds = %bb.cx
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !500), !noalias !503
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qg
  %i.qo = icmp eq i64 %i.qg, %i.qi
  br i1 %i.qo, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cy
  %i.qp = getelementptr inbounds nuw i8, ptr %.val.i200540, i64 64
  br label %bb.cz

bb.cz:                                            ; preds = %bb.df, %.lr.ph.i.i
  %.sroa.0.015.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %bb.df ] ; 4 uses
  %.sroa.4.014.i.i = phi i64 [ undef, %.lr.ph.i.i ], [ %.sroa.4.1.i.i, %bb.df ] ; 3 uses
  %.sroa.010.013.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.sroa.010.1.i.i, %bb.df ] ; 4 uses
  %.sroa.0.0112.i.i = phi ptr [ %i.qm, %.lr.ph.i.i ], [ %i.qq, %bb.df ] ; 2 uses
  %.sroa.7.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.qr, %bb.df ] ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0.0112.i.i, i64 1 ; 2 uses
  %i.qr = add nuw nsw i64 %.sroa.7.011.i.i, 1
  %i.qs = load i8, ptr %.sroa.0.0112.i.i, align 1, !alias.scope !500, !noalias !508, !noundef !4
  switch i8 %i.qs, label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i [
    i8 9, label %bb.da
    i8 10, label %bb.db
    i8 11, label %bb.db
    i8 12, label %bb.db
    i8 13, label %bb.db
    i8 32, label %bb.db
  ]

bb.da:                                            ; preds = %bb.cz
  %.not13.i.i = icmp eq i64 %.sroa.010.013.i.i, 1
  br i1 %.not13.i.i, label %bb.dc, label %bb.df

bb.db:                                            ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz
  %i.qt = add i64 %.sroa.0.015.i.i, 1
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i200540) ], !noalias !503
  %i.qu = load i64, ptr %i.qp, align 8, !noalias !511, !noundef !4 ; 3 uses
  %i.qv = icmp eq i64 %i.qu, 0
  br i1 %i.qv, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qw = udiv i64 %.sroa.0.015.i.i, %i.qu
  %i.qx = add i64 %i.qw, 1
  %i.qy = mul i64 %i.qx, %i.qu
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #24, !noalias !511
  unreachable

bb.df:                                            ; preds = %bb.dd, %bb.db, %bb.da
  %.sroa.010.1.i.i = phi i64 [ %.sroa.010.013.i.i, %bb.db ], [ 1, %bb.dd ], [ 1, %bb.da ]
  %.sroa.4.1.i.i = phi i64 [ %.sroa.4.014.i.i, %bb.db ], [ %.sroa.4.014.i.i, %bb.dd ], [ %.sroa.0.015.i.i, %bb.da ]
  %.sroa.0.1.i.i = phi i64 [ %i.qt, %bb.db ], [ %i.qy, %bb.dd ], [ 0, %bb.da ]
  %i.qz = icmp eq ptr %i.qq, %i.qn
  br i1 %i.qz, label %.loopexit.i, label %bb.cz

bb.dg:                                            ; preds = %bb.cx
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.qi, i64 noundef %i.qg, i64 noundef %i.qg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #24, !noalias !512
  unreachable

_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i: ; preds = %bb.cz
  store ptr %.val.i200540, ptr %i.hf, align 8
  store ptr %.sink.i.ph.i.i.i.i.i.i.i.i559, ptr %i.k, align 8
  store i64 %i.qj, ptr %.sroa.021.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.ra = icmp eq i64 %i.qi, 0
  %i.rb = add i64 %.sroa.7.011.i.i, %i.qi         ; 7 uses
  %i.rc = icmp ult i64 %i.rb, %i.qh
  br i1 %i.rc, label %.lr.ph.i23.i, label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit13scan_word_end.exit.i

.lr.ph.i23.i:                                     ; preds = %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i, %bb.dj
  %.sroa.0.028.i.i = phi i64 [ %i.ri, %bb.dj ], [ %i.rb, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i ] ; 3 uses
  %.sroa.04.027.i.i = phi i64 [ %.sroa.04.1.i.i, %bb.dj ], [ 0, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i ] ; 2 uses
  %.sroa.012.026.i.i = phi i1 [ %.sroa.012.1.i.i, %bb.dj ], [ false, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i ]
  %.sroa.5.025.i.i = phi i8 [ %.sroa.5.1.i.i, %bb.dj ], [ undef, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !513
  call fastcc void @_RNvNtCs1mQHuhqOwPS_6uu_fmt9parasplit16decode_char_info(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qf, i64 noundef %i.qg, i64 noundef %.sroa.0.028.i.i) #23, !noalias !513
  %i.rd = load i8, ptr %i.hh, align 4, !range !251, !noalias !513, !noundef !4
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i23.i
  %i.rf = load i64, ptr %i.hi, align 8, !noalias !513, !noundef !4
  br label %bb.dj

bb.di:                                            ; preds = %.lr.ph.i23.i
  %i.rg = load i32, ptr %i.hj, align 8, !range !517, !noalias !513, !noundef !4 ; 3 uses
  switch i32 %i.rg, label %bb.dk [
    i32 12, label %bb.dl
    i32 32, label %bb.dl
    i32 9, label %bb.dl
    i32 10, label %bb.dl
    i32 13, label %bb.dl
    i32 11, label %bb.dl
  ]

bb.dj:                                            ; preds = %bb.dk, %bb.dh
  %.sroa.5.1.i.i = phi i8 [ undef, %bb.dh ], [ %i.rl, %bb.dk ] ; 2 uses
  %.sroa.012.1.i.i = phi i1 [ false, %bb.dh ], [ %.not15.i.i205, %bb.dk ] ; 2 uses
  %.pn.i.i = phi i64 [ %i.rf, %bb.dh ], [ %i.rk, %bb.dk ]
  %.sroa.04.1.i.i = add i64 %.pn.i.i, %.sroa.04.027.i.i ; 2 uses
  %i.rh = load i64, ptr %i.b, align 8, !noalias !513, !noundef !4
  %i.ri = add i64 %i.rh, %.sroa.0.028.i.i         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !513
  %i.rj = icmp ult i64 %i.ri, %i.qh
  br i1 %i.rj, label %.lr.ph.i23.i, label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit13scan_word_end.exit.i

bb.dk:                                            ; preds = %bb.di
  %i.rk = load i64, ptr %i.hi, align 8, !noalias !513, !noundef !4
  %.not15.i.i205 = icmp ne i32 %i.rg, -1
  %i.rl = trunc i32 %i.rg to i8
  br label %bb.dj

bb.dl:                                            ; preds = %bb.di, %bb.di, %bb.di, %bb.di, %bb.di, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !513
  br label %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit13scan_word_end.exit.i

_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit13scan_word_end.exit.i: ; preds = %bb.dj, %bb.dl, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i
  %.sroa.5.024.i.i = phi i8 [ %.sroa.5.025.i.i, %bb.dl ], [ undef, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i ], [ %.sroa.5.1.i.i, %bb.dj ]
  %.sroa.012.022.i.i = phi i1 [ %.sroa.012.026.i.i, %bb.dl ], [ false, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i ], [ %.sroa.012.1.i.i, %bb.dj ]
  %.sroa.04.020.i.i = phi i64 [ %.sroa.04.027.i.i, %bb.dl ], [ 0, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i ], [ %.sroa.04.1.i.i, %bb.dj ]
  %.sroa.0.018.i.i = phi i64 [ %.sroa.0.028.i.i, %bb.dl ], [ %i.rb, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit12analyze_tabs.exit.i ], [ %i.ri, %bb.dj ] ; 7 uses
  store i64 %.sroa.0.018.i.i, ptr %.sroa.727.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !497, !noalias !518
  %i.rm = trunc nuw i8 %i.qk to i1
  br i1 %i.rm, label %bb.dm, label %bb.dn

.loopexit.i:                                      ; preds = %bb.df, %bb.cy
  store i64 %i.qh, ptr %.sroa.727.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !497, !noalias !518
  br label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNtB18_8WordInfoNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1a_.exit.thread.i.i.i.i.i.i

bb.dm:                                            ; preds = %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit13scan_word_end.exit.i
  %.not19.i = icmp eq i64 %.sroa.010.013.i.i, 0
  br i1 %.not19.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.do, %bb.dm, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit13scan_word_end.exit.i
  %.sroa.09.0.i = phi i8 [ 0, %_RNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplit13scan_word_end.exit.i ], [ %i.ro, %bb.do ], [ 1, %bb.dm ]
  br i1 %.sroa.012.022.i.i, label %bb.dp, label %bb.dq

bb.do:                                            ; preds = %bb.dm
  %i.rn = icmp samesign ugt i64 %.sroa.7.011.i.i, 1
  %i.ro = zext i1 %i.rn to i8
  br label %bb.dn

bb.dp:                                            ; preds = %bb.dn
  switch i8 %.sroa.5.024.i.i, label %bb.dq [
    i8 33, label %bb.dr
    i8 46, label %bb.dr
    i8 63, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dr, %bb.dp, %bb.dn
  %.sroa.010.0.i = phi i8 [ 0, %bb.dn ], [ 1, %bb.dr ], [ 0, %bb.dp ] ; 2 uses
  store i8 %.sroa.010.0.i, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !alias.scope !497, !noalias !518
  %i.rp = getelementptr inbounds nuw i8, ptr %.val.i200540, i64 78
  %i.rq = load i8, ptr %i.rp, align 2, !range !251, !noalias !512, !noundef !4
  %i.rr = trunc nuw i8 %i.rq to i1
  %.not21.i = icmp ugt i64 %.sroa.0.018.i.i, %i.qg ; 2 uses
  br i1 %i.rr, label %bb.dt, label %bb.ds

bb.dr:                                            ; preds = %bb.dp, %bb.dp, %bb.dp
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dq
  %i.rs = icmp ult i64 %.sroa.0.018.i.i, %i.qi
  %or.cond.i201 = or i1 %i.rs, %.not21.i
  br i1 %or.cond.i201, label %bb.du, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i, !prof !519

bb.dt:                                            ; preds = %bb.dq
  %i.rt = icmp ult i64 %.sroa.0.018.i.i, %i.rb
  %or.cond22.i = or i1 %i.rt, %.not21.i
  br i1 %or.cond22.i, label %bb.dw, label %bb.dv, !prof !519

bb.du:                                            ; preds = %bb.ds
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.qi, i64 noundef %.sroa.0.018.i.i, i64 noundef %i.qg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #24, !noalias !512
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.rb
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i

bb.dw:                                            ; preds = %bb.dt
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.rb, i64 noundef %.sroa.0.018.i.i, i64 noundef %i.qg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #24, !noalias !512
  unreachable

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i: ; preds = %bb.dv, %bb.ds
  %.pn.i = phi i64 [ %i.rb, %bb.dv ], [ %i.qi, %bb.ds ]
  %.sroa.012.0.i202 = phi ptr [ %i.ru, %bb.dv ], [ %i.qm, %bb.ds ]
  %.sroa.07.0.i = phi i64 [ 0, %bb.dv ], [ %.sroa.7.011.i.i, %bb.ds ]
  %.sroa.03.0.i = phi i64 [ 0, %bb.dv ], [ %.sroa.0.015.i.i, %bb.ds ]
  %.sroa.4.0.i = phi i64 [ undef, %bb.dv ], [ %.sroa.4.014.i.i, %bb.ds ]
  %.sroa.0.0.i203 = phi i64 [ 0, %bb.dv ], [ %.sroa.010.013.i.i, %bb.ds ]
  %.sroa.3.0.i = sub nuw i64 %.sroa.0.018.i.i, %.pn.i
  %i.rv = zext i1 %i.ra to i8
  br label %bb.ee

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNtB18_8WordInfoNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1a_.exit.thread.i.i.i.i.i.i: ; preds = %bb.cw, %.loopexit.i, %bb.cv
  %i.rw = phi i8 [ %i.qk, %bb.cv ], [ 2, %.loopexit.i ], [ 2, %bb.cw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %.sink.i.ph.i.i.i.i.i.i.i.i559, null
  br i1 %.not.i2.i.i.i.i.i.i, label %.loopexit41.i.i.i.i.i.i.loopexit, label %bb.dx

bb.dx:                                            ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNtB18_8WordInfoNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1a_.exit.thread.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.qj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dy, label %bb.dz, !prof !147

bb.dy:                                            ; preds = %bb.dx
  %i.rx = icmp eq ptr %.sink.i.ph.i.i.i.i.i.i.i.i559, %i.qa
  br i1 %i.rx, label %.loopexit41.i.i.i.i.i.i.loopexit, label %select.unfold.i.i.i.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.ry = ptrtoint ptr %.sink.i.ph.i.i.i.i.i.i.i.i559 to i64
  %i.rz = sub nuw i64 %i.qe, %i.ry
  %i.sa = udiv exact i64 %i.rz, 24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.qj, %i.sa
  %i.sb = getelementptr inbounds nuw [24 x i8], ptr %.sink.i.ph.i.i.i.i.i.i.i.i559, i64 %i.qj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4skipINtB4_4SkipINtNtNtBa_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4skipINtB4_4SkipINtNtNtBa_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dz
  store ptr %.val.i200540, ptr %i.hf, align 8
  store i8 %i.rw, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8
  store i64 0, ptr %.sroa.021.sroa.5.0..sroa_idx.i.i.i, align 8
  store ptr %i.qa, ptr %i.k, align 8, !alias.scope !526, !noalias !529
  br label %.loopexit41.i.i.i.i.i.i

select.unfold.i.i.i.i.i.i.i.i:                    ; preds = %bb.dz, %bb.dy
  %.sroa.0.0.ph.i.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.sb, %bb.dz ], [ %.sink.i.ph.i.i.i.i.i.i.i.i559, %bb.dy ] ; 3 uses
  %.sink.i.ph.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i.i.i, i64 24
  %i.sc = getelementptr i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i.i.i, i64 16
  %.val4.i.i.i.i.i.i.i.i = load i64, ptr %i.sc, align 8, !noalias !532, !noundef !4 ; 5 uses
  %i.sd = load i64, ptr %.val2.i.i.i.i.i.i.i.i, align 8, !noalias !533, !noundef !4 ; 4 uses
  %i.se = icmp ugt i64 %i.sd, %.val4.i.i.i.i.i.i.i.i
  br i1 %i.se, label %bb.ec, label %bb.ea, !prof !240

bb.ea:                                            ; preds = %select.unfold.i.i.i.i.i.i.i.i
  %i.sf = getelementptr i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i.i.i, i64 8
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.sf, align 8, !noalias !532, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  %i.sg = sub nuw i64 %.val4.i.i.i.i.i.i.i.i, %i.sd ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i.i.i, i64 %i.sd ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i.i.i, i64 %.val4.i.i.i.i.i.i.i.i
  %i.sj = icmp samesign eq i64 %i.sg, 0
  br i1 %i.sj, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ea, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.02.07.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sm, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ea ] ; 3 uses
  %i.sk = phi ptr [ %i.sl, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sh, %bb.ea ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.sk, align 1, !alias.scope !536, !noalias !539, !noundef !4
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i, label %bb.eb [
    i8 32, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i
    i8 9, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i
    i8 10, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i
    i8 13, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i
    i8 11, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i
    i8 12, label %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 1 ; 2 uses
  %i.sm = add nuw nsw i64 %.sroa.02.07.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.sn = icmp eq ptr %i.sl, %i.si
  br i1 %i.sn, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.eb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.so = icmp samesign ult i64 %.sroa.02.07.i.i.i.i.i.i.i.i.i.i.i, %i.sg
  call void @llvm.assume(i1 %i.so)
  br label %.loopexit.i.i.i.i.i.i

bb.ec:                                            ; preds = %select.unfold.i.i.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.sd, i64 noundef %.val4.i.i.i.i.i.i.i.i, i64 noundef %.val4.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #24, !noalias !533
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.eb, %bb.ea
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.02.07.i.i.i.i.i.i.i.i.i.i.i, %bb.eb ], [ 0, %bb.ea ], [ %i.sg, %_RNCNvMs4_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB7_9WordSplit3new0B9_.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sp = sub nuw nsw i64 %i.sg, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sh, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %i.sq, ptr %.sroa.424.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !544, !noalias !545
  store i64 %i.sp, ptr %.sroa.525.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !544, !noalias !545
  store i64 %i.sp, ptr %.sroa.626.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !544, !noalias !545
  store i64 0, ptr %.sroa.727.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !544, !noalias !545
  br label %bb.cv

.loopexit41.i.i.i.i.i.i.loopexit:                 ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNtB18_8WordInfoNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1a_.exit.thread.i.i.i.i.i.i, %bb.dy
  %.lcssa642 = phi i64 [ %i.qj, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNtB18_8WordInfoNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1a_.exit.thread.i.i.i.i.i.i ], [ 0, %bb.dy ]
  store ptr %.val.i200540, ptr %i.hf, align 8
  store i8 %i.rw, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8
  store ptr %.sink.i.ph.i.i.i.i.i.i.i.i559, ptr %i.k, align 8
  store i64 %.lcssa642, ptr %.sroa.021.sroa.5.0..sroa_idx.i.i.i, align 8
  br label %.loopexit41.i.i.i.i.i.i

.loopexit41.i.i.i.i.i.i:                          ; preds = %.loopexit41.i.i.i.i.i.i.loopexit, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4skipINtB4_4SkipINtNtNtBa_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !549
  %i.sr = load i8, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !range !551, !alias.scope !552, !noalias !553, !noundef !4
  %.not.i3.i.i.i.i.i.i = icmp eq i8 %i.sr, 2
  br i1 %.not.i3.i.i.i.i.i.i, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtB1M_4skip4SkipINtNtNtB1Q_5slice4iter4IterIBx_hEEENtBI_9WordSplitNCNvMs3_BI_NtBI_9ParaWords12create_wordss0_0EEBK_.exit.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %.loopexit41.i.i.i.i.i.i
  call void @_RNvXs5_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9WordSplitNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hg) #23, !noalias !554
  %i.ss = load i64, ptr %i.h, align 8, !range !321, !noalias !549, !noundef !4 ; 2 uses
  %.not3.i4.i.i.i.i.i.i = icmp eq i64 %i.ss, 2
  br i1 %.not3.i4.i.i.i.i.i.i, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtB1M_4skip4SkipINtNtNtB1Q_5slice4iter4IterIBx_hEEENtBI_9WordSplitNCNvMs3_BI_NtBI_9ParaWords12create_wordss0_0EEBK_.exit.i.i.i, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i: ; preds = %bb.ed
  %.sroa.8.i.i.i.i.sroa.0.0.copyload221 = load i64, ptr %.sroa.8.0..sroa_idx3.i.i.i.i, align 8, !noalias !555
  %.sroa.8.i.i.i.i.sroa.5.0.copyload222 = load ptr, ptr %.sroa.8.i.i.i.i.sroa.5.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx, align 8, !noalias !555
  %.sroa.8.i.i.i.i.sroa.6.0.copyload223 = load i64, ptr %.sroa.8.i.i.i.i.sroa.6.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx, align 8, !noalias !555
  %.sroa.8.i.i.i.i.sroa.7.0.copyload224 = load i64, ptr %.sroa.8.i.i.i.i.sroa.7.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx, align 8, !noalias !555
  %.sroa.8.i.i.i.i.sroa.8.0.copyload225 = load i64, ptr %.sroa.8.i.i.i.i.sroa.8.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx, align 8, !noalias !555
  %.sroa.8.i.i.i.i.sroa.9.0.copyload226 = load i64, ptr %.sroa.8.i.i.i.i.sroa.9.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx, align 8, !noalias !555
  %.sroa.8.i.i.i.i.sroa.10.0.copyload227 = load i8, ptr %.sroa.8.i.i.i.i.sroa.10.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx, align 8, !noalias !555
  %.sroa.8.i.i.i.i.sroa.11.0.copyload228 = load i8, ptr %.sroa.8.i.i.i.i.sroa.11.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx, align 1, !noalias !555
  %.sroa.8.i.i.i.i.sroa.12.0.copyload229 = load i8, ptr %.sroa.8.i.i.i.i.sroa.12.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx, align 2, !noalias !555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i.i.i.sroa.13, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i.i.i.sroa.13.0..sroa.8.0..sroa_idx3.i.i.i.i.sroa_idx, i64 5, i1 false), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !549
  br label %bb.ee

bb.ee:                                            ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i
  %.sroa.8.i.i.i.i.sroa.12.0 = phi i8 [ %.sroa.8.i.i.i.i.sroa.12.0.copyload229, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %i.rv, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %.sroa.8.i.i.i.i.sroa.11.0 = phi i8 [ %.sroa.8.i.i.i.i.sroa.11.0.copyload228, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %.sroa.010.0.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %.sroa.8.i.i.i.i.sroa.10.0 = phi i8 [ %.sroa.8.i.i.i.i.sroa.10.0.copyload227, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %.sroa.09.0.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %.sroa.8.i.i.i.i.sroa.9.0 = phi i64 [ %.sroa.8.i.i.i.i.sroa.9.0.copyload226, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %.sroa.03.0.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %.sroa.8.i.i.i.i.sroa.8.0 = phi i64 [ %.sroa.8.i.i.i.i.sroa.8.0.copyload225, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %.sroa.04.020.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %.sroa.8.i.i.i.i.sroa.7.0 = phi i64 [ %.sroa.8.i.i.i.i.sroa.7.0.copyload224, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %.sroa.07.0.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %.sroa.8.i.i.i.i.sroa.6.0 = phi i64 [ %.sroa.8.i.i.i.i.sroa.6.0.copyload223, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %.sroa.3.0.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %.sroa.8.i.i.i.i.sroa.5.0 = phi ptr [ %.sroa.8.i.i.i.i.sroa.5.0.copyload222, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %.sroa.012.0.i202, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %.sroa.8.i.i.i.i.sroa.0.0 = phi i64 [ %.sroa.8.i.i.i.i.sroa.0.0.copyload221, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %.sroa.4.0.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.ss, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.i.i.i.i ], [ %.sroa.0.0.i203, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2r_.exit.thread.i.i.i.i ]
  %i.st = icmp ult i64 %i.qc, 144115188075855872
  call void @llvm.assume(i1 %i.st)
  %i.su = load i64, ptr %i.n, align 8, !range !40, !alias.scope !556, !noalias !557, !noundef !4
  %i.sv = icmp eq i64 %i.qc, %i.su
  br i1 %i.sv, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2r_.exit.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2r_.exit.i.i.i.i: ; preds = %bb.ee
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef %i.qc, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 64) #23, !noalias !558
  %.pre25.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i149, align 8, !alias.scope !556, !noalias !557
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE7reserveBI_.exit.i51.i.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2r_.exit.i.i.i.i, %bb.ee
  %i.sw = phi ptr [ %.pre25.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_4skip4SkipINtNtNtBb_5slice4iter4IterINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9WordSplitNCNvMs3_B2p_NtB2p_9ParaWords12create_wordss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2r_.exit.i.i.i.i ], [ %i.qb, %bb.ee ] ; 2 uses
  %i.sx = getelementptr inbounds nuw [64 x i8], ptr %i.sw, i64 %i.qc ; 11 uses
  store i64 %.sroa.0.110.i.i.i.i, ptr %i.sx, align 8, !noalias !559
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  store i64 %.sroa.8.i.i.i.i.sroa.0.0, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !559
  %.sroa.8.i.i.i.i.sroa.5.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  store ptr %.sroa.8.i.i.i.i.sroa.5.0, ptr %.sroa.8.i.i.i.i.sroa.5.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 8, !noalias !559
  %.sroa.8.i.i.i.i.sroa.6.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  store i64 %.sroa.8.i.i.i.i.sroa.6.0, ptr %.sroa.8.i.i.i.i.sroa.6.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 8, !noalias !559
  %.sroa.8.i.i.i.i.sroa.7.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  store i64 %.sroa.8.i.i.i.i.sroa.7.0, ptr %.sroa.8.i.i.i.i.sroa.7.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 8, !noalias !559
  %.sroa.8.i.i.i.i.sroa.8.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  store i64 %.sroa.8.i.i.i.i.sroa.8.0, ptr %.sroa.8.i.i.i.i.sroa.8.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 8, !noalias !559
  %.sroa.8.i.i.i.i.sroa.9.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  store i64 %.sroa.8.i.i.i.i.sroa.9.0, ptr %.sroa.8.i.i.i.i.sroa.9.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 8, !noalias !559
  %.sroa.8.i.i.i.i.sroa.10.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 56
  store i8 %.sroa.8.i.i.i.i.sroa.10.0, ptr %.sroa.8.i.i.i.i.sroa.10.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 8, !noalias !559
  %.sroa.8.i.i.i.i.sroa.11.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 57
  store i8 %.sroa.8.i.i.i.i.sroa.11.0, ptr %.sroa.8.i.i.i.i.sroa.11.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 1, !noalias !559
  %.sroa.8.i.i.i.i.sroa.12.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 58
  store i8 %.sroa.8.i.i.i.i.sroa.12.0, ptr %.sroa.8.i.i.i.i.sroa.12.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 2, !noalias !559
  %.sroa.8.i.i.i.i.sroa.13.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i.i.i.sroa.13.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i.i.i.sroa.13, i64 5, i1 false), !noalias !559
  %i.sy = add nuw nsw i64 %i.qc, 1                ; 2 uses
  store i64 %i.sy, ptr %.sroa.5.0..sroa_idx.i.i150, align 8, !alias.scope !556, !noalias !557
  %.pre.i.i.i.pre.i.i.i = load i8, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !alias.scope !560, !noalias !562
  %.promoted558.pre = load ptr, ptr %i.k, align 8
  %.sroa.021.sroa.5.0..sroa_idx.i.i.i.promoted.pre = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i.i.i, align 8
  %.pre849 = load ptr, ptr %.sroa.021.sroa.4.0..sroa_idx.i.i.i, align 8
  %.val.i.i.i.i.i.i.i.i.pre = load ptr, ptr %.sroa.021.sroa.6.0..sroa_idx.i.i.i, align 8
  %.val2.i.i.i.i.i.i.i.i.pre = load ptr, ptr %.sroa.021.sroa.7.0..sroa_idx.i.i.i, align 8
  br label %bb.cu

_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtB1M_4skip4SkipINtNtNtB1Q_5slice4iter4IterIBx_hEEENtBI_9WordSplitNCNvMs3_BI_NtBI_9ParaWords12create_wordss0_0EEBK_.exit.i.i.i: ; preds = %bb.ed, %.loopexit41.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !467
  br label %_RNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9ParaWords3new.exit.i

_RNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9ParaWords3new.exit.i: ; preds = %_RNvYNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtBe_5slice4iter5SplithNCNCNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB1B_9ParaWords12create_words00ENCB1t_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1D_.exit.thread.i.i.i.i.i.i.i.i, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtB1M_4skip4SkipINtNtNtB1Q_5slice4iter4IterIBx_hEEENtBI_9WordSplitNCNvMs3_BI_NtBI_9ParaWords12create_wordss0_0EEBK_.exit.i.i.i, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.i.i.i
  %.sroa.9.0.copyload.i = phi i64 [ %i.qc, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtB1M_4skip4SkipINtNtNtB1Q_5slice4iter4IterIBx_hEEENtBI_9WordSplitNCNvMs3_BI_NtBI_9ParaWords12create_wordss0_0EEBK_.exit.i.i.i ], [ %i.oz, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.i.i.i ], [ %i.ko, %_RNvYNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtBe_5slice4iter5SplithNCNCNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB1B_9ParaWords12create_words00ENCB1t_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1D_.exit.thread.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !397
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !563 ; 3 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i149, align 8, !noalias !563, !nonnull !4, !noundef !4 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !397
  %.idx.i = shl nuw nsw i64 %.sroa.9.0.copyload.i, 6
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %.idx.i ; 15 uses
  %i.ta = icmp eq i64 %.sroa.9.0.copyload.i, 0
  br i1 %i.ta, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_RNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9ParaWords3new.exit.i
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 64 ; 5 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 40
  %i.td = load i64, ptr %i.tc, align 8, !noundef !4
  br i1 %or.cond.i.i, label %bb.eh, label %bb.ei

bb.eg:                                            ; preds = %_RNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9ParaWords3new.exit.i
  %i.te = load i64, ptr %2, align 8, !range !40, !alias.scope !390, !noalias !564, !noundef !4
  %i.tf = load i64, ptr %i.ho, align 8, !alias.scope !390, !noalias !564, !noundef !4 ; 4 uses
  %i.tg = icmp sgt i64 %i.tf, -1
  call void @llvm.assume(i1 %i.tg)
  %i.th = sub nsw i64 %i.te, %i.tf
  %i.ti = icmp ugt i64 %i.th, 1
  br i1 %i.ti, label %bb.kh, label %bb.kg, !prof !147

bb.eh:                                            ; preds = %bb.ef
  %i.tj = load ptr, ptr %.sroa.720.0..sroa_idx21, align 8, !alias.scope !387, !noalias !392, !nonnull !4, !noundef !4 ; 2 uses
  %i.tk = load i64, ptr %i.hq, align 8, !alias.scope !387, !noalias !392, !noundef !4 ; 4 uses
  %i.tl = load i64, ptr %2, align 8, !range !40, !alias.scope !390, !noalias !564, !noundef !4
  %i.tm = load i64, ptr %i.ho, align 8, !alias.scope !390, !noalias !564, !noundef !4 ; 4 uses
  %i.tn = icmp sgt i64 %i.tm, -1
  call void @llvm.assume(i1 %i.tn)
  %i.to = sub nsw i64 %i.tl, %i.tm
  %i.tp = icmp ult i64 %i.tk, %i.to
  br i1 %i.tp, label %bb.eo, label %bb.en, !prof !147

bb.ei:                                            ; preds = %bb.ef
  br i1 %i.kj, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.tq = load ptr, ptr %i.hm, align 8, !alias.scope !387, !noalias !392, !nonnull !4, !noundef !4 ; 2 uses
  %i.tr = load i64, ptr %i.hn, align 8, !alias.scope !387, !noalias !392, !noundef !4 ; 4 uses
  %i.ts = load i64, ptr %2, align 8, !range !40, !alias.scope !390, !noalias !564, !noundef !4
  %i.tt = load i64, ptr %i.ho, align 8, !alias.scope !390, !noalias !564, !noundef !4 ; 4 uses
  %i.tu = icmp sgt i64 %i.tt, -1
  call void @llvm.assume(i1 %i.tu)
  %i.tv = sub nsw i64 %i.ts, %i.tt
  %i.tw = icmp ult i64 %i.tr, %i.tv
  br i1 %i.tw, label %bb.el, label %bb.ek, !prof !147

bb.ek:                                            ; preds = %bb.ej
  %i.tx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tq, i64 noundef %i.tr) #22 ; 2 uses
  %.not.i152 = icmp eq ptr %i.tx, null
  br i1 %.not.i152, label %bb.em, label %bb.et

bb.el:                                            ; preds = %bb.ej
  %i.ty = load ptr, ptr %i.hp, align 8, !alias.scope !390, !noalias !564, !nonnull !4, !noundef !4
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.tt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tz, ptr nonnull align 1 %i.tq, i64 %i.tr, i1 false)
  %i.ua = add i64 %i.tt, %i.tr
  store i64 %i.ua, ptr %i.ho, align 8, !alias.scope !390, !noalias !564
  br label %bb.em

bb.em:                                            ; preds = %bb.ep, %bb.el, %bb.ek, %bb.ei
  %.sroa.012.0.i = phi i64 [ %i.up, %bb.ep ], [ 0, %bb.ei ], [ %i.kh, %bb.el ], [ %i.kh, %bb.ek ]
  %i.ub = add i64 %.sroa.012.0.i, %i.td           ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 24
  %i.uf = load i64, ptr %i.ue, align 8, !noundef !4 ; 4 uses
  %i.ug = load i64, ptr %2, align 8, !range !40, !alias.scope !390, !noalias !564, !noundef !4
  %i.uh = load i64, ptr %i.ho, align 8, !alias.scope !390, !noalias !564, !noundef !4 ; 4 uses
  %i.ui = icmp sgt i64 %i.uh, -1
  call void @llvm.assume(i1 %i.ui)
  %i.uj = sub nsw i64 %i.ug, %i.uh
  %i.uk = icmp ult i64 %i.uf, %i.uj
  br i1 %i.uk, label %bb.er, label %bb.eq, !prof !147

bb.en:                                            ; preds = %bb.eh
  %i.ul = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tj, i64 noundef %i.tk) #22 ; 2 uses
  %.not29.i = icmp eq ptr %i.ul, null
  br i1 %.not29.i, label %bb.ep, label %bb.et

bb.eo:                                            ; preds = %bb.eh
  %i.um = load ptr, ptr %i.hp, align 8, !alias.scope !390, !noalias !564, !nonnull !4, !noundef !4
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.tm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.un, ptr nonnull align 1 %i.tj, i64 %i.tk, i1 false)
  %i.uo = add i64 %i.tm, %i.tk
  store i64 %i.uo, ptr %i.ho, align 8, !alias.scope !390, !noalias !564
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.up = load i64, ptr %i.hr, align 8, !alias.scope !387, !noalias !392, !noundef !4
  br label %bb.em

bb.eq:                                            ; preds = %bb.em
  %i.uq = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ud, i64 noundef %i.uf) #22 ; 2 uses
  %.not30.i = icmp eq ptr %i.uq, null
  br i1 %.not30.i, label %bb.es, label %bb.et

bb.er:                                            ; preds = %bb.em
  %i.ur = load ptr, ptr %i.hp, align 8, !alias.scope !390, !noalias !564, !nonnull !4, !noundef !4
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.uh
end_hunk_1
