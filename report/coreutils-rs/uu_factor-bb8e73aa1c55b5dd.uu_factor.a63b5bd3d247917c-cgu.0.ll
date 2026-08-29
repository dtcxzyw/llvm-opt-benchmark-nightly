Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_factor-bb8e73aa1c55b5dd.uu_factor.a63b5bd3d247917c-cgu.0?download=true
inline.NumInlined: 71
inline.NumDeleted: 44
begin_hunk_0_@_RNvCsegQB1SVjmxI_9uu_factor6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsegQB1SVjmxI_9uu_factor.exit
  store i64 4, ptr %.sroa.7241.sroa.10.0..sroa.7241.0..sroa_idx242.sroa_idx, align 8
  %.sroa.7241.sroa.11.0..sroa.7241.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr @11, ptr %.sroa.7241.sroa.11.0..sroa.7241.0..sroa_idx242.sroa_idx, align 8
  %.sroa.7241.sroa.12.0..sroa.7241.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store i64 4, ptr %.sroa.7241.sroa.12.0..sroa.7241.0..sroa_idx242.sroa_idx, align 8
  %.sroa.7241.sroa.13.0..sroa.7241.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %.sroa.7241.sroa.13.0..sroa.7241.0..sroa_idx242.sroa_idx, align 8
  %.sroa.7241.sroa.15.0..sroa.7241.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i32 -1, ptr %.sroa.7241.sroa.15.0..sroa.7241.0..sroa_idx242.sroa_idx, align 8
  %.sroa.7241.sroa.16.0..sroa.7241.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  store i32 -1, ptr %.sroa.7241.sroa.16.0..sroa.7241.0..sroa_idx242.sroa_idx, align 4
  %.sroa.7241.sroa.17.0..sroa.7241.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i32 0, ptr %.sroa.7241.sroa.17.0..sroa.7241.0..sroa_idx242.sroa_idx, align 8
  %.sroa.7241.sroa.18.0..sroa.7241.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 5, ptr %.sroa.7241.sroa.18.0..sroa.7241.0..sroa_idx242.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.l, i64 712, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %.val.i88 = load i64, ptr %i.f, align 8, !range !4, !alias.scope !51, !noundef !5 ; 2 uses
  %i.ao = icmp eq i64 %.val.i88, 0
  br i1 %i.ao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsegQB1SVjmxI_9uu_factor.exit
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !51, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i88, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !51
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsegQB1SVjmxI_9uu_factor.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsegQB1SVjmxI_9uu_factor9parse_num(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMNtCs6JMX4GRUq9U_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #16
  %i.s = load i64, ptr %i.r, align 8, !range !12, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %1, ptr %i.p, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %2, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !54
  store i64 0, ptr %i.o, align 8, !noalias !54
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !54
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1610612768, ptr %i.v, align 8, !noalias !54
  store ptr %i.o, ptr %i.n, align 8, !noalias !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @15, ptr %i.w, align 8, !noalias !54
  %i.x = call noundef zeroext i1 @_RNvXCsegQB1SVjmxI_9uu_factorNtB2_8NumErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #16, !noalias !58
  br i1 %i.x, label %bb.c, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsegQB1SVjmxI_9uu_factor8NumErrorNtB5_12SpecToString14spec_to_stringBA_.exit.i, !prof !20

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #18, !noalias !54
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsegQB1SVjmxI_9uu_factor8NumErrorNtB5_12SpecToString14spec_to_stringBA_.exit.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !59 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !59, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !60
  store i64 0, ptr %i.m, align 8, !noalias !60
  %.sroa.4.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i1.i, align 8, !noalias !60
  %.sroa.5.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i2.i, align 8, !noalias !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i8 1, ptr %i.y, align 8, !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !60
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 24) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !60
  store ptr %i.m, ptr %i.k, align 8, !noalias !60
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.z, align 8, !noalias !60
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !60
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @1, ptr noundef nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !60
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.val.i.i.i = load i64, ptr %i.l, align 8, !range !4, !alias.scope !63, !noalias !60, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsegQB1SVjmxI_9uu_factor8NumErrorNtB5_12SpecToString14spec_to_stringBA_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !63, !noalias !60, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !63
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsegQB1SVjmxI_9uu_factor8NumErrorNtB5_12SpecToString14spec_to_stringBA_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !60
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !66
  %i.ac = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #16, !noalias !66 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.d, label %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit.i, !prof !20

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #17, !noalias !66
  unreachable

