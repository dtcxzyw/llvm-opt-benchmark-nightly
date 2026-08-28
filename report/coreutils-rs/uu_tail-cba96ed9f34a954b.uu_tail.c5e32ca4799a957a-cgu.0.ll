Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail4argsNtB5_8Settings4from:bb.a
  br i1 %i.ek, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.aa
  %.not103137.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %bb.ad
  %.sroa.0.1136.i.i = phi ptr [ %i.el, %bb.ad ], [ %i.ei, %bb.aa ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.em, %bb.ad ], [ %i.ej, %bb.aa ]
  %.sroa.084.0134.i.i = phi i64 [ %i.ex, %bb.ad ], [ 0, %bb.aa ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.em = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.en = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.eo = extractvalue { i64, i1 } %i.en, 0
  %i.ep = extractvalue { i64, i1 } %i.en, 1
  br i1 %i.ep, label %.loopexit200.i, label %bb.ab, !prof !230

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.eq = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !4968, !noalias !4971, !noundef !4
  %i.er = zext i8 %i.eq to i32
  %i.es = add nsw i32 %i.er, -48                  ; 2 uses
  %i.et = icmp ult i32 %i.es, 10
  br i1 %i.et, label %bb.ac, label %.loopexit200.i

bb.ac:                                            ; preds = %bb.ab
  %i.eu = zext nneg i32 %i.es to i64
  %i.ev = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.eo, i64 %i.eu) ; 2 uses
  %i.ew = extractvalue { i64, i1 } %i.ev, 1
  br i1 %i.ew, label %.loopexit200.i, label %bb.ad, !prof !230

bb.ad:                                            ; preds = %bb.ac
  %i.ex = extractvalue { i64, i1 } %i.ev, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.em, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.ae
  %.sroa.0.2140.i.i = phi ptr [ %i.fe, %bb.ae ], [ %i.ei, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.fd, %bb.ae ], [ %i.ej, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.fg, %bb.ae ], [ 0, %.preheader114.i.i ]
  %i.ey = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !4968, !noalias !4971, !noundef !4
  %i.ez = zext i8 %i.ey to i32
  %i.fa = add nsw i32 %i.ez, -48                  ; 2 uses
  %i.fb = icmp ult i32 %i.fa, 10
  br i1 %i.fb, label %bb.ae, label %.loopexit200.i

bb.ae:                                            ; preds = %.lr.ph141.i.i
  %i.fc = mul i64 %.sroa.084.2138.i.i, 10
  %i.fd = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.ff = zext nneg i32 %i.fa to i64
  %i.fg = sub i64 %i.fc, %i.ff                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.af:                                            ; preds = %bb.z, %bb.y
  %.sroa.26.0.i.i = phi i64 [ %i.eh, %bb.z ], [ %.sroa.6.0.copyload.i, %bb.y ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %i.eg, %bb.z ], [ %i.ec, %bb.y ] ; 2 uses
  %i.fh = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.fh, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.af
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.af, %bb.ai
  %.sroa.0.3145.i.i = phi ptr [ %i.fi, %bb.ai ], [ %.sroa.0.0.i.i, %bb.af ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.fj, %bb.ai ], [ %.sroa.26.0.i.i, %bb.af ]
  %.sroa.084.3143.i.i = phi i64 [ %i.fu, %bb.ai ], [ 0, %bb.af ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.fj = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.fk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 0
  %i.fm = extractvalue { i64, i1 } %i.fk, 1
  br i1 %i.fm, label %.loopexit200.i, label %bb.ag, !prof !230

bb.ag:                                            ; preds = %.preheader111.i.i
  %i.fn = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !4968, !noalias !4971, !noundef !4
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nsw i32 %i.fo, -48                  ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 10
  br i1 %i.fq, label %bb.ah, label %.loopexit200.i

bb.ah:                                            ; preds = %bb.ag
  %i.fr = zext nneg i32 %i.fp to i64
  %i.fs = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fl, i64 %i.fr) ; 2 uses
  %i.ft = extractvalue { i64, i1 } %i.fs, 1
  br i1 %i.ft, label %.loopexit200.i, label %bb.ai, !prof !230

bb.ai:                                            ; preds = %bb.ah
  %i.fu = extractvalue { i64, i1 } %i.fs, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.aj
  %.sroa.0.4149.i.i = phi ptr [ %i.gb, %bb.aj ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.ga, %bb.aj ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.gd, %bb.aj ], [ 0, %.preheader.i.i ]
  %i.fv = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !4968, !noalias !4971, !noundef !4
  %i.fw = zext i8 %i.fv to i32
  %i.fx = add nsw i32 %i.fw, -48                  ; 2 uses
  %i.fy = icmp ult i32 %i.fx, 10
  br i1 %i.fy, label %bb.aj, label %.loopexit200.i

