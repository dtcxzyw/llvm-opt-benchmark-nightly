Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RINvYNtNtCsjjpCCFGI3ul_14lance_encoding4data18VariableWidthBlockNtNtB7_10statistics7GetStat18expect_single_statNtNtCs4ytUTZt2Gw9_11arrow_array5types10UInt64TypeEB7_:bb.a
  %i.ai = getelementptr i8, ptr %i.v, i64 32
  %.val = load ptr, ptr %i.ai, align 8
  %i.aj = load i64, ptr %.val, align 8, !noundef !75
  call void @llvm.experimental.noalias.scope.decl(metadata !20611)
  call void @llvm.experimental.noalias.scope.decl(metadata !20612)
  %i.ak = load ptr, ptr %i.f, align 8, !alias.scope !20613, !nonnull !75, !noundef !75
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !20613
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit17

bb.g:                                             ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types10UInt64TypeECsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCsjjpCCFGI3ul_14lance_encoding4data18VariableWidthBlockNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.an, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtB4_4StatNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @460, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @461) #66
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit17

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit17: ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i64 %i.aj

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtNtB7_10statistics7GetStat18expect_single_statNtNtCs4ytUTZt2Gw9_11arrow_array5types10UInt64TypeEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [1 x i8], align 1                 ; 2 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.h, align 8
  store i8 6, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8, !noalias !20624
  store i8 6, ptr %i.c, align 1, !noalias !20624
  %i.i = tail call { ptr, ptr } @_RNvXsb_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB7_4data19FixedWidthDataBlockNtB5_7GetStat8get_stat(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i8 noundef 6) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %_RNvYNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtNtB6_10statistics7GetStat11expect_statB6_.exit, !prof !81

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20624
  store ptr %i.d, ptr %i.b, align 8, !noalias !20624
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtB6_5Debug3fmtBA_, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !20624
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.k, align 8, !noalias !20624
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtB4_4StatNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !20624
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @4586, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4587) #66
  unreachable

_RNvYNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtNtB6_10statistics7GetStat11expect_statB6_.exit: ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.i, 1        ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.l, ptr %i.m, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !93, !invariant.load !75
  %i.p = add nsw i64 %i.o, -1
  %i.q = and i64 %i.p, -16
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr i8, ptr %i.l, i64 32
  %.val.i.i = load ptr, ptr %i.t, align 8
  %i.u = invoke { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.s)
          to label %.noexc unwind label %bb.d, !inline_history !166 ; 2 uses

.noexc:                                           ; preds = %_RNvYNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtNtB6_10statistics7GetStat11expect_statB6_.exit
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 4 uses
  %i.w = extractvalue { ptr, ptr } %i.u, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !75, !nonnull !75
  invoke void %i.y(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.v)
          to label %.noexc13 unwind label %bb.d, !inline_history !166

.noexc13:                                         ; preds = %.noexc
  %i.z = load i128, ptr %i.a, align 16, !noundef !75
  %i.aa = icmp ne i128 %i.z, 160558909810114970933442868382829364862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1.i = icmp eq ptr %i.v, null
  %.not.i12 = or i1 %.not1.i, %i.aa
  br i1 %.not.i12, label %bb.c, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types10UInt64TypeECsjjpCCFGI3ul_14lance_encoding.exit, !prof !81

bb.c:                                             ; preds = %.noexc13
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @451, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @453) #66
          to label %.noexc14 unwind label %bb.d

.noexc14:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %.noexc, %_RNvYNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtNtB6_10statistics7GetStat11expect_statB6_.exit, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !20625)
  call void @llvm.experimental.noalias.scope.decl(metadata !20626)
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !20627, !nonnull !75, !noundef !75
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !20627
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.j

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types10UInt64TypeECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.noexc13
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !noundef !75
  %.mask = and i64 %i.ag, -8
  %i.ah = icmp eq i64 %.mask, 8
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !78

bb.f:                                             ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types10UInt64TypeECsjjpCCFGI3ul_14lance_encoding.exit
  %i.ai = getelementptr i8, ptr %i.v, i64 32
  %.val = load ptr, ptr %i.ai, align 8
  %i.aj = load i64, ptr %.val, align 8, !noundef !75
  call void @llvm.experimental.noalias.scope.decl(metadata !20628)
  call void @llvm.experimental.noalias.scope.decl(metadata !20629)
  %i.ak = load ptr, ptr %i.f, align 8, !alias.scope !20630, !nonnull !75, !noundef !75
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !20630
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit17

