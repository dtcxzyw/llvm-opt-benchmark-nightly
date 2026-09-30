Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.06?download=true
inline.NumInlined: 7974
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions5rules19banned_import_alias19banned_import_alias:bb.a
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !4726
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @955, ptr noundef nonnull %i.a)
          to label %bb.an unwind label %bb.am, !noalias !4724

bb.al:                                            ; preds = %.thread.i.i, %bb.am
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.cw, %bb.am ], [ %i.cx, %.thread.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions5rules19banned_import_alias17BannedImportAliasEBL_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g) #34
          to label %.body unwind label %bb.ar, !noalias !4724

bb.am:                                            ; preds = %_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.thread.i.i:                                      ; preds = %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.an:                                            ; preds = %_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4725
  store i64 -1, ptr %i.e, align 8, !alias.scope !4727, !noalias !4725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4725
  store i64 -1, ptr %i.d, align 8, !noalias !4725
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.cy = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !4725
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.da = invoke noundef nonnull ptr @_RINvNtCsEhZmuQNqkz_11ruff_linter7message22create_lint_diagnosticNtNtCscdodAO9FK5_5alloc6string6StringB10_EB4_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %.sroa.0.0.i17, i32 noundef %.sroa.26.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, i32 noundef 0, i32 undef, ptr noundef nonnull %.val.i, i32 noundef 0, i32 undef, i16 noundef 243)
          to label %bb.aq unwind label %.thread.i.i, !noalias !4724

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4725
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions5rules19banned_import_alias17BannedImportAliasEBL_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4724
  store ptr %i.cs, ptr %i.k, align 8, !alias.scope !4723, !noalias !4728
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.da, ptr %i.db, align 8, !alias.scope !4723, !noalias !4728
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !4723, !noalias !4728
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i16 243, ptr %i.dc, align 8, !alias.scope !4723, !noalias !4728
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteEB1x_.exit.thread

bb.ar:                                            ; preds = %bb.al
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !4724
  unreachable

bb.as:                                            ; preds = %bb.at
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !4724
  unreachable

bb.at:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions5rules19banned_import_alias17BannedImportAliasEBL_(ptr noalias noundef align 8 dereferenceable(48) %i.g) #34
          to label %.body unwind label %bb.as, !noalias !4724

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteEB1x_.exit.thread: ; preds = %._crit_edge.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCscdodAO9FK5_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1B_NCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions5rules19banned_import_alias19banned_import_alias0E0E0B3I_.exit.backedge.i, %bb.a, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteEB1x_.exit, %bb.aq
  ret void

.body:                                            ; preds = %bb.at, %bb.al, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %i.df, %bb.at ], [ %.pn.pn.i.i, %bb.al ]
  resume { ptr, i32 } %.pn

bb.au:                                            ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.av:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules13noqa_comments13noqa_comments(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 4611686018427387904) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load i64, ptr %4, align 8, !range !10, !noundef !5
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %4 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink32.a = phi i64 [ 24, %bb.b ], [ 8, %bb.a ]
  %.sink31 = phi i64 [ 28, %bb.b ], [ 12, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.i, %bb.b ], [ %6, %bb.a ] ; 2 uses
  %i.j = phi ptr [ null, %bb.b ], [ %5, %bb.a ]   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 %.sink32.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.sink31
  %.sroa.06.0 = load i32, ptr %i.k, align 8, !noundef !5 ; 9 uses
  %.sroa.6.0 = load i32, ptr %i.l, align 4, !noundef !5 ; 9 uses
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %.sroa.06.0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %.sroa.6.0, ptr %i.n, align 4
  %i.o = inttoptr i64 %.sroa.5.0 to ptr           ; 2 uses
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit, %bb.c
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.c
  %.val21 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 8
  %.val22 = load i64, ptr %i.p, align 8, !noundef !5 ; 5 uses
  %i.q = zext i32 %.sroa.06.0 to i64              ; 6 uses
  %i.r = zext i32 %.sroa.6.0 to i64               ; 5 uses
  %.not.i.i = icmp ugt i32 %.sroa.06.0, %.sroa.6.0
  br i1 %.not.i.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i32 %.sroa.06.0, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not5.i.i = icmp ugt i64 %.val22, %i.q
  br i1 %.not5.i.i, label %bb.i, label %.split.i.i