bb.aj:                                            ; preds = %.lr.ph150.i.i
  %i.fz = mul i64 %.sroa.084.4147.i.i, 10
  %i.ga = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.gc = zext nneg i32 %i.fx to i64
  %i.gd = add i64 %i.fz, %i.gc                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

bb.ak:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 1 %.sroa.4.0.copyload.i, i64 %.sroa.6.0.copyload.i, i1 false), !noalias !4931
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZlHlzpN0xi_7uu_tail.exit.thread175.i

.loopexit200.i:                                   ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.ah, %bb.ag, %.preheader111.i.i, %.lr.ph150.i.i, %bb.x, %bb.x, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !4934
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %.sroa.6.0.copyload.i) #36, !noalias !4931
  %i.ge = load i8, ptr %i.be, align 8, !range !146, !noalias !4934, !noundef !4
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.an, label %bb.ao

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.ad, %bb.ae, %bb.ai, %bb.aj, %.preheader.i.i, %.preheader114.i.i
  %.sroa.15112.0.i = phi i64 [ %i.gd, %bb.aj ], [ %i.fg, %bb.ae ], [ %i.fu, %bb.ai ], [ 0, %.preheader.i.i ], [ 0, %.preheader114.i.i ], [ %i.ex, %bb.ad ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 3, i64 noundef %.sroa.15112.0.i) #33, !noalias !4931
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !4934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !4934
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bc) #33, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !4934
  br i1 %i.dz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit36.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ec, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4973
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit36.i

bb.an:                                            ; preds = %.loopexit200.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !4934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !4934
  store i64 %.sroa.6.0.copyload.i, ptr %i.bd, align 8, !noalias !4934
  %.sroa.5.0..sroa_idx104.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.ec, ptr %.sroa.5.0..sroa_idx104.i, align 8, !noalias !4934
  %.sroa.9.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.9.0..sroa_idx106.i, align 8, !noalias !4934
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bd) #33, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !4934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !4934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !4934
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bc) #33, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !4934
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit36.i

bb.ao:                                            ; preds = %.loopexit200.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.gh = load double, ptr %i.gg, align 8, !noalias !4934, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 3, double noundef %i.gh) #33, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !4934
  br label %bb.al

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit36.i: ; preds = %bb.an, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !4934
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4976
  %i.gi = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4976 ; 4 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.ap, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !230

bb.ap:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit36.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39, !noalias !4976
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit36.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !4931
  %.sroa.4155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store i32 1, ptr %.sroa.4155.0..sroa_idx.i, align 8, !noalias !4931
  call void @llvm.experimental.noalias.scope.decl(metadata !4979)
  %i.gk = icmp eq i64 %i.dk, 0
  br i1 %i.gk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsgZlHlzpN0xi_7uu_tail.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.sink.split.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.sink.split.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.val1.i8.i.i = load ptr, ptr %.sroa.16.0..sroa_idx.i, align 8, !alias.scope !4979, !noalias !4934, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4982
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsgZlHlzpN0xi_7uu_tail.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsgZlHlzpN0xi_7uu_tail.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.sink.split.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !4934
  br label %bb.bw

bb.aq:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit31.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !4931, !nonnull !4, !noundef !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !noalias !4931, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4983
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser16parse_signed_num20parse_signed_num_max(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gm, i64 noundef %i.go) #33, !noalias !4987
  %i.gp = load i64, ptr %i.aj, align 8, !range !2049, !noalias !4983, !noundef !4
  %.not.i37.i = icmp eq i64 %i.gp, -1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !4983 ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  br i1 %.not.i37.i, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.gt = load i8, ptr %i.gs, align 8, !range !209, !noalias !4983, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4983
  %.not25.i46.i = icmp eq i8 %i.gt, 2
  br i1 %.not25.i46.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gu = icmp eq i8 %i.gt, 0                     ; 2 uses
  %i.gv = icmp eq i64 %i.gr, 0
  br i1 %i.gv, label %bb.av, label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.gw = icmp eq i64 %i.gr, 0
  br i1 %i.gw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args6SignumNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorEEB11_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %.sroa.19.sroa.9.0.extract.shift.i = and i64 %i.gr, -256
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args6SignumNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorEEB11_.exit.i

bb.av:                                            ; preds = %bb.as
  %spec.select193.i = select i1 %i.gu, i64 2, i64 3
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args6SignumNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorEEB11_.exit.i