bb.g:                                             ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types10UInt64TypeECsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.an, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtB4_4StatNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @460, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @461) #66
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit17

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit17: ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i64 %i.aj

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 2305843009213693952) i64 @_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 16 dereferenceable(320) %0, i64 noundef range(i64 0, 2305843009213693952) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.q, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %1, 4294967295
  br i1 %i.b, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i64 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.e = load i64, ptr %i.d, align 16, !alias.scope !20687, !noalias !20688, !noundef !75 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 63
  br i1 %i.f, label %bb.d, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.g, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0), !noalias !20688
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i.i

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ %i.e, %bb.c ], [ 0, %bb.d ]    ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !20689, !noalias !20688, !noundef !75
  %i.k = add nuw nsw i64 %i.h, 1                  ; 2 uses
  store i64 %i.k, ptr %i.d, align 16, !alias.scope !20689, !noalias !20688
  %i.l = zext i32 %i.j to i64
  %i.m = mul nuw i64 %1, %i.l                     ; 2 uses
  %i.n = lshr i64 %i.m, 32                        ; 2 uses
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  %i.p = sub i32 0, %i.c
  %i.q = icmp ult i32 %i.p, %i.o
  br i1 %i.q, label %bb.e, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCsjjpCCFGI3ul_14lance_encoding.exit

bb.e:                                             ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i.i
  %i.r = icmp eq i64 %i.h, 63
  br i1 %i.r, label %bb.f, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.s, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0), !noalias !20688
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.t = phi i64 [ %i.k, %bb.e ], [ 0, %bb.f ]    ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !20690, !noalias !20688, !noundef !75
  %i.w = add nuw nsw i64 %i.t, 1
  store i64 %i.w, ptr %i.d, align 16, !alias.scope !20690, !noalias !20688
  %2 = zext i32 %i.v to i64
  %3 = mul nuw i64 %1, %2
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  %i.x = xor i32 %i.o, -1
  %.not11.i.i.i.i = icmp ult i32 %i.x, %5
  %i.y = zext i1 %.not11.i.i.i.i to i64
  %i.z = add nuw nsw i64 %i.n, %i.y
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCsjjpCCFGI3ul_14lance_encoding.exit

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 7 uses
  %i.ab = load i64, ptr %i.aa, align 16, !alias.scope !20691, !noalias !20692, !noundef !75 ; 4 uses
  %i.ac = icmp ult i64 %i.ab, 63
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i8.i.i.i.i = icmp eq i64 %i.ab, 63
  br i1 %.not.i.i.i8.i.i.i.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ad = add nuw nsw i64 %i.ab, 2                ; 2 uses
  store i64 %i.ad, ptr %i.aa, align 16, !alias.scope !20693, !noalias !20692
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ab
  %i.af = load i64, ptr %i.ae, align 4, !alias.scope !20694, !noalias !20692
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit10.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !20693, !noalias !20692, !noundef !75
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.ai, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0), !noalias !20692
  store i64 1, ptr %i.aa, align 16, !alias.scope !20695, !noalias !20692
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load i32, ptr %0, align 16, !alias.scope !20693, !noalias !20692, !noundef !75
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw i64 %i.al, 32
  %i.an = or disjoint i64 %i.am, %i.aj
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit10.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.ao, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0), !noalias !20692
  store i64 2, ptr %i.aa, align 16, !alias.scope !20696, !noalias !20692
  %i.ap = load i64, ptr %0, align 16, !alias.scope !20697, !noalias !20692
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit10.i.i.i.i

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit10.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.aq = phi i64 [ %i.ad, %bb.i ], [ 2, %bb.k ], [ 1, %bb.j ] ; 4 uses
  %.sroa.0.0.i.i.i9.i.i.i.i = phi i64 [ %i.af, %bb.i ], [ %i.ap, %bb.k ], [ %i.an, %bb.j ]
  %i.ar = zext i64 %.sroa.0.0.i.i.i9.i.i.i.i to i128
  %i.as = zext nneg i64 %1 to i128                ; 2 uses
  %i.at = mul nuw nsw i128 %i.ar, %i.as           ; 2 uses
  %i.au = lshr i128 %i.at, 64
  %i.av = trunc nuw nsw i128 %i.au to i64         ; 2 uses
  %i.aw = trunc i128 %i.at to i64                 ; 2 uses
  %i.ax = sub nsw i64 0, %1
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.l, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCsjjpCCFGI3ul_14lance_encoding.exit