_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 1, ptr %.sroa.42.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ae, label %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_nums_0B3_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !69
  br label %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_nums_0B3_.exit

_RNCNvCsegQB1SVjmxI_9uu_factor9parse_nums_0B3_.exit: ; preds = %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @3, ptr %i.ag, align 16
  store i64 -1, ptr %0, align 16
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  switch i64 %i.ak, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.al = load i8, ptr %i.ai, align 1, !alias.scope !72, !noalias !75, !noundef !5 ; 2 uses
  switch i8 %i.al, label %bb.g [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.e
  %.pr.i = load i8, ptr %i.ai, align 1, !alias.scope !72, !noalias !75
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.i, %bb.f
  %.pr.i40 = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.al, %bb.f ] ; 2 uses
  %cond.i = icmp eq i8 %.pr.i40, 43               ; 2 uses
  %i.am = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.ak, %i.am        ; 7 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.0.0.idx.i ; 4 uses
  %i.an = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.an, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.g
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.j
  %.not52.i = icmp eq i64 %i.ap, 0
  br i1 %.not52.i, label %_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.g, %.preheader56.i
  %.sroa.0.1.i152 = phi ptr [ %i.ao, %.preheader56.i ], [ %.sroa.0.0.i, %bb.g ] ; 2 uses
  %.sroa.15.1.i151 = phi i64 [ %i.ap, %.preheader56.i ], [ %.sroa.15.0.i, %bb.g ]
  %.sroa.042.0.i150 = phi i64 [ %i.ax, %.preheader56.i ], [ 0, %bb.g ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i152, i64 1
  %i.ap = add nsw i64 %.sroa.15.1.i151, -1        ; 2 uses
  %3 = mul nuw i64 %.sroa.042.0.i150, 10          ; 2 uses
  %4 = icmp ugt i64 %.sroa.042.0.i150, 1844674407370955161
  %i.aq = load i8, ptr %.sroa.0.1.i152, align 1, !alias.scope !72, !noalias !75, !noundef !5 ; 2 uses
  br i1 %4, label %bb.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %.preheader56.i.preheader
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.j, label %.loopexit

bb.i:                                             ; preds = %.preheader56.i.preheader
  %i.au = add i8 %i.aq, -48
  %i.av = icmp ult i8 %i.au, 10
  br i1 %i.av, label %.loopexit75, label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = add i64 %3, %i.aw                       ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %3
  br i1 %i.ay, label %.loopexit75, label %.preheader56.i, !prof !20

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %.sroa.0.269.i = phi ptr [ %i.bf, %bb.k ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.be, %bb.k ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.bh, %bb.k ], [ 0, %.preheader.i ]
  %i.az = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !72, !noalias !75, !noundef !5
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -48                  ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 10
  br i1 %i.bc, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.i
  %i.bd = mul i64 %.sroa.042.267.i, 10
  %i.be = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.bg = zext nneg i32 %i.bb to i64
  %i.bh = add i64 %i.bd, %i.bg                    ; 2 uses
  %.not53.i = icmp eq i64 %i.be, 0
  br i1 %.not53.i, label %_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.k, %.preheader.i
  %.sroa.1252.0 = phi i64 [ %i.bh, %bb.k ], [ 0, %.preheader.i ], [ %i.ax, %.preheader56.i ]
  store i64 0, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1252.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.r

.loopexit:                                        ; preds = %bb.h, %.lr.ph.i, %bb.i, %bb.f, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !77
  store i64 0, ptr %i.i, align 8, !noalias !77
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !77
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 1, ptr %i.bi, align 8, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !77
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 24) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !77
  store ptr %i.i, ptr %i.g, align 8, !noalias !77
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !77
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.bj, align 8, !noalias !77
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !77
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @1, ptr noundef nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !77
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %.val.i.i = load i64, ptr %i.h, align 8, !range !4, !alias.scope !80, !noalias !77, !noundef !5 ; 2 uses
  %i.bk = icmp eq i64 %.val.i.i, 0
  br i1 %i.bk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i18

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i18: ; preds = %.loopexit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !80, !noalias !77, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !80
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i18, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !77
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !83
  %i.bm = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #16, !noalias !83 ; 4 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.l, label %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit, !prof !20

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #17, !noalias !83
  unreachable