bb.aw:                                            ; preds = %bb.as
  br i1 %i.gu, label %2, label %bb.au

2:                                                ; preds = %bb.aw
  %.sroa.19.sroa.9.0.extract.shift133.i = and i64 %i.gr, -256
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args6SignumNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorEEB11_.exit.i

bb.ax:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit31.i
  %..i = select i1 %i.cy, i64 0, i64 10
  br label %bb.bx

bb.ay:                                            ; preds = %bb.aq
  %.sroa.517.0.copyload.i41.i = load i64, ptr %i.gs, align 8, !noalias !4988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !4934
  store i64 0, ptr %i.bb, align 8, !noalias !4934
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !4934
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !4934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !4934
  %i.gx = load ptr, ptr %i.gl, align 8, !noalias !4931, !nonnull !4, !noundef !4
  %i.gy = load i64, ptr %i.gn, align 8, !noalias !4931, !noundef !4
  store i64 0, ptr %i.ba, align 8, !noalias !4934
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.gx, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !4934
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.gy, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !4934
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i8 1, ptr %i.gz, align 8, !noalias !4934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4989
  store i64 0, ptr %i.ai, align 8, !noalias !4989
  %.sroa.4.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i48.i, align 8, !noalias !4989
  %.sroa.5.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i49.i, align 8, !noalias !4989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4989
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 1610612768, ptr %i.ha, align 8, !noalias !4989
  store ptr %i.ai, ptr %i.ah, align 8, !noalias !4989
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @250, ptr %i.hb, align 8, !noalias !4989
  %i.hc = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #33, !noalias !4993
  br i1 %i.hc, label %bb.az, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit.i, !prof !230

