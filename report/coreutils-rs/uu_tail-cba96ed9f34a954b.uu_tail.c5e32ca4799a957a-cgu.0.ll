Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail4argsNtB5_8Settings4from:bb.a
  %i.rr = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.rk, i64 %i.rq) ; 2 uses
  %i.rs = extractvalue { i64, i1 } %i.rr, 1
  br i1 %i.rs, label %.loopexit533, label %bb.dx, !prof !17

bb.dx:                                            ; preds = %bb.dw
  %i.rt = extractvalue { i64, i1 } %i.rr, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.ri, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i142

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.dy
  %.sroa.0.2140.i = phi ptr [ %i.sa, %bb.dy ], [ %i.re, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.rz, %bb.dy ], [ %i.rf, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.sc, %bb.dy ], [ 0, %.preheader114.i ]
  %i.ru = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !4865, !noundef !9
  %i.rv = zext i8 %i.ru to i32
  %i.rw = add nsw i32 %i.rv, -48                  ; 2 uses
  %i.rx = icmp ult i32 %i.rw, 10
  br i1 %i.rx, label %bb.dy, label %.loopexit533

bb.dy:                                            ; preds = %.lr.ph141.i
  %i.ry = mul i64 %.sroa.084.2138.i, 10
  %i.rz = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.sb = zext nneg i32 %i.rw to i64
  %i.sc = sub i64 %i.ry, %i.sb                    ; 2 uses
  %.not103.i = icmp eq i64 %i.rz, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.dz:                                            ; preds = %bb.dt, %bb.ds
  %.sroa.26.0.i = phi i64 [ %i.rd, %bb.dt ], [ %.sroa.8.0.copyload327, %bb.ds ] ; 4 uses
  %.sroa.0.0.i144 = phi ptr [ %i.rc, %bb.dt ], [ %.sroa.5322.0.copyload324, %bb.ds ] ; 2 uses
  %i.sd = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.sd, label %.preheader.i145, label %.preheader111.i

.preheader.i145:                                  ; preds = %bb.dz
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.dz, %bb.ec
  %.sroa.0.3145.i = phi ptr [ %i.se, %bb.ec ], [ %.sroa.0.0.i144, %bb.dz ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.sf, %bb.ec ], [ %.sroa.26.0.i, %bb.dz ]
  %.sroa.084.3143.i = phi i64 [ %i.sq, %bb.ec ], [ 0, %bb.dz ]
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.sf = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.sg = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.sh = extractvalue { i64, i1 } %i.sg, 0
  %i.si = extractvalue { i64, i1 } %i.sg, 1
  br i1 %i.si, label %.loopexit533, label %bb.ea, !prof !17

bb.ea:                                            ; preds = %.preheader111.i
  %i.sj = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !4865, !noundef !9
  %i.sk = zext i8 %i.sj to i32
  %i.sl = add nsw i32 %i.sk, -48                  ; 2 uses
  %i.sm = icmp ult i32 %i.sl, 10
  br i1 %i.sm, label %bb.eb, label %.loopexit533

bb.eb:                                            ; preds = %bb.ea
  %i.sn = zext nneg i32 %i.sl to i64
  %i.so = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.sh, i64 %i.sn) ; 2 uses
  %i.sp = extractvalue { i64, i1 } %i.so, 1
  br i1 %i.sp, label %.loopexit533, label %bb.ec, !prof !17

bb.ec:                                            ; preds = %bb.eb
  %i.sq = extractvalue { i64, i1 } %i.so, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.sf, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i145, %bb.ed
  %.sroa.0.4149.i = phi ptr [ %i.sx, %bb.ed ], [ %.sroa.0.0.i144, %.preheader.i145 ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.sw, %bb.ed ], [ %.sroa.26.0.i, %.preheader.i145 ]
  %.sroa.084.4147.i = phi i64 [ %i.sz, %bb.ed ], [ 0, %.preheader.i145 ]
  %i.sr = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !4865, !noundef !9
  %i.ss = zext i8 %i.sr to i32
  %i.st = add nsw i32 %i.ss, -48                  ; 2 uses
  %i.su = icmp ult i32 %i.st, 10
  br i1 %i.su, label %bb.ed, label %.loopexit533

bb.ed:                                            ; preds = %.lr.ph150.i
  %i.sv = mul i64 %.sroa.084.4147.i, 10
  %i.sw = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.sy = zext nneg i32 %i.st to i64
  %i.sz = add i64 %i.sv, %i.sy                    ; 2 uses
  %.not105.i = icmp eq i64 %i.sw, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