_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 1, ptr %.sroa.42.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @3, ptr %i.bp, align 16
  store i64 -1, ptr %0, align 16
  br label %bb.r

.loopexit75:                                      ; preds = %bb.j, %bb.i
  switch i64 %i.ak, label %thread-pre-split.i39 [
    i64 0, label %.loopexit69
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %.loopexit75
  switch i8 %.pr.i40, label %thread-pre-split.i39 [
    i8 43, label %.loopexit69
    i8 45, label %.loopexit69
  ]

thread-pre-split.i39:                             ; preds = %.loopexit75, %bb.m
  %i.bq = icmp samesign ult i64 %.sroa.15.0.i, 33
  br i1 %i.bq, label %.lr.ph.i34, label %.preheader56.i24.preheader

.preheader56.i24:                                 ; preds = %bb.p
  %.not52.i28 = icmp eq i64 %i.bs, 0
  br i1 %.not52.i28, label %_RNvMsF_NtCs6JMX4GRUq9U_4core3numo27from_ascii_bytes_radix_impl.exit, label %.preheader56.i24.preheader

.preheader56.i24.preheader:                       ; preds = %thread-pre-split.i39, %.preheader56.i24
  %.sroa.0.1.i27155 = phi ptr [ %i.br, %.preheader56.i24 ], [ %.sroa.0.0.i, %thread-pre-split.i39 ] ; 2 uses
  %.sroa.15.1.i26154 = phi i64 [ %i.bs, %.preheader56.i24 ], [ %.sroa.15.0.i, %thread-pre-split.i39 ]
  %.sroa.042.0.i25153 = phi i128 [ %i.ca, %.preheader56.i24 ], [ 0, %thread-pre-split.i39 ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i27155, i64 1
  %i.bs = add nsw i64 %.sroa.15.1.i26154, -1      ; 2 uses
  %5 = mul nuw i128 %.sroa.042.0.i25153, 10       ; 2 uses
  %6 = icmp ugt i128 %.sroa.042.0.i25153, 34028236692093846346337460743176821145
  %i.bt = load i8, ptr %.sroa.0.1.i27155, align 1, !alias.scope !86, !noalias !89, !noundef !5 ; 2 uses
  br i1 %6, label %bb.o, label %bb.n, !prof !20

bb.n:                                             ; preds = %.preheader56.i24.preheader
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %bb.p, label %.loopexit69

bb.o:                                             ; preds = %.preheader56.i24.preheader
  %i.bx = add i8 %i.bt, -48
  %i.by = icmp ult i8 %i.bx, 10
  br i1 %i.by, label %.loopexit72, label %.loopexit69

bb.p:                                             ; preds = %bb.n
  %i.bz = zext nneg i32 %i.bv to i128
  %i.ca = add i128 %5, %i.bz                      ; 3 uses
  %i.cb = icmp ult i128 %i.ca, %5
  br i1 %i.cb, label %.loopexit72, label %.preheader56.i24, !prof !20

.lr.ph.i34:                                       ; preds = %thread-pre-split.i39, %bb.q
  %.sroa.0.269.i35 = phi ptr [ %i.ci, %bb.q ], [ %.sroa.0.0.i, %thread-pre-split.i39 ] ; 2 uses
  %.sroa.15.268.i36 = phi i64 [ %i.ch, %bb.q ], [ %.sroa.15.0.i, %thread-pre-split.i39 ]
  %.sroa.042.267.i37 = phi i128 [ %i.ck, %bb.q ], [ 0, %thread-pre-split.i39 ]
  %i.cc = load i8, ptr %.sroa.0.269.i35, align 1, !alias.scope !86, !noalias !89, !noundef !5
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, -48                  ; 2 uses
  %i.cf = icmp ult i32 %i.ce, 10
  br i1 %i.cf, label %bb.q, label %.loopexit69

bb.q:                                             ; preds = %.lr.ph.i34
  %i.cg = mul i128 %.sroa.042.267.i37, 10
  %i.ch = add nsw i64 %.sroa.15.268.i36, -1       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i35, i64 1
  %i.cj = zext nneg i32 %i.ce to i128
  %i.ck = add i128 %i.cg, %i.cj                   ; 2 uses
  %.not53.i38 = icmp eq i64 %i.ch, 0
  br i1 %.not53.i38, label %_RNvMsF_NtCs6JMX4GRUq9U_4core3numo27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i34

bb.r:                                             ; preds = %_RNvMsF_NtCs6JMX4GRUq9U_4core3numo27from_ascii_bytes_radix_impl.exit, %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit50, %_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl.exit, %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit, %bb.v, %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_nums_0B3_.exit
  ret void

_RNvMsF_NtCs6JMX4GRUq9U_4core3numo27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i24, %bb.q
  %.sroa.1256.0 = phi i128 [ %i.ck, %bb.q ], [ %i.ca, %.preheader56.i24 ]
  store i64 1, ptr %0, align 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.1256.0, ptr %.sroa.410.0..sroa_idx, align 16
  br label %bb.r

.loopexit69:                                      ; preds = %bb.n, %.lr.ph.i34, %bb.o, %bb.m, %bb.m, %.loopexit75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !91
  store i64 0, ptr %i.e, align 8, !noalias !91
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx.i41, align 8, !noalias !91
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx.i42, align 8, !noalias !91
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 1, ptr %i.cl, align 8, !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !91
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 24) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !91
  store ptr %i.e, ptr %i.c, align 8, !noalias !91
  %.sroa.44.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx.i43, align 8, !noalias !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.cm, align 8, !noalias !91
  %.sroa.48.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i44, align 8, !noalias !91
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1, ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !91
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.val.i.i45 = load i64, ptr %i.d, align 8, !range !4, !alias.scope !94, !noalias !91, !noundef !5 ; 2 uses
  %i.cn = icmp eq i64 %.val.i.i45, 0
  br i1 %i.cn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i48, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i46

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i46: ; preds = %.loopexit69
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i47 = load ptr, ptr %i.co, align 8, !alias.scope !94, !noalias !91, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i47, i64 noundef %.val.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !94
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i48

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i48: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i46, %.loopexit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !91
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !97
  %i.cp = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #16, !noalias !97 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.s, label %_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit50, !prof !20

bb.s:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i48
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #17, !noalias !97
  unreachable

_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_.exit50: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor.exit.i48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.42.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i32 1, ptr %.sroa.42.0..sroa_idx.i49, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @3, ptr %i.cs, align 16
  store i64 -1, ptr %0, align 16
  br label %bb.r

.loopexit72:                                      ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXs_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB6_7BigUintNtCs2PbPfIYQJQA_10num_traits3Num14from_str_radix(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak, i32 noundef 10) #16
  %i.ct = load i64, ptr %i.q, align 8, !range !100, !noundef !5
  %i.cu = icmp eq i64 %i.ct, -2
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cw = call fastcc ptr @_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak) #19
  store ptr %i.cw, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @3, ptr %i.cx, align 16
  br label %bb.v

