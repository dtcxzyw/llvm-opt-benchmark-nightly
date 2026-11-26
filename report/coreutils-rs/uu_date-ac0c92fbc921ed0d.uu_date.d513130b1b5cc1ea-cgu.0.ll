Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_date-ac0c92fbc921ed0d.uu_date.d513130b1b5cc1ea-cgu.0?download=true
inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCsiibOIv6tv3q_7uu_date:bb.a
  %.sroa.10.052.i.i.i = phi i64 [ %.val1, %.lr.ph.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ]
  %i.j = add nsw i64 %.sroa.10.052.i.i.i, -1      ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.054.i.i.i, %i.h
  br i1 %i.k, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 72
  %i.m = add nuw nsw i64 %.sroa.7.053.i.i.i, 1
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.7.053.i.i.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4578
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !4580, !noalias !4581, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 56
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4580, !noalias !4581, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !12, !alias.scope !4580, !noalias !4581, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s) #33, !noalias !4582
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !4583
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.e ], [ -1, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !4580, !noalias !4581, !nonnull !6, !noundef !6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !4580, !noalias !4581, !noundef !6 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4584)
  %i.w = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.w, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4585
  %i.y = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.x, i64 noundef range(i64 1, 9) 8) #33, !noalias !4585 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.x) #37, !noalias !4586
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
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !4584, !noalias !4587, !nonnull !6, !noundef !6
  %i.ag = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !4584, !noalias !4587, !noundef !6
  store ptr %.val.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !4586
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %i.ah, align 8, !noalias !4586
  %i.ai = icmp eq i64 %i.ac, 0
  br i1 %i.ai, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ak = load i8, ptr %i.aj, align 8, !range !7, !alias.scope !4580, !noalias !4581, !noundef !6
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !4588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4578
  store i64 %.val4.i.i.i.i, ptr %i.n, align 8, !noalias !4588
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.p, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.r, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 %i.ak, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.c

_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i65.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ %i.f, %bb.c ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4589
  %i.am = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4589 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37, !noalias !4589
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.10.0.i65.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = insertvalue { ptr, ptr } poison, ptr %i.am, 0
  %i.ap = insertvalue { ptr, ptr } %i.ao, ptr @229, 1
  ret { ptr, ptr } %i.ap
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9parse_refCsiibOIv6tv3q_7uu_date(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #33
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !13, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4592
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4592 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37, !noalias !4592
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
  store ptr @239, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @223, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_strCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef captures(none) dereferenceable(10) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4599)
  %i.a = load i8, ptr %0, align 1, !alias.scope !4598, !noundef !6
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = add i64 %2, %i.b                         ; 5 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %i.e = icmp ugt i64 %i.c, 9
  %or.cond.not.i.not = or i1 %i.d, %i.e           ; 2 uses
  br i1 %or.cond.not.i.not, label %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsiibOIv6tv3q_7uu_date.exit, label %.preheader.i, !prof !19

.preheader.i:                                     ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, %i.b
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = add i64 %2, -1
  %i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h)
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.02.010.i.ph = phi i64 [ %i.b, %.lr.ph.i ], [ %i.n, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 16, i64 %i.k
  %n.vec = sub i64 %i.j, %i.m                     ; 2 uses
  %i.n = add i64 %n.vec, %i.b
  %invariant.gep = getelementptr i8, ptr %i.g, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load.a = load <16 x i8>, ptr %i.o, align 1, !alias.scope !4599
  %gep.a = getelementptr i8, ptr %invariant.gep, i64 %index
  store <16 x i8> %wide.load.a, ptr %gep.a, align 1, !alias.scope !4598
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %scalar.ph.preheader, label %vector.body, !llvm.loop !4596

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %i.q = trunc nuw nsw i64 %i.c to i8
  store i8 %i.q, ptr %0, align 1, !alias.scope !4598
  br label %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsiibOIv6tv3q_7uu_date.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.sroa.02.010.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.02.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.r = sub nuw nsw i64 %.sroa.02.010.i, %i.b    ; 3 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #34, !noalias !4602
  unreachable

bb.c:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !4599, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.010.i
  store i8 %i.u, ptr %i.v, align 1, !alias.scope !4598
  %i.w = add nuw nsw i64 %.sroa.02.010.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !4597

_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.a, %._crit_edge.i
  ret i1 %or.cond.not.i.not
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = icmp ugt i64 %2, 2
  br i1 %i.b, label %bb.c, label %bb.b

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit: ; preds = %.split.us.i.i, %bb.l, %.lr.ph.split.us.i.i, %bb.b, %bb.n
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.db, %bb.n ], [ %i.ct, %bb.l ], [ true, %.lr.ph.split.us.i.i ], [ %i.o, %.split.us.i.i ]
  ret i1 %.sroa.0.0

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 2
  br i1 %i.c, label %bb.n, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4613)
  %i.d = icmp ult i64 %2, 17
  br i1 %i.d, label %.lr.ph.split.us.i.i, label %bb.d