bb.ee:                                            ; preds = %_RNvMsB_NtCs6JMX4GRUq9U_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.571.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.571.0.extract.trunc = trunc nuw i64 %.sroa.571.0.extract.shift to i32
  br label %bb.ef

bb.ef:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit135, %bb.ee
  %.sroa.20308.0 = phi i32 [ 5, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit135 ], [ %.sroa.571.0.extract.trunc, %bb.ee ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 3) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @152, ptr %i.s, align 8, !noalias !4867
  %i.ta = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 3, ptr %i.ta, align 8, !noalias !4867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4867
  %i.tb = load i64, ptr %i.bm, align 8, !range !24, !alias.scope !4866, !noundef !9
  %.not.i148 = icmp eq i64 %i.tb, 2
  br i1 %.not.i148, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit151, label %bb.eg, !prof !11

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bm, i64 40, i1 false), !noalias !4868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4867
  store ptr %i.s, ptr %i.q, align 8, !noalias !4867
  %.sroa.42.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.42.0..sroa_idx.i149, align 8, !noalias !4867
  %i.tc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.tc, align 8, !noalias !4867
  %.sroa.46.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i150, align 8, !noalias !4867
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #37, !noalias !4866
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit151: ; preds = %bb.ef
  %i.td = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.te = load ptr, ptr %i.td, align 8, !alias.scope !4866, !align !13, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %.not81 = icmp eq ptr %i.te, null
  br i1 %.not81, label %bb.gk, label %bb.em

.loopexit533:                                     ; preds = %.lr.ph.i142, %bb.dw, %bb.dv, %.lr.ph141.i, %.preheader111.i, %bb.ea, %bb.eb, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit, %bb.dr, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5322.0.copyload324, i64 noundef %.sroa.8.0.copyload327) #36
  %i.tf = load i8, ptr %i.cg, align 8, !range !12, !noundef !9
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %bb.ej, label %bb.ek

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.dx, %bb.dy, %bb.ec, %bb.ed, %.preheader.i145, %.preheader114.i
  %.sroa.15332.0 = phi i64 [ %i.sz, %bb.ed ], [ %i.sc, %bb.dy ], [ %i.sq, %bb.ec ], [ 0, %.preheader.i145 ], [ 0, %.preheader114.i ], [ %i.rt, %bb.dx ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 5, i64 noundef %.sroa.15332.0) #33
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ek, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ce) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %i.th = icmp eq i64 %.sroa.0320.0.copyload321, 0
  br i1 %i.th, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5322.0.copyload324, i64 noundef %.sroa.0320.0.copyload321, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4869
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit

bb.ej:                                            ; preds = %.loopexit533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store i64 %.sroa.0320.0.copyload321, ptr %i.cf, align 8
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %.sroa.5322.0.copyload324, ptr %.sroa.5322.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %.sroa.8.0.copyload327, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cf) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ce) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit

bb.ek:                                            ; preds = %.loopexit533
  %i.ti = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.tj = load double, ptr %i.ti, align 8, !noundef !9
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 5, double noundef %i.tj) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.eh

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.ei, %bb.eh, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4870
  %i.tk = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4870 ; 4 uses
  %i.tl = icmp eq ptr %i.tk, null
  br i1 %i.tl, label %bb.el, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.el:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39, !noalias !4870
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tk, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %.sroa.4409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  store i32 1, ptr %.sroa.4409.0..sroa_idx, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tk, ptr %i.tm, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @57, ptr %i.tn, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgZlHlzpN0xi_7uu_tail4args8SettingsEBF_.exit

bb.em:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit151
  %i.to = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 3 uses
  %i.tp = load ptr, ptr %i.to, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 3 uses
  %i.tr = load i64, ptr %i.tq, align 8, !noundef !9 ; 6 uses
  switch i64 %i.tr, label %thread-pre-split.i159 [
    i64 0, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.en
  ]

