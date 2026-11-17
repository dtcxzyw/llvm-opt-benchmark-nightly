Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.02?download=true
inline.NumInlined: 1420
inline.NumDeleted: 394
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs0_NtCsluMP4ekZjHw_14diesel_derives12sql_functionNtB5_11StrictFnArgNtNtCshMFl0SviwmK_3syn5parse5Parse5parse:bb.a
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %.sroa.078.0.copyload = load ptr, ptr %i.f, align 8 ; 6 uses
  %.sroa.479.0.copyload = load i64, ptr %.sroa.479.0..sroa_idx, align 8 ; 6 uses
  %.sroa.580.0.copyload = load i8, ptr %.sroa.580.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.681.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.685.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.9, i64 7, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.078.0.copyload, ptr %i.g, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.479.0.copyload, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.580.0.copyload, ptr %.sroa.584.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.9)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit40

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.9, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsap_NtCshMFl0SviwmK_3syn5tokenNtB6_5ColonNtNtB8_5parse5Parse5parse(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i8 %.sroa.580.0.copyload, 2
  %i.j = icmp eq i64 %.sroa.479.0.copyload, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.078.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.078.0.copyload, i64 noundef range(i64 1, 0) %.sroa.479.0.copyload, i64 noundef 1) #16, !noalias !2649
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit

bb.f:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8, !range !19, !noundef !15 ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.022.0.copyload = load i32, ptr %i.l, align 8 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.528.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.m, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.022.0.copyload, ptr %.sroa.430.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXNtNtCshMFl0SviwmK_3syn2ty7parsingNtB4_4TypeNtNtB6_5parse5Parse5parse(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.a, ptr noundef nonnull align 8 %1)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.n = load i64, ptr %i.a, align 8, !range !23, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.612, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.612, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.534.0..sroa_idx, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.612, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612)
  %.sroa.620.sroa.6.0..sroa.620.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.620.sroa.6.0..sroa.620.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, i64 7, i1 false)
  store i64 %i.n, ptr %0, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sroa.078.0.copyload, ptr %.sroa.620.0..sroa_idx, align 8
  %.sroa.620.sroa.4.0..sroa.620.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.sroa.479.0.copyload, ptr %.sroa.620.sroa.4.0..sroa.620.0..sroa_idx.sroa_idx, align 8
  %.sroa.620.sroa.5.0..sroa.620.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %.sroa.580.0.copyload, ptr %.sroa.620.sroa.5.0..sroa.620.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %.sroa.022.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit40

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit40: ; preds = %bb.b, %bb.l, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void

bb.l:                                             ; preds = %bb.j, %bb.g
  %i.r = icmp eq i8 %.sroa.580.0.copyload, 2
  %i.s = icmp eq i64 %.sroa.479.0.copyload, 0
  %or.cond86 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond86, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit40, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.078.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.078.0.copyload, i64 noundef range(i64 1, 0) %.sroa.479.0.copyload, i64 noundef 1) #16, !noalias !2650
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit40

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXBT_NtBT_14ExternSqlBlockNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0INtB7_5FnMutTNtNtB2s_4attr9AttributeEE8call_mutBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 8)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(256) %2) unnamed_addr #0 !guid !2654 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 6 uses
  %i.b = alloca [256 x i8], align 8               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(256) %2, i64 256, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2656
  call fastcc void @_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15parse_attribute(ptr noalias noundef align 8 captures(address) dereferenceable(264) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.b), !noalias !2655
  %i.c = load i64, ptr %i.a, align 8, !range !43, !noalias !2656, !noundef !15
  switch i64 %i.c, label %bb.c [
    i64 -2, label %bb.b
    i64 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2657
  store i64 -1, ptr %0, align 8, !alias.scope !2655
  br label %_RNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXB4_NtB4_14ExternSqlBlockNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0B6_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false), !noalias !2657
  br label %_RNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXB4_NtB4_14ExternSqlBlockNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0B6_.exit

bb.d:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !2655
  br label %_RNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXB4_NtB4_14ExternSqlBlockNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0B6_.exit

_RNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXB4_NtB4_14ExternSqlBlockNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0B6_.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2656
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXs_BT_NtBT_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0INtB7_5FnMutTNtNtB2v_4attr9AttributeEE8call_mutBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 8)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(256) %2) unnamed_addr #0 !guid !2661 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 6 uses
  %i.b = alloca [256 x i8], align 8               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(256) %2, i64 256, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2663
  call fastcc void @_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15parse_attribute(ptr noalias noundef align 8 captures(address) dereferenceable(264) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.b), !noalias !2662
  %i.c = load i64, ptr %i.a, align 8, !range !43, !noalias !2663, !noundef !15
  switch i64 %i.c, label %bb.c [
    i64 -2, label %bb.b
    i64 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2664
  store i64 -1, ptr %0, align 8, !alias.scope !2662
  br label %_RNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXs_B4_NtB4_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0B6_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false), !noalias !2664
  br label %_RNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXs_B4_NtB4_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0B6_.exit

bb.d:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !2662
  br label %_RNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXs_B4_NtB4_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0B6_.exit

_RNCINvNtCsluMP4ekZjHw_14diesel_derives12sql_function16parse_attributesNCNvXs_B4_NtB4_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0E0B6_.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2663
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15expand_variadics1_0INtB7_5FnMutTTjINtNtCshMFl0SviwmK_3syn10punctuated4PairNtNtB2h_8generics12GenericParamNtNtB2h_5token5CommaEEEE8call_mutBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([472 x i8]) align 8 captures(none) dereferenceable(472) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(480) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2679 {
bb.a:
  %i.a = alloca [472 x i8], align 8               ; 11 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 15 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !15, !align !16, !noundef !15
  %.val = load ptr, ptr %i.b, align 8, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noalias !2681, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noalias !2681, !noundef !15 ; 2 uses
  %i.g = and i64 %i.f, 1152921504606846968        ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g ; 7 uses
  %.not.i.i6 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i6, label %._crit_edge, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i

bb.b:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 64
  %i.j = add nsw i64 %.sroa.5.0.i.i7, -8          ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %._crit_edge, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.k = shl i64 %i.f, 3
  %.idx = and i64 %i.k, 56                        ; 7 uses
  %.not.not.not.i.not.not.i.i9 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i9, label %._crit_edge11, label %.lr.ph

3:                                                ; preds = %.lr.ph
  %.not.not.not.i.not.not.i.i = icmp samesign eq i64 %.idx, 8
  br i1 %.not.not.not.i.not.not.i.i, label %._crit_edge11, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %3
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val3.i.i.i.1 = load i64, ptr %4, align 8, !alias.scope !2682, !noalias !2683, !noundef !15
  %5 = icmp eq i64 %.val3.i.i.i.1, %.sroa.0.0.copyload
  br i1 %5, label %.loopexit.i, label %6

6:                                                ; preds = %.lr.ph.1
  %.not.not.not.i.not.not.i.i.1 = icmp samesign eq i64 %.idx, 16
  br i1 %.not.not.not.i.not.not.i.i.1, label %._crit_edge11, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val3.i.i.i.2 = load i64, ptr %7, align 8, !alias.scope !2682, !noalias !2683, !noundef !15
  %8 = icmp eq i64 %.val3.i.i.i.2, %.sroa.0.0.copyload
  br i1 %8, label %.loopexit.i, label %9

9:                                                ; preds = %.lr.ph.2
  %.not.not.not.i.not.not.i.i.2 = icmp samesign eq i64 %.idx, 24
  br i1 %.not.not.not.i.not.not.i.i.2, label %._crit_edge11, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %9
  %10 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val3.i.i.i.3 = load i64, ptr %10, align 8, !alias.scope !2682, !noalias !2683, !noundef !15
  %11 = icmp eq i64 %.val3.i.i.i.3, %.sroa.0.0.copyload
  br i1 %11, label %.loopexit.i, label %12

12:                                               ; preds = %.lr.ph.3
  %.not.not.not.i.not.not.i.i.3 = icmp samesign eq i64 %.idx, 32
  br i1 %.not.not.not.i.not.not.i.i.3, label %._crit_edge11, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %12
  %13 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val3.i.i.i.4 = load i64, ptr %13, align 8, !alias.scope !2682, !noalias !2683, !noundef !15
  %14 = icmp eq i64 %.val3.i.i.i.4, %.sroa.0.0.copyload
  br i1 %14, label %.loopexit.i, label %15

15:                                               ; preds = %.lr.ph.4
  %.not.not.not.i.not.not.i.i.4 = icmp samesign eq i64 %.idx, 40
  br i1 %.not.not.not.i.not.not.i.i.4, label %._crit_edge11, label %bb.c

bb.c:                                             ; preds = %15
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.val3.i.i.i.5 = load i64, ptr %i.l, align 8, !alias.scope !2682, !noalias !2683, !noundef !15
  %.not.not.not.i.not.not.i.i.a = icmp eq i64 %.val3.i.i.i.5, %.sroa.0.0.copyload
  br i1 %.not.not.not.i.not.not.i.i.a, label %.loopexit.i, label %16

16:                                               ; preds = %bb.c
  %.not.not.not.i.not.not.i.i.5 = icmp samesign eq i64 %.idx, 48
  br i1 %.not.not.not.i.not.not.i.i.5, label %._crit_edge11, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %16
  %17 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.val3.i.i.i.a = load i64, ptr %17, align 8, !alias.scope !2682, !noalias !2683, !noundef !15
  %i.m = icmp eq i64 %.val3.i.i.i.a, %.sroa.0.0.copyload
  br i1 %i.m, label %.loopexit.i, label %._crit_edge11

.lr.ph:                                           ; preds = %._crit_edge
  %.val3.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !2682, !noalias !2683, !noundef !15
  %18 = icmp eq i64 %.val3.i.i.i, %.sroa.0.0.copyload
  br i1 %18, label %.loopexit.i, label %3

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i: ; preds = %bb.a, %bb.b
  %.sroa.0.05.i.i8 = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 9 uses
  %.sroa.5.0.i.i7 = phi i64 [ %i.j, %bb.b ], [ %i.g, %bb.a ]
  %.val13.i.i.i = load i64, ptr %.sroa.0.05.i.i8, align 8, !alias.scope !2682, !noalias !2684, !noundef !15
  %i.n = icmp eq i64 %.val13.i.i.i, %.sroa.0.0.copyload
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 8
  %.val13.i.1.i.i = load i64, ptr %i.o, align 8, !alias.scope !2682, !noalias !2684, !noundef !15
  %i.p = icmp eq i64 %.val13.i.1.i.i, %.sroa.0.0.copyload
  %i.q = or i1 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 16
  %.val13.i.2.i.i = load i64, ptr %i.r, align 8, !alias.scope !2682, !noalias !2684, !noundef !15
  %i.s = icmp eq i64 %.val13.i.2.i.i, %.sroa.0.0.copyload
  %i.t = or i1 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 24
  %.val13.i.3.i.i = load i64, ptr %i.u, align 8, !alias.scope !2682, !noalias !2684, !noundef !15
  %i.v = icmp eq i64 %.val13.i.3.i.i, %.sroa.0.0.copyload
  %i.w = or i1 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 32
  %.val13.i.4.i.i = load i64, ptr %i.x, align 8, !alias.scope !2682, !noalias !2684, !noundef !15
  %i.y = icmp eq i64 %.val13.i.4.i.i, %.sroa.0.0.copyload
  %i.z = or i1 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 40
  %.val13.i.5.i.i = load i64, ptr %i.aa, align 8, !alias.scope !2682, !noalias !2684, !noundef !15
  %i.ab = icmp eq i64 %.val13.i.5.i.i, %.sroa.0.0.copyload
  %i.ac = or i1 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 48
  %.val13.i.6.i.i = load i64, ptr %i.ad, align 8, !alias.scope !2682, !noalias !2684, !noundef !15
  %i.ae = icmp eq i64 %.val13.i.6.i.i, %.sroa.0.0.copyload
  %i.af = or i1 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 56
  %.val13.i.7.i.i = load i64, ptr %i.ag, align 8, !alias.scope !2682, !noalias !2684, !noundef !15
  %i.ah = icmp eq i64 %.val13.i.7.i.i, %.sroa.0.0.copyload
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsluMP4ekZjHw_14diesel_derives.exit.i.i, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %bb.c, %.lr.ph.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.a, ptr noundef nonnull align 8 dereferenceable(472) %.sroa.2.0..sroa_idx, i64 472, i1 false)
  store i64 -2, ptr %0, align 8, !alias.scope !2680
  %i.aj = load i64, ptr %i.a, align 8, !range !2685, !alias.scope !2686, !noalias !2681, !noundef !15 ; 3 uses
  %.not.i = icmp eq i64 %i.aj, -1
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  %i.ak = add nsw i64 %i.aj, -17
  %i.al = icmp samesign ugt i64 %i.aj, 16
  %i.am = select i1 %i.al, i64 %i.ak, i64 2
  switch i64 %i.am, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics10ConstParamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.a), !noalias !2681, !inline_history !1
  br label %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15expand_variadics1_0B5_.exit

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics13LifetimeParamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(96) %i.an), !noalias !2681, !inline_history !1
  br label %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15expand_variadics1_0B5_.exit

