Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_touch-88b35e5ce9cfb264.uu_touch.a1ebf4301e4c8f8d-cgu.0?download=true
inline.NumInlined: 849
inline.NumDeleted: 480
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCsdTU8hOCbdCr_8uu_touch:bb.a
bb.e:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s) #27, !noalias !1882
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !1884
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.e ], [ -1, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1881, !noalias !1882, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1881, !noalias !1882, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %i.w = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.w, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1888
  %i.y = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.x, i64 noundef range(i64 1, 9) 8) #27, !noalias !1888 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.x) #29, !noalias !1894
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %.val4.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.h ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.7.021.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.020.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %.val4.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.ab = icmp eq ptr %.sroa.0.022.i.i.i.i.i.i, %i.aa
  br i1 %i.ab, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = add nsw i64 %.sroa.10.020.i.i.i.i.i.i, -1 ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.7.021.i.i.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !1885, !noalias !1895, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1885, !noalias !1895, !noundef !4
  store ptr %.val.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !1894
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %i.ah, align 8, !noalias !1894
  %i.ai = icmp eq i64 %i.ac, 0
  br i1 %i.ai, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ak = load i8, ptr %i.aj, align 8, !range !644, !alias.scope !1881, !noalias !1882, !noundef !4
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !1896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1877
  store i64 %.val4.i.i.i.i, ptr %i.n, align 8, !noalias !1896
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !1896
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !1896
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !1896
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.p, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !1896
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.r, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !1896
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 %i.ak, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !1896
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.c

_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i65.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ %i.f, %bb.c ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1897
  %i.am = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #27, !noalias !1897 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !132

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29, !noalias !1897
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.10.0.i65.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = insertvalue { ptr, ptr } poison, ptr %i.am, 0
  %i.ap = insertvalue { ptr, ptr } %i.ao, ptr @106, 1
  ret { ptr, ptr } %i.ap
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9parse_refCsdTU8hOCbdCr_8uu_touch(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #27
  %i.b = load i64, ptr %i.a, align 8, !range !185, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !246, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1900
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #27, !noalias !1900 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !132

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29, !noalias !1900
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @122, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !246, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 3, 7) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp ult i64 %1, %3
  br i1 %i.c, label %bb.c, label %bb.b

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.s, %bb.b, %bb.ay, %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.ld, %bb.ay ], [ %storemerge.i.sink.i, %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.s ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.ay, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %i.f = load i8, ptr %0, align 1, !alias.scope !1903, !noalias !1906, !noundef !4 ; 7 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 7) %1, i64 4) ; 5 uses
  %4 = add nsw i64 %1, -1                         ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !alias.scope !1903, !noalias !1908, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %6, %i.f
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %.lr.ph.1, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.d
  %i.j = add nsw i64 %1, -2                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1903, !noalias !1908, !noundef !4 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.l, %i.f
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph.1
  %i.m = icmp ult i64 %i.h, %i.j
  br i1 %i.m, label %.lr.ph.2, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.e
  %i.n = add nsw i64 %1, -3                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !1903, !noalias !1908, !noundef !4 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.p, %i.f
  br i1 %.not.i.not.i.i.2, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph.2
  %i.q = icmp ult i64 %i.h, %i.n
  br i1 %i.q, label %.lr.ph.3, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.f
  %i.r = add nsw i64 %1, -4                       ; 4 uses
  %i.s = icmp samesign ugt i64 %1, 3
  br i1 %i.s, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.3, label %bb.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.3: ; preds = %.lr.ph.3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1903, !noalias !1908, !noundef !4 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.u, %i.f
  br i1 %.not.i.not.i.i.3, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.3
  %i.v = icmp ult i64 %i.h, %i.r
  br i1 %i.v, label %.lr.ph.4, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

