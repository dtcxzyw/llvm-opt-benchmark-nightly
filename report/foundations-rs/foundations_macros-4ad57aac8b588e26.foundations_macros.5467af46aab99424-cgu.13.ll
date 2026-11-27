Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-4ad57aac8b588e26.foundations_macros.5467af46aab99424-cgu.13?download=true
inline.NumInlined: 270
inline.NumDeleted: 178
begin_hunk_0_@_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorECs7fhJ7v7hOxk_18foundations_macros:bb.a
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %bb.f unwind label %bb.e, !dbg !449, !noalias !442

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !450, !prof !134

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18
          to label %.noexc.i.i unwind label %bb.b, !dbg !451, !noalias !442

.noexc.i.i:                                       ; preds = %bb.d
  unreachable, !dbg !451

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !452, !noalias !442
  unreachable, !dbg !452

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i, !dbg !452

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !453, !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !454, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !449, !noalias !441
  call void @_RNvNvMNtCs6bAnw1I7Lci_3syn5errorNtB4_5Error3new3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs6bAnw1I7Lci_3syn5errorNtB3_5Error3newReECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !457 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481), !dbg !486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482), !dbg !487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !488, !noalias !483
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !488, !noalias !483
  %i.c = load i64, ptr %i.a, align 8, !dbg !488, !range !132, !noalias !483, !noundef !107
  %i.d = trunc nuw i64 %i.c to i1, !dbg !489
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !490
  %i.f = load i64, ptr %i.e, align 8, !dbg !490, !range !133, !noalias !483, !noundef !107 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !490 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i, !dbg !489, !prof !134

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !dbg !491, !noalias !483
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #15, !dbg !492, !noalias !483
  unreachable, !dbg !492

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !dbg !493, !noalias !483, !nonnull !107, !noundef !107 ; 2 uses
  %i.j = icmp samesign ule i64 %3, %i.f, !dbg !494
  tail call void @llvm.assume(i1 %i.j), !dbg !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !496, !noalias !483
  %.not.i.i.i = icmp eq i64 %3, 0, !dbg !497
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.c, !dbg !497

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !dbg !498, !noalias !484
  br label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !499

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !dbg !500, !alias.scope !485
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !500
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !500, !alias.scope !485
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !500
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !500, !alias.scope !485
  call void @_RNvNvMNtCs6bAnw1I7Lci_3syn5errorNtB4_5Error3new3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !501
  ret void, !dbg !502
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsje5z0uo7eGy_12darling_core5errorNtB3_5Error23unknown_field_with_altsReRAB1d_j1_ECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 !dbg !503 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @_RINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB6_17ErrorUnknownValue9with_altsReRAB1l_j1_ECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3), !dbg !505
  call void @_RNvXs2_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB5_9ErrorKindINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_17ErrorUnknownValueE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a), !dbg !506
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !dbg !507
  ret void, !dbg !508
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsje5z0uo7eGy_12darling_core5errorNtB3_5Error23unknown_field_with_altsReRAB1d_j2_ECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 !dbg !509 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @_RINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB6_17ErrorUnknownValue9with_altsReRAB1l_j2_ECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3), !dbg !511
  call void @_RNvXs2_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB5_9ErrorKindINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_17ErrorUnknownValueE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a), !dbg !512
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsje5z0uo7eGy_12darling_core5errorNtB3_5Error23unknown_field_with_altsReRAB1d_j4_ECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #0 !dbg !515 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @_RINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB6_17ErrorUnknownValue9with_altsReRAB1l_j4_ECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3), !dbg !517
  call void @_RNvXs2_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB5_9ErrorKindINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_17ErrorUnknownValueE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a), !dbg !518
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !dbg !519
  ret void, !dbg !520
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error2atReECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !521 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545), !dbg !550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546), !dbg !551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !552, !noalias !547
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d, !dbg !552, !noalias !547

.noexc:                                           ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !dbg !552, !range !132, !noalias !547, !noundef !107
  %i.d = trunc nuw i64 %i.c to i1, !dbg !553
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !554
  %i.f = load i64, ptr %i.e, align 8, !dbg !554, !range !133, !noalias !547, !noundef !107 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !554 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i, !dbg !553, !prof !134

bb.b:                                             ; preds = %.noexc
  %i.h = load i64, ptr %i.g, align 8, !dbg !555, !noalias !547
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #15
          to label %.noexc3 unwind label %bb.d, !dbg !556, !noalias !547

.noexc3:                                          ; preds = %bb.b
  unreachable, !dbg !556

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i: ; preds = %.noexc
  %i.i = load ptr, ptr %i.g, align 8, !dbg !557, !noalias !547, !nonnull !107, !noundef !107 ; 2 uses
  %i.j = icmp samesign ule i64 %3, %i.f, !dbg !558
  tail call void @llvm.assume(i1 %i.j), !dbg !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !560, !noalias !547
  %.not.i.i.i = icmp eq i64 %3, 0, !dbg !561
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !dbg !561

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !dbg !562, !noalias !548
  br label %bb.e, !dbg !563

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %1) #17
          to label %bb.g unwind label %bb.h, !dbg !564

bb.e:                                             ; preds = %bb.c, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i
  store i64 %i.f, ptr %i.b, align 8, !dbg !565, !alias.scope !549
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !565
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !565, !alias.scope !549
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !565
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !565, !alias.scope !549
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6insertCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.f unwind label %bb.d, !dbg !566

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !dbg !567
  ret void, !dbg !568

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k, !dbg !569

bb.h:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !569
  unreachable, !dbg !569
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanNtNtCs6bAnw1I7Lci_3syn3lit3LitECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29 {
bb.a:
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
          to label %bb.c unwind label %bb.b, !dbg !570

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %1) #17
          to label %bb.h unwind label %bb.g, !dbg !571

bb.c:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.e, label %bb.d, !dbg !572

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_3lit3LitNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.f unwind label %bb.b, !dbg !573

bb.e:                                             ; preds = %bb.f, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !dbg !574
  ret void, !dbg !575

bb.f:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !576
  %3 = zext i32 %i.c to i64, !dbg !576
  %4 = shl nuw i64 %3, 32, !dbg !576
  %5 = or disjoint i64 %4, 1, !dbg !576
  store i64 %5, ptr %i.d, align 8, !dbg !576
  br label %bb.e, !dbg !577

