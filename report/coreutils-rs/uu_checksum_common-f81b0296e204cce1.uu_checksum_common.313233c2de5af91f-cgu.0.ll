Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_checksum_common-f81b0296e204cce1.uu_checksum_common.313233c2de5af91f-cgu.0?download=true
inline.NumInlined: 663
inline.NumDeleted: 426
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs4dRV7rdzHEF_18uu_checksum_common13checksum_main:bb.a
  %i.ab = tail call noundef dereferenceable_or_null(6) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 6, i64 noundef range(i64 1, 9) 1) #22, !noalias !672 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 6) #25, !noalias !669
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ab, ptr noundef nonnull align 1 dereferenceable(6) @51, i64 6, i1 false), !noalias !669
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !675
  %i.ad = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #22, !noalias !675 ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.u, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit158, !prof !6

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !675
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit158: ; preds = %bb.t
  store i64 1, ptr %i.ad, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i8 6, ptr %.sroa.4199.0..sroa_idx, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  store i56 0, ptr %.sroa.5200.0..sroa_idx, align 1
  %.sroa.6201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ab, ptr %.sroa.6201.0..sroa_idx, align 8
  %.sroa.7202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 6, ptr %.sroa.7202.0..sroa_idx, align 8
  br label %bb.ap

.thread232.sink.split:                            ; preds = %.thread215.thread, %bb.l
  %.ph = phi i1 [ %i.v, %.thread215.thread ], [ true, %bb.l ]
  %.sroa.8164.sroa.0.0.ph.in262.ph = phi i1 [ %i.u, %.thread215.thread ], [ %i.o, %bb.l ]
  %.sroa.8161.sroa.0.0.ph213.ph259.ph = phi i8 [ 1, %.thread215.thread ], [ 0, %bb.l ]
  %i.af = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 6) #22, !noalias !5
  br label %.thread232

.thread232:                                       ; preds = %.thread232.sink.split, %bb.q
  %i.ag = phi i1 [ false, %bb.q ], [ %.ph, %.thread232.sink.split ]
  %.sroa.8164.sroa.0.0.ph.in262 = phi i1 [ %i.o, %bb.q ], [ %.sroa.8164.sroa.0.0.ph.in262.ph, %.thread232.sink.split ]
  %.sroa.8161.sroa.0.0.ph213.ph259 = phi i8 [ 0, %bb.q ], [ %.sroa.8161.sroa.0.0.ph213.ph259.ph, %.thread232.sink.split ]
  %.sroa.8174.sroa.0.0.ph.in = phi i1 [ %i.aa, %bb.q ], [ %i.af, %.thread232.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNCNvCs4dRV7rdzHEF_18uu_checksum_common13checksum_main0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr nonnull %i.g, ptr %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 6) #24
  %i.ah = load i64, ptr %i.f, align 8, !range !678, !noundef !5 ; 2 uses
  %.not126 = icmp eq i64 %i.ah, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = load i8, ptr %i.ai, align 8             ; 2 uses
  br i1 %.not126, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread232
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5205)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5205, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5110.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ak = tail call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #24, !noalias !679 ; 4 uses
  store i64 %i.ah, ptr %i.ak, align 8
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i8 %i.aj, ptr %.sroa.4204.0..sroa_idx, align 8
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5205.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5205, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5205)
  br label %bb.ap

bb.w:                                             ; preds = %.thread232
  %i.al = trunc nuw i8 %i.aj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.am = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 4) #22
  %i.an = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 6) #22
  %i.ao = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 3) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) #22
  call fastcc void @_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = load ptr, ptr %i.d, align 8, !noundef !5
  %.not127 = icmp eq ptr %i.ap, null
  br i1 %.not127, label %bb.y, label %bb.x, !prof !6

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.am, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #21
  unreachable

bb.z:                                             ; preds = %bb.x
  br i1 %i.h, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  br i1 %i.ao, label %bb.aj, label %bb.ai

bb.ab:                                            ; preds = %bb.ai, %bb.z
  %.not129 = icmp eq i8 %0, -1
  %. = select i1 %.not129, i8 2, i8 %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs3_NtNtCsh036I4OHgIr_6uucore8features8checksumNtB5_13SizedAlgoKind12from_unsized(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i8 noundef %., i64 noundef %1, i64 %2) #22
  %i.aq = load i8, ptr %i.c, align 8, !range !682, !noundef !5 ; 2 uses
  %i.ar = icmp eq i8 %i.aq, -1
  br i1 %i.ar, label %bb.al, label %bb.am

bb.ac:                                            ; preds = %bb.z
  %switch = icmp ult i8 %0, 4
  br i1 %switch, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ao, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ak, %bb.ac
  %i.as = tail call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #24, !noalias !683 ; 2 uses
  store i64 13, ptr %i.as, align 8
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  br i1 %i.an, label %.thread238, label %bb.aq