.lr.ph.split.us.i.i:                              ; preds = %bb.c
  %i.e = load i16, ptr %1, align 1
  %i.f = load i16, ptr %0, align 1
  %i.g = icmp ne i16 %i.e, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i, %.lr.ph.split.us.i.i
  %.in.i4 = phi i64 [ %i.p, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.pn.i3 = phi ptr [ %i.j, %.split.us.i.i ], [ %1, %.lr.ph.split.us.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.pn.i3, i64 1 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1
  %i.l = load i16, ptr %0, align 1
  %i.m = icmp ne i16 %i.k, %i.l
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %.not = xor i1 %i.o, true
  %i.p = add nsw i64 %.in.i4, -1                  ; 2 uses
  %.not27.i.i = icmp ugt i64 %i.p, 2
  %or.cond = select i1 %.not, i1 %.not27.i.i, i1 false
  br i1 %or.cond, label %.split.us.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %0, align 1, !alias.scope !4612, !noundef !6
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !4612, !noundef !6
  %i.v = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4614
  store ptr %1, ptr %i.a, align 8, !noalias !4614
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.x, align 8, !noalias !4614
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.t, ptr %i.y, align 8, !noalias !4614
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.z, align 8, !noalias !4614
  %i.aa = icmp ult i64 %2, 66
  br i1 %i.aa, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.h, %bb.d
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.d ], [ %.sroa.014.2.3.i, %bb.h ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.bs, %bb.h ] ; 2 uses
  %i.ab = add i64 %.sroa.06.0.lcssa.i, 17
  %i.ac = icmp uge i64 %i.ab, %2
  %i.ad = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond386.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond386.i, label %._crit_edge.i, label %.lr.ph88.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.sroa.06.084.i = phi i64 [ %i.bs, %bb.h ], [ 0, %bb.d ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.084.i ; 8 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ae, align 1, !alias.scope !4613, !noalias !4615
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.af, align 1, !alias.scope !4613, !noalias !4615
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.s
  %i.ah = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.w
  %i.ai = and <16 x i1> %i.ag, %i.ah
  %3 = bitcast <16 x i1> %i.ai to i16             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !4613, !noalias !4615
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 17
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.ak, align 1, !alias.scope !4613, !noalias !4615
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.s
  %i.am = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.w
  %i.an = and <16 x i1> %i.al, %i.am
  %4 = bitcast <16 x i1> %i.an to i16             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !4613, !noalias !4615
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 33
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.ap, align 1, !alias.scope !4613, !noalias !4615
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.s
  %i.ar = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.w
  %i.as = and <16 x i1> %i.aq, %i.ar
  %5 = bitcast <16 x i1> %i.as to i16             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !4613, !noalias !4615
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 49
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !4613, !noalias !4615
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.s
  %i.aw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.w
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = icmp eq i16 %3, 0
  br i1 %i.az, label %.preheader80.1.i, label %bb.i

.preheader80.1.i:                                 ; preds = %bb.i, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.bx, %bb.i ] ; 3 uses
  %i.ba = icmp eq i16 %4, 0
  br i1 %i.ba, label %.preheader80.2.i, label %bb.e

bb.e:                                             ; preds = %.preheader80.1.i
  %i.bb = or disjoint i64 %.sroa.06.084.i, 16
  %i.bc = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bd = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bb, i16 noundef %4, i1 noundef zeroext %i.bc) #35
  %i.be = zext i1 %i.bd to i8
  %i.bf = or i8 %.sroa.014.2.i, %i.be
  br label %.preheader80.2.i

