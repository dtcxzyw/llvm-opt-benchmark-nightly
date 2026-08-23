Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9clone_anyCsgy7pbN39oAf_6uu_ptx:bb.a

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
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !4604, !noalias !4614, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !4604, !noalias !4614, !noundef !4
  store ptr %.val.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !4613
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %i.ah, align 8, !noalias !4613
  %i.ai = icmp eq i64 %i.ac, 0
  br i1 %i.ai, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ak = load i8, ptr %i.aj, align 8, !range !181, !alias.scope !4600, !noalias !4601, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.740.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !4596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4596
  store i64 %.val4.i.i.i.i, ptr %i.n, align 8, !noalias !4615
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !4615
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !4615
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !4615
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.i.i.i, i64 16, i1 false), !noalias !4615
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.p, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !4615
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.r, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !4615
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 %i.ak, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !4615
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.740.i.i.i)
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %_RNvXs1r_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.c

_RNvXs1r_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i65.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ], [ %i.f, %bb.c ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !4616
  %i.am = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !4616 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !52

bb.i:                                             ; preds = %_RNvXs1r_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30, !noalias !4616
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1r_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.10.0.i65.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = insertvalue { ptr, ptr } poison, ptr %i.am, 0
  %i.ap = insertvalue { ptr, ptr } %i.ao, ptr @208, 1
  ret { ptr, ptr } %i.ap
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9parse_refCsgy7pbN39oAf_6uu_ptx(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsr_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #28
  %i.b = load i64, ptr %i.a, align 8, !range !173, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !24, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !4619
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !4619 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #30, !noalias !4619
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
  store ptr @218, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXse_Csgy7pbN39oAf_6uu_ptxNtB5_8PtxErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !captures !4622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_7Display3fmtCsgy7pbN39oAf_6uu_ptx, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !24, !noundef !4
  %i.f = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @221, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgy7pbN39oAf_6uu_ptx.exit.i, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #27
  unreachable

_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noundef !4
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit

bb.c:                                             ; preds = %_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgy7pbN39oAf_6uu_ptx.exit.i
  store atomic i64 0, ptr %i.a monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = atomicrmw xchg ptr %i.i, i32 0 release, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.d, label %_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit, !prof !52

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.i) #28
  br label %_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit

_RNvXsf_NtNtCs2vKOLqTMYjT_3std2io5stdioRNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write17is_write_vectored.exit: ; preds = %_RNvMst_NtCs6JMX4GRUq9U_4core4cellINtB5_7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdoutRawEE10borrow_mutCsgy7pbN39oAf_6uu_ptx.exit.i, %bb.c, %bb.d
  ret i1 true
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !489, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 14 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.s, label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2, !range !181, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !181, !noundef !4 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = xor i8 %i.m, 1
  store i8 %i.o, ptr %i.l, align 8
  %i.p = load i64, ptr %i.h, align 8, !noundef !4 ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 8 uses
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp ult i64 %i.p, %i.t
  br i1 %.not.i, label %bb.f, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.v = icmp eq i64 %i.p, %i.t
  br i1 %i.v, label %bb.g, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !4623, !noundef !4
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %.split.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 4 uses
  %i.aa = icmp samesign eq i64 %i.p, %i.t
  br i1 %i.aa, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.z, align 1, !noalias !4626, !noundef !4 ; 5 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ae = and i8 %i.ab, 31
  %i.af = zext nneg i8 %i.ae to i32               ; 3 uses
  %i.ag = add nuw nsw i64 %i.p, 1
  %i.ah = icmp samesign ne i64 %i.ag, %i.t
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ad, align 1, !noalias !4626, !noundef !4
  %i.aj = shl nuw nsw i32 %i.af, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ab, -33
  br i1 %i.an, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = zext nneg i8 %i.ab to i32
  br label %bb.k

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.aq = add nuw nsw i64 %i.p, 2
  %i.ar = icmp samesign ne i64 %i.aq, %i.t
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.ap, align 1, !noalias !4626, !noundef !4
  %i.at = shl nuw nsw i32 %i.al, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av            ; 2 uses
  %i.ax = shl nuw nsw i32 %i.af, 12
  %i.ay = or disjoint i32 %i.aw, %i.ax
  %i.az = icmp samesign ugt i8 %i.ab, -17
  br i1 %i.az, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i, label %bb.k

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.bb = add nuw nsw i64 %i.p, 3
  %i.bc = icmp samesign ne i64 %i.bb, %i.t
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load i8, ptr %i.ba, align 1, !noalias !4626, !noundef !4
  %i.be = shl nuw nsw i32 %i.af, 18
  %i.bf = and i32 %i.be, 1835008
  %i.bg = shl nuw nsw i32 %i.aw, 6
  %i.bh = and i8 %i.bd, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = or disjoint i32 %i.bj, %i.bf
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %.split.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t, i64 noundef %i.p, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #27
  unreachable

bb.k:                                             ; preds = %bb.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ay, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i ], [ %i.bk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i ], [ %i.am, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i ], [ %i.ao, %bb.i ] ; 4 uses
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bl)
  br i1 %i.n, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.g
  br i1 %i.n, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.i, align 2
  br label %bb.s

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.bn, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.k
  %i.bo = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.bo, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.bp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.bq, i64 3, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.sroa.01.0 = phi i64 [ 2, %bb.p ], [ %., %bb.q ], [ 1, %bb.o ]
  %i.br = add i64 %.sroa.01.0, %i.p               ; 2 uses
  store i64 %i.br, ptr %i.h, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.br, ptr %i.bt, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.b, %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsgy7pbN39oAf_6uu_ptx.exit, %bb.m, %bb.n, %bb.r, %.split13
  %.sink = phi i64 [ 0, %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsgy7pbN39oAf_6uu_ptx.exit ], [ 2, %bb.m ], [ 0, %bb.n ], [ 1, %bb.r ], [ 1, %.split13 ], [ 2, %bb.b ], [ 2, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !4 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -1                   ; 2 uses
  %i.by = load ptr, ptr %i.bu, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4636)
  %i.cd = add nsw i64 %i.cc, -1                   ; 3 uses
  %i.ce = add i64 %i.d, %i.cd                     ; 3 uses
  %i.cf = icmp ult i64 %i.ce, %i.f
  br i1 %i.cf, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !4632, !noalias !4638 ; 2 uses
  %i.cj = load i64, ptr %i.cg, align 8, !alias.scope !4632, !noalias !4638 ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !4632, !noalias !4638 ; 2 uses
  %i.cm = sub i64 %i.cc, %i.cl
  %i.cn = add i64 %i.d, 1
  %invariant.op.i = sub i64 %i.cn, %i.cj          ; 2 uses
  %i.co = add i64 %i.cl, %i.d                     ; 4 uses
  %i.cp = add i64 %i.d, %i.cc                     ; 6 uses
  br i1 %i.bx, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 range(i64 0, -9223372036854775808) %i.cc)
  %i.cq = add i64 %i.cj, -1
  %.first_iter = icmp ult i64 %i.cq, %i.cc
  %exitcond.not.i.us113.not = icmp ult i64 %i.cj, %i.cc
  %.not116 = icmp eq i64 %i.cj, 0
  br label %bb.u