bb.g:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !578
  unreachable, !dbg !578

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !578
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanNtNtCs6bAnw1I7Lci_3syn4attr4MetaECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30 {
bb.a:
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
          to label %bb.c unwind label %bb.b, !dbg !579

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %1) #17
          to label %bb.h unwind label %bb.g, !dbg !580

bb.c:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.e, label %bb.d, !dbg !581

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4attr4MetaNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2)
          to label %bb.f unwind label %bb.b, !dbg !582

bb.e:                                             ; preds = %bb.f, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !dbg !583
  ret void, !dbg !584

bb.f:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !585
  %3 = zext i32 %i.c to i64, !dbg !585
  %4 = shl nuw i64 %3, 32, !dbg !585
  %5 = or disjoint i64 %4, 1, !dbg !585
  store i64 %5, ptr %i.d, align 8, !dbg !585
  br label %bb.e, !dbg !586

bb.g:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !587
  unreachable, !dbg !587

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !587
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanNtNtCs6bAnw1I7Lci_3syn4expr4ExprECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31 {
bb.a:
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
          to label %bb.c unwind label %bb.b, !dbg !588

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %1) #17
          to label %bb.h unwind label %bb.g, !dbg !589

bb.c:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.e, label %bb.d, !dbg !590

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4expr4ExprNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %2)
          to label %bb.f unwind label %bb.b, !dbg !591

bb.e:                                             ; preds = %bb.f, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !dbg !592
  ret void, !dbg !593

bb.f:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !594
  %3 = zext i32 %i.c to i64, !dbg !594
  %4 = shl nuw i64 %3, 32, !dbg !594
  %5 = or disjoint i64 %4, 1, !dbg !594
  store i64 %5, ptr %i.d, align 8, !dbg !594
  br label %bb.e, !dbg !595

bb.g:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !596
  unreachable, !dbg !596

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !596
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanRNtNtCs6bAnw1I7Lci_3syn4attr4MetaECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !597 {
bb.a:
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
          to label %bb.c unwind label %bb.b, !dbg !598

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %1) #17
          to label %bb.h unwind label %bb.g, !dbg !599

bb.c:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.e, label %bb.d, !dbg !600

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedRNtNtB4_4attr4MetaNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.f unwind label %bb.b, !dbg !601

bb.e:                                             ; preds = %bb.f, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !dbg !602
  ret void, !dbg !603

bb.f:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !604
  %3 = zext i32 %i.c to i64, !dbg !604
  %4 = shl nuw i64 %3, 32, !dbg !604
  %5 = or disjoint i64 %4, 1, !dbg !604
  store i64 %5, ptr %i.d, align 8, !dbg !604
  br label %bb.e, !dbg !605

bb.g:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !606
  unreachable, !dbg !606

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !606
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPuEE4withNCNvMs3_B6_BF_7replace0B1s_ECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !607 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !637, !nonnull !107, !noundef !107
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !dbg !638, !inline_history !608 ; 3 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !639
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !640

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18, !dbg !641
  unreachable, !dbg !641

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !dbg !642, !noundef !107
  store ptr %1, ptr %i.a, align 8, !dbg !643
  ret ptr %i.c, !dbg !644
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !649, !range !164, !noundef !107
  %i.b = icmp eq i64 %i.a, -1, !dbg !649
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !649

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.a
  ret void, !dbg !649

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.d, !dbg !650

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7fhJ7v7hOxk_18foundations_macros.exit.i.i unwind label %bb.e, !dbg !651

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !650
  unreachable, !dbg !650

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7fhJ7v7hOxk_18foundations_macros.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !650

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !652
  br label %bb.b, !dbg !649
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTdNtNtCs1xwejQucwHj_5alloc6string6StringEEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !658 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !658, !range !164, !noundef !107
  %i.c = icmp eq i64 %i.b, -1, !dbg !658
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !658

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.a
  ret void, !dbg !658

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.d, !dbg !659

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i unwind label %bb.e, !dbg !660

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !659
  unreachable, !dbg !659

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.d, !dbg !659

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !661
  br label %bb.b, !dbg !658
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCs6bAnw1I7Lci_3syn5error5ErrorEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !35 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs6bAnw1I7Lci_3syn5error12ErrorMessageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.b, !dbg !666

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs6bAnw1I7Lci_3syn5error12ErrorMessageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs6bAnw1I7Lci_3syn5error12ErrorMessageEECs7fhJ7v7hOxk_18foundations_macros.exit.i.i unwind label %bb.c, !dbg !667

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !666
  unreachable, !dbg !666

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs6bAnw1I7Lci_3syn5error12ErrorMessageEECs7fhJ7v7hOxk_18foundations_macros.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !666

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs6bAnw1I7Lci_3syn5error12ErrorMessageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !668
  ret void, !dbg !669
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !39 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !672

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.d, !dbg !673

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !674
  ret void, !dbg !672

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !672
  unreachable, !dbg !672

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !672
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !41 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !677

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.d, !dbg !678

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !679
  ret void, !dbg !677

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !677
  unreachable, !dbg !677

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !677
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !43 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !682

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.d, !dbg !683

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !684
  ret void, !dbg !682

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !682
  unreachable, !dbg !682

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RNvXss_NtCse4VeaA6Ikg_11proc_macro23impNtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRReE2eqCs7fhJ7v7hOxk_18foundations_macros:bb.a
bb.d:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %common.resume unwind label %bb.g, !dbg !2451, !noalias !2438

bb.e:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.f, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2452, !prof !134

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18
          to label %.noexc.i.i unwind label %bb.d, !dbg !2453, !noalias !2438

.noexc.i.i:                                       ; preds = %bb.f
  unreachable, !dbg !2453

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2454, !noalias !2438
  unreachable, !dbg !2454

common.resume:                                    ; preds = %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !2455

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2456, !noalias !2439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2457, !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2451, !noalias !2437
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2458
  %.val6 = load i64, ptr %i.n, align 8, !dbg !2458, !noundef !107
  %i.o = icmp eq i64 %.val6, %.val1.i, !dbg !2459
  br i1 %i.o, label %bb.h, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit, !dbg !2459