bb.u:                                             ; preds = %.loopexit72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink = phi i64 [ -1, %bb.t ], [ 2, %bb.u ]
  store i64 %.sink, ptr %0, align 16
  br label %bb.r
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsegQB1SVjmxI_9uu_factor(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) #16
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.f = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef 1) #16
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn7 = phi ptr [ %i.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq ptr %.pn7, null
  br i1 %i.g, label %bb.e, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  br label %bb.f

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn79 = phi ptr [ %.pn7, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn79, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink10 = phi i64 [ %1, %bb.e ], [ %1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink10, ptr %i.j, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXCsegQB1SVjmxI_9uu_factorNtB2_8NumErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.g, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #16
  %i.i = load ptr, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.not23.not = icmp eq ptr %i.i, null
  br i1 %.not23.not, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %i.n = phi ptr [ %i.i, %.lr.ph26 ], [ %i.y, %._crit_edge ]
  %i.o = load i64, ptr %i.j, align 8, !noundef !5
  %i.p = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char:bb.a
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !102
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !102
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !102
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !102
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !102
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !102
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !102
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !102
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !114, !noalias !117, !noundef !5 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !4, !alias.scope !114, !noalias !117, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.i.i, !prof !20

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsegQB1SVjmxI_9uu_factor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2) #16
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !119, !noalias !117, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !119, !noalias !117, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !119
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !119, !noalias !117
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #16
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCsegQB1SVjmxI_9uu_factor(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQNtNtCs7tKScEop1B6_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsegQB1SVjmxI_9uu_factor.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15, ptr noundef nonnull %1, ptr noundef nonnull %2) #16, !inline_history !120
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtB4_6UError5usageCsegQB1SVjmxI_9uu_factor(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsegQB1SVjmxI_9uu_factor(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @25, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsegQB1SVjmxI_9uu_factor(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsegQB1SVjmxI_9uu_factor(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsegQB1SVjmxI_9uu_factor(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsegQB1SVjmxI_9uu_factor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @26, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs6JMX4GRUq9U_4core3stre9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB6_7BigUintNtCs2PbPfIYQJQA_10num_traits3Num14from_str_radix(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noinline noreturn nounwind }
attributes #19 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{i64 0, i64 -9223372036854775808}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 0"}
!8 = distinct !{!8, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsegQB1SVjmxI_9uu_factor: argument 0"}
!11 = distinct !{!11, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsegQB1SVjmxI_9uu_factor"}
!12 = !{i64 0, i64 2}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 0"}
!16 = distinct !{!16, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorE3newCsegQB1SVjmxI_9uu_factor: argument 0"}
!19 = distinct !{!19, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorE3newCsegQB1SVjmxI_9uu_factor"}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!22, !24, !25}
!22 = distinct !{!22, !23, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtB7_10styled_str9StyledStrINtB5_14IntoResettableBV_E15into_resettableCsegQB1SVjmxI_9uu_factor: argument 0"}
!23 = distinct !{!23, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtB7_10styled_str9StyledStrINtB5_14IntoResettableBV_E15into_resettableCsegQB1SVjmxI_9uu_factor"}
!24 = distinct !{!24, !23, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtB7_10styled_str9StyledStrINtB5_14IntoResettableBV_E15into_resettableCsegQB1SVjmxI_9uu_factor: argument 1"}
!25 = distinct !{!25, !26, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsegQB1SVjmxI_9uu_factor: argument 2"}
!26 = distinct !{!26, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsegQB1SVjmxI_9uu_factor"}
!27 = !{!28, !29}
!28 = distinct !{!28, !26, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsegQB1SVjmxI_9uu_factor: argument 0"}
!29 = distinct !{!29, !26, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsegQB1SVjmxI_9uu_factor: argument 1"}
!30 = !{!31, !33, !34}
!31 = distinct !{!31, !32, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsegQB1SVjmxI_9uu_factor: argument 0"}
!32 = distinct !{!32, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsegQB1SVjmxI_9uu_factor"}
!33 = distinct !{!33, !32, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsegQB1SVjmxI_9uu_factor: argument 1"}
!34 = distinct !{!34, !35, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 2"}
!35 = distinct !{!35, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor"}
!36 = !{!37, !38}
!37 = distinct !{!37, !35, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 0"}
!38 = distinct !{!38, !35, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 1"}
!39 = !{!40, !42, !43}
!40 = distinct !{!40, !41, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsegQB1SVjmxI_9uu_factor: argument 0"}
!41 = distinct !{!41, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsegQB1SVjmxI_9uu_factor"}
!42 = distinct !{!42, !41, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsegQB1SVjmxI_9uu_factor: argument 1"}
!43 = distinct !{!43, !44, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 2"}
!44 = distinct !{!44, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor"}
!45 = !{!46, !47}
!46 = distinct !{!46, !44, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 0"}
!47 = distinct !{!47, !44, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 1"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RNvXsb_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3ArgNtNtCs6JMX4GRUq9U_4core7default7Default7default: argument 0"}
!50 = distinct !{!50, !"_RNvXsb_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3ArgNtNtCs6JMX4GRUq9U_4core7default7Default7default"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 0"}
!53 = distinct !{!53, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor"}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsegQB1SVjmxI_9uu_factor8NumErrorNtB5_12SpecToString14spec_to_stringBA_: argument 0"}
!56 = distinct !{!56, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsegQB1SVjmxI_9uu_factor8NumErrorNtB5_12SpecToString14spec_to_stringBA_"}
!57 = distinct !{!57, !56, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCsegQB1SVjmxI_9uu_factor8NumErrorNtB5_12SpecToString14spec_to_stringBA_: argument 1"}
!58 = !{!55}
!59 = !{!57}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_: argument 0"}
!62 = distinct !{!62, !"_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 0"}
!65 = distinct !{!65, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorE3newCsegQB1SVjmxI_9uu_factor: argument 0"}
!68 = distinct !{!68, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorE3newCsegQB1SVjmxI_9uu_factor"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 0"}
!71 = distinct !{!71, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl: argument 1"}
!74 = distinct !{!74, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"_RNvMsD_NtCs6JMX4GRUq9U_4core3numy27from_ascii_bytes_radix_impl: argument 0"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_: argument 0"}
!79 = distinct !{!79, !"_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 0"}
!82 = distinct !{!82, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorE3newCsegQB1SVjmxI_9uu_factor: argument 0"}
!85 = distinct !{!85, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorE3newCsegQB1SVjmxI_9uu_factor"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RNvMsF_NtCs6JMX4GRUq9U_4core3numo27from_ascii_bytes_radix_impl: argument 1"}
!88 = distinct !{!88, !"_RNvMsF_NtCs6JMX4GRUq9U_4core3numo27from_ascii_bytes_radix_impl"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_RNvMsF_NtCs6JMX4GRUq9U_4core3numo27from_ascii_bytes_radix_impl: argument 0"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_: argument 0"}
!93 = distinct !{!93, !"_RNCNvCsegQB1SVjmxI_9uu_factor9parse_num0B3_"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor: argument 0"}
!96 = distinct !{!96, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsegQB1SVjmxI_9uu_factor"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorE3newCsegQB1SVjmxI_9uu_factor: argument 0"}
!99 = distinct !{!99, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorE3newCsegQB1SVjmxI_9uu_factor"}
!100 = !{i64 -2, i64 -9223372036854775808}
!101 = !{i64 8}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push: argument 0"}
!104 = distinct !{!104, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push"}
!105 = !{!106, !103}
!106 = distinct !{!106, !107, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor: argument 0"}
!107 = distinct !{!107, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str: argument 0"}
!110 = distinct !{!110, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsegQB1SVjmxI_9uu_factor: argument 0"}
!113 = distinct !{!113, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsegQB1SVjmxI_9uu_factor"}
!114 = !{!115, !112, !109}
!115 = distinct !{!115, !116, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor: argument 0"}
!116 = distinct !{!116, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsegQB1SVjmxI_9uu_factor"}
!117 = !{!118}
!118 = distinct !{!118, !110, !"_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str: argument 1"}
!119 = !{!112, !109}
!120 = distinct !{null}
end_hunk_1