bb.az:                                            ; preds = %bb.ay
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @251, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #37, !noalias !4993
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit.i: ; preds = %bb.ay
  %.sroa.0137.0.copyload138.i = load i64, ptr %i.ai, align 8, !noalias !4994 ; 3 uses
  %.sroa.5139.0.copyload141.i = load ptr, ptr %.sroa.4.0..sroa_idx.i48.i, align 8, !noalias !4994, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8.0.copyload144.i = load i64, ptr %.sroa.5.0..sroa_idx.i49.i, align 8, !noalias !4994 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !4934
  switch i64 %.sroa.8.0.copyload144.i, label %thread-pre-split.i81.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit.i
  %i.hd = load i8, ptr %.sroa.5139.0.copyload141.i, align 1, !alias.scope !4995, !noalias !4998, !noundef !4 ; 2 uses
  switch i8 %i.hd, label %bb.bb [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i81.i:                           ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit.i
  %.pr.i82.i = load i8, ptr %.sroa.5139.0.copyload141.i, align 1, !alias.scope !4995, !noalias !4998
  br label %bb.bb

bb.bb:                                            ; preds = %thread-pre-split.i81.i, %bb.ba
  %i.he = phi i8 [ %.pr.i82.i, %thread-pre-split.i81.i ], [ %i.hd, %bb.ba ]
  switch i8 %i.he, label %bb.bi [
    i8 43, label %bb.bc
    i8 45, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.5139.0.copyload141.i, i64 1
  %i.hg = add nsw i64 %.sroa.8.0.copyload144.i, -1
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bb
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.5139.0.copyload141.i, i64 1 ; 2 uses
  %i.hi = add nsw i64 %.sroa.8.0.copyload144.i, -1 ; 3 uses
  %i.hj = icmp samesign ult i64 %.sroa.8.0.copyload144.i, 17
  br i1 %i.hj, label %.preheader114.i59.i, label %.lr.ph.i51.i

.preheader114.i59.i:                              ; preds = %bb.bd
  %.not103137.i60.i = icmp eq i64 %i.hi, 0
  br i1 %.not103137.i60.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83.i, label %.lr.ph141.i61.i

.lr.ph.i51.i:                                     ; preds = %bb.bd, %bb.bg
  %.sroa.0.1136.i52.i = phi ptr [ %i.hk, %bb.bg ], [ %i.hh, %bb.bd ] ; 2 uses
  %.sroa.26.1135.i53.i = phi i64 [ %i.hl, %bb.bg ], [ %i.hi, %bb.bd ]
  %.sroa.084.0134.i54.i = phi i64 [ %i.hw, %bb.bg ], [ 0, %bb.bd ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i52.i, i64 1
  %i.hl = add nsw i64 %.sroa.26.1135.i53.i, -1    ; 2 uses
  %i.hm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i54.i, i64 10) ; 2 uses
  %i.hn = extractvalue { i64, i1 } %i.hm, 0
  %i.ho = extractvalue { i64, i1 } %i.hm, 1
  br i1 %i.ho, label %.loopexit.i, label %bb.be, !prof !230

bb.be:                                            ; preds = %.lr.ph.i51.i
  %i.hp = load i8, ptr %.sroa.0.1136.i52.i, align 1, !alias.scope !4995, !noalias !4998, !noundef !4
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, -48                  ; 2 uses
  %i.hs = icmp ult i32 %i.hr, 10
  br i1 %i.hs, label %bb.bf, label %.loopexit.i

bb.bf:                                            ; preds = %bb.be
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.hn, i64 %i.ht) ; 2 uses
  %i.hv = extractvalue { i64, i1 } %i.hu, 1
  br i1 %i.hv, label %.loopexit.i, label %bb.bg, !prof !230

bb.bg:                                            ; preds = %bb.bf
  %i.hw = extractvalue { i64, i1 } %i.hu, 0       ; 2 uses
  %.not102.i56.i = icmp eq i64 %i.hl, 0
  br i1 %.not102.i56.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83.i, label %.lr.ph.i51.i

.lr.ph141.i61.i:                                  ; preds = %.preheader114.i59.i, %bb.bh
  %.sroa.0.2140.i62.i = phi ptr [ %i.id, %bb.bh ], [ %i.hh, %.preheader114.i59.i ] ; 2 uses
  %.sroa.26.2139.i63.i = phi i64 [ %i.ic, %bb.bh ], [ %i.hi, %.preheader114.i59.i ]
  %.sroa.084.2138.i64.i = phi i64 [ %i.if, %bb.bh ], [ 0, %.preheader114.i59.i ]
  %i.hx = load i8, ptr %.sroa.0.2140.i62.i, align 1, !alias.scope !4995, !noalias !4998, !noundef !4
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nsw i32 %i.hy, -48                  ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 10
  br i1 %i.ia, label %bb.bh, label %.loopexit.i

bb.bh:                                            ; preds = %.lr.ph141.i61.i
  %i.ib = mul i64 %.sroa.084.2138.i64.i, 10
  %i.ic = add nsw i64 %.sroa.26.2139.i63.i, -1    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i62.i, i64 1
  %i.ie = zext nneg i32 %i.hz to i64
  %i.if = sub i64 %i.ib, %i.ie                    ; 2 uses
  %.not103.i65.i = icmp eq i64 %i.ic, 0
  br i1 %.not103.i65.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83.i, label %.lr.ph141.i61.i

bb.bi:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.26.0.i66.i = phi i64 [ %i.hg, %bb.bc ], [ %.sroa.8.0.copyload144.i, %bb.bb ] ; 4 uses
  %.sroa.0.0.i67.i = phi ptr [ %i.hf, %bb.bc ], [ %.sroa.5139.0.copyload141.i, %bb.bb ] ; 2 uses
  %i.ig = icmp samesign ult i64 %.sroa.26.0.i66.i, 16
  br i1 %i.ig, label %.preheader.i74.i, label %.preheader111.i68.i

.preheader.i74.i:                                 ; preds = %bb.bi
  %.not105146.i75.i = icmp eq i64 %.sroa.26.0.i66.i, 0
  br i1 %.not105146.i75.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83.i, label %.lr.ph150.i76.i

.preheader111.i68.i:                              ; preds = %bb.bi, %bb.bl
  %.sroa.0.3145.i69.i = phi ptr [ %i.ih, %bb.bl ], [ %.sroa.0.0.i67.i, %bb.bi ] ; 2 uses
  %.sroa.26.3144.i70.i = phi i64 [ %i.ii, %bb.bl ], [ %.sroa.26.0.i66.i, %bb.bi ]
  %.sroa.084.3143.i71.i = phi i64 [ %i.it, %bb.bl ], [ 0, %bb.bi ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i69.i, i64 1
  %i.ii = add nsw i64 %.sroa.26.3144.i70.i, -1    ; 2 uses
  %i.ij = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i71.i, i64 10) ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 0
  %i.il = extractvalue { i64, i1 } %i.ij, 1
  br i1 %i.il, label %.loopexit.i, label %bb.bj, !prof !230

bb.bj:                                            ; preds = %.preheader111.i68.i
  %i.im = load i8, ptr %.sroa.0.3145.i69.i, align 1, !alias.scope !4995, !noalias !4998, !noundef !4
  %i.in = zext i8 %i.im to i32
  %i.io = add nsw i32 %i.in, -48                  ; 2 uses
  %i.ip = icmp ult i32 %i.io, 10
  br i1 %i.ip, label %bb.bk, label %.loopexit.i

bb.bk:                                            ; preds = %bb.bj
  %i.iq = zext nneg i32 %i.io to i64
  %i.ir = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ik, i64 %i.iq) ; 2 uses
  %i.is = extractvalue { i64, i1 } %i.ir, 1
  br i1 %i.is, label %.loopexit.i, label %bb.bl, !prof !230

