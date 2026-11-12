Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_od-e8a75ca9228cc4af.uu_od.9ae3888c10d230e2-cgu.0?download=true
inline.NumInlined: 1209
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats17parse_type_string:bb.a
  %i.gw = add i64 %i.gs, %i.gv                    ; 2 uses
  %.not105.i38.i = icmp eq i64 %i.gt, 0
  br i1 %.not105.i38.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i, label %.lr.ph150.i34.i

bb.ah:                                            ; preds = %.loopexit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1989
  store i64 %.sroa.0.05.i.i, ptr %i.ap, align 8, !noalias !1989
  %.sroa.5.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.dj, ptr %.sroa.5.0..sroa_idx45.i, align 8, !noalias !1989
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sroa.0.05.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1989
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap) #29, !noalias !1989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1989
  br label %bb.s

bb.ai:                                            ; preds = %.loopexit80.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.gy = load double, ptr %i.gx, align 8, !noalias !1989, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 4, double noundef %i.gy) #29, !noalias !1989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1989
  br label %bb.s

.loopexit.i:                                      ; preds = %bb.z, %bb.y, %.lr.ph.i9.i, %.lr.ph141.i19.i, %bb.ae, %bb.ad, %.preheader111.i26.i, %.lr.ph150.i34.i, %bb.u, %bb.u, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsdit6BuOJVAc_5uu_od.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1989
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.551.0.copyload53.i, i64 noundef %.sroa.855.0.copyload57.i) #28, !noalias !1989
  %i.gz = load i8, ptr %i.an, align 8, !range !24, !noalias !1989, !noundef !5
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.al, label %bb.am

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i: ; preds = %bb.aa, %bb.ab, %bb.af, %bb.ag, %.preheader.i32.i, %.preheader114.i17.i
  %.sroa.1562.0.i = phi i64 [ %i.gw, %bb.ag ], [ %i.fz, %bb.ab ], [ %i.gn, %bb.af ], [ 0, %.preheader.i32.i ], [ 0, %.preheader114.i17.i ], [ %i.fq, %bb.aa ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 4, i64 noundef %.sroa.1562.0.i) #29, !noalias !1989
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !1989
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1989
  %i.hb = icmp eq i64 %.sroa.049.0.copyload50.i, 0
  br i1 %i.hb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.551.0.copyload53.i, i64 noundef %.sroa.049.0.copyload50.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1997
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i

bb.al:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1989
  store i64 %.sroa.049.0.copyload50.i, ptr %i.am, align 8, !noalias !1989
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.551.0.copyload53.i, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !1989
  %.sroa.855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.855.0.copyload57.i, ptr %.sroa.855.0..sroa_idx.i, align 8, !noalias !1989
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am) #29, !noalias !1989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !1989
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1989
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i

bb.am:                                            ; preds = %.loopexit.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.hd = load double, ptr %i.hc, align 8, !noalias !1989, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 4, double noundef %i.hd) #29, !noalias !1989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1989
  br label %bb.aj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  br i1 %.sroa.0.0.i207, label %bb.an, label %_RNCNvNtCsdit6BuOJVAc_5uu_od13parse_formats17parse_type_string0B5_.exit

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %.sroa.0.05.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1998
  br label %_RNCNvNtCsdit6BuOJVAc_5uu_od13parse_formats17parse_type_string0B5_.exit

_RNCNvNtCsdit6BuOJVAc_5uu_od13parse_formats17parse_type_string0B5_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1989
  %.sroa.013.0.copyload = load i64, ptr %i.ax, align 8
  %.sroa.1815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.1815.0.copyload = load i8, ptr %.sroa.1815.0..sroa_idx, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.013.0.copyload, ptr %i.he, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.1815.0.copyload, ptr %.sroa.4142.0..sroa_idx, align 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5143.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %i.ay, i64 15, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.ib

bb.ao:                                            ; preds = %bb.d
  br label %bb.at

bb.ap:                                            ; preds = %bb.d
  br label %bb.at

bb.aq:                                            ; preds = %bb.d
  br label %bb.at

bb.ar:                                            ; preds = %bb.d
  br label %bb.at

bb.as:                                            ; preds = %bb.d
  br label %bb.at

bb.at:                                            ; preds = %bb.d, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.ao
  %.sroa.042.0 = phi i8 [ 1, %bb.ap ], [ 1, %bb.aq ], [ 0, %bb.ao ], [ 1, %bb.as ], [ 1, %bb.ar ], [ 0, %bb.d ] ; 2 uses
  %.sroa.034.1 = phi i8 [ 2, %bb.ap ], [ 3, %bb.aq ], [ 1, %bb.ao ], [ 5, %bb.as ], [ 4, %bb.ar ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0832) ]
  %i.hf = icmp eq ptr %.sroa.0.0832, %i.be
  br i1 %i.hf, label %bb.ax, label %bb.au

.thread:                                          ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0832) ]
  %i.hg = icmp eq ptr %.sroa.0.0832, %i.be
  br i1 %i.hg, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit288.thread.thread, label %bb.au