bb.h:                                             ; preds = %bb.i, %.split.i.i, %bb.f
  %i.t = icmp eq i32 %.sroa.6.0, 0
  br i1 %i.t, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit, label %bb.j

.split.i.i:                                       ; preds = %bb.g
  %i.u = icmp eq i64 %.val22, %i.q
  br i1 %i.u, label %bb.h, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.val21, i64 %i.q
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !4743, !noundef !5
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %bb.h, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

bb.j:                                             ; preds = %bb.h
  %.not6.i.i = icmp ugt i64 %.val22, %i.r
  br i1 %.not6.i.i, label %bb.k, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.j
  %i.y = icmp eq i64 %.val22, %i.r
  br i1 %i.y, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.val21, i64 %i.r
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !4743, !noundef !5
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i: ; preds = %bb.k, %.split7.i.i, %bb.i, %.split.i.i, %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val21, i64 noundef %.val22, i64 noundef %i.q, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #35
  unreachable

_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit: ; preds = %bb.h, %.split7.i.i, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.val21, i64 %i.q
  %i.ad = sub nuw nsw i64 %i.r, %i.q
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @719, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
  br i1 %i.ae, label %bb.y, label %bb.d

bb.l:                                             ; preds = %bb.d
  %i.af = tail call noundef zeroext i1 @_RNvMs4_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB5_12Suppressions10check_rule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %7, i16 noundef 954, i32 noundef %.sroa.06.0, i32 noundef %.sroa.6.0, i32 noundef 0, i32 undef)
  br i1 %i.af, label %bb.y, label %bb.s

bb.m:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5 ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.o

bb.o:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodejjNCINvNvXs1_NtB6_6filterINtB1M_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvNtNtNtNtBZ_5rules4ruff5rules13noqa_comments13noqa_comments0E0NCINvXsK_NtB2j_5accumjNtB4h_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0BZ_.exit.i.i, %bb.n
  %.sroa.04.0.i.i = phi i64 [ 0, %bb.n ], [ %i.ba, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodejjNCINvNvXs1_NtB6_6filterINtB1M_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvNtNtNtNtBZ_5rules4ruff5rules13noqa_comments13noqa_comments0E0NCINvXsK_NtB2j_5accumjNtB4h_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0BZ_.exit.i.i ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.n ], [ %i.az, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodejjNCINvNvXs1_NtB6_6filterINtB1M_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvNtNtNtNtBZ_5rules4ruff5rules13noqa_comments13noqa_comments0E0NCINvXsK_NtB2j_5accumjNtB4h_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0BZ_.exit.i.i ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.04.0.i.i ; 2 uses
  %.val13.i.i = load ptr, ptr %i.am, align 8, !alias.scope !4744, !noalias !4745
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val14.i.i = load i64, ptr %i.an, align 8, !alias.scope !4744, !noalias !4745
  %i.ao = load ptr, ptr %i.al, align 8, !noalias !4746, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !4746, !nonnull !5, !noundef !5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  %i.as = load i64, ptr %i.ar, align 8, !noalias !4746, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.as, 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not34.not = icmp eq i64 %i.as, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not34.not, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodejjNCINvNvXs1_NtB6_6filterINtB1M_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvNtNtNtNtBZ_5rules4ruff5rules13noqa_comments13noqa_comments0E0NCINvXsK_NtB2j_5accumjNtB4h_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0BZ_.exit.i.i, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not = icmp eq ptr %i.au, %i.at
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodejjNCINvNvXs1_NtB6_6filterINtB1M_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvNtNtNtNtBZ_5rules4ruff5rules13noqa_comments13noqa_comments0E0NCINvXsK_NtB2j_5accumjNtB4h_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0BZ_.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %i.av = phi ptr [ %i.au, %bb.p ], [ %i.aq, %bb.o ] ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !4747, !nonnull !5, !noundef !5
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !noalias !4747, !noundef !5
  %i.ay = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val13.i.i, i64 noundef %.val14.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val3.i.i.i.i.i.i, i64 noundef %.val4.i.i.i.i.i.i), !noalias !4747
  br i1 %i.ay, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodejjNCINvNvXs1_NtB6_6filterINtB1M_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvNtNtNtNtBZ_5rules4ruff5rules13noqa_comments13noqa_comments0E0NCINvXsK_NtB2j_5accumjNtB4h_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0BZ_.exit.i.i, label %bb.p

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodejjNCINvNvXs1_NtB6_6filterINtB1M_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvNtNtNtNtBZ_5rules4ruff5rules13noqa_comments13noqa_comments0E0NCINvXsK_NtB2j_5accumjNtB4h_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0BZ_.exit.i.i: ; preds = %bb.p, %.lr.ph, %bb.o
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.lcssa = phi i64 [ 0, %bb.o ], [ 0, %bb.p ], [ 1, %.lr.ph ]
  %i.az = add i64 %.sroa.02.0.i.i, %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.lcssa ; 4 uses
  %i.ba = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.bb = icmp eq i64 %i.ba, %i.aj
  br i1 %i.bb, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodeENCNvNtNtNtNtB1w_5rules4ruff5rules13noqa_comments13noqa_comments0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %bb.o

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodeENCNvNtNtNtNtB1w_5rules4ruff5rules13noqa_comments13noqa_comments0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodejjNCINvNvXs1_NtB6_6filterINtB1M_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvNtNtNtNtBZ_5rules4ruff5rules13noqa_comments13noqa_comments0E0NCINvXsK_NtB2j_5accumjNtB4h_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1B_EE0E0BZ_.exit.i.i
  %i.bc = icmp ule i64 %i.az, %i.aj
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp ult i64 %i.aj, 384307168202282326
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.az, %i.aj
  br i1 %i.be, label %bb.y, label %bb.q

