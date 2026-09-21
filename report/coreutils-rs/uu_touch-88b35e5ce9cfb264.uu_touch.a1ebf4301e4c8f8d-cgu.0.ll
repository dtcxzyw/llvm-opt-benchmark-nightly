Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_touch-88b35e5ce9cfb264.uu_touch.a1ebf4301e4c8f8d-cgu.0?download=true
inline.NumInlined: 849
inline.NumDeleted: 480
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCsdTU8hOCbdCr_8uu_touch:bb.a
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s) #27, !noalias !1892
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !1893
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.e ], [ -1, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1891, !noalias !1892, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1891, !noalias !1892, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  %i.w = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.w, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1895
  %i.y = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.x, i64 noundef range(i64 1, 9) 8) #27, !noalias !1895 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.x) #29, !noalias !1896
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
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !1894, !noalias !1897, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1894, !noalias !1897, !noundef !4
  store ptr %.val.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !1896
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %i.ah, align 8, !noalias !1896
  %i.ai = icmp eq i64 %i.ac, 0
  br i1 %i.ai, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ak = load i8, ptr %i.aj, align 8, !range !20, !alias.scope !1891, !noalias !1892, !noundef !4
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !1898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1889
  store i64 %.val4.i.i.i.i, ptr %i.n, align 8, !noalias !1898
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !1898
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !1898
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !1898
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.p, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !1898
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.r, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !1898
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 %i.ak, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !1898
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.c

_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i65.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ %i.f, %bb.c ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1899
  %i.am = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #27, !noalias !1899 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29, !noalias !1899
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
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !9, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1902
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #27, !noalias !1902 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29, !noalias !1902
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
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !9, !noundef !4
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

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.q, %bb.b, %bb.aw, %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.ky, %bb.aw ], [ %storemerge.i.sink.i, %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.q ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.aw, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  %i.f = load i8, ptr %0, align 1, !alias.scope !1943, !noalias !1944, !noundef !4 ; 5 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 7) %1, i64 4) ; 4 uses
  %i.i = icmp samesign ult i64 %i.h, %1
  br i1 %i.i, label %.lr.ph, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp ult i64 %i.h, %i.w
  br i1 %i.j, label %.lr.ph.1, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.d
  %i.k = add nsw i64 %1, -2                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1943, !noalias !1945, !noundef !4 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.m, %i.f
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.1
  %i.n = icmp ult i64 %i.h, %i.k
  br i1 %i.n, label %.lr.ph.2, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.e
  %i.o = add nsw i64 %1, -3                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !1943, !noalias !1945, !noundef !4 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.q, %i.f
  br i1 %.not.i.not.i.i.2, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.2
  %i.r = icmp ult i64 %i.h, %i.o
  br i1 %i.r, label %.lr.ph.3, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.f
  %i.s = add nsw i64 %1, -4                       ; 3 uses
  %i.t = icmp samesign ugt i64 %1, 3
  br i1 %i.t, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.5, label %bb.g

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.5: ; preds = %.lr.ph.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !1943, !noalias !1945, !noundef !4 ; 2 uses
  %.not.i.not.i.i.5 = icmp eq i8 %i.v, %i.f
  br i1 %.not.i.not.i.i.5, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit, label %bb.h

.lr.ph:                                           ; preds = %bb.c
  %i.w = add nsw i64 %1, -1                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !1943, !noalias !1945, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.y, %i.f
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.h

bb.g:                                             ; preds = %.lr.ph.3
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef range(i64 3, 7) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #28, !noalias !1946
  unreachable

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.5, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa182 = phi i8 [ %i.y, %.lr.ph ], [ %i.m, %.lr.ph.1 ], [ %i.q, %.lr.ph.2 ], [ %i.v, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.5 ]
  %.lcssa180 = phi i64 [ %i.w, %.lr.ph ], [ %i.k, %.lr.ph.1 ], [ %i.o, %.lr.ph.2 ], [ %i.s, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.5 ] ; 6 uses
  %i.z = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.aa = icmp ult i64 %3, %i.z
  br i1 %i.aa, label %.lr.ph.split.us.i.i, label %bb.i