bb.u:                                             ; preds = %.loopexit98, %.lr.ph.i.split.us
  %i.cr = phi i64 [ %i.ce, %.lr.ph.i.split.us ], [ %i.do, %.loopexit98 ]
  %i.cs = phi i64 [ %i.d, %.lr.ph.i.split.us ], [ %i.dn, %.loopexit98 ] ; 2 uses
  %.not.i18.us = icmp eq i64 %i.d, %i.cs
  br i1 %.not.i18.us, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !4634, !noalias !4639, !noundef !4
  %i.cv = and i8 %i.cu, 63
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %i.ci
  %.not20.i.us = icmp eq i64 %i.cy, 0
  br i1 %.not20.i.us, label %bb.y, label %.preheader43.preheader

.preheader43.preheader:                           ; preds = %bb.v
  br i1 %exitcond.not.i.us113.not, label %.lr.ph115, label %.preheader.preheader

.preheader43:                                     ; preds = %.lr.ph115
  %i.cz = add i64 %.sroa.04.0.i.us114, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cz, %umax.i.us
  br i1 %exitcond.not.i.us, label %.preheader.preheader, label %.lr.ph115

.preheader.preheader:                             ; preds = %.preheader43, %.preheader43.preheader
  br i1 %.not116, label %.split38.us, label %.lr.ph118