bb.q:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodeENCNvNtNtNtNtB1w_5rules4ruff5rules13noqa_comments13noqa_comments0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit
  %i.bf = tail call noundef zeroext i1 @_RNvMs4_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB5_12Suppressions10check_rule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %7, i16 noundef 954, i32 noundef %.sroa.06.0, i32 noundef %.sroa.6.0, i32 noundef 0, i32 undef)
  br i1 %i.bf, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp ne i64 %i.az, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules13noqa_comments12NoqaCommentsEBa_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull align 8 %0, i1 noundef zeroext %2, i32 noundef %.sroa.06.0, i32 noundef %.sroa.6.0)
  %brmerge = or i1 %3, %i.bg
  br i1 %brmerge, label %.sink.split, label %bb.t

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules13noqa_comments12NoqaCommentsEBa_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull align 8 %0, i1 noundef zeroext %2, i32 noundef %.sroa.06.0, i32 noundef %.sroa.6.0)
  br i1 %3, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %spec.select = select i1 %2, ptr @721, ptr @720
  %spec.select33 = select i1 %2, i64 11, i64 6
  store ptr %spec.select, ptr %i.c, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select33, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.49.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.bi, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules13noqa_commentsNtB5_5CodesNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @722, ptr noundef nonnull %i.b)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.w, %bb.v, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f) #34
          to label %bb.aa unwind label %bb.z

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i32 noundef %.sroa.06.0, i32 noundef %.sroa.6.0)
          to label %bb.v unwind label %bb.u