bb.bl:                                            ; preds = %bb.bk
  %i.it = extractvalue { i64, i1 } %i.ir, 0       ; 2 uses
  %.not104.i73.i = icmp eq i64 %i.ii, 0
  br i1 %.not104.i73.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83.i, label %.preheader111.i68.i

.lr.ph150.i76.i:                                  ; preds = %.preheader.i74.i, %bb.bm
  %.sroa.0.4149.i77.i = phi ptr [ %i.ja, %bb.bm ], [ %.sroa.0.0.i67.i, %.preheader.i74.i ] ; 2 uses
  %.sroa.26.4148.i78.i = phi i64 [ %i.iz, %bb.bm ], [ %.sroa.26.0.i66.i, %.preheader.i74.i ]
  %.sroa.084.4147.i79.i = phi i64 [ %i.jc, %bb.bm ], [ 0, %.preheader.i74.i ]
  %i.iu = load i8, ptr %.sroa.0.4149.i77.i, align 1, !alias.scope !4995, !noalias !4998, !noundef !4
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nsw i32 %i.iv, -48                  ; 2 uses
  %i.ix = icmp ult i32 %i.iw, 10
  br i1 %i.ix, label %bb.bm, label %.loopexit.i

bb.bm:                                            ; preds = %.lr.ph150.i76.i
  %i.iy = mul i64 %.sroa.084.4147.i79.i, 10
  %i.iz = add nsw i64 %.sroa.26.4148.i78.i, -1    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i77.i, i64 1
  %i.jb = zext nneg i32 %i.iw to i64
  %i.jc = add i64 %i.iy, %i.jb                    ; 2 uses
  %.not105.i80.i = icmp eq i64 %i.iz, 0
  br i1 %.not105.i80.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83.i, label %.lr.ph150.i76.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args6SignumNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorEEB11_.exit.i: ; preds = %2, %bb.av, %bb.au, %bb.at
  %.sroa.19.sroa.9.sroa.0.0.ph.i = phi i64 [ 0, %bb.at ], [ 0, %bb.av ], [ %.sroa.19.sroa.9.0.extract.shift133.i, %2 ], [ %.sroa.19.sroa.9.0.extract.shift.i, %bb.au ]
  %.sroa.11.0.ph.i = phi i64 [ 3, %bb.at ], [ %spec.select193.i, %bb.av ], [ 1, %2 ], [ 0, %bb.au ]
  %.sroa.19.sroa.0.0.insert.ext121.i = and i64 %i.gr, 255
  %.sroa.19.sroa.0.0.insert.insert123.i = or disjoint i64 %.sroa.19.sroa.9.sroa.0.0.ph.i, %.sroa.19.sroa.0.0.insert.ext121.i
  %.26.i = select i1 %i.cy, i64 0, i64 10
  br label %bb.bx

.loopexit.i:                                      ; preds = %bb.bf, %bb.be, %.lr.ph.i51.i, %.lr.ph141.i61.i, %bb.bk, %bb.bj, %.preheader111.i68.i, %.lr.ph150.i76.i, %bb.ba, %bb.ba, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgZlHlzpN0xi_7uu_tail.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !4934
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5139.0.copyload141.i, i64 noundef %.sroa.8.0.copyload144.i) #36, !noalias !4931
  %i.jd = load i8, ptr %i.az, align 8, !range !146, !noalias !4934, !noundef !4
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.bp, label %bb.bq

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83.i: ; preds = %bb.bg, %bb.bh, %bb.bl, %bb.bm, %.preheader.i74.i, %.preheader114.i59.i
  %.sroa.15149.0.i = phi i64 [ %i.jc, %bb.bm ], [ %i.if, %bb.bh ], [ %i.it, %bb.bl ], [ 0, %.preheader.i74.i ], [ 0, %.preheader114.i59.i ], [ %i.hw, %bb.bg ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 3, i64 noundef %.sroa.15149.0.i) #33, !noalias !4931
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bq, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit83.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !4934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !4934
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ax) #33, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !4934
  %i.jf = icmp eq i64 %.sroa.0137.0.copyload138.i, 0
  br i1 %i.jf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit86.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5139.0.copyload141.i, i64 noundef %.sroa.0137.0.copyload138.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5000
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit86.i