bb.en:                                            ; preds = %bb.em
  %i.ts = load i8, ptr %i.tp, align 1, !alias.scope !4871, !noundef !9 ; 2 uses
  switch i8 %i.ts, label %bb.eo [
    i8 43, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i159:                            ; preds = %bb.em
  %.pr.i160 = load i8, ptr %i.tp, align 1, !alias.scope !4871
  br label %bb.eo

bb.eo:                                            ; preds = %thread-pre-split.i159, %bb.en
  %i.tt = phi i8 [ %.pr.i160, %thread-pre-split.i159 ], [ %i.ts, %bb.en ]
  switch i8 %i.tt, label %bb.ev [
    i8 43, label %bb.ep
    i8 45, label %bb.eq
  ]

bb.ep:                                            ; preds = %bb.eo
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tp, i64 1
  %i.tv = add nsw i64 %i.tr, -1
  br label %bb.ev

bb.eq:                                            ; preds = %bb.eo
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tp, i64 1 ; 2 uses
  %i.tx = add nsw i64 %i.tr, -1                   ; 3 uses
  %i.ty = icmp samesign ult i64 %i.tr, 9
  br i1 %i.ty, label %.preheader118.i, label %.lr.ph.i152

.preheader118.i:                                  ; preds = %bb.eq
  %.not105139.i = icmp eq i64 %i.tx, 0
  br i1 %.not105139.i, label %.loopexit.i154, label %.lr.ph143.i

.loopexit.i154:                                   ; preds = %bb.et, %bb.eu, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %.preheader.i158, %.preheader118.i
  %.sroa.086.1.i = phi i32 [ %i.uy, %bb.eu ], [ %i.xf, %bb.ff ], [ %i.vl, %bb.ey ], [ 0, %.preheader.i158 ], [ 0, %.preheader118.i ], [ %i.vo, %bb.ez ], [ %i.vw, %bb.fa ], [ %i.wd, %bb.fb ], [ %i.wk, %bb.fc ], [ %i.wr, %bb.fd ], [ %i.wy, %bb.fe ], [ %i.um, %bb.et ]
  %i.tz = zext i32 %.sroa.086.1.i to i64
  %i.ua = shl nuw i64 %i.tz, 32
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit

.lr.ph.i152:                                      ; preds = %bb.eq, %bb.et
  %.sroa.0.1138.i = phi ptr [ %i.ub, %bb.et ], [ %i.tw, %bb.eq ] ; 3 uses
  %.sroa.26.1137.i = phi i64 [ %i.uc, %bb.et ], [ %i.tx, %bb.eq ]
  %.sroa.086.0136.i = phi i32 [ %i.um, %bb.et ], [ 0, %bb.eq ]
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i, i64 1
  %i.uc = add nsw i64 %.sroa.26.1137.i, -1        ; 2 uses
  %i.ud = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i, i32 10) ; 2 uses
  %i.ue = extractvalue { i32, i1 } %i.ud, 0
  %i.uf = extractvalue { i32, i1 } %i.ud, 1
  br i1 %i.uf, label %.loopexit114.sink.split.i, label %bb.er, !prof !17

bb.er:                                            ; preds = %.lr.ph.i152
  %i.ug = load i8, ptr %.sroa.0.1138.i, align 1, !alias.scope !4871, !noundef !9
  %i.uh = zext i8 %i.ug to i32
  %i.ui = add nsw i32 %i.uh, -48                  ; 2 uses
  %i.uj = icmp ult i32 %i.ui, 10
  br i1 %i.uj, label %bb.es, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.es:                                            ; preds = %bb.er
  %i.uk = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ue, i32 %i.ui) ; 2 uses
  %i.ul = extractvalue { i32, i1 } %i.uk, 1
  br i1 %i.ul, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread, label %bb.et, !prof !17

bb.et:                                            ; preds = %bb.es
  %i.um = extractvalue { i32, i1 } %i.uk, 0       ; 2 uses
  %.not104.i153 = icmp eq i64 %i.uc, 0
  br i1 %.not104.i153, label %.loopexit.i154, label %.lr.ph.i152

.loopexit114.sink.split.i:                        ; preds = %.lr.ph.i152, %.preheader115.i
  %.sroa.0.3147.lcssa.sink.i = phi ptr [ %.sroa.0.3147.i, %.preheader115.i ], [ %.sroa.0.1138.i, %.lr.ph.i152 ]
  %.sink190.i = phi i64 [ 513, %.preheader115.i ], [ 769, %.lr.ph.i152 ]
  %i.un = load i8, ptr %.sroa.0.3147.lcssa.sink.i, align 1, !alias.scope !4871, !noundef !9
  %i.uo = add i8 %i.un, -48
  %i.up = icmp ult i8 %i.uo, 10
  %i.uq = select i1 %i.up, i64 %.sink190.i, i64 257
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit

.lr.ph143.i:                                      ; preds = %.preheader118.i, %bb.eu
  %.sroa.0.2142.i = phi ptr [ %i.ux, %bb.eu ], [ %i.tw, %.preheader118.i ] ; 2 uses
  %.sroa.26.2141.i = phi i64 [ %i.uw, %bb.eu ], [ %i.tx, %.preheader118.i ]
  %.sroa.086.2140.i = phi i32 [ %i.uy, %bb.eu ], [ 0, %.preheader118.i ]
  %i.ur = load i8, ptr %.sroa.0.2142.i, align 1, !alias.scope !4871, !noundef !9
  %i.us = zext i8 %i.ur to i32
  %i.ut = add nsw i32 %i.us, -48                  ; 2 uses
  %i.uu = icmp ult i32 %i.ut, 10
  br i1 %i.uu, label %bb.eu, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.eu:                                            ; preds = %.lr.ph143.i
  %i.uv = mul i32 %.sroa.086.2140.i, 10
  %i.uw = add nsw i64 %.sroa.26.2141.i, -1        ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i, i64 1
  %i.uy = sub i32 %i.uv, %i.ut                    ; 2 uses
  %.not105.i155 = icmp eq i64 %i.uw, 0
  br i1 %.not105.i155, label %.loopexit.i154, label %.lr.ph143.i

bb.ev:                                            ; preds = %bb.ep, %bb.eo
  %.sroa.26.0.i156 = phi i64 [ %i.tv, %bb.ep ], [ %i.tr, %bb.eo ] ; 9 uses
  %.sroa.0.0.i157 = phi ptr [ %i.tu, %bb.ep ], [ %i.tp, %bb.eo ] ; 8 uses
  %i.uz = icmp samesign ult i64 %.sroa.26.0.i156, 8
  br i1 %i.uz, label %.preheader.i158, label %.preheader115.i

.preheader.i158:                                  ; preds = %bb.ev
  %.not107148.i = icmp eq i64 %.sroa.26.0.i156, 0
  br i1 %.not107148.i, label %.loopexit.i154, label %.lr.ph152.i

.preheader115.i:                                  ; preds = %bb.ev, %bb.ey
  %.sroa.0.3147.i = phi ptr [ %i.va, %bb.ey ], [ %.sroa.0.0.i157, %bb.ev ] ; 3 uses
  %.sroa.26.3146.i = phi i64 [ %i.vb, %bb.ey ], [ %.sroa.26.0.i156, %bb.ev ]
  %.sroa.086.3145.i = phi i32 [ %i.vl, %bb.ey ], [ 0, %bb.ev ]
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i, i64 1
  %i.vb = add nsw i64 %.sroa.26.3146.i, -1        ; 2 uses
  %i.vc = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i, i32 10) ; 2 uses
  %i.vd = extractvalue { i32, i1 } %i.vc, 0
  %i.ve = extractvalue { i32, i1 } %i.vc, 1
  br i1 %i.ve, label %.loopexit114.sink.split.i, label %bb.ew, !prof !17

bb.ew:                                            ; preds = %.preheader115.i
  %i.vf = load i8, ptr %.sroa.0.3147.i, align 1, !alias.scope !4871, !noundef !9
  %i.vg = zext i8 %i.vf to i32
  %i.vh = add nsw i32 %i.vg, -48                  ; 2 uses
  %i.vi = icmp ult i32 %i.vh, 10
  br i1 %i.vi, label %bb.ex, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.ex:                                            ; preds = %bb.ew
  %i.vj = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.vd, i32 %i.vh) ; 2 uses
  %i.vk = extractvalue { i32, i1 } %i.vj, 1
  br i1 %i.vk, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread, label %bb.ey, !prof !17

bb.ey:                                            ; preds = %bb.ex
  %i.vl = extractvalue { i32, i1 } %i.vj, 0       ; 2 uses
  %.not106.i = icmp eq i64 %i.vb, 0
  br i1 %.not106.i, label %.loopexit.i154, label %.preheader115.i

.lr.ph152.i:                                      ; preds = %.preheader.i158
  %i.vm = load i8, ptr %.sroa.0.0.i157, align 1, !alias.scope !4871, !noundef !9
  %i.vn = zext i8 %i.vm to i32
  %i.vo = add nsw i32 %i.vn, -48                  ; 3 uses
  %i.vp = icmp ult i32 %i.vo, 10
  br i1 %i.vp, label %bb.ez, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.ez:                                            ; preds = %.lr.ph152.i
  %.not107.i = icmp eq i64 %.sroa.26.0.i156, 1
  br i1 %.not107.i, label %.loopexit.i154, label %.lr.ph152.i.1