.preheader80.2.i:                                 ; preds = %bb.e, %.preheader80.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader80.1.i ], [ %i.bf, %bb.e ] ; 3 uses
  %i.bg = icmp eq i16 %5, 0
  br i1 %i.bg, label %.preheader80.3.i, label %bb.f

bb.f:                                             ; preds = %.preheader80.2.i
  %i.bh = or disjoint i64 %.sroa.06.084.i, 32
  %i.bi = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bj = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bh, i16 noundef %5, i1 noundef zeroext %i.bi) #35
  %i.bk = zext i1 %i.bj to i8
  %i.bl = or i8 %.sroa.014.2.1.i, %i.bk
  br label %.preheader80.3.i

.preheader80.3.i:                                 ; preds = %bb.f, %.preheader80.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader80.2.i ], [ %i.bl, %bb.f ] ; 3 uses
  %i.bm = icmp eq i16 %i.ay, 0
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader80.3.i
  %i.bn = or disjoint i64 %.sroa.06.084.i, 48
  %i.bo = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.bp = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bn, i16 noundef %i.ay, i1 noundef zeroext %i.bo) #35
  %i.bq = zext i1 %i.bp to i8
  %i.br = or i8 %.sroa.014.2.2.i, %i.bq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader80.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader80.3.i ], [ %i.br, %bb.g ] ; 2 uses
  %i.bs = add i64 %.sroa.06.084.i, 64             ; 2 uses
  %i.bt = add i64 %.sroa.06.084.i, 129
  %i.bu = icmp uge i64 %i.bt, %2
  %i.bv = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bw = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.084.i, i16 noundef %3, i1 noundef zeroext false) #35
  %i.bx = zext i1 %i.bw to i8
  br label %.preheader80.1.i

._crit_edge.i:                                    ; preds = %bb.j, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.j ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ad, %.preheader.i ], [ %i.cq, %bb.j ]
  %i.by = add i64 %2, -17                         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.by ; 2 uses
  %.sroa.0.0.copyload.i56.i = load <16 x i8>, ptr %i.bz, align 1, !alias.scope !4613, !noalias !4616
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %.sroa.01.0.copyload.i57.i = load <16 x i8>, ptr %i.ca, align 1, !alias.scope !4613, !noalias !4616
  %i.cb = icmp eq <16 x i8> %.sroa.0.0.copyload.i56.i, %i.s
  %i.cc = icmp eq <16 x i8> %.sroa.01.0.copyload.i57.i, %i.w
  %i.cd = and <16 x i1> %i.cb, %i.cc
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %bb.l, label %bb.m

.lr.ph88.i:                                       ; preds = %.preheader.i, %bb.j
  %.sroa.06.187.i = phi i64 [ %i.cn, %bb.j ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.187.i ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cg, align 1, !alias.scope !4613, !noalias !4617
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %.sroa.01.0.copyload.i59.i = load <16 x i8>, ptr %i.ch, align 1, !alias.scope !4613, !noalias !4617
  %i.ci = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.s
  %i.cj = icmp eq <16 x i8> %.sroa.01.0.copyload.i59.i, %i.w
  %i.ck = and <16 x i1> %i.ci, %i.cj
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %i.cm = icmp eq i16 %i.cl, 0
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %.lr.ph88.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph88.i ], [ %i.cs, %bb.k ] ; 2 uses
  %i.cn = add i64 %.sroa.06.187.i, 16
  %i.co = add i64 %.sroa.06.187.i, 33
  %i.cp = icmp uge i64 %i.co, %2
  %i.cq = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cp, %i.cq
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph88.i