.lr.ph115:                                        ; preds = %.preheader43.preheader, %.preheader43
  %.sroa.04.0.i.us114 = phi i64 [ %i.cz, %.preheader43 ], [ %i.cj, %.preheader43.preheader ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.04.0.i.us114
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !4636, !noalias !4640, !noundef !4
  %i.dc = add i64 %.sroa.04.0.i.us114, %i.d       ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.f
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !4634, !noalias !4639, !noundef !4
  %.not22.i.us = icmp eq i8 %i.db, %i.df
  br i1 %.not22.i.us, label %.preheader43, label %bb.w

bb.w:                                             ; preds = %.lr.ph115
  %.reass.i.us = add i64 %invariant.op.i, %.sroa.04.0.i.us114
  br label %.loopexit98

.preheader:                                       ; preds = %bb.x
  %.not = icmp eq i64 %i.dg, 0
  br i1 %.not, label %.split38.us, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i.us117 = phi i64 [ %i.dg, %.preheader ], [ %i.cj, %.preheader.preheader ]
  %i.dg = add i64 %.sroa.2.0.i.us117, -1          ; 5 uses
  br i1 %.first_iter, label %bb.x, label %.split40.us

bb.x:                                             ; preds = %.lr.ph118
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !4636, !noalias !4640, !noundef !4
  %i.dj = add i64 %i.dg, %i.d                     ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.f
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dj
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !4634, !noalias !4639, !noundef !4
  %.not21.i.us = icmp eq i8 %i.di, %i.dm
  br i1 %.not21.i.us, label %.preheader, label %2

2:                                                ; preds = %bb.x
  store i64 %i.co, ptr %i.c, align 8, !alias.scope !4632, !noalias !4638
  br label %.loopexit98

bb.y:                                             ; preds = %bb.v
  store i64 %i.cp, ptr %i.c, align 8, !alias.scope !4632, !noalias !4638
  br label %.loopexit98

.loopexit98:                                      ; preds = %bb.y, %2, %bb.w
  %i.dn = phi i64 [ %.reass.i.us, %bb.w ], [ %i.cp, %bb.y ], [ %i.co, %2 ] ; 2 uses
  %i.do = add i64 %i.dn, %i.cd                    ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.f
  br i1 %i.dp, label %bb.u, label %.loopexit

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.sink.split.i
  %i.dq = phi i64 [ %.sink55.i, %.sink.split.i ], [ %i.bw, %.lr.ph.i ] ; 3 uses
  %i.dr = phi i64 [ %i.dz, %.sink.split.i ], [ %i.ce, %.lr.ph.i ]
  %i.ds = phi i64 [ %.ph54.i, %.sink.split.i ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %.not.i18 = icmp eq i64 %i.d, %i.ds
  br i1 %.not.i18, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.lr.ph.i.split
  %i.dt = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dr
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !4634, !noalias !4639, !noundef !4
  %i.dv = and i8 %i.du, 63
  %i.dw = zext nneg i8 %i.dv to i64
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dx, %i.ci
  %.not20.i = icmp eq i64 %i.dy, 0
  br i1 %.not20.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 %i.cp, ptr %i.c, align 8, !alias.scope !4632, !noalias !4638
  br label %.sink.split.i

bb.ab:                                            ; preds = %bb.z
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.cj) ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -9223372036854775808) %i.cc)
  %exitcond.not.i108.not = icmp ult i64 %..i.i, %i.cc
  br i1 %exitcond.not.i108.not, label %.lr.ph110, label %.preheader44.preheader