.lr.ph152.i.1:                                    ; preds = %bb.ez
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i157, i64 1
  %i.vr = load i8, ptr %i.vq, align 1, !alias.scope !4871, !noundef !9
  %i.vs = zext i8 %i.vr to i32
  %i.vt = add nsw i32 %i.vs, -48                  ; 2 uses
  %i.vu = icmp ult i32 %i.vt, 10
  br i1 %i.vu, label %bb.fa, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.fa:                                            ; preds = %.lr.ph152.i.1
  %i.vv = mul nuw nsw i32 %i.vo, 10
  %i.vw = add nuw nsw i32 %i.vt, %i.vv            ; 2 uses
  %.not107.i.1 = icmp eq i64 %.sroa.26.0.i156, 2
  br i1 %.not107.i.1, label %.loopexit.i154, label %.lr.ph152.i.2

.lr.ph152.i.2:                                    ; preds = %bb.fa
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i157, i64 2
  %i.vy = load i8, ptr %i.vx, align 1, !alias.scope !4871, !noundef !9
  %i.vz = zext i8 %i.vy to i32
  %i.wa = add nsw i32 %i.vz, -48                  ; 2 uses
  %i.wb = icmp ult i32 %i.wa, 10
  br i1 %i.wb, label %bb.fb, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.fb:                                            ; preds = %.lr.ph152.i.2
  %i.wc = mul nuw nsw i32 %i.vw, 10
  %i.wd = add nuw nsw i32 %i.wa, %i.wc            ; 2 uses
  %.not107.i.2 = icmp eq i64 %.sroa.26.0.i156, 3
  br i1 %.not107.i.2, label %.loopexit.i154, label %.lr.ph152.i.3

.lr.ph152.i.3:                                    ; preds = %bb.fb
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i157, i64 3
  %i.wf = load i8, ptr %i.we, align 1, !alias.scope !4871, !noundef !9
  %i.wg = zext i8 %i.wf to i32
  %i.wh = add nsw i32 %i.wg, -48                  ; 2 uses
  %i.wi = icmp ult i32 %i.wh, 10
  br i1 %i.wi, label %bb.fc, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.fc:                                            ; preds = %.lr.ph152.i.3
  %i.wj = mul nuw nsw i32 %i.wd, 10
  %i.wk = add nuw nsw i32 %i.wh, %i.wj            ; 2 uses
  %.not107.i.3 = icmp eq i64 %.sroa.26.0.i156, 4
  br i1 %.not107.i.3, label %.loopexit.i154, label %.lr.ph152.i.4

.lr.ph152.i.4:                                    ; preds = %bb.fc
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i157, i64 4
  %i.wm = load i8, ptr %i.wl, align 1, !alias.scope !4871, !noundef !9
  %i.wn = zext i8 %i.wm to i32
  %i.wo = add nsw i32 %i.wn, -48                  ; 2 uses
  %i.wp = icmp ult i32 %i.wo, 10
  br i1 %i.wp, label %bb.fd, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.fd:                                            ; preds = %.lr.ph152.i.4
  %i.wq = mul i32 %i.wk, 10
  %i.wr = add i32 %i.wo, %i.wq                    ; 2 uses
  %.not107.i.4 = icmp eq i64 %.sroa.26.0.i156, 5
  br i1 %.not107.i.4, label %.loopexit.i154, label %.lr.ph152.i.5

.lr.ph152.i.5:                                    ; preds = %bb.fd
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i157, i64 5
  %i.wt = load i8, ptr %i.ws, align 1, !alias.scope !4871, !noundef !9
  %i.wu = zext i8 %i.wt to i32
  %i.wv = add nsw i32 %i.wu, -48                  ; 2 uses
  %i.ww = icmp ult i32 %i.wv, 10
  br i1 %i.ww, label %bb.fe, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.fe:                                            ; preds = %.lr.ph152.i.5
  %i.wx = mul i32 %i.wr, 10
  %i.wy = add i32 %i.wv, %i.wx                    ; 2 uses
  %.not107.i.5 = icmp eq i64 %.sroa.26.0.i156, 6
  br i1 %.not107.i.5, label %.loopexit.i154, label %.lr.ph152.i.6