bb.h:                                             ; preds = %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2458
  %.val5 = load ptr, ptr %i.p, align 8, !dbg !2458, !nonnull !107, !noundef !107
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.val5, ptr nonnull readonly %.val.i, i64 %.val1.i), !dbg !2460
  %i.q = icmp eq i32 %bcmp.i, 0, !dbg !2460
  br label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit, !dbg !2461

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.h, %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit
  %.sroa.0.0.i = phi i1 [ %i.q, %bb.h ], [ false, %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit ], !dbg !2462
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.i, !dbg !2463

bb.i:                                             ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.j, !dbg !2464

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2463
  unreachable, !dbg !2463

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !2465
  br label %bb.k, !dbg !2466

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit ]
  ret i1 %.sroa.0.0.in, !dbg !2467
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXss_NtCse4VeaA6Ikg_11proc_macro23impNtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2468 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !dbg !2496, !nonnull !107, !noundef !107 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2496
  %.val2 = load i64, ptr %i.e, align 8, !dbg !2496, !noundef !107 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2497
  %i.g = load i8, ptr %i.f, align 8, !dbg !2497, !range !242, !noundef !107
  %.not = icmp eq i8 %i.g, 2, !dbg !2497
  br i1 %.not, label %bb.c, label %bb.b, !dbg !2498

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsk_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eqCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val2), !dbg !2499
  br label %bb.k, !dbg !2500

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2501, !noalias !2493
  store i64 0, ptr %i.c, align 8, !dbg !2502, !noalias !2493
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2502
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2502, !noalias !2493
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2502
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2502, !noalias !2493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2503, !noalias !2493
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2504
  store i64 1610612768, ptr %i.i, align 8, !dbg !2504, !noalias !2493
  store ptr %i.c, ptr %i.b, align 8, !dbg !2504, !noalias !2493
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2504
  store ptr @10, ptr %i.j, align 8, !dbg !2504, !noalias !2493
  %i.k = invoke noundef zeroext i1 @_RNvXsN_Csa5ERaWwhjCQ_10proc_macroNtB5_5IdentNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !dbg !2505, !noalias !2494

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %common.resume unwind label %bb.g, !dbg !2506, !noalias !2494

bb.e:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.f, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2507, !prof !134

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18
          to label %.noexc.i.i unwind label %bb.d, !dbg !2508, !noalias !2494

.noexc.i.i:                                       ; preds = %bb.f
  unreachable, !dbg !2508

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2509, !noalias !2494
  unreachable, !dbg !2509

common.resume:                                    ; preds = %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !2510

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2511, !noalias !2495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2512, !noalias !2493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2506, !noalias !2493
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2513
  %.val7 = load i64, ptr %i.n, align 8, !dbg !2513, !noundef !107
  %i.o = icmp eq i64 %.val7, %.val2, !dbg !2514
  br i1 %i.o, label %bb.h, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit, !dbg !2514

bb.h:                                             ; preds = %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2513
  %.val6 = load ptr, ptr %i.p, align 8, !dbg !2513, !nonnull !107, !noundef !107
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.val6, ptr nonnull readonly %.val, i64 %.val2), !dbg !2515
  %i.q = icmp eq i32 %bcmp.i, 0, !dbg !2515
  br label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit, !dbg !2516

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.h, %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit
  %.sroa.0.0.i = phi i1 [ %i.q, %bb.h ], [ false, %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs7fhJ7v7hOxk_18foundations_macros.exit ], !dbg !2517
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.i, !dbg !2518

bb.i:                                             ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.j, !dbg !2519

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2518
  unreachable, !dbg !2518

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !2520
  br label %bb.k, !dbg !2521

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit ]
  ret i1 %.sroa.0.0.in, !dbg !2522
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsu_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB5_4IterNtNtBb_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 !dbg !2523 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0), !dbg !2530
  %i.b = extractvalue { ptr, ptr } %i.a, 0, !dbg !2530
  ret ptr %i.b, !dbg !2531
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsz_Cse4VeaA6Ikg_11proc_macro2NtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eqCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !2532 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call noundef zeroext i1 @_RNvXss_NtCse4VeaA6Ikg_11proc_macro23impNtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !2534
  ret i1 %i.c, !dbg !2535
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 !dbg !2536 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCs1xwejQucwHj_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs7fhJ7v7hOxk_18foundations_macros.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @10, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !2543, !inline_history !2537
  ret i1 %i.a, !dbg !2544
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_exprCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2545 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 8 uses
  %i.g = load i64, ptr %1, align 8, !dbg !2617, !range !256, !noundef !107
  switch i64 %i.g, label %bb.b [
    i64 14, label %bb.c
    i64 19, label %bb.d
  ], !dbg !2618

bb.b:                                             ; preds = %bb.a
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error20unexpected_expr_type(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1), !dbg !2619
  br label %bb.v, !dbg !2620

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !2621
  %i.i = load ptr, ptr %i.h, align 8, !dbg !2621, !nonnull !107, !align !236, !noundef !107
  call fastcc void @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_exprCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.i), !dbg !2622
  br label %bb.v, !dbg !2622

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !2623 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602), !dbg !2624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2625
  %i.k = load i64, ptr %i.j, align 8, !dbg !2625, !range !257, !alias.scope !2602, !noundef !107
  %i.l = xor i64 %i.k, -9223372036854775808, !dbg !2625
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 8), !dbg !2625
  switch i64 %i.m, label %bb.e [
    i64 0, label %bb.i
    i64 4, label %bb.f
    i64 7, label %bb.g
  ], !dbg !2626

bb.e:                                             ; preds = %bb.d
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error19unexpected_lit_type(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j), !dbg !2627, !noalias !2603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !2628, !noalias !2604
  br label %bb.m, !dbg !2629

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !2630
  %i.o = tail call noundef i32 @_RNvMs2_NtCs6bAnw1I7Lci_3syn3litNtB5_7LitChar5value(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n), !dbg !2631, !noalias !2603 ; 0 uses
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error15unexpected_type(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4), !dbg !2632, !noalias !2603
  br label %bb.m, !dbg !2633

bb.g:                                             ; preds = %bb.d
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error15unexpected_type(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4), !dbg !2634, !noalias !2604
  br label %bb.m, !dbg !2635