.lr.ph.split.us.i.i:                              ; preds = %bb.h
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 7) %1), !alias.scope !1947, !noalias !1948
  %i.ab = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.ab, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %.not27.i.i163 = icmp ugt i64 %1, %i.ac
  br i1 %.not27.i.i163, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i
  %i.ad = phi i64 [ %i.ag, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i ], [ %i.ac, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader ]
  %.pn.i164 = phi ptr [ %i.ae, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn.i164, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ae, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 7) %1), !alias.scope !1947, !noalias !1948
  %i.af = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.af, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsdTU8hOCbdCr_8uu_touch.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.ag = add nsw i64 %i.ad, -1                   ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.ag
  br i1 %.not27.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.aj = insertelement <16 x i8> poison, i8 %.lcssa182, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1947
  store ptr %2, ptr %i.a, align 8, !noalias !1947
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.am, align 8, !noalias !1947
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.an, align 8, !noalias !1947
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.ao, align 8, !noalias !1947
  %i.ap = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ap, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.i
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.i ], [ %.sroa.014.2.3.i, %bb.m ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.ck, %bb.m ] ; 2 uses
  %i.aq = add i64 %.sroa.06.0.lcssa.i, %i.z
  %i.ar = icmp uge i64 %i.aq, %3
  %i.as = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond399.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond399.i, label %._crit_edge.i, label %.lr.ph101.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %.sroa.06.097.i = phi i64 [ %i.ck, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.097.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !1944, !noalias !1949
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.lcssa180
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !1944, !noalias !1949
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ai
  %i.aw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.ak
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !1944, !noalias !1949
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.lcssa180
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !1944, !noalias !1949
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ai
  %i.bc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.ak
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !1944, !noalias !1949
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.lcssa180
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !1944, !noalias !1949
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ai
  %i.bi = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.ak
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !1944, !noalias !1949
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.lcssa180
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !1944, !noalias !1949
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ai
  %i.bo = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.ak
  %i.bp = and <16 x i1> %i.bn, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = icmp eq i16 %i.ay, 0
  br i1 %i.br, label %.preheader90.1.i, label %bb.n

.preheader90.1.i:                                 ; preds = %bb.n, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cp, %bb.n ] ; 3 uses
  %i.bs = icmp eq i16 %i.be, 0
  br i1 %i.bs, label %.preheader90.2.i, label %bb.j

bb.j:                                             ; preds = %.preheader90.1.i
  %i.bt = or disjoint i64 %.sroa.06.097.i, 16
  %i.bu = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bv = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bt, i16 noundef %i.be, i1 noundef zeroext %i.bu) #30
  %i.bw = zext i1 %i.bv to i8
  %i.bx = or i8 %.sroa.014.2.i, %i.bw
  br label %.preheader90.2.i

.preheader90.2.i:                                 ; preds = %bb.j, %.preheader90.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader90.1.i ], [ %i.bx, %bb.j ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %.preheader90.3.i, label %bb.k

bb.k:                                             ; preds = %.preheader90.2.i
  %i.bz = or disjoint i64 %.sroa.06.097.i, 32
  %i.ca = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca) #30
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.1.i, %i.cc
  br label %.preheader90.3.i

.preheader90.3.i:                                 ; preds = %bb.k, %.preheader90.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader90.2.i ], [ %i.cd, %bb.k ] ; 3 uses
  %i.ce = icmp eq i16 %i.bq, 0
  br i1 %i.ce, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader90.3.i
  %i.cf = or disjoint i64 %.sroa.06.097.i, 48
  %i.cg = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.ch = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cf, i16 noundef %i.bq, i1 noundef zeroext %i.cg) #30
  %i.ci = zext i1 %i.ch to i8
  %i.cj = or i8 %.sroa.014.2.2.i, %i.ci
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader90.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader90.3.i ], [ %i.cj, %bb.l ] ; 2 uses
  %i.ck = add i64 %.sroa.06.097.i, 64             ; 3 uses
  %i.cl = add i64 %i.ck, %i.ap
  %i.cm = icmp uge i64 %i.cl, %3
  %i.cn = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.co = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.097.i, i16 noundef %i.ay, i1 noundef zeroext false) #30
  %i.cp = zext i1 %i.co to i8
  br label %.preheader90.1.i