.lr.ph152.i.6:                                    ; preds = %bb.fe
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i157, i64 6
  %i.xa = load i8, ptr %i.wz, align 1, !alias.scope !4871, !noundef !9
  %i.xb = zext i8 %i.xa to i32
  %i.xc = add nsw i32 %i.xb, -48                  ; 2 uses
  %i.xd = icmp ult i32 %i.xc, 10
  br i1 %i.xd, label %bb.ff, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.ff:                                            ; preds = %.lr.ph152.i.6
  %i.xe = mul i32 %i.wy, 10
  %i.xf = add i32 %i.xc, %i.xe
  br label %.loopexit.i154

_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit114.sink.split.i, %.loopexit.i154
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.uq, %.loopexit114.sink.split.i ], [ %i.ua, %.loopexit.i154 ] ; 4 uses
  %i.xg = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.xg, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread, label %bb.fu

_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.es, %bb.er, %.lr.ph143.i, %bb.ew, %bb.ex, %.lr.ph152.i, %.lr.ph152.i.1, %.lr.ph152.i.2, %.lr.ph152.i.3, %.lr.ph152.i.4, %.lr.ph152.i.5, %.lr.ph152.i.6, %bb.em, %bb.en, %bb.en, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit
  %.sroa.12.0.insert.insert.i454 = phi i64 [ %.sroa.12.0.insert.insert.i, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit ], [ %i.tr, %bb.em ], [ 256, %.lr.ph143.i ], [ 256, %.lr.ph152.i ], [ 256, %bb.en ], [ 256, %bb.en ], [ 256, %bb.ew ], [ 256, %.lr.ph152.i.6 ], [ 256, %.lr.ph152.i.5 ], [ 256, %.lr.ph152.i.4 ], [ 256, %.lr.ph152.i.3 ], [ 256, %.lr.ph152.i.2 ], [ 256, %.lr.ph152.i.1 ], [ 512, %bb.ex ], [ 256, %bb.er ], [ 768, %bb.es ]
  %.sroa.473.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i454, 8
  %.sroa.473.0.extract.trunc = trunc i64 %.sroa.473.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i8 %.sroa.473.0.extract.trunc, ptr %i.by, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store i64 0, ptr %i.bx, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 0, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.xh = load ptr, ptr %i.to, align 8, !nonnull !9, !noundef !9
  %i.xi = load i64, ptr %i.tq, align 8, !noundef !9
  store i64 0, ptr %i.bw, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.xh, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %i.xi, ptr %.sroa.568.0..sroa_idx, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i8 1, ptr %i.xj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4872
  store i64 0, ptr %i.p, align 8, !noalias !4872
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i161, align 8, !noalias !4872
  %.sroa.5.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i162, align 8, !noalias !4872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4872
  %i.xk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1610612768, ptr %i.xk, align 8, !noalias !4872
  store ptr %i.p, ptr %i.o, align 8, !noalias !4872
  %i.xl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @250, ptr %i.xl, align 8, !noalias !4872
  %i.xm = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bw, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #33, !noalias !4873
  br i1 %i.xm, label %bb.fg, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit163, !prof !17

bb.fg:                                            ; preds = %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @251, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #37, !noalias !4873
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit163: ; preds = %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread
  %.sroa.0347.0.copyload348 = load i64, ptr %i.p, align 8, !noalias !4874 ; 3 uses
  %.sroa.5349.0.copyload351 = load ptr, ptr %.sroa.4.0..sroa_idx.i161, align 8, !noalias !4874, !nonnull !9, !noundef !9 ; 8 uses
  %.sroa.8353.0.copyload355 = load i64, ptr %.sroa.5.0..sroa_idx.i162, align 8, !noalias !4874 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  switch i64 %.sroa.8353.0.copyload355, label %thread-pre-split.i195 [
    i64 0, label %.loopexit511
    i64 1, label %bb.fh
  ]

bb.fh:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit163
  %i.xn = load i8, ptr %.sroa.5349.0.copyload351, align 1, !alias.scope !4875, !noundef !9 ; 2 uses
  switch i8 %i.xn, label %bb.fi [
    i8 43, label %.loopexit511
    i8 45, label %.loopexit511
  ]

thread-pre-split.i195:                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit163
  %.pr.i196 = load i8, ptr %.sroa.5349.0.copyload351, align 1, !alias.scope !4875
  br label %bb.fi

bb.fi:                                            ; preds = %thread-pre-split.i195, %bb.fh
  %i.xo = phi i8 [ %.pr.i196, %thread-pre-split.i195 ], [ %i.xn, %bb.fh ]
  switch i8 %i.xo, label %bb.fp [
    i8 43, label %bb.fj
    i8 45, label %bb.fk
  ]