bb.h:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #17
          to label %common.resume unwind label %bb.u, !dbg !2636, !noalias !2603

bb.i:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !2637
  call void @_RNvMNtCs6bAnw1I7Lci_3syn3litNtB2_6LitStr5value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !dbg !2638, !noalias !2603
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2639
  %.val.i = load ptr, ptr %i.r, align 8, !dbg !2639, !noalias !2604, !nonnull !107, !noundef !107
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2639
  %.val1.i = load i64, ptr %i.s, align 8, !dbg !2639, !noalias !2604, !noundef !107
  invoke void @_RNvXs2_NtCsje5z0uo7eGy_12darling_core9from_metaNtNtCs1xwejQucwHj_5alloc6string6StringNtB5_8FromMeta11from_string(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.j unwind label %bb.h, !dbg !2640, !noalias !2603

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i unwind label %bb.k, !dbg !2641, !noalias !2603

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.l, !dbg !2642, !noalias !2603

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2641, !noalias !2603
  unreachable, !dbg !2641

common.resume:                                    ; preds = %bb.x, %bb.h, %bb.k, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.x, %bb.o ], [ %i.t, %bb.k ], [ %i.ag, %bb.x ]
  resume { ptr, i32 } %common.resume.op, !dbg !2643

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !2644, !noalias !2603
  br label %bb.m, !dbg !2636

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i, %bb.g, %bb.f, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !2605), !dbg !2645
  %i.v = load i64, ptr %i.e, align 8, !dbg !2646, !range !164, !alias.scope !2605, !noalias !2604, !noundef !107
  %.not.i.i = icmp eq i64 %i.v, -1, !dbg !2646
  br i1 %.not.i.i, label %bb.t, label %bb.n, !dbg !2647

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2648, !noalias !2606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !2648, !noalias !2607
  %i.w = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b)
          to label %bb.p unwind label %bb.o, !dbg !2649, !noalias !2608

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %i.b) #17
          to label %common.resume unwind label %bb.s, !dbg !2650, !noalias !2609

bb.p:                                             ; preds = %bb.n
  br i1 %i.w, label %_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_value0Cs7fhJ7v7hOxk_18foundations_macros.exit.i.i, label %bb.q, !dbg !2651

bb.q:                                             ; preds = %bb.p
  %i.y = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_3lit3LitNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.r unwind label %bb.o, !dbg !2652, !noalias !2609

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !2653
  %2 = zext i32 %i.y to i64, !dbg !2653
  %3 = shl nuw i64 %2, 32, !dbg !2653
  %4 = or disjoint i64 %3, 1, !dbg !2653
  store i64 %4, ptr %i.z, align 8, !dbg !2653, !alias.scope !2610, !noalias !2606
  br label %_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_value0Cs7fhJ7v7hOxk_18foundations_macros.exit.i.i, !dbg !2654

bb.s:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2655, !noalias !2609
  unreachable, !dbg !2655

_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_value0Cs7fhJ7v7hOxk_18foundations_macros.exit.i.i: ; preds = %bb.r, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !2656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2657, !noalias !2606
  br label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_valueCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2658

bb.t:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2659
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !dbg !2659
  store i64 -1, ptr %i.f, align 8, !dbg !2660
  br label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_valueCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2661

bb.u:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2662, !noalias !2603
  unreachable, !dbg !2662

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_valueCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_value0Cs7fhJ7v7hOxk_18foundations_macros.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2663
  br label %bb.v, !dbg !2624

bb.v:                                             ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_valueCs7fhJ7v7hOxk_18foundations_macros.exit, %bb.c, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2611), !dbg !2664
  %i.ae = load i64, ptr %i.f, align 8, !dbg !2665, !range !164, !noundef !107
  %.not.i = icmp eq i64 %i.ae, -1, !dbg !2665
  br i1 %.not.i, label %bb.ac, label %bb.w, !dbg !2666

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2667, !noalias !2612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.f, i64 80, i1 false), !dbg !2667
  %i.af = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a)
          to label %bb.y unwind label %bb.x, !dbg !2668, !noalias !2613

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %i.a) #17
          to label %common.resume unwind label %bb.ab, !dbg !2669, !noalias !2614

bb.y:                                             ; preds = %bb.w
  br i1 %i.af, label %_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_expr0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.z, !dbg !2670

bb.z:                                             ; preds = %bb.y
  %i.ah = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4expr4ExprNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
          to label %bb.aa unwind label %bb.x, !dbg !2671, !noalias !2614

bb.aa:                                            ; preds = %bb.z
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !2672
  %5 = zext i32 %i.ah to i64, !dbg !2672
  %6 = shl nuw i64 %5, 32, !dbg !2672
  %7 = or disjoint i64 %6, 1, !dbg !2672
  store i64 %7, ptr %i.ai, align 8, !dbg !2672, !alias.scope !2615, !noalias !2612
  br label %_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_expr0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !2673

bb.ab:                                            ; preds = %bb.x
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2674, !noalias !2614
  unreachable, !dbg !2674

_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_expr0Cs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.aa, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !dbg !2675, !noalias !2616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2676, !noalias !2612
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errB1k_NCNvYBI_NtNtB1o_9from_meta8FromMeta9from_expr0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2677

bb.ac:                                            ; preds = %bb.v
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !2678
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !dbg !2678
  store i64 -1, ptr %0, align 8, !dbg !2679, !alias.scope !2611
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errB1k_NCNvYBI_NtNtB1o_9from_meta8FromMeta9from_expr0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2680

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errB1k_NCNvYBI_NtNtB1o_9from_meta8FromMeta9from_expr0ECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_expr0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, %bb.ac
  ret void, !dbg !2681
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_metaCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2682 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 6 uses
  %i.i = load i64, ptr %1, align 8, !dbg !2766, !range !260, !noundef !107 ; 2 uses
  %i.j = add nsw i64 %i.i, -40, !dbg !2766
  %i.k = icmp samesign ugt i64 %i.i, 39, !dbg !2766
  %i.l = select i1 %i.k, i64 %i.j, i64 2, !dbg !2766
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.k
  ], !dbg !2767

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !2768