.lr.ph.4:                                         ; preds = %bb.g
  %i.w = add nsw i64 %1, -5                       ; 4 uses
  %.not = icmp eq i64 %1, 4
  br i1 %.not, label %bb.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.4

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.4: ; preds = %.lr.ph.4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !1903, !noalias !1908, !noundef !4 ; 2 uses
  %.not.i.not.i.i.4 = icmp eq i8 %i.y, %i.f
  br i1 %.not.i.not.i.i.4, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.4
  %i.z = icmp ult i64 %i.h, %i.w
  br i1 %i.z, label %.lr.ph.5, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

.lr.ph.5:                                         ; preds = %bb.h
  %i.aa = add nsw i64 %1, -6                      ; 3 uses
  %i.ab = icmp samesign ugt i64 %1, 5
  br i1 %i.ab, label %.lr.ph, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !1903, !noalias !1908, !noundef !4 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.ad, %i.f
  br i1 %.not.i.not.i.i.a, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit, label %bb.j

bb.i:                                             ; preds = %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  %.lcssa179 = phi i64 [ %i.aa, %.lr.ph.5 ], [ %i.w, %.lr.ph.4 ], [ %i.r, %.lr.ph.3 ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.lcssa179, i64 noundef range(i64 3, 7) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #28, !noalias !1916
  unreachable

bb.j:                                             ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.4, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.3, %.lr.ph.2, %.lr.ph.1, %bb.c
  %.lcssa182 = phi i8 [ %6, %bb.c ], [ %i.l, %.lr.ph.1 ], [ %i.p, %.lr.ph.2 ], [ %i.u, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.3 ], [ %i.y, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.4 ], [ %i.ad, %.lr.ph ]
  %.lcssa180 = phi i64 [ %4, %bb.c ], [ %i.j, %.lr.ph.1 ], [ %i.n, %.lr.ph.2 ], [ %i.r, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.3 ], [ %i.w, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.4 ], [ %i.aa, %.lr.ph ] ; 6 uses
  %i.ae = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.af = icmp ult i64 %3, %i.ae
  br i1 %i.af, label %.lr.ph.split.us.i.i, label %bb.k

.lr.ph.split.us.i.i:                              ; preds = %bb.j
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 7) %1), !alias.scope !1917, !noalias !1918
  %i.ag = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.ag, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ah = add nsw i64 %3, -1                      ; 2 uses
  %.not27.i.i163 = icmp ugt i64 %1, %i.ah
  br i1 %.not27.i.i163, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i
  %i.ai = phi i64 [ %i.al, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i ], [ %i.ah, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader ]
  %.pn.i164 = phi ptr [ %i.aj, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn.i164, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aj, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 7) %1), !alias.scope !1917, !noalias !1918
  %i.ak = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ak, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.al = add nsw i64 %i.ai, -1                   ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.al
  br i1 %.not27.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.k:                                             ; preds = %bb.j
  %i.am = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ao = insertelement <16 x i8> poison, i8 %.lcssa182, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1917
  store ptr %2, ptr %i.a, align 8, !noalias !1917
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ar, align 8, !noalias !1917
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !noalias !1917
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.at, align 8, !noalias !1917
  %i.au = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.au, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %bb.k
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.k ], [ %.sroa.014.2.3.i, %bb.o ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.k ], [ %i.cp, %bb.o ] ; 2 uses
  %i.av = add i64 %.sroa.06.0.lcssa.i, %i.ae
  %i.aw = icmp uge i64 %i.av, %3
  %i.ax = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond399.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond399.i, label %._crit_edge.i, label %.lr.ph101.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.o
  %.sroa.06.097.i = phi i64 [ %i.cp, %bb.o ], [ 0, %bb.k ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.097.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ay, align 1, !alias.scope !1906, !noalias !1922
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.lcssa180
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !1906, !noalias !1922
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.an
  %i.bb = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.ap
  %i.bc = and <16 x i1> %i.ba, %i.bb
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.be, align 1, !alias.scope !1906, !noalias !1922
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.lcssa180
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !1906, !noalias !1922
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.an
  %i.bh = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.ap
  %i.bi = and <16 x i1> %i.bg, %i.bh
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bk, align 1, !alias.scope !1906, !noalias !1922
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.lcssa180
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !1906, !noalias !1922
  %i.bm = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.an
  %i.bn = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.ap
  %i.bo = and <16 x i1> %i.bm, %i.bn
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !1906, !noalias !1922
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.lcssa180
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !1906, !noalias !1922
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.an
  %i.bt = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.ap
  %i.bu = and <16 x i1> %i.bs, %i.bt
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %i.bw = icmp eq i16 %i.bd, 0
  br i1 %i.bw, label %.preheader90.1.i, label %bb.p

.preheader90.1.i:                                 ; preds = %bb.p, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cu, %bb.p ] ; 3 uses
  %i.bx = icmp eq i16 %i.bj, 0
  br i1 %i.bx, label %.preheader90.2.i, label %bb.l

