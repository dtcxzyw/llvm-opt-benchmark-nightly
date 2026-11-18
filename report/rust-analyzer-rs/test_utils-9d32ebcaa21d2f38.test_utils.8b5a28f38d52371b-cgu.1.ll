Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_utils-9d32ebcaa21d2f38.test_utils.8b5a28f38d52371b-cgu.1?download=true
inline.NumInlined: 231
inline.NumDeleted: 113
begin_hunk_0_@_RNvCsbXLDOPgjE5X_10test_utils24try_ensure_file_contents:bb.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils.exit45: ; preds = %.thread, %.thread, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !395
  br label %bb.ah

bb.ae:                                            ; preds = %bb.b
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit48 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit48: ; preds = %bb.ae
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit48, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCsbXLDOPgjE5X_10test_utils12project_root(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g)
  %i.bk = call { ptr, i64 } @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path12strip_prefixNtCs9p4rgIae0RV_6camino11Utf8PathBufECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g) ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bm = icmp eq ptr %i.bl, null                 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bk, 1
  %.sroa.3.0 = select i1 %i.bm, i64 %1, i64 %i.bn
  %.sroa.01.0 = select i1 %i.bm, ptr %0, ptr %i.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.01.0, ptr %i.f, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.3.0, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1b_NtCscAsMj0W7j8b_3std4pathNtB6_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr noundef nonnull @65, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bp = call { ptr, i64 } @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0      ; 2 uses
  %.not15 = icmp eq ptr %i.bq, null
  br i1 %.not15, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  %i.bs = call noundef ptr @_RINvNtCscAsMj0W7j8b_3std2fs14create_dir_allRNtNtB4_4path4PathECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.br) ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !397
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = and i64 %i.bu, 3
  switch i64 %i.bv, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils.exit.i49
    i64 3, label %bb.ak
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils.exit.i49
    i64 1, label %bb.al
  ], !prof !8

bb.ak:                                            ; preds = %bb.aj
  %i.bw = icmp ult ptr %i.bs, inttoptr (i64 188978561024 to ptr)
  %i.bx = and i64 %i.bu, 1095216660480
  %i.by = icmp ne i64 %i.bx, 1095216660480
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.assume(i1 %i.by)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils.exit.i49

bb.al:                                            ; preds = %bb.aj
  %i.bz = getelementptr i8, ptr %i.bs, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !alias.scope !398, !noalias !397
  store i8 3, ptr %i.a, align 8, !alias.scope !398, !noalias !397
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca), !noalias !397
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils.exit.i49

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils.exit.i49: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !397
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils.exit.i49, %bb.ai, %bb.ah
  %i.cb = call noundef ptr @_RINvNtCscAsMj0W7j8b_3std2fs5writeRNtNtB4_4path4PathReECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit, label %bb.am, !prof !12

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !399
  store ptr %i.cb, ptr %i.d, align 8, !noalias !399
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #16
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #15
          to label %common.resume unwind label %bb.ap

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCsbXLDOPgjE5X_10test_utils5bench(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !guid !400 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMNtCs7bQJKOkRaNd_7profile10stop_watchNtB2_9StopWatch5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a)
  store ptr %1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMCsbXLDOPgjE5X_10test_utilsNtB2_13RangeOrOffset12expect_range(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %0) unnamed_addr #0 !guid !401 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !13, !noundef !6
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @67, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !noundef !6
  %i.g = insertvalue { i32, i32 } poison, i32 %i.d, 0
  %i.h = insertvalue { i32, i32 } %i.g, i32 %i.f, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMCsbXLDOPgjE5X_10test_utilsNtB2_13RangeOrOffset13expect_offset(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %0) unnamed_addr #0 !guid !402 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !13, !noundef !6
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !noundef !6
  ret i32 %i.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @69, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvCsbXLDOPgjE5X_10test_utils5benchNtB2_7BencherNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 !guid !403 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMNtCs7bQJKOkRaNd_7profile10stop_watchNtB2_9StopWatch7elapsed(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsbXLDOPgjE5X_10test_utils, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs_NtCs7bQJKOkRaNd_7profile10stop_watchNtB4_13StopWatchSpanNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr noundef nonnull @75, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !404 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !429 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !7, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !430, !alias.scope !431, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !431, !nonnull !6, !noundef !6 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !431, !noundef !6 ; 16 uses
  %.promoted52 = load i8, ptr %i.g, align 8, !alias.scope !431 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.l = trunc nuw i8 %.promoted52 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit199

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !433, !noalias !434, !noundef !6
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit199

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit200, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !435, !noundef !6 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !435, !noundef !6
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !435, !noundef !6
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !435, !noundef !6
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !432
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !6 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !6 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !6 ; 16 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.ci = add nsw i64 %i.cg, -1                   ; 5 uses
  br i1 %i.by, label %bb.aa, label %bb.s

bb.l:                                             ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit199

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.bk, align 1, !alias.scope !433, !noalias !436, !noundef !6
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.n, label %.loopexit199

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.bl, align 1, !noalias !437, !noundef !6 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.p, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i: ; preds = %bb.o
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cp = load i8, ptr %i.bn, align 1, !noalias !437, !noundef !6
  %i.cq = shl nuw nsw i32 %i.co, 6
  %i.cr = and i8 %i.cp, 63
  %i.cs = zext nneg i8 %i.cr to i32               ; 2 uses
  %i.ct = or disjoint i32 %i.cq, %i.cs
  %i.cu = icmp samesign ugt i8 %i.cl, -33
  br i1 %i.cu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cv = zext nneg i8 %i.cl to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cw = load i8, ptr %i.bq, align 1, !noalias !437, !noundef !6
  %i.cx = shl nuw nsw i32 %i.cs, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz            ; 2 uses
  %i.db = shl nuw nsw i32 %i.co, 12
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = icmp samesign ugt i8 %i.cl, -17
  br i1 %i.dd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.de = load i8, ptr %i.bt, align 1, !noalias !437, !noundef !6
  %i.df = shl nuw nsw i32 %i.co, 18
  %i.dg = and i32 %i.df, 1835008
  %i.dh = shl nuw nsw i32 %i.da, 6
  %i.di = and i8 %i.de, 63
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dh, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.dg
  br label %.loopexit.loopexit

.loopexit199:                                     ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa195 = phi i8 [ %.promoted52, %.split.i.i.peel ], [ %.promoted52, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa192 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dm = xor i8 %.lcssa195, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !431
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa192, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #18, !noalias !436
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.dc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit14.i.i ], [ %i.dl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit16.i.i ], [ %i.ct, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbXLDOPgjE5X_10test_utils.exit12.i.i ], [ %i.cv, %bb.p ]
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dn)
  br label %.loopexit