bb.c:                                             ; preds = %bb.a
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error18unsupported_format(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4), !dbg !2769
  br label %bb.l, !dbg !2770

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !2771 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2743), !dbg !2772
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744), !dbg !2772
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745), !dbg !2773
  %i.n = load i64, ptr %i.m, align 8, !dbg !2774, !range !164, !alias.scope !2746, !noundef !107
  %i.o = icmp eq i64 %i.n, -1, !dbg !2774
  br i1 %i.o, label %bb.e, label %bb.f, !dbg !2774

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !2775
  %i.q = tail call noundef nonnull ptr @_RNvXs1_NtCse4VeaA6Ikg_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !2776, !noalias !2747
  br label %_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !dbg !2777

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2748), !dbg !2778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2779, !noalias !2749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2779, !noalias !2749
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !2779 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !dbg !2780, !alias.scope !2750, !noundef !107
  %.not.i.i.i.i = icmp eq i32 %i.s, 0, !dbg !2780
  br i1 %.not.i.i.i.i, label %_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i, label %bb.g, !dbg !2781

bb.g:                                             ; preds = %bb.f
  %i.t = tail call noundef i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r), !dbg !2782, !noalias !2751
  br label %_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i, !dbg !2783

_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.u = phi i32 [ %i.t, %bb.g ], [ 0, %bb.f ], !dbg !2784 ; 3 uses
  store i32 %i.u, ptr %i.d, align 4, !dbg !2779, !noalias !2752
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i unwind label %bb.h, !dbg !2785, !noalias !2751

bb.h:                                             ; preds = %_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i32 %i.u, 0, !dbg !2786
  br i1 %i.w, label %common.resume, label %bb.i, !dbg !2786

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %common.resume unwind label %bb.j, !dbg !2787, !noalias !2751

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2788, !noalias !2751
  unreachable, !dbg !2788

common.resume:                                    ; preds = %bb.u, %bb.w, %bb.n, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.w ], [ %i.v, %bb.h ], [ %i.ad, %bb.n ], [ %i.v, %bb.i ], [ %i.aj, %bb.u ]
  resume { ptr, i32 } %common.resume.op, !dbg !2789

_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.0.0.copyload1.i = load i64, ptr %i.c, align 8, !dbg !2788, !noalias !2753
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2788
  %.sroa.3.0.copyload3.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i, align 8, !dbg !2788, !noalias !2753
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2788
  %.sroa.4.0.copyload5.i = load i64, ptr %.sroa.4.0..sroa_idx4.i, align 8, !dbg !2788, !noalias !2753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2790, !noalias !2749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2790, !noalias !2749
  br label %_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !dbg !2777

_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.e, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i
  %.sroa.46.0.i = phi i32 [ undef, %bb.e ], [ %i.u, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.4.0.i = phi i64 [ undef, %bb.e ], [ %.sroa.4.0.copyload5.i, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.3.0.i = phi ptr [ %i.q, %bb.e ], [ %.sroa.3.0.copyload3.i, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !2791
  %.sroa.0.0.i = phi i64 [ -1, %bb.e ], [ %.sroa.0.0.copyload1.i, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !2791
  store i64 %.sroa.0.0.i, ptr %i.e, align 8, !dbg !2792, !alias.scope !2743
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2792
  store ptr %.sroa.3.0.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !2792, !alias.scope !2743
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2792
  store i64 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !2792, !alias.scope !2743
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !2792
  store i32 %.sroa.46.0.i, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !2792, !alias.scope !2743
  call void @_RNvMNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_metaNtB2_10NestedMeta15parse_meta_list(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e), !dbg !2793
  %i.y = load i64, ptr %i.f, align 8, !dbg !2794, !range !132, !alias.scope !2754, !noundef !107
  %i.z = trunc nuw i64 %i.y to i1, !dbg !2795
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !2796 ; 2 uses
  br i1 %i.z, label %bb.t, label %bb.v, !dbg !2795

bb.k:                                             ; preds = %bb.a
  call fastcc void @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_exprCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1), !dbg !2797
  br label %bb.l, !dbg !2797

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.k, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2755), !dbg !2798
  call void @llvm.experimental.noalias.scope.decl(metadata !2756), !dbg !2798
  %i.ab = load i64, ptr %i.h, align 8, !dbg !2799, !range !164, !alias.scope !2756, !noundef !107
  %.not.i = icmp eq i64 %i.ab, -1, !dbg !2799
  br i1 %.not.i, label %bb.s, label %bb.m, !dbg !2800

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2801, !noalias !2757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.h, i64 80, i1 false), !dbg !2801, !noalias !2758
  %i.ac = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b)
          to label %bb.o unwind label %bb.n, !dbg !2802, !noalias !2759

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %i.b) #17
          to label %common.resume unwind label %bb.r, !dbg !2803, !noalias !2760

bb.o:                                             ; preds = %bb.m
  br i1 %i.ac, label %_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_meta0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.p, !dbg !2804

bb.p:                                             ; preds = %bb.o
  %i.ae = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4attr4MetaNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1)
          to label %bb.q unwind label %bb.n, !dbg !2805, !noalias !2760

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !2806
  %2 = zext i32 %i.ae to i64, !dbg !2806
  %3 = shl nuw i64 %2, 32, !dbg !2806
  %4 = or disjoint i64 %3, 1, !dbg !2806
  store i64 %4, ptr %i.af, align 8, !dbg !2806, !alias.scope !2761, !noalias !2757
  br label %_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_meta0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !2807

bb.r:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2808, !noalias !2760
  unreachable, !dbg !2808

_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_meta0Cs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.q, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !2809, !noalias !2762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2810, !noalias !2757
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errB1k_NCNvYBI_NtNtB1o_9from_meta8FromMeta9from_meta0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2811

bb.s:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2812
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !dbg !2812, !alias.scope !2763
  store i64 -1, ptr %0, align 8, !dbg !2813, !alias.scope !2755
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errB1k_NCNvYBI_NtNtB1o_9from_meta8FromMeta9from_meta0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2814

bb.t:                                             ; preds = %_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2815, !noalias !2764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !2816
  call void @_RNvXs3_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs6bAnw1I7Lci_3syn5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !2817, !noalias !2765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2818, !noalias !2764
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errB1k_NCNvYBI_NtNtB1o_9from_meta8FromMeta9from_meta0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2819

bb.u:                                             ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #17
          to label %common.resume unwind label %bb.y, !dbg !2820