bb.bp:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !4934
  store i64 %.sroa.0137.0.copyload138.i, ptr %i.ay, align 8, !noalias !4934
  %.sroa.5139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.sroa.5139.0.copyload141.i, ptr %.sroa.5139.0..sroa_idx.i, align 8, !noalias !4934
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %.sroa.8.0.copyload144.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !4934
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ay) #33, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !4934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !4934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !4934
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ax) #33, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !4934
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit86.i

bb.bq:                                            ; preds = %.loopexit.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.jh = load double, ptr %i.jg, align 8, !noalias !4934, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 3, double noundef %i.jh) #33, !noalias !4931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4934
  br label %bb.bn

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit86.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !4934
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !5003
  %i.ji = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !5003 ; 5 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.br, label %bb.bs, !prof !230

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit86.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39, !noalias !5003
  unreachable

bb.bs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit86.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !4931
  %.sroa.4158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store i32 1, ptr %.sroa.4158.0..sroa_idx.i, align 8, !noalias !4931
  %i.jk = icmp eq i64 %i.gr, 0
  br i1 %i.jk, label %bb.bw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.sink.split.i.i89.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.sink.split.i.i89.i: ; preds = %bb.bs
  %i.jl = inttoptr i64 %.sroa.517.0.copyload.i41.i to ptr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jl, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5006
  br label %bb.bw

bb.bt:                                            ; preds = %bb.e
  %i.jm = tail call { i64, i64 } @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8index_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 1) #33 ; 2 uses
  %i.jn = extractvalue { i64, i64 } %i.jm, 0
  %i.jo = tail call { i64, i64 } @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8index_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 6) #33 ; 2 uses
  %i.jp = trunc nuw i64 %i.jn to i1
  %.not497 = xor i1 %i.jp, true
  %i.jq = extractvalue { i64, i64 } %i.jo, 1
  %i.jr = extractvalue { i64, i64 } %i.jo, 0
  %i.js = extractvalue { i64, i64 } %i.jm, 1
  %i.jt = trunc nuw i64 %i.jr to i1
  %i.ju = icmp ule i64 %i.js, %i.jq
  %or.cond.not = select i1 %i.jt, i1 %i.ju, i1 false
  %or.cond = select i1 %.not497, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %.critedge85, label %.critedge83

bb.bu:                                            ; preds = %.critedge85
  %i.jv = load i32, ptr %i.ct, align 1
  %i.jw = icmp ne i32 %i.jv, 1701667182
  %i.jx = zext i1 %i.jw to i32
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %.critedge83, label %bb.bv

bb.bv:                                            ; preds = %.critedge85, %bb.bu
  br label %.critedge83

bb.bw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsgZlHlzpN0xi_7uu_tail.exit.i, %bb.bs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.sink.split.i.i89.i
  %.sroa.7310.0.ph.in = phi ptr [ %i.ji, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.sink.split.i.i89.i ], [ %i.ji, %bb.bs ], [ %i.gi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECsgZlHlzpN0xi_7uu_tail.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7310.0.ph.in, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @112, ptr %i.ka, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgZlHlzpN0xi_7uu_tail4args8SettingsEBF_.exit

bb.bx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args6SignumNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorEEB11_.exit.i, %bb.ax, %bb.u
  %.sroa.12.0 = phi i64 [ %.sroa.16.sroa.0.0.insert.insert94.i, %bb.u ], [ %.26.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args6SignumNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorEEB11_.exit.i ], [ %..i, %bb.ax ]
  %.sroa.7310.0 = phi i64 [ %.sroa.10.0.ph.i, %bb.u ], [ %.sroa.19.sroa.0.0.insert.insert123.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args6SignumNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorEEB11_.exit.i ], [ 10, %bb.ax ]
  %.sroa.0309.0 = phi i64 [ -1, %bb.u ], [ %.sroa.11.0.ph.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgZlHlzpN0xi_7uu_tail4args6SignumNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorEEB11_.exit.i ], [ 0, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.kb = inttoptr i64 %.sroa.7310.0 to ptr
  %i.kc = inttoptr i64 %.sroa.12.0 to ptr
  %i.kd = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 7) #33 ; 0 uses
  %i.ke = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 19) #33
  %i.kf = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 5) #33
  %i.kg = zext i1 %i.cx to i8
  %i.kh = zext i1 %i.ke to i8
  %i.ki = zext i1 %i.kf to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 14) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr @148, ptr %i.ag, align 8, !noalias !5014
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 14, ptr %i.kj, align 8, !noalias !5014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5014
  %i.kk = load i64, ptr %i.bp, align 8, !range !692, !alias.scope !5011, !noalias !5016, !noundef !4
  %.not.i92 = icmp eq i64 %i.kk, 2
  br i1 %.not.i92, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit95, label %bb.by, !prof !129

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bp, i64 40, i1 false), !noalias !5016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5014
  store ptr %i.ag, ptr %i.ae, align 8, !noalias !5014
  %.sroa.42.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.42.0..sroa_idx.i93, align 8, !noalias !5014
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.af, ptr %i.kl, align 8, !noalias !5014
  %.sroa.46.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i94, align 8, !noalias !5014
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #37, !noalias !5011
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit95: ; preds = %bb.bx
  %i.km = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !5011, !noalias !5016, !align !206, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %.not78 = icmp eq ptr %i.kn, null
  br i1 %.not78, label %bb.da, label %bb.bz