bb.ag:                                            ; preds = %bb.ad
  %i.at = tail call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #24, !noalias !686 ; 2 uses
  store i64 11, ptr %i.at, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %bb.an, %bb.aq, %.thread238, %bb.aj, %bb.ag, %bb.ae
  %.sroa.14.0 = phi ptr [ @41, %bb.aj ], [ @41, %.thread238 ], [ %i.bm, %bb.aq ], [ @41, %bb.ae ], [ %i.ay, %bb.al ], [ %i.bg, %bb.an ], [ @41, %bb.ag ]
  %.sroa.010.0 = phi ptr [ %i.au, %bb.aj ], [ %i.bj, %.thread238 ], [ %i.bl, %bb.aq ], [ %i.as, %bb.ae ], [ %i.aw, %bb.al ], [ %i.bf, %bb.an ], [ %i.at, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ap

bb.ai:                                            ; preds = %bb.aa
  br i1 %i.h, label %bb.ak, label %bb.ab

bb.aj:                                            ; preds = %bb.aa
  %i.au = tail call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #24, !noalias !689 ; 2 uses
  store i64 12, ptr %i.au, align 8
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ai
  %switch134 = icmp ult i8 %0, 4
  br i1 %switch134, label %bb.ae, label %.thread238

bb.al:                                            ; preds = %bb.ab
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !align !145, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ah

bb.am:                                            ; preds = %bb.ab
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4118.0..sroa_idx, i64 7, i1 false)
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.az = load <2 x ptr>, ptr %.sroa.5119.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ba = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 4) #22
  %.132 = select i1 %i.ba, i8 0, i8 10
  store i8 %i.aq, ptr %i.b, align 8
  store <2 x ptr> %i.az, ptr %.sroa.3.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i16 %4, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.132, ptr %i.bc, align 8
  %i.bd = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #22
  %i.be = call fastcc { ptr, ptr } @_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum7compute28perform_checksum_computationNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB1t_3ffi6os_str8OsStringENvYB42_INtNtB2a_6borrow6BorrowNtB44_5OsStrE6borrowEECs4dRV7rdzHEF_18uu_checksum_common(ptr noundef nonnull align 8 %i.bd, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.e) #22 ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %.not130 = icmp eq ptr %i.bf, null
  br i1 %.not130, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bg = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit153, %bb.v, %bb.ah, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit158, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit148, %bb.ao
  %.sroa.14.1 = phi ptr [ undef, %bb.ao ], [ @41, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ @41, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit148 ], [ @41, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit153 ], [ @41, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit158 ], [ @41, %bb.v ], [ %.sroa.14.0, %bb.ah ]
  %.sroa.010.1 = phi ptr [ null, %bb.ao ], [ %i.m, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.r, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit148 ], [ %i.y, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit153 ], [ %i.ad, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit158 ], [ %i.ak, %bb.v ], [ %.sroa.010.0, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef align 8 dereferenceable(56) %3) #22
  %i.bh = insertvalue { ptr, ptr } poison, ptr %.sroa.010.1, 0
  %i.bi = insertvalue { ptr, ptr } %i.bh, ptr %.sroa.14.1, 1
  ret { ptr, ptr } %i.bi

.thread238:                                       ; preds = %bb.ak, %bb.af
  %i.bj = tail call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32) #24, !noalias !692 ; 2 uses
  store i64 9, ptr %i.bj, align 8
  br label %bb.ah