bb.v:                                             ; preds = %_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !2793
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error18unsupported_format(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 4)
          to label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_listCs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.u, !dbg !2821

_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_listCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.v
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.w, !dbg !2822

bb.w:                                             ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_listCs7fhJ7v7hOxk_18foundations_macros.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.x, !dbg !2823

bb.x:                                             ; preds = %bb.w
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2822
  unreachable, !dbg !2822

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_listCs7fhJ7v7hOxk_18foundations_macros.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !2824
  br label %bb.l, !dbg !2820

bb.y:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2825
  unreachable, !dbg !2825

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errB1k_NCNvYBI_NtNtB1o_9from_meta8FromMeta9from_meta0ECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.s, %_RNCNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_meta0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, %bb.t
  ret void, !dbg !2826
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_exprCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2827 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 8 uses
  %i.g = load i64, ptr %1, align 8, !dbg !2897, !range !256, !noundef !107
  switch i64 %i.g, label %bb.b [
    i64 14, label %bb.c
    i64 19, label %bb.d
  ], !dbg !2898

bb.b:                                             ; preds = %bb.a
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error20unexpected_expr_type(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1), !dbg !2899
  br label %bb.v, !dbg !2900

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !2901
  %i.i = load ptr, ptr %i.h, align 8, !dbg !2901, !nonnull !107, !align !236, !noundef !107
  call fastcc void @_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_exprCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.i), !dbg !2902
  br label %bb.v, !dbg !2902

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !2903 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2882), !dbg !2904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2905
  %i.k = load i64, ptr %i.j, align 8, !dbg !2905, !range !257, !alias.scope !2882, !noundef !107
  %i.l = xor i64 %i.k, -9223372036854775808, !dbg !2905
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 8), !dbg !2905
  switch i64 %i.m, label %bb.e [
    i64 0, label %bb.i
    i64 4, label %bb.f
    i64 7, label %bb.g
  ], !dbg !2906

bb.e:                                             ; preds = %bb.d
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error19unexpected_lit_type(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j), !dbg !2907, !noalias !2883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !2908, !noalias !2884
  br label %bb.m, !dbg !2909

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !2910
  %i.o = tail call noundef i32 @_RNvMs2_NtCs6bAnw1I7Lci_3syn3litNtB5_7LitChar5value(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n), !dbg !2911, !noalias !2883 ; 0 uses
  call void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error15unexpected_type(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4), !dbg !2912, !noalias !2883
  br label %bb.m, !dbg !2913

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44, !dbg !2914
  %i.q = load i8, ptr %i.p, align 4, !dbg !2914, !range !272, !alias.scope !2882, !noundef !107
  %i.r = trunc nuw i8 %i.q to i1, !dbg !2914
  call void @_RNvXs_NtCsje5z0uo7eGy_12darling_core9from_metabNtB4_8FromMeta9from_bool(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, i1 noundef zeroext %i.r), !dbg !2915, !noalias !2884
  br label %bb.m, !dbg !2915

bb.h:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #17
          to label %common.resume unwind label %bb.u, !dbg !2916, !noalias !2883

bb.i:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !2917
  call void @_RNvMNtCs6bAnw1I7Lci_3syn3litNtB2_6LitStr5value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !dbg !2918, !noalias !2883
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2919
  %.val.i = load ptr, ptr %i.u, align 8, !dbg !2919, !noalias !2884, !nonnull !107, !noundef !107
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2919
  %.val1.i = load i64, ptr %i.v, align 8, !dbg !2919, !noalias !2884, !noundef !107
  invoke void @_RNvXs_NtCsje5z0uo7eGy_12darling_core9from_metabNtB4_8FromMeta11from_string(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.j unwind label %bb.h, !dbg !2920, !noalias !2883

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i unwind label %bb.k, !dbg !2921, !noalias !2883

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.l, !dbg !2922, !noalias !2883

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2921, !noalias !2883
  unreachable, !dbg !2921

common.resume:                                    ; preds = %bb.x, %bb.h, %bb.k, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.aa, %bb.o ], [ %i.w, %bb.k ], [ %i.ak, %bb.x ]
  resume { ptr, i32 } %common.resume.op, !dbg !2923

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !2924, !noalias !2883
  br label %bb.m, !dbg !2916

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i, %bb.g, %bb.f, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !2885), !dbg !2925
  %i.y = load i64, ptr %i.e, align 8, !dbg !2926, !range !164, !alias.scope !2885, !noalias !2884, !noundef !107
  %.not.i.i = icmp eq i64 %i.y, -1, !dbg !2926
  br i1 %.not.i.i, label %bb.t, label %bb.n, !dbg !2927

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2928, !noalias !2886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !2928, !noalias !2887
  %i.z = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b)
          to label %bb.p unwind label %bb.o, !dbg !2929, !noalias !2888

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %i.b) #17
          to label %common.resume unwind label %bb.s, !dbg !2930, !noalias !2889

bb.p:                                             ; preds = %bb.n
  br i1 %i.z, label %_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_value0Cs7fhJ7v7hOxk_18foundations_macros.exit.i.i, label %bb.q, !dbg !2931

bb.q:                                             ; preds = %bb.p
  %i.ab = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_3lit3LitNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.r unwind label %bb.o, !dbg !2932, !noalias !2889

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !2933
  %2 = zext i32 %i.ab to i64, !dbg !2933
  %3 = shl nuw i64 %2, 32, !dbg !2933
  %4 = or disjoint i64 %3, 1, !dbg !2933
  store i64 %4, ptr %i.ac, align 8, !dbg !2933, !alias.scope !2890, !noalias !2886
  br label %_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_value0Cs7fhJ7v7hOxk_18foundations_macros.exit.i.i, !dbg !2934

bb.s:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2935, !noalias !2889
  unreachable, !dbg !2935

_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_value0Cs7fhJ7v7hOxk_18foundations_macros.exit.i.i: ; preds = %bb.r, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !2936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2937, !noalias !2886
  br label %_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_valueCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2938

bb.t:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2939
  %i.af = load i8, ptr %i.ae, align 8, !dbg !2939, !range !272, !alias.scope !2885, !noalias !2884, !noundef !107
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !2940
  store i8 %i.af, ptr %i.ag, align 8, !dbg !2940
  store i64 -1, ptr %i.f, align 8, !dbg !2940
  br label %_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_valueCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2941