._crit_edge.i:                                    ; preds = %bb.o, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.o ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.as, %.preheader.i ], [ %i.dj, %bb.o ]
  %i.cq = sub nuw i64 %3, %i.g
  %i.cr = add i64 %i.cq, -16                      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.cs, align 1, !alias.scope !1944, !noalias !1950
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.lcssa180
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !1944, !noalias !1950
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.ai
  %i.cv = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.ak
  %i.cw = and <16 x i1> %i.cu, %i.cv
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.q, label %bb.r

.lr.ph101.i:                                      ; preds = %.preheader.i, %bb.o
  %.sroa.06.1100.i = phi i64 [ %i.dg, %bb.o ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1100.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.cz, align 1, !alias.scope !1944, !noalias !1951
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.lcssa180
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.da, align 1, !alias.scope !1944, !noalias !1951
  %i.db = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.ai
  %i.dc = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.ak
  %i.dd = and <16 x i1> %i.db, %i.dc
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %i.df = icmp eq i16 %i.de, 0
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %.lr.ph101.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph101.i ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dg = add i64 %.sroa.06.1100.i, 16            ; 2 uses
  %i.dh = add i64 %i.dg, %i.z
  %i.di = icmp uge i64 %i.dh, %3
  %i.dj = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.di, %i.dj
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph101.i

bb.p:                                             ; preds = %.lr.ph101.i
  %i.dk = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1100.i, i16 noundef %i.de, i1 noundef zeroext false) #30
  %i.dl = zext i1 %i.dk to i8
  br label %bb.o

bb.q:                                             ; preds = %bb.r, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.do, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1947
  br label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.thread

bb.r:                                             ; preds = %._crit_edge.i
  %i.dm = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cr, i16 noundef %i.cx, i1 noundef zeroext %.lcssa.i) #30
  %i.dn = zext i1 %i.dm to i8
  %i.do = or i8 %.sroa.014.3.lcssa.i, %i.dn
  br label %bb.q

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit: ; preds = %bb.d, %bb.e, %bb.f, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsdTU8hOCbdCr_8uu_touch.exit.i.i.5, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  %i.dp = load i64, ptr %i.b, align 8, !range !13, !alias.scope !1952, !noalias !1953, !noundef !4
  %i.dq = trunc nuw i64 %i.dp to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.dq, label %bb.ab, label %.preheader.i3

.preheader.i3:                                    ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.dt = load i8, ptr %i.ds, align 2, !range !20, !alias.scope !1954, !noalias !1955, !noundef !4
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.preheader.i3
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !1952, !noalias !1953 ; 12 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !1954, !noalias !1955, !nonnull !4, !noundef !4 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1954, !noalias !1955, !noundef !4 ; 14 uses
  %.promoted52.i = load i8, ptr %i.dv, align 8, !alias.scope !1954, !noalias !1955 ; 2 uses
  %i.ea = trunc nuw i8 %.promoted52.i to i1
  %i.eb = icmp eq i64 %.promoted.i, 0
  br i1 %i.eb, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i4
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.dz
  br i1 %.not.i.i.i.peel, label %bb.t, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.s
  %i.ec = icmp eq i64 %.promoted.i, %i.dz
  br i1 %i.ec, label %bb.u, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.promoted.i
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !1956, !noalias !1957, !noundef !4
  %i.ef = icmp sgt i8 %i.ee, -65
  br i1 %i.ef, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.peel, %.lr.ph.i4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.promoted.i ; 4 uses
  %i.eh = icmp samesign eq i64 %.promoted.i, %i.dz
  br i1 %i.eh, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = load i8, ptr %i.eg, align 1, !noalias !1958, !noundef !4 ; 5 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.w, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel: ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.el = and i8 %i.ei, 31
  %i.em = zext nneg i8 %i.el to i32               ; 3 uses
  %i.en = add nuw nsw i64 %.promoted.i, 1
  %i.eo = icmp samesign ne i64 %i.en, %i.dz
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = load i8, ptr %i.ek, align 1, !noalias !1958, !noundef !4
  %i.eq = shl nuw nsw i32 %i.em, 6
  %i.er = and i8 %i.ep, 63
  %i.es = zext nneg i8 %i.er to i32               ; 2 uses
  %i.et = or disjoint i32 %i.eq, %i.es
  %i.eu = icmp samesign ugt i8 %i.ei, -33
  br i1 %i.eu, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel, label %bb.x

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.ew = add nuw nsw i64 %.promoted.i, 2
  %i.ex = icmp samesign ne i64 %i.ew, %i.dz
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load i8, ptr %i.ev, align 1, !noalias !1958, !noundef !4
  %i.ez = shl nuw nsw i32 %i.es, 6
  %i.fa = and i8 %i.ey, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb            ; 2 uses
  %i.fd = shl nuw nsw i32 %i.em, 12
  %i.fe = or disjoint i32 %i.fc, %i.fd
  %i.ff = icmp samesign ugt i8 %i.ei, -17
  br i1 %i.ff, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel, label %bb.x

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.fh = add nuw nsw i64 %.promoted.i, 3
  %i.fi = icmp samesign ne i64 %i.fh, %i.dz
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = load i8, ptr %i.fg, align 1, !noalias !1958, !noundef !4
  %i.fk = shl nuw nsw i32 %i.em, 18
  %i.fl = and i32 %i.fk, 1835008
  %i.fm = shl nuw nsw i32 %i.fc, 6
  %i.fn = and i8 %i.fj, 63
  %i.fo = zext nneg i8 %i.fn to i32
  %i.fp = or disjoint i32 %i.fm, %i.fo
  %i.fq = or disjoint i32 %i.fp, %i.fl
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fr = zext nneg i8 %i.ei to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fe, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i.peel ], [ %i.fq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i.peel ], [ %i.et, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i.peel ], [ %i.fr, %bb.w ] ; 4 uses
  %i.fs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.fs)
  br i1 %i.ea, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ft = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.ft, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.fu, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.fv, i64 3, i64 4
  br label %bb.ac