bb.fj:                                            ; preds = %bb.fi
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.5349.0.copyload351, i64 1
  %i.xq = add nsw i64 %.sroa.8353.0.copyload355, -1
  br label %bb.fp

bb.fk:                                            ; preds = %bb.fi
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.5349.0.copyload351, i64 1 ; 2 uses
  %i.xs = add nsw i64 %.sroa.8353.0.copyload355, -1 ; 3 uses
  %i.xt = icmp samesign ult i64 %.sroa.8353.0.copyload355, 17
  br i1 %i.xt, label %.preheader114.i173, label %.lr.ph.i165

.preheader114.i173:                               ; preds = %bb.fk
  %.not103137.i174 = icmp eq i64 %i.xs, 0
  br i1 %.not103137.i174, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit197, label %.lr.ph141.i175

.lr.ph.i165:                                      ; preds = %bb.fk, %bb.fn
  %.sroa.0.1136.i166 = phi ptr [ %i.xu, %bb.fn ], [ %i.xr, %bb.fk ] ; 2 uses
  %.sroa.26.1135.i167 = phi i64 [ %i.xv, %bb.fn ], [ %i.xs, %bb.fk ]
  %.sroa.084.0134.i168 = phi i64 [ %i.yg, %bb.fn ], [ 0, %bb.fk ]
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i166, i64 1
  %i.xv = add nsw i64 %.sroa.26.1135.i167, -1     ; 2 uses
  %i.xw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i168, i64 10) ; 2 uses
  %i.xx = extractvalue { i64, i1 } %i.xw, 0
  %i.xy = extractvalue { i64, i1 } %i.xw, 1
  br i1 %i.xy, label %.loopexit511, label %bb.fl, !prof !17

bb.fl:                                            ; preds = %.lr.ph.i165
  %i.xz = load i8, ptr %.sroa.0.1136.i166, align 1, !alias.scope !4875, !noundef !9
  %i.ya = zext i8 %i.xz to i32
  %i.yb = add nsw i32 %i.ya, -48                  ; 2 uses
  %i.yc = icmp ult i32 %i.yb, 10
  br i1 %i.yc, label %bb.fm, label %.loopexit511

bb.fm:                                            ; preds = %bb.fl
  %i.yd = zext nneg i32 %i.yb to i64
  %i.ye = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.xx, i64 %i.yd) ; 2 uses
  %i.yf = extractvalue { i64, i1 } %i.ye, 1
  br i1 %i.yf, label %.loopexit511, label %bb.fn, !prof !17

bb.fn:                                            ; preds = %bb.fm
  %i.yg = extractvalue { i64, i1 } %i.ye, 0       ; 2 uses
  %.not102.i170 = icmp eq i64 %i.xv, 0
  br i1 %.not102.i170, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit197, label %.lr.ph.i165

.lr.ph141.i175:                                   ; preds = %.preheader114.i173, %bb.fo
  %.sroa.0.2140.i176 = phi ptr [ %i.yn, %bb.fo ], [ %i.xr, %.preheader114.i173 ] ; 2 uses
  %.sroa.26.2139.i177 = phi i64 [ %i.ym, %bb.fo ], [ %i.xs, %.preheader114.i173 ]
  %.sroa.084.2138.i178 = phi i64 [ %i.yp, %bb.fo ], [ 0, %.preheader114.i173 ]
  %i.yh = load i8, ptr %.sroa.0.2140.i176, align 1, !alias.scope !4875, !noundef !9
  %i.yi = zext i8 %i.yh to i32
  %i.yj = add nsw i32 %i.yi, -48                  ; 2 uses
  %i.yk = icmp ult i32 %i.yj, 10
  br i1 %i.yk, label %bb.fo, label %.loopexit511

bb.fo:                                            ; preds = %.lr.ph141.i175
  %i.yl = mul i64 %.sroa.084.2138.i178, 10
  %i.ym = add nsw i64 %.sroa.26.2139.i177, -1     ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i176, i64 1
  %i.yo = zext nneg i32 %i.yj to i64
  %i.yp = sub i64 %i.yl, %i.yo                    ; 2 uses
  %.not103.i179 = icmp eq i64 %i.ym, 0
  br i1 %.not103.i179, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit197, label %.lr.ph141.i175