bb.u:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2942, !noalias !2883
  unreachable, !dbg !2942

_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_valueCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_value0Cs7fhJ7v7hOxk_18foundations_macros.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2943
  br label %bb.v, !dbg !2904

bb.v:                                             ; preds = %_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta10from_valueCs7fhJ7v7hOxk_18foundations_macros.exit, %bb.c, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2891), !dbg !2944
  %i.ai = load i64, ptr %i.f, align 8, !dbg !2945, !range !164, !noundef !107
  %.not.i = icmp eq i64 %i.ai, -1, !dbg !2945
  br i1 %.not.i, label %bb.ac, label %bb.w, !dbg !2946

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2947, !noalias !2892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.f, i64 80, i1 false), !dbg !2947
  %i.aj = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a)
          to label %bb.y unwind label %bb.x, !dbg !2948, !noalias !2893

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %i.a) #17
          to label %common.resume unwind label %bb.ab, !dbg !2949, !noalias !2894

bb.y:                                             ; preds = %bb.w
  br i1 %i.aj, label %_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_expr0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.z, !dbg !2950

bb.z:                                             ; preds = %bb.y
  %i.al = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4expr4ExprNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
          to label %bb.aa unwind label %bb.x, !dbg !2951, !noalias !2894

bb.aa:                                            ; preds = %bb.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !2952
  %5 = zext i32 %i.al to i64, !dbg !2952
  %6 = shl nuw i64 %5, 32, !dbg !2952
  %7 = or disjoint i64 %6, 1, !dbg !2952
  store i64 %7, ptr %i.am, align 8, !dbg !2952, !alias.scope !2895, !noalias !2892
  br label %_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_expr0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !2953

bb.ab:                                            ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !2954, !noalias !2894
  unreachable, !dbg !2954

_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_expr0Cs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.aa, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !dbg !2955, !noalias !2896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2956, !noalias !2892
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultbNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errBJ_NCNvYbNtNtBN_9from_meta8FromMeta9from_expr0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2957

bb.ac:                                            ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !2958
  %i.ap = load i8, ptr %i.ao, align 8, !dbg !2958, !range !272, !noundef !107
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2959
  store i8 %i.ap, ptr %i.aq, align 8, !dbg !2959, !alias.scope !2891
  store i64 -1, ptr %0, align 8, !dbg !2959, !alias.scope !2891
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultbNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errBJ_NCNvYbNtNtBN_9from_meta8FromMeta9from_expr0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !2960

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultbNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errBJ_NCNvYbNtNtBN_9from_meta8FromMeta9from_expr0ECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_expr0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, %bb.ac
  ret void, !dbg !2961
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_metaCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2962 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 6 uses
  %i.i = load i64, ptr %1, align 8, !dbg !3043, !range !260, !noundef !107 ; 2 uses
  %i.j = add nsw i64 %i.i, -40, !dbg !3043
  %i.k = icmp samesign ugt i64 %i.i, 39, !dbg !3043
  %i.l = select i1 %i.k, i64 %i.j, i64 2, !dbg !3043
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.k
  ], !dbg !3044

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !3045

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs_NtCsje5z0uo7eGy_12darling_core9from_metabNtB4_8FromMeta9from_word(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h), !dbg !3046
  br label %bb.l, !dbg !3046

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !3047 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3021), !dbg !3048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3022), !dbg !3048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3023), !dbg !3049
  %i.n = load i64, ptr %i.m, align 8, !dbg !3050, !range !164, !alias.scope !3024, !noundef !107
  %i.o = icmp eq i64 %i.n, -1, !dbg !3050
  br i1 %i.o, label %bb.e, label %bb.f, !dbg !3050

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !3051
  %i.q = tail call noundef nonnull ptr @_RNvXs1_NtCse4VeaA6Ikg_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p), !dbg !3052, !noalias !3025
  br label %_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !dbg !3053

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3026), !dbg !3054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3055, !noalias !3027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3055, !noalias !3027
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !3055 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !dbg !3056, !alias.scope !3028, !noundef !107
  %.not.i.i.i.i = icmp eq i32 %i.s, 0, !dbg !3056
  br i1 %.not.i.i.i.i, label %_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i, label %bb.g, !dbg !3057

bb.g:                                             ; preds = %bb.f
  %i.t = tail call noundef i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r), !dbg !3058, !noalias !3029
  br label %_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i, !dbg !3059

_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.u = phi i32 [ %i.t, %bb.g ], [ 0, %bb.f ], !dbg !3060 ; 3 uses
  store i32 %i.u, ptr %i.d, align 4, !dbg !3055, !noalias !3030
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i unwind label %bb.h, !dbg !3061, !noalias !3029

bb.h:                                             ; preds = %_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i32 %i.u, 0, !dbg !3062
  br i1 %i.w, label %common.resume, label %bb.i, !dbg !3062

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %common.resume unwind label %bb.j, !dbg !3063, !noalias !3029

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !3064, !noalias !3029
  unreachable, !dbg !3064

common.resume:                                    ; preds = %bb.u, %bb.w, %bb.n, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.w ], [ %i.v, %bb.h ], [ %i.ad, %bb.n ], [ %i.v, %bb.i ], [ %i.ak, %bb.u ]
  resume { ptr, i32 } %common.resume.op, !dbg !3065

_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs11_Csa5ERaWwhjCQ_10proc_macroNtB6_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.0.0.copyload1.i = load i64, ptr %i.c, align 8, !dbg !3064, !noalias !3031
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3064
  %.sroa.3.0.copyload3.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i, align 8, !dbg !3064, !noalias !3031
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !3064
  %.sroa.4.0.copyload5.i = load i64, ptr %.sroa.4.0..sroa_idx4.i, align 8, !dbg !3064, !noalias !3031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3066, !noalias !3027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3066, !noalias !3027
  br label %_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !dbg !3053