bb.l:                                             ; preds = %.preheader90.1.i
  %i.by = or disjoint i64 %.sroa.06.097.i, 16
  %i.bz = trunc nuw i8 %.sroa.014.2.i to i1
  %i.ca = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.by, i16 noundef %i.bj, i1 noundef zeroext %i.bz) #30
  %i.cb = zext i1 %i.ca to i8
  %i.cc = or i8 %.sroa.014.2.i, %i.cb
  br label %.preheader90.2.i

.preheader90.2.i:                                 ; preds = %bb.l, %.preheader90.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader90.1.i ], [ %i.cc, %bb.l ] ; 3 uses
  %i.cd = icmp eq i16 %i.bp, 0
  br i1 %i.cd, label %.preheader90.3.i, label %bb.m

bb.m:                                             ; preds = %.preheader90.2.i
  %i.ce = or disjoint i64 %.sroa.06.097.i, 32
  %i.cf = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cg = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ce, i16 noundef %i.bp, i1 noundef zeroext %i.cf) #30
  %i.ch = zext i1 %i.cg to i8
  %i.ci = or i8 %.sroa.014.2.1.i, %i.ch
  br label %.preheader90.3.i

.preheader90.3.i:                                 ; preds = %bb.m, %.preheader90.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader90.2.i ], [ %i.ci, %bb.m ] ; 3 uses
  %i.cj = icmp eq i16 %i.bv, 0
  br i1 %i.cj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader90.3.i
  %i.ck = or disjoint i64 %.sroa.06.097.i, 48
  %i.cl = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cm = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ck, i16 noundef %i.bv, i1 noundef zeroext %i.cl) #30
  %i.cn = zext i1 %i.cm to i8
  %i.co = or i8 %.sroa.014.2.2.i, %i.cn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader90.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader90.3.i ], [ %i.co, %bb.n ] ; 2 uses
  %i.cp = add i64 %.sroa.06.097.i, 64             ; 3 uses
  %i.cq = add i64 %i.cp, %i.au
  %i.cr = icmp uge i64 %i.cq, %3
  %i.cs = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.ct = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.097.i, i16 noundef %i.bd, i1 noundef zeroext false) #30
  %i.cu = zext i1 %i.ct to i8
  br label %.preheader90.1.i

._crit_edge.i:                                    ; preds = %bb.q, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.q ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ax, %.preheader.i ], [ %i.do, %bb.q ]
  %i.cv = sub nuw i64 %3, %i.g
  %i.cw = add i64 %i.cv, -16                      ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.cx, align 1, !alias.scope !1906, !noalias !1925
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.lcssa180
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.cy, align 1, !alias.scope !1906, !noalias !1925
  %i.cz = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.an
  %i.da = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.ap
  %i.db = and <16 x i1> %i.cz, %i.da
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %i.dd = icmp eq i16 %i.dc, 0
  br i1 %i.dd, label %bb.s, label %bb.t