bb.bz:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgZlHlzpN0xi_7uu_tail.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !nonnull !4, !noundef !4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kr = load i64, ptr %i.kq, align 8, !noundef !4
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_time8from_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kp, i64 noundef %i.kr, i1 noundef zeroext false) #33
  %i.ks = load i64, ptr %i.cj, align 8, !range !657, !noundef !4 ; 3 uses
  %.not79 = icmp eq i64 %i.ks, -1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  br i1 %.not79, label %bb.cz, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.4406.0.copyload = load ptr, ptr %i.kt, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5017
  store i64 0, ptr %i.ad, align 8, !noalias !5017
  %.sroa.4.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i96, align 8, !noalias !5017
  %.sroa.5.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i97, align 8, !noalias !5017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5017
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kn) #33
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !5017, !nonnull !4, !noundef !4 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.kx = load i64, ptr %i.kw, align 8, !noalias !5017, !noundef !4 ; 14 uses
  %.not.i.i98 = icmp slt i64 %i.kx, 0
  br i1 %.not.i.i98, label %bb.cd, label %bb.cb, !prof !502

bb.cb:                                            ; preds = %bb.ca
  %i.ky = icmp eq i64 %i.kx, 0                    ; 2 uses
  br i1 %i.ky, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZlHlzpN0xi_7uu_tail.exit.thread17.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !5020
  %i.kz = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.kx, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5020 ; 3 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %bb.cd, label %bb.cs

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.cc ], [ 0, %bb.ca ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.kx) #39
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZlHlzpN0xi_7uu_tail.exit.thread17.i: ; preds = %bb.cs, %bb.cb
  %i.lb = phi ptr [ %i.kz, %bb.cs ], [ inttoptr (i64 1 to ptr), %bb.cb ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5023)
  %.val.i.i = load i64, ptr %i.ac, align 8, !range !40, !alias.scope !5023, !noalias !5017, !noundef !4 ; 2 uses
  %i.lc = icmp eq i64 %.val.i.i, 0
  br i1 %i.lc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.i99, label %bb.ce

bb.ce:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZlHlzpN0xi_7uu_tail.exit.thread17.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5023
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.i99

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.i99: ; preds = %bb.ce, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZlHlzpN0xi_7uu_tail.exit.thread17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5017
  switch i64 %i.kx, label %thread-pre-split.i.i130 [
    i64 0, label %.loopexit.i100
    i64 1, label %bb.cf
  ]

bb.cf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.i99
  %i.ld = load i8, ptr %i.lb, align 1, !alias.scope !5026, !noalias !5029, !noundef !4 ; 2 uses
  switch i8 %i.ld, label %bb.cg [
    i8 43, label %.loopexit.i100
    i8 45, label %.loopexit.i100
  ]

thread-pre-split.i.i130:                          ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit.i99
  %.pr.i.i131 = load i8, ptr %i.lb, align 1, !alias.scope !5026, !noalias !5029
  br label %bb.cg