bb.v:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.r, %bb.x
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodeENCNvNtNtNtNtB1w_5rules4ruff5rules13noqa_comments13noqa_comments0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, %bb.q, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.z:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.aa:                                            ; preds = %bb.u
  resume { ptr, i32 } %i.bj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules23falsy_dict_get_fallback23falsy_dict_get_fallback(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = load i32, ptr %i.f, align 8, !noundef !5
  %i.h = and i32 %i.g, 512
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !range !11, !noundef !5
  %i.k = icmp eq i32 %i.j, 16
  br i1 %i.k, label %bb.c, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8, !range !11, !noundef !5
  %i.o = icmp eq i32 %i.n, 25
  br i1 %i.o, label %bb.d, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 31
  %i.q = load i8, ptr %i.p, align 1, !range !13, !alias.scope !4752, !noundef !5 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4752, !noundef !5
  %i.t = and i64 %i.s, 72057594037927935
  %i.u = icmp ult i8 %i.q, -48
  %i.v = zext i8 %i.q to i64
  %i.w = add nsw i64 %i.v, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 16)
  %.sroa.0.0.i.i = select i1 %i.u, i64 %spec.store.select.i.i, i64 %i.t
  %i.x = icmp eq i64 %.sroa.0.0.i.i, 3
  br i1 %i.x, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.z = icmp ugt i8 %i.q, -49
  %i.aa = load ptr, ptr %i.y, align 8, !alias.scope !4752
  %.sroa.01.0.i.i = select i1 %i.z, ptr %i.aa, ptr %i.y ; 2 uses
  %i.ab = load i16, ptr %.sroa.01.0.i.i, align 1
  %i.ac = xor i16 %i.ab, 25959
  %i.ad = getelementptr i8, ptr %.sroa.01.0.i.i, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i16
  %i.ag = xor i16 %i.af, 116
  %i.ah = or i16 %i.ac, %i.ag
  %i.ai = icmp ne i16 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.e:                                             ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !range !11, !noundef !5
  %i.ao = icmp eq i32 %i.an, 28
  br i1 %i.ao, label %bb.f, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing27is_known_to_be_of_type_dict(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e, ptr noundef nonnull align 8 %i.ap)
  br i1 %i.aq, label %bb.g, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = tail call { i64, ptr } @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments13find_argument(ptr noundef nonnull align 8 %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @723, i64 noundef 7, i64 noundef 1) ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %.not = icmp eq i64 %i.at, 2
  br i1 %.not, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = extractvalue { i64, ptr } %i.as, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.at, ptr %i.d, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = tail call noundef i8 @_RINvMs4_NtCskLngH8kgpZI_15ruff_python_ast7helpersNtB6_10Truthiness9from_exprNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules23falsy_dict_get_fallback23falsy_dict_get_fallbacks_0EB1o_(ptr noundef nonnull align 8 %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.e)
  switch i8 %i.aw, label %default.unreachable9 [
    i8 0, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split
    i8 1, label %bb.i
    i8 2, label %bb.i
    i8 3, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split
    i8 4, label %bb.i
    i8 5, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split
  ]

default.unreachable9:                             ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ax = call { i32, i32 } @_RNvXs22_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_12ArgOrKeywordNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  %i.ay = extractvalue { i32, i32 } %i.ax, 0
  %i.az = extractvalue { i32, i32 } %i.ax, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !align !6, !noundef !5
  call fastcc void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules23falsy_dict_get_fallback20FalsyDictGetFallbackEBa_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.bb, i32 noundef %i.ay, i32 noundef %i.az)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.be = load i64, ptr %i.bd, align 8, !noundef !5
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.j, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split.sink.split

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !5
  %i.bi = icmp ugt i64 %i.bh, 2
  br i1 %i.bi, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !align !6, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !5
  %i.bq = invoke noundef zeroext i1 @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_13CommentRanges10intersects(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl, i32 noundef %i.bn, i32 noundef %i.bp)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c) #34
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  %. = select i1 %i.bq, i8 1, i8 2
  store i8 %., ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.bu, align 8
  invoke fastcc void @_RINvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_15DiagnosticGuard11try_set_fixNCNvNtNtNtNtBa_5rules4ruff5rules23falsy_dict_get_fallback23falsy_dict_get_fallbacks0_0EBa_(ptr noalias noundef align 8 dereferenceable(48) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split.sink.split

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split.sink.split: ; preds = %bb.i, %bb.j, %bb.n
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split: ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split.sink.split, %bb.h, %bb.h, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread: ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.sink.split, %bb.d, %bb.g, %bb.f, %bb.e, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit, %bb.c, %bb.b, %bb.a
  ret void

bb.o:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.p:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.br
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5numpy5rules21numpy_2_0_deprecation21numpy_2_0_deprecation(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 9 uses
  %i.c = alloca [144 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 10 uses
end_hunk_0