bb.ab:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !1952, !noalias !1953, !noundef !4 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, -1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !1952, !noalias !1953, !nonnull !4, !noundef !4 ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !1952, !noalias !1953, !noundef !4 ; 10 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !1952, !noalias !1953, !nonnull !4, !noundef !4 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !1952, !noalias !1953, !noundef !4 ; 14 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gi = add nsw i64 %i.gg, -1                   ; 5 uses
  br i1 %i.fy, label %bb.ap, label %bb.ah

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.z ], [ %..i.i.peel, %bb.aa ], [ 1, %bb.y ]
  %i.gj = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i = icmp ult i64 %i.gj, %i.dz
  br i1 %.not.i.i.i, label %bb.ae, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ad
  %i.gl = icmp eq i64 %i.gj, %i.dz
  br i1 %i.gl, label %bb.af, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.gj
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !1956, !noalias !1960, !noundef !4
  %i.go = icmp sgt i8 %i.gn, -65
  br i1 %i.go, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae, %.split.i.i.i, %bb.ac
  %i.gp = icmp samesign eq i64 %i.gj, %i.dz
  br i1 %i.gp, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.gj
  %i.gr = load i8, ptr %i.gq, align 1, !noalias !1961, !noundef !4 ; 3 uses
  %i.gs = icmp sgt i8 %i.gr, -1
  br i1 %i.gs, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i: ; preds = %bb.ag
  %i.gt = add nuw nsw i64 %i.gj, 1
  %i.gu = icmp samesign ne i64 %i.gt, %i.dz
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = icmp samesign ugt i8 %i.gr, -33
  br i1 %i.gv, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit12.i.i.i
  %i.gw = add nuw nsw i64 %i.gj, 2
  %i.gx = icmp samesign ne i64 %i.gw, %i.dz
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = icmp samesign ugt i8 %i.gr, -17
  br i1 %i.gy, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdTU8hOCbdCr_8uu_touch.exit14.i.i.i
  %i.gz = add nuw nsw i64 %i.gj, 3
  %i.ha = icmp samesign ne i64 %i.gz, %i.dz
  tail call void @llvm.assume(i1 %i.ha)
  br label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ae, %.split.i.i.i, %bb.t, %.split.i.i.i.peel
  %.lcssa80 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.t ], [ %i.gj, %.split.i.i.i ], [ %i.gj, %bb.ae ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef %i.dz, i64 noundef %.lcssa80, i64 noundef %i.dz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #28, !noalias !1960
  unreachable

bb.ah:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  %.promoted.i.i = load i64, ptr %i.gh, align 8, !alias.scope !1965, !noalias !1966 ; 2 uses
  %i.hb = add i64 %.promoted.i.i, %i.gi           ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gc
  br i1 %i.hc, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.ah
end_hunk_0