bb.k:                                             ; preds = %.lr.ph88.i
  %i.cr = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.187.i, i16 noundef %i.cl, i1 noundef zeroext false) #35
  %i.cs = zext i1 %i.cr to i8
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.cw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4614
  %i.ct = trunc nuw i8 %.sroa.014.5.i to i1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

bb.m:                                             ; preds = %._crit_edge.i
  %i.cu = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.by, i16 noundef %i.ce, i1 noundef zeroext %.lcssa.i) #35
  %i.cv = zext i1 %i.cu to i8
  %i.cw = or i8 %.sroa.014.3.lcssa.i, %i.cv
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.cx = load i16, ptr %0, align 1
  %i.cy = load i16, ptr %1, align 1
  %i.cz = icmp ne i16 %i.cx, %i.cy
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @244, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCscxuc9kp9KZq_9jiff_core4util8ArrayStrKj9_ENtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef captures(none) dereferenceable(10) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #16 {
bb.a:
  %i.a = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 2048
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %1 to i8
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.f:                                             ; preds = %bb.e
  %i.t = or disjoint i8 %i.k, -32
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.e, %bb.c, %bb.d, %bb.f
  %.sroa.15.0 = phi i8 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.e, %bb.e ]
  %.sroa.12.0 = phi i8 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.e, %bb.f ], [ %i.i, %bb.e ]
  %.sroa.8.0 = phi i8 [ 0, %bb.c ], [ %i.e, %bb.d ], [ %i.i, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i8 [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.t, %bb.f ], [ %i.p, %bb.e ]
  %exitcond.not.i.i.1 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.e ]
  %exitcond.not.i.i.2 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.e ]
  %i.u = load i8, ptr %0, align 1, !alias.scope !4622, !noundef !6
  %i.v = zext i8 %i.u to i64                      ; 5 uses
  %i.w = add nuw nsw i64 %.sroa.0.05.i, %i.v      ; 2 uses
  %i.x = icmp samesign ugt i64 %i.w, 9            ; 2 uses
  br i1 %i.x, label %_RNvXsr_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_strCsiibOIv6tv3q_7uu_date.exit, label %.lr.ph.i.i, !prof !19

.lr.ph.i.i:                                       ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 %.sroa.0.0, ptr %i.z, align 1, !alias.scope !4622
  br i1 %i.a, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i.i
  %i.aa = trunc nuw nsw i64 %i.w to i8
  store i8 %i.aa, ptr %0, align 1, !alias.scope !4622
  br label %_RNvXsr_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_strCsiibOIv6tv3q_7uu_date.exit

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %.sroa.8.0, ptr %i.ac, align 1, !alias.scope !4622
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i8 %.sroa.12.0, ptr %i.ae, align 1, !alias.scope !4622
  br i1 %exitcond.not.i.i.2, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  store i8 %.sroa.15.0, ptr %i.ag, align 1, !alias.scope !4622
  br label %._crit_edge.i.i

_RNvXsr_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_strCsiibOIv6tv3q_7uu_date.exit: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit, %._crit_edge.i.i
  ret i1 %i.x
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtCscxuc9kp9KZq_9jiff_core4util8ArrayStrKj9_ENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef dereferenceable(10) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQINtNtCscxuc9kp9KZq_9jiff_core4util8ArrayStrKj9_ENtB4_12SpecWriteFmt14spec_write_fmtCsiibOIv6tv3q_7uu_date.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull dereferenceable(10) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @143, ptr noundef nonnull %1, ptr noundef nonnull %2) #33, !inline_history !4623
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBK_3ops8function6FnOnceTlQNtNtBK_3fmt9FormatterEE9call_onceCsiibOIv6tv3q_7uu_date(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4628
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0) #33, !noalias !4628
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !4628, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !4628, !noundef !6
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !4629)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !9, !alias.scope !4629, !noalias !4628, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsiibOIv6tv3q_7uu_date.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4629
  br label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsiibOIv6tv3q_7uu_date.exit

_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4628
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs3JjgEOiFeOI_4jiff3fmt5Write10write_charCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
end_hunk_0