.sink.split.i:                                    ; preds = %bb.aa, %3, %bb.af
  %.sink55.i = phi i64 [ %i.cm, %3 ], [ 0, %bb.af ], [ 0, %bb.aa ] ; 2 uses
  %.ph54.i = phi i64 [ %i.co, %3 ], [ %.reass.i, %bb.af ], [ %i.cp, %bb.aa ] ; 2 uses
  store i64 %.sink55.i, ptr %i.bv, align 8, !alias.scope !4632, !noalias !4638
  %i.dz = add i64 %.ph54.i, %i.cd                 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.f
  br i1 %i.ea, label %.lr.ph.i.split, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph110
  %i.eb = add i64 %.sroa.04.0.i109, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eb, %umax.i
  br i1 %exitcond.not.i, label %.preheader44.preheader, label %.lr.ph110

.preheader44.preheader:                           ; preds = %bb.ac, %bb.ab
  %i.ec = icmp ult i64 %i.dq, %i.cj
  br i1 %i.ec, label %.lr.ph112, label %.split38.us

.lr.ph110:                                        ; preds = %bb.ab, %bb.ac
  %.sroa.04.0.i109 = phi i64 [ %i.eb, %bb.ac ], [ %..i.i, %bb.ab ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.04.0.i109
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !4636, !noalias !4640, !noundef !4
  %i.ef = add i64 %.sroa.04.0.i109, %i.d          ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.f
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ef
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !4634, !noalias !4639, !noundef !4
  %.not22.i = icmp eq i8 %i.ee, %i.ei
  br i1 %.not22.i, label %bb.ac, label %bb.af

.preheader44:                                     ; preds = %bb.ae
  %i.ej = icmp ult i64 %i.dq, %i.ek
  br i1 %i.ej, label %.lr.ph112, label %.split38.us

.split38.us:                                      ; preds = %.preheader44.preheader, %.preheader44, %.preheader.preheader, %.preheader
  store i64 %i.cp, ptr %i.c, align 8, !alias.scope !4632, !noalias !4638
  br i1 %i.bx, label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsgy7pbN39oAf_6uu_ptx.exit, label %bb.ad

.lr.ph112:                                        ; preds = %.preheader44.preheader, %.preheader44
  %.sroa.2.0.i111 = phi i64 [ %i.ek, %.preheader44 ], [ %i.cj, %.preheader44.preheader ]
  %i.ek = add i64 %.sroa.2.0.i111, -1             ; 6 uses
  %i.el = icmp ult i64 %i.ek, %i.cc
  br i1 %i.el, label %bb.ae, label %.split40.us

bb.ad:                                            ; preds = %.split38.us
  store i64 0, ptr %i.bv, align 8, !alias.scope !4632, !noalias !4638
  br label %_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsgy7pbN39oAf_6uu_ptx.exit

bb.ae:                                            ; preds = %.lr.ph112
  %i.em = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !4636, !noalias !4640, !noundef !4
  %i.eo = add i64 %i.ek, %i.d                     ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.f
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !4634, !noalias !4639, !noundef !4
  %.not21.i = icmp eq i8 %i.en, %i.er
  br i1 %.not21.i, label %.preheader44, label %3

.split40.us:                                      ; preds = %.lr.ph112, %.lr.ph118
  %.us-phi41 = phi i64 [ %i.dg, %.lr.ph118 ], [ %i.ek, %.lr.ph112 ]
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.us-phi41, i64 noundef range(i64 0, -9223372036854775808) %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27, !noalias !4641
  unreachable

3:                                                ; preds = %bb.ae
  store i64 %i.co, ptr %i.c, align 8, !alias.scope !4632, !noalias !4638
  br label %.sink.split.i

bb.af:                                            ; preds = %.lr.ph110
  %.reass.i = add i64 %invariant.op.i, %.sroa.04.0.i109
  br label %.sink.split.i

_RINvMsx_NtNtCs6JMX4GRUq9U_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %.split38.us, %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.es, align 8, !alias.scope !4629, !noalias !4642
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cp, ptr %i.et, align 8, !alias.scope !4629, !noalias !4642
  br label %bb.s

.loopexit:                                        ; preds = %.lr.ph.i.split, %.sink.split.i, %bb.u, %.loopexit98, %bb.t
  %i.eu = phi i64 [ %i.cs, %bb.u ], [ %i.f, %bb.t ], [ %i.f, %.loopexit98 ], [ %i.ds, %.lr.ph.i.split ], [ %i.f, %.sink.split.i ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = icmp eq i64 %i.eu, 0
  br i1 %i.ex, label %.split13, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %bb.ah
  %.sroa.02.042 = phi i64 [ %i.fc, %bb.ah ], [ %i.eu, %.loopexit ] ; 5 uses
  %.not16 = icmp ult i64 %.sroa.02.042, %i.f
  br i1 %.not16, label %bb.ag, label %.split28

.split13:                                         ; preds = %bb.ah, %.loopexit, %.split
  %.sroa.02.030 = phi i64 [ %.sroa.02.042.lcssa, %.split ], [ 0, %.loopexit ], [ 0, %bb.ah ]
  %phi.call = phi i64 [ %..i, %.split ], [ 0, %.loopexit ], [ %i.eu, %bb.ah ]
  store i64 %phi.call, ptr %i.c, align 8
  store i64 %i.d, ptr %i.ev, align 8
  store i64 %.sroa.02.030, ptr %i.ew, align 8
  br label %bb.s

.split28:                                         ; preds = %.lr.ph
  %i.ey = icmp eq i64 %.sroa.02.042, %i.f
  br i1 %i.ey, label %.split, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph
  %i.ez = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.02.042
  %i.fa = load i8, ptr %i.ez, align 1, !noundef !4
  %i.fb = icmp sgt i8 %i.fa, -65
  br i1 %i.fb, label %.split, label %bb.ah

.split:                                           ; preds = %.split28, %bb.ag
  %.sroa.02.042.lcssa = phi i64 [ %i.f, %.split28 ], [ %.sroa.02.042, %bb.ag ] ; 2 uses
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.eu, i64 %.sroa.02.042.lcssa)
  br label %.split13

bb.ah:                                            ; preds = %.split28, %bb.ag
  %i.fc = add i64 %.sroa.02.042, 1                ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.split13, label %.lr.ph
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @234, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @214) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @238, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @239) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead10read_untilCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, i8 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EEECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i8 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
  ret { i64, ptr } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead10skip_untilCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, i8 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4643)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !4646, !noalias !4651 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4643
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !4643, !nonnull !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4643, !nonnull !4, !align !24
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 72
  %i.n = icmp eq ptr %.pre.i.i.i, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted45.i = load i64, ptr %i.c, align 8, !alias.scope !4643
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !4643
  %.promoted46.i = load i8, ptr %i.k, align 8, !alias.scope !4643
  %i.p = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.g, i64 0
  br label %.outer.i