.lr.ph101.i:                                      ; preds = %.preheader.i, %bb.q
  %.sroa.06.1100.i = phi i64 [ %i.dl, %bb.q ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1100.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.de, align 1, !alias.scope !1906, !noalias !1928
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.lcssa180
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.df, align 1, !alias.scope !1906, !noalias !1928
  %i.dg = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.an
  %i.dh = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.ap
  %i.di = and <16 x i1> %i.dg, %i.dh
  %i.dj = bitcast <16 x i1> %i.di to i16          ; 2 uses
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %.lr.ph101.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph101.i ], [ %i.dq, %bb.r ] ; 2 uses
  %i.dl = add i64 %.sroa.06.1100.i, 16            ; 2 uses
  %i.dm = add i64 %i.dl, %i.ae
  %i.dn = icmp uge i64 %i.dm, %3
  %i.do = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dn, %i.do
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph101.i

bb.r:                                             ; preds = %.lr.ph101.i
  %i.dp = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1100.i, i16 noundef %i.dj, i1 noundef zeroext false) #30
  %i.dq = zext i1 %i.dp to i8
  br label %bb.q

bb.s:                                             ; preds = %bb.t, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.dt, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1917
  br label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread

bb.t:                                             ; preds = %._crit_edge.i
  %i.dr = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cw, i16 noundef %i.dc, i1 noundef zeroext %.lcssa.i) #30
  %i.ds = zext i1 %i.dr to i8
  %i.dt = or i8 %.sroa.014.3.lcssa.i, %i.ds
  br label %bb.s

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit: ; preds = %.lr.ph, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  %i.du = load i64, ptr %i.b, align 8, !range !259, !alias.scope !1931, !noalias !1934, !noundef !4
  %i.dv = trunc nuw i64 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.dv, label %bb.ad, label %.preheader.i3

.preheader.i3:                                    ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.dy = load i8, ptr %i.dx, align 2, !range !644, !alias.scope !1936, !noalias !1939, !noundef !4
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.preheader.i3
  %.promoted.i = load i64, ptr %i.dw, align 8, !alias.scope !1931, !noalias !1934 ; 12 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !1936, !noalias !1939, !nonnull !4, !noundef !4 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !1936, !noalias !1939, !noundef !4 ; 14 uses
  %.promoted52.i = load i8, ptr %i.ea, align 8, !alias.scope !1936, !noalias !1939 ; 2 uses
  %i.ef = trunc nuw i8 %.promoted52.i to i1
  %i.eg = icmp eq i64 %.promoted.i, 0
  br i1 %i.eg, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i4
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.ee
  br i1 %.not.i.i.i.peel, label %bb.v, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.u
  %i.eh = icmp eq i64 %.promoted.i, %i.ee
  br i1 %i.eh, label %bb.w, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.promoted.i
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !1941, !noalias !1944, !noundef !4
  %i.ek = icmp sgt i8 %i.ej, -65
  br i1 %i.ek, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v, %.split.i.i.i.peel, %.lr.ph.i4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.promoted.i ; 4 uses
  %i.em = icmp samesign eq i64 %.promoted.i, %i.ee
  br i1 %i.em, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = load i8, ptr %i.el, align 1, !noalias !1946, !noundef !4 ; 5 uses
  %i.eo = icmp sgt i8 %i.en, -1
  br i1 %i.eo, label %bb.y, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel: ; preds = %bb.x
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.eq = and i8 %i.en, 31
  %i.er = zext nneg i8 %i.eq to i32               ; 3 uses
  %i.es = add nuw nsw i64 %.promoted.i, 1
  %i.et = icmp samesign ne i64 %i.es, %i.ee
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = load i8, ptr %i.ep, align 1, !noalias !1946, !noundef !4
  %i.ev = shl nuw nsw i32 %i.er, 6
  %i.ew = and i8 %i.eu, 63
  %i.ex = zext nneg i8 %i.ew to i32               ; 2 uses
  %i.ey = or disjoint i32 %i.ev, %i.ex
  %i.ez = icmp samesign ugt i8 %i.en, -33
  br i1 %i.ez, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel, label %bb.z

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel
  %i.fa = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.fb = add nuw nsw i64 %.promoted.i, 2
  %i.fc = icmp samesign ne i64 %i.fb, %i.ee
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = load i8, ptr %i.fa, align 1, !noalias !1946, !noundef !4
  %i.fe = shl nuw nsw i32 %i.ex, 6
  %i.ff = and i8 %i.fd, 63
  %i.fg = zext nneg i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fe, %i.fg            ; 2 uses
  %i.fi = shl nuw nsw i32 %i.er, 12
  %i.fj = or disjoint i32 %i.fh, %i.fi
  %i.fk = icmp samesign ugt i8 %i.en, -17
  br i1 %i.fk, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel, label %bb.z

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 3
  %i.fm = add nuw nsw i64 %.promoted.i, 3
  %i.fn = icmp samesign ne i64 %i.fm, %i.ee
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = load i8, ptr %i.fl, align 1, !noalias !1946, !noundef !4
  %i.fp = shl nuw nsw i32 %i.er, 18
  %i.fq = and i32 %i.fp, 1835008
  %i.fr = shl nuw nsw i32 %i.fh, 6
  %i.fs = and i8 %i.fo, 63
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fr, %i.ft
  %i.fv = or disjoint i32 %i.fu, %i.fq
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fw = zext nneg i8 %i.en to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel ], [ %i.fv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel ], [ %i.ey, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel ], [ %i.fw, %bb.y ] ; 4 uses
  %i.fx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.fx)
  br i1 %i.ef, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.fy, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.fz, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.ga, i64 3, i64 4
  br label %bb.ae