bb.g:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics9TypeParamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(320) %i.ao), !noalias !2681, !inline_history !1
  br label %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15expand_variadics1_0B5_.exit

bb.h:                                             ; preds = %.loopexit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !27, !alias.scope !2687, !noalias !2681, !noundef !15 ; 2 uses
  %i.ar = add nsw i64 %i.aq, -17
  %i.as = icmp samesign ugt i64 %i.aq, 16
  %i.at = select i1 %i.as, i64 %i.ar, i64 2
  switch i64 %i.at, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics10ConstParamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(464) %i.ap), !noalias !2681, !inline_history !1
  br label %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15expand_variadics1_0B5_.exit

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics13LifetimeParamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(96) %i.au), !noalias !2681, !inline_history !1
  br label %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15expand_variadics1_0B5_.exit

bb.k:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics9TypeParamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(320) %i.av), !noalias !2681, !inline_history !1
  br label %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15expand_variadics1_0B5_.exit

._crit_edge11:                                    ; preds = %3, %6, %9, %12, %15, %16, %.lr.ph.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2681
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(472) %.sroa.2.0..sroa_idx, i64 472, i1 false)
  br label %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15expand_variadics1_0B5_.exit

_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function15expand_variadics1_0B5_.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %._crit_edge11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2681
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function18expand_nonvariadics0_0INtB7_5FnMutTRRINtNtBU_5attrs20AttributeSpanWrapperNtBS_20SqlFunctionAttributeEEE8call_mutBU_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 !guid !2688 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !15, !align !16, !noundef !15
  %i.a = load i64, ptr %.val, align 8, !range !40, !noundef !15
  %i.b = icmp eq i64 %i.a, 43
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCscI6d9CVNmLh_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !2689 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 !guid !2692 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2693, !noundef !15 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2693, !nonnull !15, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2693, !nonnull !15, !noundef !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !2693
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 !guid !2699 {
bb.a:
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !2700
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2701, !noundef !15 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2701, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !2701
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !2701
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsluMP4ekZjHw_14diesel_derives12sql_functionNtB4_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([400 x i8]) align 8 captures(none) dereferenceable(400) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2764 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [264 x i8], align 8               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [264 x i8], align 8               ; 6 uses
  %.sroa.55.i = alloca [256 x i8], align 8        ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.07 = alloca [392 x i8], align 8          ; 16 uses
  %i.p = alloca [400 x i8], align 8               ; 11 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 12 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [224 x i8], align 8               ; 6 uses
  %i.u = alloca [224 x i8], align 8               ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 9 uses
  %i.y = alloca [56 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [88 x i8], align 8               ; 6 uses
  %i.ab = alloca [88 x i8], align 8               ; 16 uses
  %i.ac = alloca [32 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 -1, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvMNtCshMFl0SviwmK_3syn4attrNtB2_9Attribute11parse_outer(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ag, ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.cu, %bb.d, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.aj = load i64, ptr %i.ag, align 8, !range !32, !noundef !15
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  invoke fastcc void @_RNCNvXs_NtCsluMP4ekZjHw_14diesel_derives12sql_functionNtB6_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0B8_(ptr nonnull %i.ah, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.aa unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %.sroa.080.0.copyload = load i64, ptr %i.al, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f
end_hunk_0