bb.l:                                             ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit10.i.i.i.i
  %i.az = icmp samesign ult i64 %i.aq, 63
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i11.i.i.i.i = icmp eq i64 %i.aq, 63
  br i1 %.not.i.i.i11.i.i.i.i, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ba = add nuw nsw i64 %i.aq, 2
  store i64 %i.ba, ptr %i.aa, align 16, !alias.scope !20698, !noalias !20692
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.bc = load i64, ptr %i.bb, align 4, !alias.scope !20699, !noalias !20692
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.be = load i32, ptr %i.bd, align 4, !alias.scope !20698, !noalias !20692, !noundef !75
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.bf, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0), !noalias !20692
  store i64 1, ptr %i.aa, align 16, !alias.scope !20700, !noalias !20692
  %i.bg = zext i32 %i.be to i64
  %i.bh = load i32, ptr %0, align 16, !alias.scope !20698, !noalias !20692, !noundef !75
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw i64 %i.bi, 32
  %i.bk = or disjoint i64 %i.bj, %i.bg
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i

bb.p:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.bl, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0), !noalias !20692
  store i64 2, ptr %i.aa, align 16, !alias.scope !20701, !noalias !20692
  %i.bm = load i64, ptr %0, align 16, !alias.scope !20702, !noalias !20692
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0.0.i.i.i12.i.i.i.i = phi i64 [ %i.bc, %bb.n ], [ %i.bm, %bb.p ], [ %i.bk, %bb.o ]
  %6 = zext i64 %.sroa.0.0.i.i.i12.i.i.i.i to i128
  %7 = mul nuw nsw i128 %6, %i.as
  %8 = lshr i128 %7, 64
  %9 = trunc nuw nsw i128 %8 to i64
  %i.bn = xor i64 %i.aw, -1
  %.not7.i.i.i.i = icmp samesign ult i64 %i.bn, %9
  %i.bo = zext i1 %.not7.i.i.i.i to i64
  %i.bp = add nuw nsw i64 %i.bo, %i.av
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCs4Jn2LUi8st0_4rand5distr7uniform5ErrorE6unwrapCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i.i, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit10.i.i.i.i
  %.sroa.62.0 = phi i64 [ %i.n, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i.i ], [ %i.z, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randommECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i ], [ %i.bp, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit13.i.i.i.i ], [ %i.av, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs3std6StdRngNtNtB9_3rng3Rng6randomyECsjjpCCFGI3ul_14lance_encoding.exit10.i.i.i.i ]
  ret i64 %.sroa.62.0

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @462, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @323) #66
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECsjjpCCFGI3ul_14lance_encoding(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !20715
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !20715
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !20715
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !20715
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !20715
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !20715
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !20715
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.g, align 8, !noalias !20716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20717
  store i64 %.val.i, ptr %i.a, align 8, !noalias !20717
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20717
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !20718
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !20718
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !20718 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !20718
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !20718, !noundef !75
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !20718, !noundef !75
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCs1BCiKJoB9mN_4fsst4fsst7QSymbolECsjjpCCFGI3ul_14lance_encoding(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !20731
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !20731
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !20731
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !20731
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !20731
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !20731
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !20731
  %.val.i = load i64, ptr %0, align 8, !noalias !20732, !noundef !75
  %i.g = mul i64 %.val.i, -4132994306676758123    ; 2 uses
  %i.h = lshr i64 %i.g, 47
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -4132994306676758123
  %i.k = xor i64 %i.j, -5665270493323196998
  %i.l = mul i64 %i.k, -4132994306676758123       ; 2 uses
  %i.m = lshr i64 %i.l, 47
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -4132994306676758123       ; 2 uses
  %i.p = lshr i64 %i.o, 47
  %i.q = xor i64 %i.p, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20733
  store i64 %i.q, ptr %i.a, align 8, !noalias !20733
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20733
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !20734
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !20734
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !20734 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !20734
  %i.r = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !20734, !noundef !75
  %i.s = shl i64 %i.r, 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !20734, !noundef !75
  %i.v = or i64 %i.s, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot5InneruEE9drop_slowBN_

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10CacheStateE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCseXbohGRa9jr_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsgczF5crJ4sT_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCs8SUNSmrkv52_12arrow_schema(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcuE9drop_slowCseXbohGRa9jr_5tokio(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCs4ytUTZt2Gw9_11arrow_array5arrayDNtB5_5ArrayEL_NtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impsNtB9_7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsp_NtNtCscI6d9CVNmLh_4core3fmt3numsNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsn_NtNtCscI6d9CVNmLh_4core3fmt3numsNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsF_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsD_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCscI6d9CVNmLh_4core3anyDNtB5_3AnyNtNtB7_6marker4SyncNtBG_4SendEL_NtNtB7_3fmt5Debug3fmt(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema5fieldNtB2_5FieldNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array9map_arrayINtNtB7_10list_array16GenericListArraylEINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_8MapArrayE4from(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCscI6d9CVNmLh_4core3fmt5floatfNtB7_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs1_NtNtCskOWKGULsqwM_4zstd6stream3rawNtB5_7DecoderNtB5_9Operation6reinit(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtCscI6d9CVNmLh_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsc2V0exE7CWf_11lance_arrow6structNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB2_14StructArrayExt17normalize_slicing(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsc2V0exE7CWf_11lance_arrow6structNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayNtB2_14StructArrayExt14pushdown_nulls(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsh_NtCs63DIHKhvmTb_10lance_core5errorNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_5ErrorE4from(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef align 16 dereferenceable(48), i32 noundef, ptr noalias noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11init_chacha(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 16 captures(address) dereferenceable(48), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray14as_boolean_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray21as_any_dictionary_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray10as_map_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray13as_struct_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsitxk4pdPh9M_9getrandom5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #56

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #52

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #56

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32>, <4 x i32>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v16i8(<16 x i8>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umax.i128(i128, i128) #56

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree nosync nounwind nonlazybind memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #51 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #53 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #55 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #58 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #59 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #61 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #62 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #63 = { nounwind }
attributes #64 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #65 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #66 = { noreturn }
attributes #67 = { cold }
attributes #68 = { cold noreturn nounwind }
attributes #69 = { "function-inline-cost-multiplier"="2" }
attributes #70 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!72, !73}
!llvm.ident = !{!74}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = distinct !{null, null}
!5 = distinct !{null}
!6 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding, null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{!9, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!10 = distinct !{!10, !9, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{!17, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding"}
!18 = distinct !{!18, !17, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!19 = distinct !{!19, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding"}
!20 = distinct !{!20, !19, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding: argument 0"}
!21 = distinct !{null}
!22 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_, null, null}
!23 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEB1g_, null}
!24 = distinct !{null}
!25 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEEB1g_, null, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEBH_}
!26 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEEB1g_, null}
!27 = distinct !{null}
!28 = distinct !{null}
!29 = distinct !{!29, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13SchedulingJobEL_EEB1f_"}
!30 = distinct !{!30, !29, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13SchedulingJobEL_EEB1f_: argument 0"}
!31 = distinct !{null}
!32 = distinct !{!32, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse17SparsePositionSetEBL_"}
!33 = distinct !{!33, !32, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse17SparsePositionSetEBL_: argument 0"}
!34 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingEBH_, null}
!35 = distinct !{null, null, null, null}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsjjpCCFGI3ul_14lance_encoding, null, null}
!44 = distinct !{null}
!45 = distinct !{!45, !90}
!46 = distinct !{!46, !90}
!47 = distinct !{!47, !90}
!48 = distinct !{!48, !90}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{!51, !"_RNvXsf_NtNtCscI6d9CVNmLh_4core5clone5implsyNtB7_5Clone5clone"}
!52 = distinct !{!52, !51, !"_RNvXsf_NtNtCscI6d9CVNmLh_4core5clone5implsyNtB7_5Clone5clone: argument 0"}
!53 = distinct !{!53, !"_RNvXsf_NtNtCscI6d9CVNmLh_4core5clone5implsyNtB7_5Clone5clone"}
!54 = distinct !{!54, !53, !"_RNvXsf_NtNtCscI6d9CVNmLh_4core5clone5implsyNtB7_5Clone5clone: argument 0"}
!55 = distinct !{null}
!56 = distinct !{null, null}
!57 = distinct !{null}
!58 = distinct !{null}
!59 = distinct !{null}
!60 = distinct !{null}
!61 = distinct !{null, null}
!62 = distinct !{null, null}
!63 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEEB1c_, null, null}
!64 = distinct !{null}
!65 = distinct !{null, null}
end_hunk_1