bb.au:                                            ; preds = %.thread, %bb.at
  %.sroa.034.1583 = phi i8 [ 6, %.thread ], [ %.sroa.034.1, %bb.at ] ; 24 uses
  %.sroa.042.0574 = phi i8 [ 2, %.thread ], [ %.sroa.042.0, %bb.at ] ; 2 uses
  %i.hh = phi i1 [ true, %.thread ], [ false, %bb.at ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0832, i64 1 ; 3 uses
  %i.hj = load i8, ptr %.sroa.0.0832, align 1, !noalias !1999, !noundef !5 ; 5 uses
  %i.hk = icmp sgt i8 %i.hj, -1
  br i1 %i.hk, label %bb.av, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i208

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i208: ; preds = %bb.au
  %i.hl = and i8 %i.hj, 31
  %i.hm = zext nneg i8 %i.hl to i32               ; 3 uses
  %i.hn = icmp ne ptr %i.hi, %i.be
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0832, i64 2 ; 3 uses
  %i.hp = load i8, ptr %i.hi, align 1, !noalias !1999, !noundef !5
  %i.hq = shl nuw nsw i32 %i.hm, 6
  %i.hr = and i8 %i.hp, 63
  %i.hs = zext nneg i8 %i.hr to i32               ; 2 uses
  %i.ht = or disjoint i32 %i.hq, %i.hs
  %i.hu = icmp samesign ugt i8 %i.hj, -33
  br i1 %i.hu, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i211, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hv = zext nneg i8 %i.hj to i32
  br label %bb.aw

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i211: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i208
  %i.hw = icmp ne ptr %i.ho, %i.be
  tail call void @llvm.assume(i1 %i.hw)
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0832, i64 3 ; 3 uses
  %i.hy = load i8, ptr %i.ho, align 1, !noalias !1999, !noundef !5
  %i.hz = shl nuw nsw i32 %i.hs, 6
  %i.ia = and i8 %i.hy, 63
  %i.ib = zext nneg i8 %i.ia to i32
  %i.ic = or disjoint i32 %i.hz, %i.ib            ; 2 uses
  %i.id = shl nuw nsw i32 %i.hm, 12
  %i.ie = or disjoint i32 %i.ic, %i.id
  %i.if = icmp samesign ugt i8 %i.hj, -17
  br i1 %i.if, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i212, label %bb.aw

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i212: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i211
  %i.ig = icmp ne ptr %i.hx, %i.be
  tail call void @llvm.assume(i1 %i.ig)
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0832, i64 4
  %i.ii = load i8, ptr %i.hx, align 1, !noalias !1999, !noundef !5
  %i.ij = shl nuw nsw i32 %i.hm, 18
  %i.ik = and i32 %i.ij, 1835008
  %i.il = shl nuw nsw i32 %i.ic, 6
  %i.im = and i8 %i.ii, 63
  %i.in = zext nneg i8 %i.im to i32
  %i.io = or disjoint i32 %i.il, %i.in
  %i.ip = or disjoint i32 %i.io, %i.ik
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i208, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i212, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i211
  %.sroa.0.8.ph = phi ptr [ %i.ho, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i208 ], [ %i.hx, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i211 ], [ %i.ih, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i212 ], [ %i.hi, %bb.av ] ; 32 uses
  %.sroa.4.0.i209.ph = phi i32 [ %i.ht, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i208 ], [ %i.ie, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i211 ], [ %i.ip, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i212 ], [ %i.hv, %bb.av ] ; 14 uses
  %i.iq = icmp samesign ult i32 %.sroa.4.0.i209.ph, 1114112
  tail call void @llvm.assume(i1 %i.iq)
  br i1 %i.hh, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw
  %.sroa.034.1581 = phi i8 [ %.sroa.034.1583, %bb.aw ], [ %.sroa.034.1, %bb.at ] ; 6 uses
  %.sroa.042.0573 = phi i8 [ %.sroa.042.0574, %bb.aw ], [ %.sroa.042.0, %bb.at ] ; 2 uses
  %.sroa.0.8569 = phi ptr [ %.sroa.0.8.ph, %bb.aw ], [ %.sroa.0.0832, %bb.at ] ; 9 uses
  %.sroa.096.2 = phi i32 [ %.sroa.4.0.i209.ph, %bb.aw ], [ -1, %bb.at ] ; 5 uses
  switch i8 %.sroa.042.0573, label %default.unreachable [
    i8 1, label %bb.ay
    i8 2, label %bb.az
    i8 0, label %bb.be
  ]

default.unreachable:                              ; preds = %.thread668, %bb.ba, %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %switch.tableidx = add i32 %.sroa.096.2, -67    ; 3 uses
  %i.ir = icmp ult i32 %switch.tableidx, 17
  %switch.shifted = lshr i32 66113, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond1333 = select i1 %i.ir, i1 %switch.lobit, i1 false
  br i1 %or.cond1333, label %switch.lookup, label %bb.be

bb.az:                                            ; preds = %bb.ax
  %switch.tableidx1308 = add i32 %.sroa.096.2, -66 ; 3 uses
  %i.is = icmp ult i32 %switch.tableidx1308, 11
  %switch.maskindex = trunc i32 %switch.tableidx1308 to i16
  %switch.shifted1312 = lshr i16 1109, %switch.maskindex
  %switch.lobit1313 = trunc i16 %switch.shifted1312 to i1
  %or.cond1334 = select i1 %i.is, i1 %switch.lobit1313, i1 false
  br i1 %or.cond1334, label %switch.lookup1311, label %bb.be

bb.ba:                                            ; preds = %bb.bd
  switch i8 %.sroa.042.0574, label %default.unreachable [
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 0, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit288.thread.thread
  ]

bb.bb:                                            ; preds = %bb.ba
  %switch.tableidx1316 = add nsw i32 %.sroa.4.0.i209.ph, -67 ; 3 uses
  %i.it = icmp ult i32 %switch.tableidx1316, 17
  %switch.shifted1320 = lshr i32 66113, %switch.tableidx1316
  %switch.lobit1321 = trunc i32 %switch.shifted1320 to i1
  %or.cond1335 = select i1 %i.it, i1 %switch.lobit1321, i1 false
  br i1 %or.cond1335, label %switch.lookup1319, label %.thread623

bb.bc:                                            ; preds = %bb.ba
  %switch.tableidx1324 = add nsw i32 %.sroa.4.0.i209.ph, -66 ; 3 uses
  %i.iu = icmp ult i32 %switch.tableidx1324, 11
  %switch.maskindex1328 = trunc i32 %switch.tableidx1324 to i16
  %switch.shifted1329 = lshr i16 1109, %switch.maskindex1328
  %switch.lobit1330 = trunc i16 %switch.shifted1329 to i1
  %or.cond1336 = select i1 %i.iu, i1 %switch.lobit1330, i1 false
  br i1 %or.cond1336, label %switch.lookup1327, label %.thread623

bb.bd:                                            ; preds = %bb.aw
  switch i32 %.sroa.4.0.i209.ph, label %bb.ba [
    i32 66, label %bb.dc
    i32 72, label %bb.dc
    i32 70, label %bb.df
    i32 68, label %bb.di
  ]

bb.be:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 0, ptr %i.az, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4180.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5181.0..sroa_idx, align 8
  %i.iv = icmp ne i8 %.sroa.042.0573, 0
  %i.iw = add nsw i32 %.sroa.096.2, -48
  %or.cond6.i824 = icmp ult i32 %i.iw, 10
  %or.cond.i825 = select i1 %i.iv, i1 %or.cond6.i824, i1 false
  br i1 %or.cond.i825, label %.lr.ph828, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit.thread

switch.lookup:                                    ; preds = %bb.ay
  %3 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsdit6BuOJVAc_5uu_od13parse_formats17parse_type_string.279, i64 %3
  br label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats19is_format_size_char.exit

switch.lookup1311:                                ; preds = %bb.az
  %4 = zext nneg i32 %switch.tableidx1308 to i64
  %switch.gep1314 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsdit6BuOJVAc_5uu_od13parse_formats17parse_type_string.280, i64 %4
  br label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats19is_format_size_char.exit

_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats19is_format_size_char.exit: ; preds = %switch.lookup1311, %switch.lookup
  %.sink.i.in = phi ptr [ %switch.gep1314, %switch.lookup1311 ], [ %switch.gep, %switch.lookup ]
  %.sink.i = load i8, ptr %.sink.i.in, align 1    ; 5 uses
  %i.ix = icmp eq ptr %.sroa.0.8569, %i.be
  br i1 %i.ix, label %.thread668, label %bb.bf

bb.bf:                                            ; preds = %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats19is_format_size_char.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.8569, i64 1 ; 3 uses
  %i.iz = load i8, ptr %.sroa.0.8569, align 1, !noalias !2000, !noundef !5 ; 5 uses
  %i.ja = icmp sgt i8 %i.iz, -1
  br i1 %i.ja, label %bb.bg, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i219

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i219: ; preds = %bb.bf
  %i.jb = and i8 %i.iz, 31
  %i.jc = zext nneg i8 %i.jb to i32               ; 3 uses
  %i.jd = icmp ne ptr %i.iy, %i.be
  tail call void @llvm.assume(i1 %i.jd)
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.8569, i64 2 ; 3 uses
  %i.jf = load i8, ptr %i.iy, align 1, !noalias !2000, !noundef !5
  %i.jg = shl nuw nsw i32 %i.jc, 6
  %i.jh = and i8 %i.jf, 63
  %i.ji = zext nneg i8 %i.jh to i32               ; 2 uses
  %i.jj = or disjoint i32 %i.jg, %i.ji
  %i.jk = icmp samesign ugt i8 %i.iz, -33
  br i1 %i.jk, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i222, label %bb.db

bb.bg:                                            ; preds = %bb.bf
  %i.jl = zext nneg i8 %i.iz to i32
  br label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i222: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i219
  %i.jm = icmp ne ptr %i.je, %i.be
  tail call void @llvm.assume(i1 %i.jm)
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.8569, i64 3 ; 3 uses
  %i.jo = load i8, ptr %i.je, align 1, !noalias !2000, !noundef !5
  %i.jp = shl nuw nsw i32 %i.ji, 6
  %i.jq = and i8 %i.jo, 63
  %i.jr = zext nneg i8 %i.jq to i32
  %i.js = or disjoint i32 %i.jp, %i.jr            ; 2 uses
  %i.jt = shl nuw nsw i32 %i.jc, 12
  %i.ju = or disjoint i32 %i.js, %i.jt
  %i.jv = icmp samesign ugt i8 %i.iz, -17
  br i1 %i.jv, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i223, label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i223: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i222
  %i.jw = icmp ne ptr %i.jn, %i.be
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.8569, i64 4
  %i.jy = load i8, ptr %i.jn, align 1, !noalias !2000, !noundef !5
  %i.jz = shl nuw nsw i32 %i.jc, 18
  %i.ka = and i32 %i.jz, 1835008
  %i.kb = shl nuw nsw i32 %i.js, 6
  %i.kc = and i8 %i.jy, 63
  %i.kd = zext nneg i8 %i.kc to i32
  %i.ke = or disjoint i32 %i.kb, %i.kd
  %i.kf = or disjoint i32 %i.ke, %i.ka
  br label %bb.db

.lr.ph828:                                        ; preds = %bb.be, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230
  %i.kg = phi ptr [ %i.kl, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230 ], [ inttoptr (i64 1 to ptr), %bb.be ]
  %i.kh = phi i64 [ %i.km, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230 ], [ 0, %bb.be ] ; 3 uses
  %i.ki = phi i64 [ %i.kp, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230 ], [ 0, %bb.be ] ; 5 uses
  %.sroa.096.4827 = phi i32 [ %spec.select203, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230 ], [ %.sroa.096.2, %bb.be ]
  %.sroa.0.1826 = phi ptr [ %.sroa.0.10, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230 ], [ %.sroa.0.8569, %bb.be ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  %i.kj = icmp sgt i64 %i.ki, -1
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = icmp eq i64 %i.kh, %i.ki
  br i1 %i.kk, label %bb.bh, label %bb.bi, !prof !12

bb.bh:                                            ; preds = %.lr.ph828
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef %i.kh, i64 noundef 1, i64 noundef 1, i64 noundef 1) #29
  %.pre956 = load i64, ptr %i.az, align 8, !range !6, !alias.scope !2003
  %.pre958 = load ptr, ptr %.sroa.4180.0..sroa_idx, align 8, !alias.scope !2004
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph828, %bb.bh
  %i.kl = phi ptr [ %i.kg, %.lr.ph828 ], [ %.pre958, %bb.bh ] ; 2 uses
  %i.km = phi i64 [ %i.kh, %.lr.ph828 ], [ %.pre956, %bb.bh ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ki
  %i.ko = trunc nuw nsw i32 %.sroa.096.4827 to i8
  store i8 %i.ko, ptr %i.kn, align 1, !noalias !2004
  %i.kp = add nuw i64 %i.ki, 1                    ; 5 uses
  store i64 %i.kp, ptr %.sroa.5181.0..sroa_idx, align 8, !alias.scope !2004
  %.not701 = icmp eq ptr %.sroa.0.1826, %i.be
  br i1 %.not701, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.1826, i64 1 ; 3 uses
  %i.kr = load i8, ptr %.sroa.0.1826, align 1, !noalias !2005, !noundef !5 ; 5 uses
  %i.ks = icmp sgt i8 %i.kr, -1
  br i1 %i.ks, label %bb.bk, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i225

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i225: ; preds = %bb.bj
  %i.kt = and i8 %i.kr, 31
  %i.ku = zext nneg i8 %i.kt to i32               ; 3 uses
  %i.kv = icmp ne ptr %i.kq, %i.be
  tail call void @llvm.assume(i1 %i.kv)
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.1826, i64 2 ; 3 uses
  %i.kx = load i8, ptr %i.kq, align 1, !noalias !2005, !noundef !5
  %i.ky = shl nuw nsw i32 %i.ku, 6
  %i.kz = and i8 %i.kx, 63
  %i.la = zext nneg i8 %i.kz to i32               ; 2 uses
  %i.lb = or disjoint i32 %i.ky, %i.la
  %i.lc = icmp samesign ugt i8 %i.kr, -33
  br i1 %i.lc, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i228, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230

bb.bk:                                            ; preds = %bb.bj
  %i.ld = zext nneg i8 %i.kr to i32
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i228: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i225
  %i.le = icmp ne ptr %i.kw, %i.be
  tail call void @llvm.assume(i1 %i.le)
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.1826, i64 3 ; 3 uses
  %i.lg = load i8, ptr %i.kw, align 1, !noalias !2005, !noundef !5
  %i.lh = shl nuw nsw i32 %i.la, 6
  %i.li = and i8 %i.lg, 63
  %i.lj = zext nneg i8 %i.li to i32
  %i.lk = or disjoint i32 %i.lh, %i.lj            ; 2 uses
  %i.ll = shl nuw nsw i32 %i.ku, 12
  %i.lm = or disjoint i32 %i.lk, %i.ll
  %i.ln = icmp samesign ugt i8 %i.kr, -17
  br i1 %i.ln, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i229, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i229: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i228
  %i.lo = icmp ne ptr %i.lf, %i.be
  tail call void @llvm.assume(i1 %i.lo)
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.1826, i64 4
  %i.lq = load i8, ptr %i.lf, align 1, !noalias !2005, !noundef !5
  %i.lr = shl nuw nsw i32 %i.ku, 18
  %i.ls = and i32 %i.lr, 1835008
  %i.lt = shl nuw nsw i32 %i.lk, 6
  %i.lu = and i8 %i.lq, 63
  %i.lv = zext nneg i8 %i.lu to i32
  %i.lw = or disjoint i32 %i.lt, %i.lv
  %i.lx = or disjoint i32 %i.lw, %i.ls
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230

_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i225, %bb.bk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i228, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i229
  %spec.select203 = phi i32 [ %i.lb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i225 ], [ %i.ld, %bb.bk ], [ %i.lx, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i229 ], [ %i.lm, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i228 ] ; 3 uses
  %.sroa.0.10 = phi ptr [ %i.kw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i225 ], [ %i.kq, %bb.bk ], [ %i.lp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i229 ], [ %i.lf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i228 ] ; 2 uses
  %i.ly = add nsw i32 %spec.select203, -48
  %or.cond6.i = icmp ult i32 %i.ly, 10
  br i1 %or.cond6.i, label %.lr.ph828, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230.thread

_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230.thread: ; preds = %bb.bi, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.10, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230 ], [ %.sroa.0.1826, %bb.bi ] ; 4 uses
  %.sroa.096.4.lcssa = phi i32 [ %spec.select203, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230 ], [ -1, %bb.bi ] ; 4 uses
  %i.lz = icmp sgt i64 %i.kp, -1
  tail call void @llvm.assume(i1 %i.lz)
  %i.ma = load ptr, ptr %.sroa.4180.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %cond = icmp eq i64 %i.ki, 0
  %i.mb = load i8, ptr %i.ma, align 1, !alias.scope !2006 ; 2 uses
  br i1 %cond, label %bb.bl, label %thread-pre-split.i

bb.bl:                                            ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230.thread
  switch i8 %i.mb, label %thread-pre-split.i [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit230.thread, %bb.bl
  %cond.i = icmp eq i8 %i.mb, 43                  ; 2 uses
  %i.mc = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.kp, %i.mc        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i232 = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.md = icmp samesign ult i64 %.sroa.15.0.i, 3
  br i1 %i.md, label %.preheader.i, label %.preheader57.i.preheader

.preheader.i:                                     ; preds = %thread-pre-split.i
  %.not5462.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5462.i, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.me = load i8, ptr %.sroa.0.0.i232, align 1, !alias.scope !2006, !noundef !5
  %i.mf = zext i8 %i.me to i32
  %i.mg = add nsw i32 %i.mf, -48                  ; 2 uses
  %i.mh = icmp ugt i32 %i.mg, 9
  br i1 %i.mh, label %.loopexit, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.preheader.i
  %i.mi = icmp eq i64 %.sroa.15.0.i, 1
  %i.mj = trunc nuw nsw i32 %i.mg to i8           ; 2 uses
  br i1 %i.mi, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit.thread, label %.lr.ph.i

.preheader57.i:                                   ; preds = %bb.bn
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1307, i64 1
  %i.ml = add nsw i64 %.sroa.15.1.i1306, -1       ; 2 uses
  %.not53.not.i = icmp eq i64 %i.ml, 0
  br i1 %.not53.not.i, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit.thread, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %thread-pre-split.i, %.preheader57.i
  %.sroa.0.1.i1307 = phi ptr [ %i.mk, %.preheader57.i ], [ %.sroa.0.0.i232, %thread-pre-split.i ] ; 2 uses
  %.sroa.15.1.i1306 = phi i64 [ %i.ml, %.preheader57.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.043.0.i1305 = phi i8 [ %i.mu, %.preheader57.i ], [ 0, %thread-pre-split.i ]
  %i.mm = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i1305, i8 10) ; 2 uses
  %i.mn = extractvalue { i8, i1 } %i.mm, 1
  br i1 %i.mn, label %.loopexit, label %bb.bn, !prof !12

bb.bn:                                            ; preds = %.preheader57.i.preheader
end_hunk_0
begin_hunk_1_@_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats17parse_type_string:bb.a
  %.sroa.0.2 = phi ptr [ %.sroa.0.4.lcssa10911107, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit320 ], [ %.sroa.0.1.lcssa1076, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit ] ; 2 uses
  %.sroa.096.5 = phi i32 [ %.sroa.096.9.lcssa10921106, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit320 ], [ %.sroa.096.4.lcssa1077, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit ] ; 2 uses
  %i.ry = icmp eq i32 %.sroa.096.5, 122
  br i1 %i.ry, label %bb.fg, label %.thread668

bb.db:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i222, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i223, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i219, %bb.bg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i282, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i283, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i279, %bb.dm, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i276, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i277, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i273, %bb.dk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i270, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i271, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i267, %bb.dh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i264, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i265, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i261, %bb.de
  %.sroa.4.0.i280.ph.sink = phi i32 [ %i.vg, %bb.dk ], [ %i.tx, %bb.dh ], [ %i.so, %bb.de ], [ %i.wq, %bb.dm ], [ %i.sm, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i261 ], [ %i.sx, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i264 ], [ %i.ti, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i265 ], [ %i.tv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i267 ], [ %i.ug, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i270 ], [ %i.ur, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i271 ], [ %i.ve, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i273 ], [ %i.vp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i276 ], [ %i.wa, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i277 ], [ %i.wo, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i279 ], [ %i.wz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i282 ], [ %i.xk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i283 ], [ %i.jj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i219 ], [ %i.ju, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i222 ], [ %i.kf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i223 ], [ %i.jl, %bb.bg ] ; 3 uses
  %.sroa.034.1580 = phi i8 [ %.sroa.034.1583, %bb.dk ], [ %.sroa.034.1583, %bb.dh ], [ %.sroa.034.1583, %bb.de ], [ %.sroa.034.1583, %bb.dm ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i261 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i264 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i265 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i267 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i270 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i271 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i273 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i276 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i277 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i279 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i282 ], [ %.sroa.034.1583, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i283 ], [ %.sroa.034.1581, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i219 ], [ %.sroa.034.1581, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i222 ], [ %.sroa.034.1581, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i223 ], [ %.sroa.034.1581, %bb.bg ] ; 2 uses
  %.sroa.0.4558 = phi i8 [ 8, %bb.dk ], [ 4, %bb.dh ], [ 2, %bb.de ], [ %.sink.i216, %bb.dm ], [ 2, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i261 ], [ 2, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i264 ], [ 2, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i265 ], [ 4, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i267 ], [ 4, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i270 ], [ 4, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i271 ], [ 8, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i273 ], [ 8, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i276 ], [ 8, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i277 ], [ %.sink.i216, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i279 ], [ %.sink.i216, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i282 ], [ %.sink.i216, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i283 ], [ %.sink.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i219 ], [ %.sink.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i222 ], [ %.sink.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i223 ], [ %.sink.i, %bb.bg ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %i.ut, %bb.dk ], [ %i.tk, %bb.dh ], [ %i.sb, %bb.de ], [ %i.wd, %bb.dm ], [ %i.sh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i261 ], [ %i.sq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i264 ], [ %i.ta, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i265 ], [ %i.tq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i267 ], [ %i.tz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i270 ], [ %i.uj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i271 ], [ %i.uz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i273 ], [ %i.vi, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i276 ], [ %i.vs, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i277 ], [ %i.wj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i279 ], [ %i.ws, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i282 ], [ %i.xc, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i283 ], [ %i.je, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i219 ], [ %i.jn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i222 ], [ %i.jx, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i223 ], [ %i.iy, %bb.bg ] ; 2 uses
  %.sroa.051.4 = phi i32 [ -1, %bb.dk ], [ -1, %bb.dh ], [ %.sroa.4.0.i209.ph, %bb.de ], [ -1, %bb.dm ], [ %.sroa.4.0.i209.ph, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i261 ], [ %.sroa.4.0.i209.ph, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i264 ], [ %.sroa.4.0.i209.ph, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i265 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i267 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i270 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i271 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i273 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i276 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i277 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i279 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i282 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i283 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i219 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i222 ], [ -1, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i223 ], [ -1, %bb.bg ] ; 2 uses
  %i.rz = icmp samesign ult i32 %.sroa.4.0.i280.ph.sink, 1114112
  tail call void @llvm.assume(i1 %i.rz)
  %.old1 = icmp eq i32 %.sroa.4.0.i280.ph.sink, 122
  br i1 %.old1, label %bb.fg, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit266

bb.dc:                                            ; preds = %bb.bd, %bb.bd
  %i.sa = icmp eq ptr %.sroa.0.8.ph, %i.be
  br i1 %i.sa, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit266, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 1 ; 3 uses
  %i.sc = load i8, ptr %.sroa.0.8.ph, align 1, !noalias !2020, !noundef !5 ; 5 uses
  %i.sd = icmp sgt i8 %i.sc, -1
  br i1 %i.sd, label %bb.de, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i261

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i261: ; preds = %bb.dd
  %i.se = and i8 %i.sc, 31
  %i.sf = zext nneg i8 %i.se to i32               ; 3 uses
  %i.sg = icmp ne ptr %i.sb, %i.be
  tail call void @llvm.assume(i1 %i.sg)
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 2 ; 3 uses
  %i.si = load i8, ptr %i.sb, align 1, !noalias !2020, !noundef !5
  %i.sj = shl nuw nsw i32 %i.sf, 6
  %i.sk = and i8 %i.si, 63
  %i.sl = zext nneg i8 %i.sk to i32               ; 2 uses
  %i.sm = or disjoint i32 %i.sj, %i.sl
  %i.sn = icmp samesign ugt i8 %i.sc, -33
  br i1 %i.sn, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i264, label %bb.db

bb.de:                                            ; preds = %bb.dd
  %i.so = zext nneg i8 %i.sc to i32
  br label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i264: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i261
  %i.sp = icmp ne ptr %i.sh, %i.be
  tail call void @llvm.assume(i1 %i.sp)
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 3 ; 3 uses
  %i.sr = load i8, ptr %i.sh, align 1, !noalias !2020, !noundef !5
  %i.ss = shl nuw nsw i32 %i.sl, 6
  %i.st = and i8 %i.sr, 63
  %i.su = zext nneg i8 %i.st to i32
  %i.sv = or disjoint i32 %i.ss, %i.su            ; 2 uses
  %i.sw = shl nuw nsw i32 %i.sf, 12
  %i.sx = or disjoint i32 %i.sv, %i.sw
  %i.sy = icmp samesign ugt i8 %i.sc, -17
  br i1 %i.sy, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i265, label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i265: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i264
  %i.sz = icmp ne ptr %i.sq, %i.be
  tail call void @llvm.assume(i1 %i.sz)
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 4
  %i.tb = load i8, ptr %i.sq, align 1, !noalias !2020, !noundef !5
  %i.tc = shl nuw nsw i32 %i.sf, 18
  %i.td = and i32 %i.tc, 1835008
  %i.te = shl nuw nsw i32 %i.sv, 6
  %i.tf = and i8 %i.tb, 63
  %i.tg = zext nneg i8 %i.tf to i32
  %i.th = or disjoint i32 %i.te, %i.tg
  %i.ti = or disjoint i32 %i.th, %i.td
  br label %bb.db

bb.df:                                            ; preds = %bb.bd
  %i.tj = icmp eq ptr %.sroa.0.8.ph, %i.be
  br i1 %i.tj, label %.thread668, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 1 ; 3 uses
  %i.tl = load i8, ptr %.sroa.0.8.ph, align 1, !noalias !2021, !noundef !5 ; 5 uses
  %i.tm = icmp sgt i8 %i.tl, -1
  br i1 %i.tm, label %bb.dh, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i267

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i267: ; preds = %bb.dg
  %i.tn = and i8 %i.tl, 31
  %i.to = zext nneg i8 %i.tn to i32               ; 3 uses
  %i.tp = icmp ne ptr %i.tk, %i.be
  tail call void @llvm.assume(i1 %i.tp)
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 2 ; 3 uses
  %i.tr = load i8, ptr %i.tk, align 1, !noalias !2021, !noundef !5
  %i.ts = shl nuw nsw i32 %i.to, 6
  %i.tt = and i8 %i.tr, 63
  %i.tu = zext nneg i8 %i.tt to i32               ; 2 uses
  %i.tv = or disjoint i32 %i.ts, %i.tu
  %i.tw = icmp samesign ugt i8 %i.tl, -33
  br i1 %i.tw, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i270, label %bb.db

bb.dh:                                            ; preds = %bb.dg
  %i.tx = zext nneg i8 %i.tl to i32
  br label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i270: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i267
  %i.ty = icmp ne ptr %i.tq, %i.be
  tail call void @llvm.assume(i1 %i.ty)
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 3 ; 3 uses
  %i.ua = load i8, ptr %i.tq, align 1, !noalias !2021, !noundef !5
  %i.ub = shl nuw nsw i32 %i.tu, 6
  %i.uc = and i8 %i.ua, 63
  %i.ud = zext nneg i8 %i.uc to i32
  %i.ue = or disjoint i32 %i.ub, %i.ud            ; 2 uses
  %i.uf = shl nuw nsw i32 %i.to, 12
  %i.ug = or disjoint i32 %i.ue, %i.uf
  %i.uh = icmp samesign ugt i8 %i.tl, -17
  br i1 %i.uh, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i271, label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i271: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i270
  %i.ui = icmp ne ptr %i.tz, %i.be
  tail call void @llvm.assume(i1 %i.ui)
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 4
  %i.uk = load i8, ptr %i.tz, align 1, !noalias !2021, !noundef !5
  %i.ul = shl nuw nsw i32 %i.to, 18
  %i.um = and i32 %i.ul, 1835008
  %i.un = shl nuw nsw i32 %i.ue, 6
  %i.uo = and i8 %i.uk, 63
  %i.up = zext nneg i8 %i.uo to i32
  %i.uq = or disjoint i32 %i.un, %i.up
  %i.ur = or disjoint i32 %i.uq, %i.um
  br label %bb.db

bb.di:                                            ; preds = %bb.bd
  %i.us = icmp eq ptr %.sroa.0.8.ph, %i.be
  br i1 %i.us, label %.thread668, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 1 ; 3 uses
  %i.uu = load i8, ptr %.sroa.0.8.ph, align 1, !noalias !2022, !noundef !5 ; 5 uses
  %i.uv = icmp sgt i8 %i.uu, -1
  br i1 %i.uv, label %bb.dk, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i273

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i273: ; preds = %bb.dj
  %i.uw = and i8 %i.uu, 31
  %i.ux = zext nneg i8 %i.uw to i32               ; 3 uses
  %i.uy = icmp ne ptr %i.ut, %i.be
  tail call void @llvm.assume(i1 %i.uy)
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 2 ; 3 uses
  %i.va = load i8, ptr %i.ut, align 1, !noalias !2022, !noundef !5
  %i.vb = shl nuw nsw i32 %i.ux, 6
  %i.vc = and i8 %i.va, 63
  %i.vd = zext nneg i8 %i.vc to i32               ; 2 uses
  %i.ve = or disjoint i32 %i.vb, %i.vd
  %i.vf = icmp samesign ugt i8 %i.uu, -33
  br i1 %i.vf, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i276, label %bb.db

bb.dk:                                            ; preds = %bb.dj
  %i.vg = zext nneg i8 %i.uu to i32
  br label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i276: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i273
  %i.vh = icmp ne ptr %i.uz, %i.be
  tail call void @llvm.assume(i1 %i.vh)
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 3 ; 3 uses
  %i.vj = load i8, ptr %i.uz, align 1, !noalias !2022, !noundef !5
  %i.vk = shl nuw nsw i32 %i.vd, 6
  %i.vl = and i8 %i.vj, 63
  %i.vm = zext nneg i8 %i.vl to i32
  %i.vn = or disjoint i32 %i.vk, %i.vm            ; 2 uses
  %i.vo = shl nuw nsw i32 %i.ux, 12
  %i.vp = or disjoint i32 %i.vn, %i.vo
  %i.vq = icmp samesign ugt i8 %i.uu, -17
  br i1 %i.vq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i277, label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i277: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i276
  %i.vr = icmp ne ptr %i.vi, %i.be
  tail call void @llvm.assume(i1 %i.vr)
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 4
  %i.vt = load i8, ptr %i.vi, align 1, !noalias !2022, !noundef !5
  %i.vu = shl nuw nsw i32 %i.ux, 18
  %i.vv = and i32 %i.vu, 1835008
  %i.vw = shl nuw nsw i32 %i.vn, 6
  %i.vx = and i8 %i.vt, 63
  %i.vy = zext nneg i8 %i.vx to i32
  %i.vz = or disjoint i32 %i.vw, %i.vy
  %i.wa = or disjoint i32 %i.vz, %i.vv
  br label %bb.db

_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit288.thread.thread: ; preds = %.thread, %bb.ba
  %.sroa.096.3617.ph.ph = phi i32 [ -1, %.thread ], [ %.sroa.4.0.i209.ph, %bb.ba ]
  %.sroa.0.8567611.ph.ph = phi ptr [ %.sroa.0.0832, %.thread ], [ %.sroa.0.8.ph, %bb.ba ]
  %.sroa.034.1582599.ph.ph = phi i8 [ 6, %.thread ], [ %.sroa.034.1583, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit320

.thread623:                                       ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4162.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5163.0..sroa_idx, align 8
  %i.wb = add nsw i32 %.sroa.4.0.i209.ph, -48
  %or.cond6.i285819 = icmp ult i32 %i.wb, 10
  br i1 %or.cond6.i285819, label %.lr.ph, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit288.thread

switch.lookup1319:                                ; preds = %bb.bb
  %5 = zext nneg i32 %switch.tableidx1316 to i64
  %switch.gep1322 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsdit6BuOJVAc_5uu_od13parse_formats17parse_type_string.279, i64 %5
  br label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats19is_format_size_char.exit218

switch.lookup1327:                                ; preds = %bb.bc
  %6 = zext nneg i32 %switch.tableidx1324 to i64
  %switch.gep1331 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsdit6BuOJVAc_5uu_od13parse_formats17parse_type_string.280, i64 %6
  br label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats19is_format_size_char.exit218

_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats19is_format_size_char.exit218: ; preds = %switch.lookup1327, %switch.lookup1319
  %.sink.i216.in = phi ptr [ %switch.gep1331, %switch.lookup1327 ], [ %switch.gep1322, %switch.lookup1319 ]
  %.sink.i216 = load i8, ptr %.sink.i216.in, align 1 ; 5 uses
  %i.wc = icmp eq ptr %.sroa.0.8.ph, %i.be
  br i1 %i.wc, label %.thread668, label %bb.dl

bb.dl:                                            ; preds = %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats19is_format_size_char.exit218
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 1 ; 3 uses
  %i.we = load i8, ptr %.sroa.0.8.ph, align 1, !noalias !2023, !noundef !5 ; 5 uses
  %i.wf = icmp sgt i8 %i.we, -1
  br i1 %i.wf, label %bb.dm, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i279

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i279: ; preds = %bb.dl
  %i.wg = and i8 %i.we, 31
  %i.wh = zext nneg i8 %i.wg to i32               ; 3 uses
  %i.wi = icmp ne ptr %i.wd, %i.be
  tail call void @llvm.assume(i1 %i.wi)
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 2 ; 3 uses
  %i.wk = load i8, ptr %i.wd, align 1, !noalias !2023, !noundef !5
  %i.wl = shl nuw nsw i32 %i.wh, 6
  %i.wm = and i8 %i.wk, 63
  %i.wn = zext nneg i8 %i.wm to i32               ; 2 uses
  %i.wo = or disjoint i32 %i.wl, %i.wn
  %i.wp = icmp samesign ugt i8 %i.we, -33
  br i1 %i.wp, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i282, label %bb.db

bb.dm:                                            ; preds = %bb.dl
  %i.wq = zext nneg i8 %i.we to i32
  br label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i282: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i279
  %i.wr = icmp ne ptr %i.wj, %i.be
  tail call void @llvm.assume(i1 %i.wr)
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 3 ; 3 uses
  %i.wt = load i8, ptr %i.wj, align 1, !noalias !2023, !noundef !5
  %i.wu = shl nuw nsw i32 %i.wn, 6
  %i.wv = and i8 %i.wt, 63
  %i.ww = zext nneg i8 %i.wv to i32
  %i.wx = or disjoint i32 %i.wu, %i.ww            ; 2 uses
  %i.wy = shl nuw nsw i32 %i.wh, 12
  %i.wz = or disjoint i32 %i.wx, %i.wy
  %i.xa = icmp samesign ugt i8 %i.we, -17
  br i1 %i.xa, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i283, label %bb.db

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i283: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i282
  %i.xb = icmp ne ptr %i.ws, %i.be
  tail call void @llvm.assume(i1 %i.xb)
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0.8.ph, i64 4
  %i.xd = load i8, ptr %i.ws, align 1, !noalias !2023, !noundef !5
  %i.xe = shl nuw nsw i32 %i.wh, 18
  %i.xf = and i32 %i.xe, 1835008
  %i.xg = shl nuw nsw i32 %i.wx, 6
  %i.xh = and i8 %i.xd, 63
  %i.xi = zext nneg i8 %i.xh to i32
  %i.xj = or disjoint i32 %i.xg, %i.xi
  %i.xk = or disjoint i32 %i.xj, %i.xf
  br label %bb.db

.lr.ph:                                           ; preds = %.thread623, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294
  %i.xl = phi ptr [ %i.xq, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294 ], [ inttoptr (i64 1 to ptr), %.thread623 ]
  %i.xm = phi i64 [ %i.xr, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294 ], [ 0, %.thread623 ] ; 3 uses
  %i.xn = phi i64 [ %i.xu, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294 ], [ 0, %.thread623 ] ; 5 uses
  %.sroa.096.9822 = phi i32 [ %spec.select204, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294 ], [ %.sroa.4.0.i209.ph, %.thread623 ]
  %.sroa.0.4821 = phi ptr [ %.sroa.0.15, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294 ], [ %.sroa.0.8.ph, %.thread623 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.xo = icmp sgt i64 %i.xn, -1
  tail call void @llvm.assume(i1 %i.xo)
  %i.xp = icmp eq i64 %i.xm, %i.xn
  br i1 %i.xp, label %bb.dn, label %bb.do, !prof !12

bb.dn:                                            ; preds = %.lr.ph
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.xm, i64 noundef 1, i64 noundef 1, i64 noundef 1) #29
  %.pre = load i64, ptr %i.ba, align 8, !range !6, !alias.scope !2026
  %.pre955 = load ptr, ptr %.sroa.4162.0..sroa_idx, align 8, !alias.scope !2027
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph, %bb.dn
  %i.xq = phi ptr [ %i.xl, %.lr.ph ], [ %.pre955, %bb.dn ] ; 2 uses
  %i.xr = phi i64 [ %i.xm, %.lr.ph ], [ %.pre, %bb.dn ]
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xn
  %i.xt = trunc nuw nsw i32 %.sroa.096.9822 to i8
  store i8 %i.xt, ptr %i.xs, align 1, !noalias !2027
  %i.xu = add nuw i64 %i.xn, 1                    ; 5 uses
  store i64 %i.xu, ptr %.sroa.5163.0..sroa_idx, align 8, !alias.scope !2027
  %.not699 = icmp eq ptr %.sroa.0.4821, %i.be
  br i1 %.not699, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294.thread, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.0.4821, i64 1 ; 3 uses
  %i.xw = load i8, ptr %.sroa.0.4821, align 1, !noalias !2028, !noundef !5 ; 5 uses
  %i.xx = icmp sgt i8 %i.xw, -1
  br i1 %i.xx, label %bb.dq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i289

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i289: ; preds = %bb.dp
  %i.xy = and i8 %i.xw, 31
  %i.xz = zext nneg i8 %i.xy to i32               ; 3 uses
  %i.ya = icmp ne ptr %i.xv, %i.be
  tail call void @llvm.assume(i1 %i.ya)
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0.4821, i64 2 ; 3 uses
  %i.yc = load i8, ptr %i.xv, align 1, !noalias !2028, !noundef !5
  %i.yd = shl nuw nsw i32 %i.xz, 6
  %i.ye = and i8 %i.yc, 63
  %i.yf = zext nneg i8 %i.ye to i32               ; 2 uses
  %i.yg = or disjoint i32 %i.yd, %i.yf
  %i.yh = icmp samesign ugt i8 %i.xw, -33
  br i1 %i.yh, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i292, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294

bb.dq:                                            ; preds = %bb.dp
  %i.yi = zext nneg i8 %i.xw to i32
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i292: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i289
  %i.yj = icmp ne ptr %i.yb, %i.be
  tail call void @llvm.assume(i1 %i.yj)
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.0.4821, i64 3 ; 3 uses
  %i.yl = load i8, ptr %i.yb, align 1, !noalias !2028, !noundef !5
  %i.ym = shl nuw nsw i32 %i.yf, 6
  %i.yn = and i8 %i.yl, 63
  %i.yo = zext nneg i8 %i.yn to i32
  %i.yp = or disjoint i32 %i.ym, %i.yo            ; 2 uses
  %i.yq = shl nuw nsw i32 %i.xz, 12
  %i.yr = or disjoint i32 %i.yp, %i.yq
  %i.ys = icmp samesign ugt i8 %i.xw, -17
  br i1 %i.ys, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i293, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i293: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i292
  %i.yt = icmp ne ptr %i.yk, %i.be
  tail call void @llvm.assume(i1 %i.yt)
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0.4821, i64 4
  %i.yv = load i8, ptr %i.yk, align 1, !noalias !2028, !noundef !5
  %i.yw = shl nuw nsw i32 %i.xz, 18
  %i.yx = and i32 %i.yw, 1835008
  %i.yy = shl nuw nsw i32 %i.yp, 6
  %i.yz = and i8 %i.yv, 63
  %i.za = zext nneg i8 %i.yz to i32
  %i.zb = or disjoint i32 %i.yy, %i.za
  %i.zc = or disjoint i32 %i.zb, %i.yx
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294

_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i289, %bb.dq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i292, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i293
  %spec.select204 = phi i32 [ %i.yg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i289 ], [ %i.yi, %bb.dq ], [ %i.zc, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i293 ], [ %i.yr, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i292 ] ; 3 uses
  %.sroa.0.15 = phi ptr [ %i.yb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit12.i289 ], [ %i.xv, %bb.dq ], [ %i.yu, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit16.i293 ], [ %i.yk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdit6BuOJVAc_5uu_od.exit14.i292 ] ; 2 uses
  %i.zd = add nsw i32 %spec.select204, -48
  %or.cond6.i285 = icmp ult i32 %i.zd, 10
  br i1 %or.cond6.i285, label %.lr.ph, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294.thread

_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294.thread: ; preds = %bb.do, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294
  %.sroa.0.4.lcssa = phi ptr [ %.sroa.0.15, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294 ], [ %.sroa.0.4821, %bb.do ] ; 4 uses
  %.sroa.096.9.lcssa = phi i32 [ %spec.select204, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294 ], [ -1, %bb.do ] ; 4 uses
  %i.ze = icmp sgt i64 %i.xu, -1
  tail call void @llvm.assume(i1 %i.ze)
  %i.zf = load ptr, ptr %.sroa.4162.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %cond693 = icmp eq i64 %i.xn, 0
  %i.zg = load i8, ptr %i.zf, align 1, !alias.scope !2029 ; 2 uses
  br i1 %cond693, label %bb.dr, label %thread-pre-split.i315

bb.dr:                                            ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294.thread
  switch i8 %i.zg, label %thread-pre-split.i315 [
    i8 43, label %.loopexit749
    i8 45, label %.loopexit749
  ]

thread-pre-split.i315:                            ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsdit6BuOJVAc_5uu_od.exit294.thread, %bb.dr
  %cond.i298 = icmp eq i8 %i.zg, 43               ; 2 uses
  %i.zh = sext i1 %cond.i298 to i64
  %.sroa.15.0.i299 = add nsw i64 %i.xu, %i.zh     ; 4 uses
  %.sroa.0.0.idx.i300 = zext i1 %cond.i298 to i64
  %.sroa.0.0.i301 = getelementptr inbounds nuw i8, ptr %i.zf, i64 %.sroa.0.0.idx.i300 ; 3 uses
  %i.zi = icmp samesign ult i64 %.sroa.15.0.i299, 3
  br i1 %i.zi, label %.preheader.i308, label %.preheader57.i302.preheader

.preheader.i308:                                  ; preds = %thread-pre-split.i315
  %.not5462.i309 = icmp eq i64 %.sroa.15.0.i299, 0
  br i1 %.not5462.i309, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit288.thread, label %.lr.ph.preheader.i310

.lr.ph.preheader.i310:                            ; preds = %.preheader.i308
  %i.zj = load i8, ptr %.sroa.0.0.i301, align 1, !alias.scope !2029, !noundef !5
  %i.zk = zext i8 %i.zj to i32
  %i.zl = add nsw i32 %i.zk, -48                  ; 2 uses
  %i.zm = icmp ugt i32 %i.zl, 9
  br i1 %i.zm, label %.loopexit749, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.preheader.i310
  %i.zn = icmp eq i64 %.sroa.15.0.i299, 1
  %i.zo = trunc nuw nsw i32 %i.zl to i8           ; 2 uses
  br i1 %i.zn, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit288.thread, label %.lr.ph.i311

.preheader57.i302:                                ; preds = %bb.dt
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i3051304, i64 1
  %i.zq = add nsw i64 %.sroa.15.1.i3041303, -1    ; 2 uses
  %.not53.not.i306 = icmp eq i64 %i.zq, 0
  br i1 %.not53.not.i306, label %_RNvNtCsdit6BuOJVAc_5uu_od13parse_formats22is_format_size_decimal.exit288.thread, label %.preheader57.i302.preheader

.preheader57.i302.preheader:                      ; preds = %thread-pre-split.i315, %.preheader57.i302
  %.sroa.0.1.i3051304 = phi ptr [ %i.zp, %.preheader57.i302 ], [ %.sroa.0.0.i301, %thread-pre-split.i315 ] ; 2 uses
  %.sroa.15.1.i3041303 = phi i64 [ %i.zq, %.preheader57.i302 ], [ %.sroa.15.0.i299, %thread-pre-split.i315 ]
  %.sroa.043.0.i3031302 = phi i8 [ %i.zz, %.preheader57.i302 ], [ 0, %thread-pre-split.i315 ]
  %i.zr = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i3031302, i8 10) ; 2 uses
  %i.zs = extractvalue { i8, i1 } %i.zr, 1
  br i1 %i.zs, label %.loopexit749, label %bb.dt, !prof !12

bb.dt:                                            ; preds = %.preheader57.i302.preheader
end_hunk_1