bb.cg:                                            ; preds = %thread-pre-split.i.i130, %bb.cf
  %i.le = phi i8 [ %.pr.i.i131, %thread-pre-split.i.i130 ], [ %i.ld, %bb.cf ]
  switch i8 %i.le, label %bb.cn [
    i8 43, label %bb.ch
    i8 45, label %bb.ci
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.lg = add nsw i64 %i.kx, -1
  br label %bb.cn

bb.ci:                                            ; preds = %bb.cg
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 1 ; 2 uses
  %i.li = add nsw i64 %i.kx, -1                   ; 3 uses
  %i.lj = icmp samesign ult i64 %i.kx, 17
  br i1 %i.lj, label %.preheader114.i.i109, label %.lr.ph.i.i103

.preheader114.i.i109:                             ; preds = %bb.ci
  %.not103137.i.i110 = icmp eq i64 %i.li, 0
  br i1 %.not103137.i.i110, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i108, label %.lr.ph141.i.i111

.lr.ph.i.i103:                                    ; preds = %bb.ci, %bb.cl
  %.sroa.0.1136.i.i104 = phi ptr [ %i.lk, %bb.cl ], [ %i.lh, %bb.ci ] ; 2 uses
  %.sroa.26.1135.i.i105 = phi i64 [ %i.ll, %bb.cl ], [ %i.li, %bb.ci ]
  %.sroa.084.0134.i.i106 = phi i64 [ %i.lw, %bb.cl ], [ 0, %bb.ci ]
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i104, i64 1
  %i.ll = add nsw i64 %.sroa.26.1135.i.i105, -1   ; 2 uses
  %i.lm = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i106, i64 10) ; 2 uses
  %i.ln = extractvalue { i64, i1 } %i.lm, 0
  %i.lo = extractvalue { i64, i1 } %i.lm, 1
  br i1 %i.lo, label %.loopexit.i100, label %bb.cj, !prof !230

bb.cj:                                            ; preds = %.lr.ph.i.i103
  %i.lp = load i8, ptr %.sroa.0.1136.i.i104, align 1, !alias.scope !5026, !noalias !5029, !noundef !4
  %i.lq = zext i8 %i.lp to i32
  %i.lr = add nsw i32 %i.lq, -48                  ; 2 uses
  %i.ls = icmp ult i32 %i.lr, 10
  br i1 %i.ls, label %bb.ck, label %.loopexit.i100

bb.ck:                                            ; preds = %bb.cj
  %i.lt = zext nneg i32 %i.lr to i64
  %i.lu = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ln, i64 %i.lt) ; 2 uses
  %i.lv = extractvalue { i64, i1 } %i.lu, 1
  br i1 %i.lv, label %.loopexit.i100, label %bb.cl, !prof !230

bb.cl:                                            ; preds = %bb.ck
  %i.lw = extractvalue { i64, i1 } %i.lu, 0       ; 2 uses
  %.not102.i.i107 = icmp eq i64 %i.ll, 0
  br i1 %.not102.i.i107, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i108, label %.lr.ph.i.i103

.lr.ph141.i.i111:                                 ; preds = %.preheader114.i.i109, %bb.cm
  %.sroa.0.2140.i.i112 = phi ptr [ %i.md, %bb.cm ], [ %i.lh, %.preheader114.i.i109 ] ; 2 uses
  %.sroa.26.2139.i.i113 = phi i64 [ %i.mc, %bb.cm ], [ %i.li, %.preheader114.i.i109 ]
  %.sroa.084.2138.i.i114 = phi i64 [ %i.mf, %bb.cm ], [ 0, %.preheader114.i.i109 ]
  %i.lx = load i8, ptr %.sroa.0.2140.i.i112, align 1, !alias.scope !5026, !noalias !5029, !noundef !4
  %i.ly = zext i8 %i.lx to i32
  %i.lz = add nsw i32 %i.ly, -48                  ; 2 uses
  %i.ma = icmp ult i32 %i.lz, 10
  br i1 %i.ma, label %bb.cm, label %.loopexit.i100

bb.cm:                                            ; preds = %.lr.ph141.i.i111
  %i.mb = mul i64 %.sroa.084.2138.i.i114, 10
  %i.mc = add nsw i64 %.sroa.26.2139.i.i113, -1   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i112, i64 1
  %i.me = zext nneg i32 %i.lz to i64
  %i.mf = sub i64 %i.mb, %i.me                    ; 2 uses
  %.not103.i.i115 = icmp eq i64 %i.mc, 0
  br i1 %.not103.i.i115, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i108, label %.lr.ph141.i.i111

bb.cn:                                            ; preds = %bb.ch, %bb.cg
  %.sroa.26.0.i.i116 = phi i64 [ %i.lg, %bb.ch ], [ %i.kx, %bb.cg ] ; 4 uses
  %.sroa.0.0.i.i117 = phi ptr [ %i.lf, %bb.ch ], [ %i.lb, %bb.cg ] ; 2 uses
  %i.mg = icmp samesign ult i64 %.sroa.26.0.i.i116, 16
  br i1 %i.mg, label %.preheader.i.i123, label %.preheader111.i.i118

.preheader.i.i123:                                ; preds = %bb.cn
  %.not105146.i.i124 = icmp eq i64 %.sroa.26.0.i.i116, 0
  br i1 %.not105146.i.i124, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i108, label %.lr.ph150.i.i125

.preheader111.i.i118:                             ; preds = %bb.cn, %bb.cq
end_hunk_0
