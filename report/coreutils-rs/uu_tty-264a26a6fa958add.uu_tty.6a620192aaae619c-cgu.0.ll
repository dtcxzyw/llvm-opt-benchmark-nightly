Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tty-264a26a6fa958add.uu_tty.6a620192aaae619c-cgu.0?download=true
inline.NumInlined: 35
inline.NumDeleted: 27
begin_hunk_0_@_RNvCs98gWJ9r8fEu_6uu_tty6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty.exit
  %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 688
  store ptr null, ptr %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !28
  %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 696
  store i32 -1, ptr %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx17.sroa_idx, align 8, !alias.scope !28
  %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 700
  %.sroa.8.sroa.30.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 708
  store i8 0, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 128, ptr %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx17.sroa_idx, align 4
  store i32 128, ptr %.sroa.8.sroa.30.0..sroa.8.0..sroa_idx17.sroa_idx, align 8
  %.val = load i64, ptr %i.e, align 8, !range !5, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %.val, 0
  br i1 %i.p, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty.exit
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #12
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization27configure_localized_command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.h) #12
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 2 uses
  store i64 -1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 -1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  store i8 -1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %i.w, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  store i32 0, ptr %i.x, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i, align 8
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i, align 8
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i, align 8
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i, align 8
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store i32 -1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 2 uses
  store i64 0, ptr %i.aa, align 8
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i, align 8
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 2 uses
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i, align 8
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store i64 0, ptr %i.b, align 8
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i, align 8
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  store i32 -1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i64 0, ptr %i.ad, align 8
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i, align 8
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i, align 8
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i, align 8
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store i64 0, ptr %i.ah, align 8
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i, align 8
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8
  store ptr @4, ptr %i.q, align 8
  store i64 6, ptr %i.r, align 8
  store ptr @4, ptr %i.z, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 600
  store i64 6, ptr %i.ai, align 8
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrbEE8grow_oneCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #13
  %i.aj = load ptr, ptr %.sroa.429.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4 ; 3 uses
  store ptr @5, ptr %i.aj, align 8, !noalias !29
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx.i11, align 8, !noalias !29
  %.sroa.5.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i12, align 8, !noalias !29
  store i64 1, ptr %.sroa.530.0..sroa_idx.i, align 8
  %.sroa.451.0.copyload = load i64, ptr %i.s, align 8 ; 2 uses
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %.sroa.552.0.copyload = load ptr, ptr %.sroa.552.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 15) #12
  %.sroa.059.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.260.0.copyload = load ptr, ptr %.sroa.260.0..sroa_idx, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.361.0.copyload = load i64, ptr %.sroa.361.0..sroa_idx, align 8
  %.0.val.off.i = add i64 %.sroa.451.0.copyload, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs98gWJ9r8fEu_6uu_tty.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.552.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.552.0.copyload, i64 noundef %.sroa.451.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #12
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs98gWJ9r8fEu_6uu_tty.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs98gWJ9r8fEu_6uu_tty.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 628
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.c, ptr noundef nonnull align 8 dereferenceable(488) %i.b, i64 488, i1 false)
  %.sroa.442.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  store i64 %.sroa.059.0.copyload, ptr %.sroa.442.0..sroa_idx43, align 8
  %.sroa.645.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store ptr %.sroa.260.0.copyload, ptr %.sroa.645.0..sroa_idx46, align 8
  %.sroa.748.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  store i64 %.sroa.361.0.copyload, ptr %.sroa.748.0..sroa_idx49, align 8
  %.sroa.748.sroa.0.sroa.5.0..sroa.748.0..sroa_idx49.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.748.sroa.0.sroa.5.0..sroa.748.0..sroa_idx49.sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %i.al, i64 112, i1 false)
  %.sroa.748.sroa.5.0..sroa.748.0..sroa_idx49.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  store i32 115, ptr %.sroa.748.sroa.5.0..sroa.748.0..sroa_idx49.sroa_idx, align 8
  %.sroa.748.sroa.6.0..sroa.748.0..sroa_idx49.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.748.sroa.6.0..sroa.748.0..sroa_idx49.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 636
  store i8 2, ptr %i.am, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.d, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrbEE8grow_oneCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) #12 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs98gWJ9r8fEu_6uu_tty(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #2 {
bb.a:
  %i.a = mul nuw nsw i64 %1, 24                   ; 4 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %2, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

2:                                                ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %3, align 8
  br label %bb.f

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #12
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12
  %i.g = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #12
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ], [ inttoptr (i64 8 to ptr), %bb.c ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.h, label %bb.e, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  store i64 8, ptr %4, align 8
  store i64 %i.a, ptr %5, align 8
  br label %bb.f

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  store ptr %.pn8, ptr %4, align 8
  store i64 %i.a, ptr %5, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %2
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %2 ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.b, i64 range(i64 0, -1) %i.d)
  %..i14 = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %..i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs98gWJ9r8fEu_6uu_tty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %..i14) #12
  %i.f = load i64, ptr %i.a, align 8, !range !32, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !33, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %..i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization27configure_localized_command(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #7

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noinline nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = distinct !{!6, i1 true, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty"}
!7 = distinct !{!7, !6, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty: argument 2"}
!8 = distinct !{!8, i1 true, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs98gWJ9r8fEu_6uu_tty"}
!9 = distinct !{!9, !8, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs98gWJ9r8fEu_6uu_tty: argument 1"}
!10 = distinct !{!10, !8, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs98gWJ9r8fEu_6uu_tty: argument 0"}
!11 = distinct !{!11, i1 true, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty"}
!12 = distinct !{!12, !11, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty: argument 0"}
!13 = distinct !{!13, !11, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty: argument 1"}
!14 = distinct !{!14, !11, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs98gWJ9r8fEu_6uu_tty: argument 2"}
!15 = distinct !{!15, i1 true, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs98gWJ9r8fEu_6uu_tty"}
!16 = distinct !{!16, !15, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs98gWJ9r8fEu_6uu_tty: argument 1"}
!17 = distinct !{!17, !15, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs98gWJ9r8fEu_6uu_tty: argument 0"}
!18 = distinct !{!18, i1 true, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty"}
!19 = distinct !{!19, !18, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty: argument 1"}
!20 = distinct !{!20, !18, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg13visible_aliasReECs98gWJ9r8fEu_6uu_tty: argument 0"}
!21 = distinct !{!21, i1 true, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrbEE8push_mutCs98gWJ9r8fEu_6uu_tty"}
!22 = distinct !{!22, !21, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrbEE8push_mutCs98gWJ9r8fEu_6uu_tty: argument 0"}
!23 = !{!10, !9, !7}
!24 = !{!12}
!25 = !{!13}
!26 = !{!14}
!27 = !{!17, !16, !14}
!28 = !{!12, !13}
!29 = !{!22, !20, !19}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!"branch_weights", i32 2002, i32 2000}
!32 = !{i64 0, i64 2}
!33 = !{i64 0, i64 -9223372036854775807}
end_hunk_0