_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.e, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i
  %.sroa.46.0.i = phi i32 [ undef, %bb.e ], [ %i.u, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.4.0.i = phi i64 [ undef, %bb.e ], [ %.sroa.4.0.copyload5.i, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.3.0.i = phi ptr [ %i.q, %bb.e ], [ %.sroa.3.0.copyload3.i, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !3067
  %.sroa.0.0.i = phi i64 [ -1, %bb.e ], [ %.sroa.0.0.copyload1.i, %_RNvXsA_NtCse4VeaA6Ikg_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !3067
  store i64 %.sroa.0.0.i, ptr %i.e, align 8, !dbg !3068, !alias.scope !3021
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3068
  store ptr %.sroa.3.0.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !3068, !alias.scope !3021
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !3068
  store i64 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !3068, !alias.scope !3021
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !3068
  store i32 %.sroa.46.0.i, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !3068, !alias.scope !3021
  call void @_RNvMNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_metaNtB2_10NestedMeta15parse_meta_list(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e), !dbg !3069
  %i.y = load i64, ptr %i.f, align 8, !dbg !3070, !range !132, !alias.scope !3032, !noundef !107
  %i.z = trunc nuw i64 %i.y to i1, !dbg !3071
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3072 ; 2 uses
  br i1 %i.z, label %bb.t, label %bb.v, !dbg !3071

bb.k:                                             ; preds = %bb.a
  call fastcc void @_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_exprCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1), !dbg !3073
  br label %bb.l, !dbg !3073

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.k, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !3033), !dbg !3074
  call void @llvm.experimental.noalias.scope.decl(metadata !3034), !dbg !3074
  %i.ab = load i64, ptr %i.h, align 8, !dbg !3075, !range !164, !alias.scope !3034, !noundef !107
  %.not.i = icmp eq i64 %i.ab, -1, !dbg !3075
  br i1 %.not.i, label %bb.s, label %bb.m, !dbg !3076

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3077, !noalias !3035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.h, i64 80, i1 false), !dbg !3077, !noalias !3036
  %i.ac = invoke noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b)
          to label %bb.o unwind label %bb.n, !dbg !3078, !noalias !3037

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsje5z0uo7eGy_12darling_core5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(80) %i.b) #17
          to label %common.resume unwind label %bb.r, !dbg !3079, !noalias !3038

bb.o:                                             ; preds = %bb.m
  br i1 %i.ac, label %_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_meta0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.p, !dbg !3080

bb.p:                                             ; preds = %bb.o
  %i.ae = invoke noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4attr4MetaNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1)
          to label %bb.q unwind label %bb.n, !dbg !3081, !noalias !3038

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !3082
  %2 = zext i32 %i.ae to i64, !dbg !3082
  %3 = shl nuw i64 %2, 32, !dbg !3082
  %4 = or disjoint i64 %3, 1, !dbg !3082
  store i64 %4, ptr %i.af, align 8, !dbg !3082, !alias.scope !3039, !noalias !3035
  br label %_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_meta0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !3083

bb.r:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !3084, !noalias !3038
  unreachable, !dbg !3084

_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_meta0Cs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.q, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !3085, !noalias !3040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3086, !noalias !3035
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultbNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errBJ_NCNvYbNtNtBN_9from_meta8FromMeta9from_meta0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !3087

bb.s:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !3088
  %i.ai = load i8, ptr %i.ah, align 8, !dbg !3088, !range !272, !alias.scope !3034, !noundef !107
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3089
  store i8 %i.ai, ptr %i.aj, align 8, !dbg !3089, !alias.scope !3033
  store i64 -1, ptr %0, align 8, !dbg !3089, !alias.scope !3033
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultbNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errBJ_NCNvYbNtNtBN_9from_meta8FromMeta9from_meta0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !3090

bb.t:                                             ; preds = %_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3091, !noalias !3041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !3092
  call void @_RNvXs3_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs6bAnw1I7Lci_3syn5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !3093, !noalias !3042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3094, !noalias !3041
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultbNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errBJ_NCNvYbNtNtBN_9from_meta8FromMeta9from_meta0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !3095

bb.u:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #17
          to label %common.resume unwind label %bb.y, !dbg !3096

bb.v:                                             ; preds = %_RNvXsK_Cse4VeaA6Ikg_11proc_macro2NtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !3069
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error18unsupported_format(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 4)
          to label %_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_listCs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.u, !dbg !3097

_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_listCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.v
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.w, !dbg !3098

bb.w:                                             ; preds = %_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_listCs7fhJ7v7hOxk_18foundations_macros.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.x, !dbg !3099

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !3098
  unreachable, !dbg !3098

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_listCs7fhJ7v7hOxk_18foundations_macros.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !3100
  br label %bb.l, !dbg !3096

bb.y:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !dbg !3101
  unreachable, !dbg !3101

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultbNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errBJ_NCNvYbNtNtBN_9from_meta8FromMeta9from_meta0ECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.s, %_RNCNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_meta0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, %bb.t
  ret void, !dbg !3102
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYRNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens17into_token_streamCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvMNtCs6bAnw1I7Lci_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvMNtCs6bAnw1I7Lci_3syn5errorNtB4_5Error3new3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB6_17ErrorUnknownValue9with_altsReRAB1l_j1_ECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error3new(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB6_17ErrorUnknownValue9with_altsReRAB1l_j2_ECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCsje5z0uo7eGy_12darling_core5error4kindNtB6_17ErrorUnknownValue9with_altsReRAB1l_j4_ECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6insertCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB5_5Error8has_span(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_3lit3LitNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4attr4MetaNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedNtNtB4_4expr4ExprNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedRNtNtB4_4attr4MetaNtB2_7Spanned4spanCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTE27bulk_build_from_sorted_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterB18_ENCINvMse_NtB8_3setINtB3V_8BTreeSetB18_E16from_sorted_iterB3a_E0EECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtCs1xwejQucwHj_5alloc6string6StringNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtB13_3vec3VecBZ_EECsje5z0uo7eGy_12darling_core(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs6bAnw1I7Lci_3syn5error12ErrorMessageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsje5z0uo7eGy_12darling_core5error5ErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCse4VeaA6Ikg_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs6bAnw1I7Lci_3syn5error12ErrorMessageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCsje5z0uo7eGy_12darling_core5error5ErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsa5ERaWwhjCQ_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCse4VeaA6Ikg_11proc_macro29TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings24impl_serde_aware_default00INtB7_5FnMutTRRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEE8call_mutBW_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCse4VeaA6Ikg_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCse4VeaA6Ikg_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0
end_hunk_1