.outer.i:                                         ; preds = %bb.n, %bb.a
  %.promoted4450.i = phi i8 [ %.promoted4448.i, %bb.n ], [ %.promoted46.i, %bb.a ] ; 2 uses
  %i.q = phi i64 [ %i.ac, %bb.n ], [ %.promoted.i, %bb.a ] ; 2 uses
  %i.r = phi i64 [ %..i.i14.i, %bb.n ], [ %.promoted45.i, %bb.a ] ; 2 uses
  %.sroa.01.0.ph.i = phi i64 [ %i.bs, %bb.n ], [ 0, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit.i, %.outer.i
  %.promoted4449.i = phi i8 [ %.promoted4450.i, %.outer.i ], [ %.promoted4447.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.s = phi i64 [ %i.q, %.outer.i ], [ %i.ai, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.t = phi i64 [ %i.r, %.outer.i ], [ %i.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.u = phi i8 [ %.promoted4450.i, %.outer.i ], [ %i.ak, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit.i ] ; 2 uses
  %i.v = phi i64 [ %i.q, %.outer.i ], [ %i.al, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit.i ] ; 2 uses
  %i.w = phi i64 [ %i.r, %.outer.i ], [ %i.am, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4655)
  call void @llvm.experimental.noalias.scope.decl(metadata !4656)
  %.not.i.i.i = icmp ult i64 %i.w, %i.v
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4657
  store ptr %.pre.i.i.i, ptr %i.b, align 8, !noalias !4657
  store <2 x i64> %i.p, ptr %i.h, align 8, !noalias !4657
  store i8 %i.u, ptr %i.j, align 8, !noalias !4657
  %i.x = load ptr, ptr %i.m, align 8, !invariant.load !4, !noalias !4658, !nonnull !4
  %i.y = call noundef ptr %i.x(ptr noundef nonnull %.val.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #29, !noalias !4657, !inline_history !4663 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !4646, !noalias !4651
  %i.z = load i64, ptr %i.i, align 8, !noalias !4657, !noundef !4 ; 5 uses
  store i64 %i.z, ptr %i.d, align 8, !alias.scope !4646, !noalias !4651
  %i.aa = load i8, ptr %i.j, align 8, !range !181, !noalias !4657, !noundef !4 ; 5 uses
  store i8 %i.aa, ptr %i.k, align 8, !alias.scope !4646, !noalias !4651
  %.not3.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not3.i.i.i, label %bb.d, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i: ; preds = %bb.c
  %i.ab = ptrtoint ptr %i.y to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4657
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4657
  br label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %bb.d, %bb.b
  %.promoted4448.i = phi i8 [ %.promoted4449.i, %bb.b ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ac = phi i64 [ %i.s, %bb.b ], [ %i.z, %bb.d ] ; 4 uses
  %i.ad = phi i64 [ %i.t, %bb.b ], [ 0, %bb.d ]   ; 3 uses
  %i.ae = phi i8 [ %i.u, %bb.b ], [ %i.aa, %bb.d ]
  %i.af = phi i64 [ %i.v, %bb.b ], [ %i.z, %bb.d ] ; 2 uses
  %i.ag = phi i64 [ %i.w, %bb.b ], [ 0, %bb.d ]   ; 3 uses
  %i.ah = sub nuw i64 %i.af, %i.ag                ; 9 uses
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i
  %.promoted4447.i = phi i8 [ %i.aa, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %.promoted4448.i, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.ai = phi i64 [ %i.z, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.ac, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.aj = phi i64 [ 0, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.ad, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.ak = phi i8 [ %i.aa, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.ae, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.al = phi i64 [ %i.z, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.af, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.am = phi i64 [ 0, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.ag, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i ]
  %.sroa.8.020.i = phi i64 [ %i.ab, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.ah, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EENtNtB9_8buf_read7BufRead8fill_bufCsgy7pbN39oAf_6uu_ptx.exit.i ] ; 6 uses
  %i.an = inttoptr i64 %.sroa.8.020.i to ptr      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ao = and i64 %.sroa.8.020.i, 3               ; 2 uses
  switch i64 %i.ao, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !182

default.unreachable:                              ; preds = %bb.o, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ap = lshr i64 %.sroa.8.020.i, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #28, !noalias !4643
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !4643, !nonnull !4, !noundef !4
  %i.au = call noundef i8 %i.at(i32 noundef %i.aq) #28, !noalias !4643, !inline_history !4664
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i

bb.g:                                             ; preds = %bb.e
  %i.av = lshr i64 %.sroa.8.020.i, 32
  %i.aw = icmp ult i64 %.sroa.8.020.i, 188978561024
  %switch.idx.cast.i.i.i.i = trunc nuw nsw i64 %i.av to i8
  call void @llvm.assume(i1 %i.aw)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i
end_hunk_0