bb.aq:                                            ; preds = %bb.af
  %.sroa.0121.0.insert.ext = zext nneg i8 %.sroa.8161.sroa.0.0.ph213.ph259 to i24
  %.sroa.0121.1.insert.shift = select i1 %.sroa.8174.sroa.0.0.ph.in, i24 256, i24 0
  %.sroa.0121.1.insert.insert = or disjoint i24 %.sroa.0121.1.insert.shift, %.sroa.0121.0.insert.ext
  %5 = select i1 %.sroa.8164.sroa.0.0.ph.in262, i24 196608, i24 131072
  %6 = select i1 %i.ag, i24 65536, i24 %5
  %.sroa.0121.2.insert.ext = select i1 %i.al, i24 0, i24 %6
  %.sroa.0121.2.insert.insert = or disjoint i24 %.sroa.0121.1.insert.insert, %.sroa.0121.2.insert.ext
  %i.bk = call fastcc { ptr, ptr } @_RINvNtNtNtCsh036I4OHgIr_6uucore8features8checksum8validate27perform_checksum_validationINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYB3o_INtNtB1w_6borrow6BorrowNtB3q_5OsStrE6borrowEECs4dRV7rdzHEF_18uu_checksum_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.e, i8 noundef %0, i64 noundef %1, i64 %2, i24 %.sroa.0121.2.insert.insert) #22 ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  br label %bb.ah
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs4dRV7rdzHEF_18uu_checksum_common20default_checksum_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs4dRV7rdzHEF_18uu_checksum_common.exit:
  %i.a = alloca [640 x i8], align 8               ; 54 uses
  %i.b = alloca [640 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [712 x i8], align 8               ; 56 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = tail call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #22 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h) #22
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !alias.scope !695, !noalias !701 ; 2 uses
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.i, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.i, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.0.0.copyload.i2 = load i64, ptr %1, align 8, !alias.scope !704, !noalias !710 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i2, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.i1.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i3, align 8
  %.sroa.5.i1.sroa.4.0..sroa.55.0..sroa_idx.i3.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.i1.sroa.4.0.copyload = load i64, ptr %.sroa.5.i1.sroa.4.0..sroa.55.0..sroa_idx.i3.sroa_idx, align 8
  %.sroa.5.i1.sroa.0.0 = select i1 %i.j, ptr undef, ptr %.sroa.5.i1.sroa.0.0.copyload
  %.sroa.5.i1.sroa.4.0 = select i1 %i.j, i64 undef, i64 %.sroa.5.i1.sroa.4.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n) #22
  %.sroa.0.0.copyload.i8 = load i64, ptr %i.c, align 8, !alias.scope !713, !noalias !719 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.0.copyload.i8, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.i7.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i9, align 8
  %.sroa.5.i7.sroa.4.0..sroa.55.0..sroa_idx.i9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.i7.sroa.4.0.copyload = load i64, ptr %.sroa.5.i7.sroa.4.0..sroa.55.0..sroa_idx.i9.sroa_idx, align 8
  %.sroa.5.i7.sroa.0.0 = select i1 %i.o, ptr undef, ptr %.sroa.5.i7.sroa.0.0.copyload
  %.sroa.5.i7.sroa.4.0 = select i1 %i.o, i64 undef, i64 %.sroa.5.i7.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.e, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  store i64 %.sroa.0.0.copyload.i2, ptr %.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  store ptr %.sroa.5.i1.sroa.0.0, ptr %.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  store i64 %.sroa.5.i1.sroa.4.0, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 440
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  store i64 %.sroa.0.0.copyload.i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  store ptr %.sroa.5.i7.sroa.0.0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  store i64 %.sroa.5.i7.sroa.4.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.9.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.sroa.4.sroa.9.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.4.sroa.12.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  store ptr null, ptr %.sroa.0.sroa.4.sroa.12.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.14.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  store ptr @59, ptr %.sroa.0.sroa.4.sroa.14.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.15.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  store i64 25, ptr %.sroa.0.sroa.4.sroa.15.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.16.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 624
  store ptr null, ptr %.sroa.0.sroa.4.sroa.16.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.18.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  store ptr null, ptr %.sroa.0.sroa.4.sroa.18.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.20.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 656
  store ptr null, ptr %.sroa.0.sroa.4.sroa.20.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.22.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 672
  store ptr null, ptr %.sroa.0.sroa.4.sroa.22.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.24.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 688
  store ptr null, ptr %.sroa.0.sroa.4.sroa.24.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.25.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 696
  store <4 x i32> <i32 -1, i32 136, i32 136, i32 0>, ptr %.sroa.0.sroa.4.sroa.25.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !727
  %i.p = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #22, !noalias !727 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.a, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg14default_valuesNtNtB7_6os_str5OsStrAB1c_j1_ECs4dRV7rdzHEF_18uu_checksum_common.exit

bb.a:                                             ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs4dRV7rdzHEF_18uu_checksum_common.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #25, !noalias !737
  unreachable

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg14default_valuesNtNtB7_6os_str5OsStrAB1c_j1_ECs4dRV7rdzHEF_18uu_checksum_common.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs4dRV7rdzHEF_18uu_checksum_common.exit
  store ptr @28, ptr %i.p, align 8, !noalias !738
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.r, align 8, !noalias !771
  store i64 0, ptr %i.a, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.0.sroa.5138.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.7140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.0.sroa.7140.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.9142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.0.sroa.9142.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.11144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 2, ptr %.sroa.0.sroa.11144.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.14147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.0.sroa.14147.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.15148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.15148.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.16149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.16149.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.17150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.17150.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.18151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.18151.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.19152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.19152.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.20153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.20153.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.21154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.21154.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
  %.sroa.0.sroa.22155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.22155.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.23156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.23156.0..sroa_idx, align 8, !alias.scope !772, !noalias !773
end_hunk_0