bb.ad:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !1931, !noalias !1934, !noundef !4 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !1931, !noalias !1934, !nonnull !4, !noundef !4 ; 8 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !1931, !noalias !1934, !noundef !4 ; 10 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !1931, !noalias !1934, !nonnull !4, !noundef !4 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !1931, !noalias !1934, !noundef !4 ; 14 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gn = add nsw i64 %i.gl, -1                   ; 5 uses
  br i1 %i.gd, label %bb.ar, label %bb.aj

bb.ae:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.ab ], [ %..i.i.peel, %bb.ac ], [ 1, %bb.aa ]
  %i.go = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i = icmp ult i64 %i.go, %i.ee
  br i1 %.not.i.i.i, label %bb.ag, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.af
  %i.gq = icmp eq i64 %i.go, %i.ee
  br i1 %i.gq, label %bb.ah, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.go
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !1941, !noalias !1950, !noundef !4
  %i.gt = icmp sgt i8 %i.gs, -65
  br i1 %i.gt, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag, %.split.i.i.i, %bb.ae
  %i.gu = icmp samesign eq i64 %i.go, %i.ee
  br i1 %i.gu, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.go
  %i.gw = load i8, ptr %i.gv, align 1, !noalias !1951, !noundef !4 ; 3 uses
  %i.gx = icmp sgt i8 %i.gw, -1
  br i1 %i.gx, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i: ; preds = %bb.ai
  %i.gy = add nuw nsw i64 %i.go, 1
  %i.gz = icmp samesign ne i64 %i.gy, %i.ee
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp samesign ugt i8 %i.gw, -33
  br i1 %i.ha, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i
  %i.hb = add nuw nsw i64 %i.go, 2
  %i.hc = icmp samesign ne i64 %i.hb, %i.ee
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp samesign ugt i8 %i.gw, -17
  br i1 %i.hd, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i
  %i.he = add nuw nsw i64 %i.go, 3
  %i.hf = icmp samesign ne i64 %i.he, %i.ee
  tail call void @llvm.assume(i1 %i.hf)
  br label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ag, %.split.i.i.i, %bb.v, %.split.i.i.i.peel
  %.lcssa80 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.v ], [ %i.go, %.split.i.i.i ], [ %i.go, %bb.ag ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %i.ee, i64 noundef %.lcssa80, i64 noundef %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #28, !noalias !1950
  unreachable

bb.aj:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  %.promoted.i.i = load i64, ptr %i.gm, align 8, !alias.scope !1959, !noalias !1960 ; 2 uses
  %i.hg = add i64 %.promoted.i.i, %i.gn           ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.gh
  br i1 %i.hh, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.aj
end_hunk_0