.loopexit200:                                     ; preds = %bb.d
  %i.do = xor i8 %.promoted52, 1
  store i8 %i.do, ptr %i.g, align 8, !alias.scope !431
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit200
  store i8 1, ptr %i.d, align 2, !alias.scope !431
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa194 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !431
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !431
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit200
  %i.dp = phi i64 [ %.lcssa194, %.loopexit ], [ %i.k, %.loopexit200 ], [ %i.k, %.critedge ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dp, ptr %i.dr, align 8
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit: ; preds = %bb.r, %bb.q, %.preheader, %.split.us.i12, %._crit_edge.i5, %.split.us.i, %._crit_edge.i
  %storemerge.i.sink = phi i64 [ 1, %.split.us.i12 ], [ 1, %.split.us.i ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i5 ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %.promoted.i = load i64, ptr %i.ch, align 8, !alias.scope !439 ; 2 uses
  %i.ds = add i64 %.promoted.i, %i.ci             ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cc
  br i1 %i.dt, label %.lr.ph.i1, label %._crit_edge.i

.lr.ph.i1:                                        ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !439, !noundef !6
  %i.dw = load i64, ptr %i.c, align 8, !alias.scope !439 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !439 ; 2 uses
  %i.dz = sub i64 %i.cg, %i.dy
  %invariant.op = sub i64 1, %i.dw
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.v, %bb.s
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !439
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

.lr.ph.split.i:                                   ; preds = %bb.v, %.lr.ph.i1
  %i.ea = phi i64 [ %.sink70.i, %bb.v ], [ %i.bx, %.lr.ph.i1 ] ; 3 uses
  %i.eb = phi i64 [ %i.el, %bb.v ], [ %i.ds, %.lr.ph.i1 ]
  %i.ec = phi i64 [ %.sink71.i, %bb.v ], [ %.promoted.i, %.lr.ph.i1 ] ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !440, !noundef !6
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, %i.dv
  %.not.i2 = icmp eq i64 %i.ei, 0
  br i1 %.not.i2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i
  %i.ej = add i64 %i.ec, %i.cg
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i
  %..i.i3 = tail call noundef i64 @llvm.umax.i64(i64 %i.ea, i64 %i.dw) ; 2 uses
  %i.ek = icmp ult i64 %..i.i3, %i.cg
  br i1 %i.ek, label %.lr.ph153, label %.preheader36.i.preheader

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.t
  %.sink71.i = phi i64 [ %i.fj, %bb.z ], [ %i.fi, %bb.y ], [ %i.ej, %bb.t ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.z ], [ %i.dz, %bb.y ], [ 0, %bb.t ] ; 2 uses
  store i64 %.sink71.i, ptr %i.ch, align 8, !alias.scope !439
  store i64 %.sink70.i, ptr %i.bw, align 8, !alias.scope !439
  %i.el = add i64 %.sink71.i, %i.ci               ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cc
  br i1 %i.em, label %.lr.ph.split.i, label %._crit_edge.i

bb.w:                                             ; preds = %.lr.ph153
  %i.en = add nuw nsw i64 %.sroa.04.0.i152, 1     ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.cg
  br i1 %i.eo, label %.lr.ph153, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.w, %bb.u
  %i.ep = icmp ult i64 %i.ea, %i.dw
  br i1 %i.ep, label %.lr.ph155, label %.split.us.i

.lr.ph153:                                        ; preds = %bb.u, %bb.w
  %.sroa.04.0.i152 = phi i64 [ %i.en, %bb.w ], [ %..i.i3, %bb.u ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.i152
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !441, !noundef !6
  %i.es = add i64 %.sroa.04.0.i152, %i.ec         ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.cc
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !440, !noundef !6
  %.not21.i = icmp eq i8 %i.er, %i.ev
  br i1 %.not21.i, label %bb.w, label %bb.z

.preheader36.i:                                   ; preds = %bb.x
  %i.ew = icmp ult i64 %i.ea, %i.fa
  br i1 %i.ew, label %.lr.ph155, label %.split.us.i

.split.us.i:                                      ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.ex = add i64 %i.ec, %i.cg                    ; 2 uses
  store i64 %i.ex, ptr %i.ch, align 8, !alias.scope !439
  store i64 0, ptr %i.bw, align 8, !alias.scope !439
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ec, ptr %i.ey, align 8, !alias.scope !442
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %i.ez, align 8, !alias.scope !442
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

.lr.ph155:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i154 = phi i64 [ %i.fa, %.preheader36.i ], [ %i.dw, %.preheader36.i.preheader ]
  %i.fa = add i64 %.sroa.2.0.i154, -1             ; 6 uses
  %i.fb = icmp ult i64 %i.fa, %i.cg
  br i1 %i.fb, label %bb.x, label %.split32.us.i

bb.x:                                             ; preds = %.lr.ph155
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !441, !noundef !6
  %i.fe = add i64 %i.fa, %i.ec                    ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.cc
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !440, !noundef !6
  %.not20.i = icmp eq i8 %i.fd, %i.fh
  br i1 %.not20.i, label %.preheader36.i, label %bb.y

.split32.us.i:                                    ; preds = %.lr.ph155
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fa, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !443
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.fi = add i64 %i.ec, %i.dy
  br label %bb.v

bb.z:                                             ; preds = %.lr.ph153
  %.reass.reass = add i64 %i.ec, %invariant.op
  %i.fj = add i64 %.reass.reass, %.sroa.04.0.i152
  br label %bb.v

bb.aa:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %.promoted.i4 = load i64, ptr %i.ch, align 8, !alias.scope !445 ; 3 uses
  %i.fk = add i64 %.promoted.i4, %i.ci            ; 3 uses
  %i.fl = icmp ult i64 %i.fk, %i.cc
  br i1 %i.fl, label %.lr.ph.i7, label %._crit_edge.i5

.lr.ph.i7:                                        ; preds = %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !445, !noundef !6 ; 2 uses
  %i.fo = load i64, ptr %i.c, align 8, !alias.scope !445
  %.fr63 = freeze i64 %i.fo                       ; 10 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !445
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr63, i64 range(i64 0, -9223372036854775808) %i.cg) ; 2 uses
  %i.fr = add i64 %.fr63, -1                      ; 2 uses
  %.first_iter.i8 = icmp ult i64 %i.fr, %i.cg
  %i.fs = sub i64 1, %.fr63                       ; 2 uses
  br i1 %.first_iter.i8, label %.lr.ph.split.us.i.us.preheader, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i7
  %exitcond.not.i157.not = icmp ult i64 %.fr63, %i.cg
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i.us.preheader:                   ; preds = %.lr.ph.i7
  %exitcond.not.i.us162.not = icmp ult i64 %.fr63, %i.cg
  %.not34.i.us.us165 = icmp eq i64 %.fr63, 0
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.us.preheader, %bb.ad
  %i.ft = phi i64 [ %i.gt, %bb.ad ], [ %i.fk, %.lr.ph.split.us.i.us.preheader ]
  %i.fu = phi i64 [ %.sink.i9.us, %bb.ad ], [ %.promoted.i4, %.lr.ph.split.us.i.us.preheader ] ; 7 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !446, !noundef !6
  %i.fx = and i8 %i.fw, 63
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fz, %i.fn
  %.not.us.i.us = icmp eq i64 %i.ga, 0
  br i1 %.not.us.i.us, label %bb.ac, label %.preheader35.i.us.preheader

.preheader35.i.us.preheader:                      ; preds = %.lr.ph.split.us.i.us
  br i1 %exitcond.not.i.us162.not, label %.lr.ph164, label %.preheader.i10.us.us.preheader

.preheader35.i.us:                                ; preds = %.lr.ph164
  %i.gb = add i64 %.sroa.04.0.us.i.us163, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.gb, %umax.i
  br i1 %exitcond.not.i.us, label %.preheader.i10.us.us.preheader, label %.lr.ph164

.preheader.i10.us.us.preheader:                   ; preds = %.preheader35.i.us, %.preheader35.i.us.preheader
  br i1 %.not34.i.us.us165, label %.split.us.i12, label %.lr.ph167

.lr.ph164:                                        ; preds = %.preheader35.i.us.preheader, %.preheader35.i.us
  %.sroa.04.0.us.i.us163 = phi i64 [ %i.gb, %.preheader35.i.us ], [ %.fr63, %.preheader35.i.us.preheader ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i.us163
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !447, !noundef !6
  %i.ge = add i64 %.sroa.04.0.us.i.us163, %i.fu   ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.cc
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !446, !noundef !6
  %.not21.us.i.us = icmp eq i8 %i.gd, %i.gh
  br i1 %.not21.us.i.us, label %.preheader35.i.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph164
  %i.gi = add i64 %i.fs, %i.fu
  %i.gj = add i64 %i.gi, %.sroa.04.0.us.i.us163
  br label %bb.ad

.preheader.i10.us.us:                             ; preds = %.lr.ph167
  %.not34.i.us.us = icmp eq i64 %i.gk, 0
  br i1 %.not34.i.us.us, label %.split.us.i12, label %.lr.ph167

.lr.ph167:                                        ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us
  %.sroa.2.0.us.i.us.us166 = phi i64 [ %i.gk, %.preheader.i10.us.us ], [ %.fr63, %.preheader.i10.us.us.preheader ]
  %i.gk = add i64 %.sroa.2.0.us.i.us.us166, -1    ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !447, !noundef !6
  %i.gn = add i64 %i.gk, %i.fu                    ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.cc
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gn
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !446, !noundef !6
  %.not20.us.i.us.us = icmp eq i8 %i.gm, %i.gq
  br i1 %.not20.us.i.us.us, label %.preheader.i10.us.us, label %.split.us.us

.split.us.us:                                     ; preds = %.lr.ph167
  %i.gr = add i64 %i.fu, %i.fq
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.us.i.us
  %i.gs = add i64 %i.fu, %i.cg
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us.us, %bb.ab
  %.sink.i9.us = phi i64 [ %i.gs, %bb.ac ], [ %i.gj, %bb.ab ], [ %i.gr, %.split.us.us ] ; 3 uses
  store i64 %.sink.i9.us, ptr %i.ch, align 8, !alias.scope !445
  %i.gt = add i64 %.sink.i9.us, %i.ci             ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.cc
  br i1 %i.gu, label %.lr.ph.split.us.i.us, label %._crit_edge.i5

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.ag
  %i.gv = phi i64 [ %i.hn, %bb.ag ], [ %i.fk, %.lr.ph.split.us.i.preheader ]
  %i.gw = phi i64 [ %.sink.i9, %bb.ag ], [ %.promoted.i4, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gv
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !446, !noundef !6
  %i.gz = and i8 %i.gy, 63
  %i.ha = zext nneg i8 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = and i64 %i.hb, %i.fn
  %.not.us.i = icmp eq i64 %i.hc, 0
  br i1 %.not.us.i, label %bb.af, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i157.not, label %.lr.ph159, label %.preheader.i10

.preheader35.i:                                   ; preds = %.lr.ph159
  %i.hd = add i64 %.sroa.04.0.us.i158, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hd, %umax.i
  br i1 %exitcond.not.i, label %.preheader.i10, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i158 = phi i64 [ %i.hd, %.preheader35.i ], [ %.fr63, %.preheader35.i.preheader ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.04.0.us.i158
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !447, !noundef !6
  %i.hg = add i64 %.sroa.04.0.us.i158, %i.gw      ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.cc
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.hg
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !446, !noundef !6
  %.not21.us.i = icmp eq i8 %i.hf, %i.hj
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.ae

.preheader.i10:                                   ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.not34.i = icmp eq i64 %.fr63, 0
  br i1 %.not34.i, label %.split.us.i12, label %.split32.us.i11

.split32.us.i11:                                  ; preds = %.preheader.i10
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef range(i64 0, -9223372036854775808) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !448
  unreachable

bb.ae:                                            ; preds = %.lr.ph159
  %i.hk = add i64 %i.fs, %i.gw
  %i.hl = add i64 %i.hk, %.sroa.04.0.us.i158
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %i.hm = add i64 %i.gw, %i.cg
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.i9 = phi i64 [ %i.hm, %bb.af ], [ %i.hl, %bb.ae ] ; 3 uses
  store i64 %.sink.i9, ptr %i.ch, align 8, !alias.scope !445
  %i.hn = add i64 %.sink.i9, %i.ci                ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.cc
  br i1 %i.ho, label %.lr.ph.split.us.i, label %._crit_edge.i5

._crit_edge.i5:                                   ; preds = %bb.ag, %bb.ad, %bb.aa
  store i64 %i.cc, ptr %i.ch, align 8, !alias.scope !445
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit

.split.us.i12:                                    ; preds = %.preheader.i10.us.us.preheader, %.preheader.i10.us.us, %.preheader.i10
  %.us-phi = phi i64 [ %i.gw, %.preheader.i10 ], [ %i.fu, %.preheader.i10.us.us ], [ %i.fu, %.preheader.i10.us.us.preheader ] ; 2 uses
  %i.hp = add i64 %.us-phi, %i.cg                 ; 2 uses
  store i64 %i.hp, ptr %i.ch, align 8, !alias.scope !445
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi, ptr %i.hq, align 8, !alias.scope !449
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hp, ptr %i.hr, align 8, !alias.scope !449
  br label %_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotations0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTcEE9call_onceB6_(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !450 {
bb.a:
  %i.a = icmp eq i32 %0, 94
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTcEE9call_onceB6_(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !451 {
bb.a:
  %i.a = icmp eq i32 %0, 124
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinRBw_ECsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtB8_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB27_5sliceSBZ_11sort_by_keyTNtNtB14_4size8TextSizeB3h_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0INtNtB27_3vec3VecBZ_EEB3M_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtBa_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEENCINvMNtB2u_5sliceSB1m_11sort_by_keyTNtNtB1r_4size8TextSizeB3F_ENCNvCsbXLDOPgjE5X_10test_utils12extract_tagss_0E0EB4a_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbXLDOPgjE5X_10test_utils14LineAnnotationENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_6string6StringEEENtNtNtB1q_3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizejEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_6string6StringEEENtNtNtB1s_3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtB7_6string6StringEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbXLDOPgjE5X_10test_utils14LineAnnotationENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_6string6StringEEENtNtNtB1x_3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size4size8TextSizejEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_6string6StringEEENtNtNtB1z_3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtB7_6string6StringEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsbXLDOPgjE5X_10test_utils14LineAnnotationENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsj8YhLqjPRUS_10dissimilar5ChunkENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsuAhG64lL82_9text_size4size8TextSizeB14_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscAsMj0W7j8b_3std3env3varReECsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCs9p4rgIae0RV_6caminoNtB2_11Utf8PathBuf13from_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCscAsMj0W7j8b_3std2fs5writeNtCs9p4rgIae0RV_6camino11Utf8PathBufReECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchescECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsuAhG64lL82_9text_size4size8TextSizeB18_E5rangeB18_INtNtNtCshzWfHUSfYae_4core3ops5range9RangeFromB18_EECsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs3_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutNtNtCsuAhG64lL82_9text_size4size8TextSizeB1F_E20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRB1F_B3f_EECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsuAhG64lL82_9text_size4size8TextSizeB18_E9split_offB18_ECsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsuAhG64lL82_9text_size4size8TextSizeB17_E6insertCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscAsMj0W7j8b_3std2fs14read_to_stringRNtNtB4_4path4PathECsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path12strip_prefixNtCs9p4rgIae0RV_6camino11Utf8PathBufECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCscAsMj0W7j8b_3std4pathNtB6_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCscAsMj0W7j8b_3std2fs14create_dir_allRNtNtB4_4path4PathECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCscAsMj0W7j8b_3std2fs5writeRNtNtB4_4path4PathReECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7bQJKOkRaNd_7profile10stop_watchNtB2_9StopWatch5start(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCscAsMj0W7j8b_3std4pathNtB5_7PathBufNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsbXLDOPgjE5X_10test_utils14LineAnnotationE8grow_oneBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size4size8TextSizeINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_6string6StringEEE8grow_oneCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size4size8TextSizejEE8grow_oneCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCshzWfHUSfYae_4core6option6OptionNtNtB7_6string6StringEEE8grow_oneCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

end_hunk_0
begin_hunk_1_@llvm.umax.i64
!211 = distinct !{!211, !209, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils: argument 0"}
!212 = distinct !{!212, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils"}
!213 = distinct !{!213, !212, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils: argument 1"}
!214 = distinct !{!214, !212, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils: argument 0"}
!215 = distinct !{!215, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherFcEbENtB5_8Searcher4nextCsbXLDOPgjE5X_10test_utils"}
!216 = distinct !{!216, !215, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherFcEbENtB5_8Searcher4nextCsbXLDOPgjE5X_10test_utils: argument 1"}
!217 = distinct !{!217, !215, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherFcEbENtB5_8Searcher4nextCsbXLDOPgjE5X_10test_utils: argument 0"}
!218 = distinct !{!218, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!219 = distinct !{!219, !218, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!220 = distinct !{!220, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils"}
!221 = distinct !{!221, !220, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils: argument 0"}
!222 = distinct !{null}
!223 = distinct !{!223, i1 true, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils"}
!224 = distinct !{!224, !223, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils: argument 0"}
!225 = distinct !{!225, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!226 = distinct !{!226, !225, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!227 = distinct !{!227, i1 true, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2y_5count0EB1D_"}
!228 = distinct !{!228, !227, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2y_5count0EB1D_: argument 0"}
!229 = distinct !{!229, i1 true, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3m_17NeverShortCircuitjE10wrap_mut_2jcNCNvYBV_B2y_5count0E0B3H_EB1D_"}
!230 = distinct !{!230, !229, !"_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3m_17NeverShortCircuitjE10wrap_mut_2jcNCNvYBV_B2y_5count0E0B3H_EB1D_: argument 0"}
!231 = distinct !{!231, i1 true, !"_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1H_9TakeWhileppEBH_8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss0_0NCINvMB2Q_B2N_10wrap_mut_2jcNCNvYIB2a_B3_B3w_EBH_5count0E0E0INtNtB2S_12control_flow11ControlFlowB2N_jEEB3A_"}
!232 = distinct !{!232, !231, !"_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1H_9TakeWhileppEBH_8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss0_0NCINvMB2Q_B2N_10wrap_mut_2jcNCNvYIB2a_B3_B3w_EBH_5count0E0E0INtNtB2S_12control_flow11ControlFlowB2N_jEEB3A_: argument 1"}
!233 = distinct !{!233, !231, !"_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBN_8adapters10take_whileINtB1H_9TakeWhileppEBH_8try_fold5checkcjINtNtNtB9_3ops9try_trait17NeverShortCircuitjENCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss0_0NCINvMB2Q_B2N_10wrap_mut_2jcNCNvYIB2a_B3_B3w_EBH_5count0E0E0INtNtB2S_12control_flow11ControlFlowB2N_jEEB3A_: argument 0"}
!234 = distinct !{!234, i1 true, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!235 = distinct !{!235, !234, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!236 = distinct !{!236, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils"}
!237 = distinct !{!237, !236, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils: argument 0"}
!238 = distinct !{!238, i1 true, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils"}
!239 = distinct !{!239, !238, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils: argument 0"}
!240 = distinct !{!240, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!241 = distinct !{!241, !240, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!242 = distinct !{!242, i1 true, !"_RINvMNtCshzWfHUSfYae_4core3stre4findcECsbXLDOPgjE5X_10test_utils"}
!243 = distinct !{!243, !242, !"_RINvMNtCshzWfHUSfYae_4core3stre4findcECsbXLDOPgjE5X_10test_utils: argument 0"}
!244 = distinct !{!244, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!245 = distinct !{!245, !244, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!246 = distinct !{!246, i1 true, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!247 = distinct !{!247, !246, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!248 = distinct !{!248, !246, !"_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!249 = distinct !{!249, i1 true, !"_RINvMNtCshzWfHUSfYae_4core3stre4findFcEbECsbXLDOPgjE5X_10test_utils"}
!250 = distinct !{!250, !249, !"_RINvMNtCshzWfHUSfYae_4core3stre4findFcEbECsbXLDOPgjE5X_10test_utils: argument 0"}
!251 = distinct !{!251, i1 true, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils"}
!252 = distinct !{!252, !251, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils: argument 1"}
!253 = distinct !{!253, !251, !"_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils: argument 0"}
!254 = distinct !{!254, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils"}
!255 = distinct !{!255, !254, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils: argument 1"}
!256 = distinct !{!256, !254, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern19MultiCharEqSearcherFcEbENtB5_8Searcher10next_matchCsbXLDOPgjE5X_10test_utils: argument 0"}
!257 = distinct !{!257, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherFcEbENtB5_8Searcher4nextCsbXLDOPgjE5X_10test_utils"}
!258 = distinct !{!258, !257, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherFcEbENtB5_8Searcher4nextCsbXLDOPgjE5X_10test_utils: argument 1"}
!259 = distinct !{!259, !257, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherFcEbENtB5_8Searcher4nextCsbXLDOPgjE5X_10test_utils: argument 0"}
!260 = distinct !{!260, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!261 = distinct !{!261, !260, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!262 = distinct !{!262, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils"}
!263 = distinct !{!263, !262, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils: argument 0"}
!264 = distinct !{!264, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!265 = distinct !{!265, !264, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!266 = distinct !{!266, i1 true, !"_RNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss2_0B3_"}
!267 = distinct !{!267, !266, !"_RNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss2_0B3_: argument 0"}
!268 = distinct !{!268, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss2_00ENtB5_7Pattern15strip_prefix_ofB14_"}
!269 = distinct !{!269, !268, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss2_00ENtB5_7Pattern15strip_prefix_ofB14_: argument 0"}
!270 = distinct !{!270, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss2_00ENtB5_8Searcher4nextB1b_"}
!271 = distinct !{!271, !270, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss2_00ENtB5_8Searcher4nextB1b_: argument 1"}
!272 = distinct !{!272, !270, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNCNvCsbXLDOPgjE5X_10test_utils24extract_line_annotationss2_00ENtB5_8Searcher4nextB1b_: argument 0"}
!273 = distinct !{!273, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!274 = distinct !{!274, !273, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!275 = distinct !{!275, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils"}
!276 = distinct !{!276, !275, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils: argument 0"}
!277 = distinct !{!277, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!278 = distinct !{!278, !277, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!279 = distinct !{!279, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!280 = distinct !{!280, !279, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!281 = distinct !{!281, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!282 = distinct !{!282, !281, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!283 = distinct !{!283, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbXLDOPgjE5X_10test_utils14LineAnnotationE8push_mutBH_"}
!284 = distinct !{!284, !283, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbXLDOPgjE5X_10test_utils14LineAnnotationE8push_mutBH_: argument 0"}
!285 = distinct !{!285, !283, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsbXLDOPgjE5X_10test_utils14LineAnnotationE8push_mutBH_: argument 1"}
!286 = distinct !{!286, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!287 = distinct !{!287, !286, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!288 = distinct !{!288, i1 true, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils"}
!289 = distinct !{!289, !288, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils: argument 0"}
!290 = distinct !{!290, i1 true, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsbXLDOPgjE5X_10test_utils14LineAnnotationENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBY_"}
!291 = distinct !{!291, !290, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsbXLDOPgjE5X_10test_utils14LineAnnotationENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBY_: argument 1"}
!292 = distinct !{!292, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvCsbXLDOPgjE5X_10test_utils19extract_annotations0EB2n_"}
!293 = distinct !{!293, !292, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvCsbXLDOPgjE5X_10test_utils19extract_annotations0EB2n_: argument 1"}
!294 = distinct !{!294, !292, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCsuAhG64lL82_9text_size4size8TextSizejEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvCsbXLDOPgjE5X_10test_utils19extract_annotations0EB2n_: argument 0"}
!295 = distinct !{!295, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizejEE8push_mutCsbXLDOPgjE5X_10test_utils"}
!296 = distinct !{!296, !295, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizejEE8push_mutCsbXLDOPgjE5X_10test_utils: argument 0"}
!297 = distinct !{!297, i1 true, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils"}
!298 = distinct !{!298, !297, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils: argument 0"}
!299 = distinct !{!299, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtB7_6string6StringEE8push_mutCsbXLDOPgjE5X_10test_utils"}
!300 = distinct !{!300, !299, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtB7_6string6StringEE8push_mutCsbXLDOPgjE5X_10test_utils: argument 0"}
!301 = distinct !{!301, !299, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtB7_6string6StringEE8push_mutCsbXLDOPgjE5X_10test_utils: argument 1"}
!302 = distinct !{!302, i1 true, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsbXLDOPgjE5X_10test_utils14LineAnnotationENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBY_"}
!303 = distinct !{!303, !302, !"_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsbXLDOPgjE5X_10test_utils14LineAnnotationENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBY_: argument 1:h.rot"}
!304 = distinct !{!304, i1 true, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!305 = distinct !{!305, !304, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!306 = distinct !{!306, i1 true, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbXLDOPgjE5X_10test_utils"}
!307 = distinct !{!307, !306, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsbXLDOPgjE5X_10test_utils: argument 0"}
!308 = distinct !{!308, i1 true, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!309 = distinct !{!309, !308, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!310 = distinct !{!310, i1 true, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizejEE8push_mutCsbXLDOPgjE5X_10test_utils"}
!311 = distinct !{!311, !310, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizejEE8push_mutCsbXLDOPgjE5X_10test_utils: argument 0"}
!312 = distinct !{!312, i1 true, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils"}
!313 = distinct !{!313, !312, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtCsuAhG64lL82_9text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsbXLDOPgjE5X_10test_utils: argument 0"}
!314 = !{i64 -1341340679237186428}
!315 = !{!187}
!316 = !{!192, !191, !189}
!317 = !{!195, !194}
!318 = !{!197}
!319 = !{!199}
!320 = !{!201}
!321 = !{!202, !201}
!322 = !{!202}
!323 = !{!206, !204, !201}
!324 = !{!208, !201}
!325 = !{!221, !219, !217, !216, !214, !213, !211, !210}
!326 = !{!224, !202, !201}
!327 = !{!226, !201}
!328 = !{!237, !235, !233, !232, !230, !228}
!329 = !{!239, !202, !201}
!330 = !{!241, !201}
!331 = !{!245, !243, !201}
!332 = !{!248, !247}
!333 = !{!243, !201}
!334 = !{!250, !201}
!335 = !{!263, !261, !259, !258, !256, !255, !253, !252}
!336 = !{!265, !201}
!337 = !{!267}
!338 = !{!269}
!339 = !{!269, !201}
!340 = !{!276, !274, !272, !271, !267}
!341 = !{!272, !271, !269, !267, !202, !201}
!342 = !{!278, !201}
!343 = !{!280, !201}
!344 = !{!282}
!345 = !{!284}
!346 = !{!285, !202}
!347 = !{!287, !201}
!348 = !{!289, !202, !201}
!349 = !{!291}
!350 = !{!294, !293}
!351 = !{!296}
!352 = !{!298}
!353 = !{!"branch_weights", i32 4001, i32 4000000}
!354 = !{!300}
!355 = !{!301}
!356 = !{!303}
!357 = !{!305}
!358 = !{!307}
!359 = !{!309}
!360 = !{!311}
!361 = !{!313}
!362 = !{i64 4113788642988398870}
!363 = distinct !{!363, i1 true, !"_RNvCsbXLDOPgjE5X_10test_utils14extract_offset"}
!364 = distinct !{!364, !363, !"_RNvCsbXLDOPgjE5X_10test_utils14extract_offset: argument 1"}
!365 = distinct !{!365, !363, !"_RNvCsbXLDOPgjE5X_10test_utils14extract_offset: argument 0"}
!366 = !{i64 -1761328825178109228}
!367 = !{!365, !364}
!368 = !{!365}
!369 = !{!364}
!370 = distinct !{!370, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils"}
!371 = distinct !{!371, !370, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils: argument 0"}
!372 = distinct !{!372, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils"}
!373 = distinct !{!373, !372, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils: argument 0"}
!374 = distinct !{!374, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbXLDOPgjE5X_10test_utils"}
!375 = distinct !{!375, !374, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbXLDOPgjE5X_10test_utils: argument 0"}
!376 = distinct !{!376, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils"}
!377 = distinct !{!377, !376, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB4_2io5error5ErrorEECsbXLDOPgjE5X_10test_utils: argument 0"}
!378 = distinct !{!378, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils"}
!379 = distinct !{!379, !378, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils: argument 0"}
!380 = distinct !{!380, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbXLDOPgjE5X_10test_utils"}
!381 = distinct !{!381, !380, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbXLDOPgjE5X_10test_utils: argument 0"}
!382 = distinct !{!382, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils"}
!383 = distinct !{!383, !382, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbXLDOPgjE5X_10test_utils: argument 0"}
!384 = distinct !{!384, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbXLDOPgjE5X_10test_utils"}
!385 = distinct !{!385, !384, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbXLDOPgjE5X_10test_utils: argument 0"}
!386 = distinct !{!386, i1 true, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsbXLDOPgjE5X_10test_utils"}
!387 = distinct !{!387, !386, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsbXLDOPgjE5X_10test_utils: argument 0"}
!388 = !{i64 -973324521471957247}
!389 = !{!371}
!390 = !{!373}
!391 = !{!373, !371}
!392 = !{!375}
!393 = !{!377}
!394 = !{!379}
!395 = !{!379, !377}
!396 = !{!381}
!397 = !{!383}
!398 = !{!385}
!399 = !{!387}
!400 = !{i64 -1109248615990374144}
!401 = !{i64 4948290144559104887}
!402 = !{i64 -8619167039518516978}
!403 = !{i64 6312802406670911556}
!404 = !{i64 -1850177733473350165}
!405 = distinct !{!405, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!406 = distinct !{!406, !405, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!407 = distinct !{!407, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!408 = distinct !{!408, !407, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!409 = distinct !{!409, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!410 = distinct !{!410, !409, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!411 = distinct !{!411, !407, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0:Peel0"}
!412 = distinct !{!412, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils"}
!413 = distinct !{!413, !412, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbXLDOPgjE5X_10test_utils: argument 0"}
!414 = distinct !{!414, !405, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!415 = distinct !{!415, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils"}
!416 = distinct !{!416, !415, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 0"}
!417 = distinct !{!417, !415, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 1"}
!418 = distinct !{!418, !415, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 2"}
!419 = distinct !{!419, !415, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 3"}
!420 = distinct !{!420, i1 true, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!421 = distinct !{!421, !420, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!422 = distinct !{!422, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils"}
!423 = distinct !{!423, !422, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 0"}
!424 = distinct !{!424, !422, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 1"}
!425 = distinct !{!425, !422, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 2"}
!426 = distinct !{!426, !422, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbXLDOPgjE5X_10test_utils: argument 3"}
!427 = distinct !{!427, i1 true, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!428 = distinct !{!428, !427, !"_RNvXsy_NtNtCshzWfHUSfYae_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!429 = !{i64 3142997450960883454}
!430 = !{i8 0, i8 2}
!431 = !{!406}
!432 = !{!408}
!433 = !{!410}
!434 = !{!411, !408}
!435 = !{!413, !411, !408}
!436 = !{!414, !406}
!437 = !{!413, !414, !406}
!438 = !{!416}
!439 = !{!417}
!440 = !{!418}
!441 = !{!419}
!442 = !{!421, !416}
!443 = !{!416, !417, !418, !419}
!444 = !{!423}
!445 = !{!424}
!446 = !{!425}
!447 = !{!426}
!448 = !{!423, !424, !425, !426}
!449 = !{!428, !423}
!450 = !{i64 -8245856891806966954}
!451 = !{i64 3410482003784242608}
end_hunk_1