bb.fp:                                            ; preds = %bb.fj, %bb.fi
  %.sroa.26.0.i180 = phi i64 [ %i.xq, %bb.fj ], [ %.sroa.8353.0.copyload355, %bb.fi ] ; 4 uses
  %.sroa.0.0.i181 = phi ptr [ %i.xp, %bb.fj ], [ %.sroa.5349.0.copyload351, %bb.fi ] ; 2 uses
  %i.yq = icmp samesign ult i64 %.sroa.26.0.i180, 16
  br i1 %i.yq, label %.preheader.i188, label %.preheader111.i182

.preheader.i188:                                  ; preds = %bb.fp
  %.not105146.i189 = icmp eq i64 %.sroa.26.0.i180, 0
  br i1 %.not105146.i189, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit197, label %.lr.ph150.i190

.preheader111.i182:                               ; preds = %bb.fp, %bb.fs
  %.sroa.0.3145.i183 = phi ptr [ %i.yr, %bb.fs ], [ %.sroa.0.0.i181, %bb.fp ] ; 2 uses
  %.sroa.26.3144.i184 = phi i64 [ %i.ys, %bb.fs ], [ %.sroa.26.0.i180, %bb.fp ]
  %.sroa.084.3143.i185 = phi i64 [ %i.zd, %bb.fs ], [ 0, %bb.fp ]
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i183, i64 1
  %i.ys = add nsw i64 %.sroa.26.3144.i184, -1     ; 2 uses
  %i.yt = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i185, i64 10) ; 2 uses
  %i.yu = extractvalue { i64, i1 } %i.yt, 0
  %i.yv = extractvalue { i64, i1 } %i.yt, 1
  br i1 %i.yv, label %.loopexit511, label %bb.fq, !prof !17

bb.fq:                                            ; preds = %.preheader111.i182
  %i.yw = load i8, ptr %.sroa.0.3145.i183, align 1, !alias.scope !4875, !noundef !9
  %i.yx = zext i8 %i.yw to i32
  %i.yy = add nsw i32 %i.yx, -48                  ; 2 uses
  %i.yz = icmp ult i32 %i.yy, 10
  br i1 %i.yz, label %bb.fr, label %.loopexit511

bb.fr:                                            ; preds = %bb.fq
  %i.za = zext nneg i32 %i.yy to i64
  %i.zb = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.yu, i64 %i.za) ; 2 uses
  %i.zc = extractvalue { i64, i1 } %i.zb, 1
  br i1 %i.zc, label %.loopexit511, label %bb.fs, !prof !17

bb.fs:                                            ; preds = %bb.fr
  %i.zd = extractvalue { i64, i1 } %i.zb, 0       ; 2 uses
  %.not104.i187 = icmp eq i64 %i.ys, 0
  br i1 %.not104.i187, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit197, label %.preheader111.i182

.lr.ph150.i190:                                   ; preds = %.preheader.i188, %bb.ft
  %.sroa.0.4149.i191 = phi ptr [ %i.zk, %bb.ft ], [ %.sroa.0.0.i181, %.preheader.i188 ] ; 2 uses
  %.sroa.26.4148.i192 = phi i64 [ %i.zj, %bb.ft ], [ %.sroa.26.0.i180, %.preheader.i188 ]
  %.sroa.084.4147.i193 = phi i64 [ %i.zm, %bb.ft ], [ 0, %.preheader.i188 ]
  %i.ze = load i8, ptr %.sroa.0.4149.i191, align 1, !alias.scope !4875, !noundef !9
  %i.zf = zext i8 %i.ze to i32
  %i.zg = add nsw i32 %i.zf, -48                  ; 2 uses
  %i.zh = icmp ult i32 %i.zg, 10
  br i1 %i.zh, label %bb.ft, label %.loopexit511

bb.ft:                                            ; preds = %.lr.ph150.i190
  %i.zi = mul i64 %.sroa.084.4147.i193, 10
  %i.zj = add nsw i64 %.sroa.26.4148.i192, -1     ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i191, i64 1
  %i.zl = zext nneg i32 %i.zg to i64
  %i.zm = add i64 %i.zi, %i.zl                    ; 2 uses
  %.not105.i194 = icmp eq i64 %i.zj, 0
  br i1 %.not105.i194, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit197, label %.lr.ph150.i190

bb.fu:                                            ; preds = %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit
  %.sroa.675.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.675.0.extract.trunc = trunc nuw i64 %.sroa.675.0.extract.shift to i32
  %i.zn = icmp slt i64 %.sroa.12.0.insert.insert.i, 0
  br i1 %i.zn, label %bb.fv, label %bb.gk

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store i64 0, ptr %i.cd, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
end_hunk_0
