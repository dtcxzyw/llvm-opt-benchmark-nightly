Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.11?download=true
inline.NumInlined: 874
inline.NumDeleted: 530
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCskEUeM34gmJU_6ty_ide:bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !17, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !17, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1501, !noalias !1502, !nonnull !3, !align !17, !noundef !3 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !1503, !nonnull !3, !noundef !3
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !noalias !1503, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1501
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef i64 @_RNvMs1_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions15allocation_size(ptr noundef nonnull align 8 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !9, !noundef !3
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskEUeM34gmJU_6ty_ide7symbols11FlatSymbolsE6map_orIBw_jENvYNtNvBL_1__31symbols_for_file_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_sizeEBN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvXs0_NvNtCskEUeM34gmJU_6ty_ide7symbols1__NtB5_31symbols_for_file_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(56) %i.c) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskEUeM34gmJU_6ty_ide7symbols11FlatSymbolsE6map_orIBw_jENvYNtNvBL_1__31symbols_for_file_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_sizeEBN_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskEUeM34gmJU_6ty_ide7symbols11FlatSymbolsE6map_orIBw_jENvYNtNvBL_1__31symbols_for_file_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_sizeEBN_.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %.sroa.02.0.i = phi i64 [ %i.f, %bb.b ], [ 1, %bb.a ]
  %i.h = add i64 %i.b, 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @64, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 16, ptr %i.j, align 8
  store i64 %.sroa.02.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @63, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 28, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.h, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 56, ptr %.sroa.9.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtCskEUeM34gmJU_6ty_ide7symbols1__31symbols_for_file_Configuration_ENtNtNtB9_5table4memo4Memo14remove_outputsBY_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader14remove_outputs(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_ENtNtNtB9_5table4memo4Memo12memory_usageBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef i64 @_RNvMs1_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_14QueryRevisions15allocation_size(ptr noundef nonnull align 8 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !9, !noundef !3
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskEUeM34gmJU_6ty_ide7symbols11FlatSymbolsE6map_orIBw_jENvYNtNvBL_s_1__43symbols_for_file_global_only_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_sizeEBN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvXs0_NvNtCskEUeM34gmJU_6ty_ide7symbolss_1__NtB5_43symbols_for_file_global_only_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(56) %i.c) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskEUeM34gmJU_6ty_ide7symbols11FlatSymbolsE6map_orIBw_jENvYNtNvBL_s_1__43symbols_for_file_global_only_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_sizeEBN_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskEUeM34gmJU_6ty_ide7symbols11FlatSymbolsE6map_orIBw_jENvYNtNvBL_s_1__43symbols_for_file_global_only_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_sizeEBN_.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %.sroa.02.0.i = phi i64 [ %i.f, %bb.b ], [ 1, %bb.a ]
  %i.h = add i64 %i.b, 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @65, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 28, ptr %i.j, align 8
  store i64 %.sroa.02.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @63, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 28, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.h, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 56, ptr %.sroa.9.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs45bxiIjzMqg_5salsa8function4memoINtB5_4MemoNtNvNtCskEUeM34gmJU_6ty_ide7symbolss_1__43symbols_for_file_global_only_Configuration_ENtNtNtB9_5table4memo4Memo14remove_outputsBY_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtCs45bxiIjzMqg_5salsa8function4memoNtB5_10MemoHeader14remove_outputs(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in(i32 noundef range(i32 0, 1114112) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 18 uses
  %i.e = icmp samesign ult i32 %0, 128
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.f = icmp samesign ult i32 %0, 2048
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 4 uses
  %i.j = lshr i32 %0, 6
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128                ; 2 uses
  %i.n = lshr i32 %0, 12
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128
  %i.r = lshr i32 %0, 18
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = or disjoint i8 %i.s, -16
  br i1 %i.f, label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %0, 65536
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = or disjoint i8 %i.o, -32
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.i, ptr %i.w, align 1, !alias.scope !1530
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.d, %bb.e
  %i.x = phi i8 [ %i.v, %bb.d ], [ %i.t, %bb.e ]  ; 6 uses
  %.sink14 = phi i8 [ %i.m, %bb.d ], [ %i.q, %bb.e ]
  %.sink = phi i8 [ %i.i, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 3, %bb.d ], [ 4, %bb.e ] ; 11 uses
  store i8 %i.x, ptr %i.d, align 4, !alias.scope !1530
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sink14, ptr %i.y, align 1, !alias.scope !1530
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %.sink, ptr %i.z, align 2, !alias.scope !1530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.aa = icmp ult i64 %.sroa.0.05.i, %2
  br i1 %i.aa, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i, label %bb.f

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.thread: ; preds = %bb.b
  %i.ab = or disjoint i8 %i.k, -64                ; 2 uses
  store i8 %i.ab, ptr %i.d, align 4, !alias.scope !1530
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.i, ptr %i.ac, align 1, !alias.scope !1530
  %i.ad = icmp ugt i64 %2, 2
  br i1 %i.ad, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.thread, %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit
  %.sroa.0.05.i3 = phi i64 [ 2, %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.thread ], [ %.sroa.0.05.i, %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit ]
  %i.ae = icmp eq i64 %.sroa.0.05.i3, %2
  br i1 %i.ae, label %bb.q, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.af = add nsw i64 %.sroa.0.05.i, -1
  %i.ag = add nsw i64 %.sroa.0.05.i, -1           ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !1535, !noalias !1536, !noundef !3 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ai, %i.x
  br i1 %.not.i.not.i.i.i, label %.preheader97.split.i.i, label %bb.g

.preheader97.split.i.i:                           ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i
  %.not.i4.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i4.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.1

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.1: ; preds = %.preheader97.split.i.i
  %i.aj = add nsw i64 %.sroa.0.05.i, -2           ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !1535, !noalias !1536, !noundef !3 ; 2 uses
  %.not.i.not.i.i.i.1 = icmp eq i8 %i.al, %i.x
  br i1 %.not.i.not.i.i.i.1, label %.preheader97.split.i.i.1, label %bb.g

.preheader97.split.i.i.1:                         ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.1
  %.not.i4.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not.i4.i.1, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.2

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.2: ; preds = %.preheader97.split.i.i.1
  %i.am = add nsw i64 %.sroa.0.05.i, -3           ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !1535, !noalias !1536, !noundef !3 ; 2 uses
  %.not.i.not.i.i.i.2 = icmp eq i8 %i.ao, %i.x
  br i1 %.not.i.not.i.i.i.2, label %.preheader97.split.i.i.2, label %bb.g

.preheader97.split.i.i.2:                         ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.2
  %.not.i4.i.2 = icmp eq i64 %i.am, 0
  br i1 %.not.i4.i.2, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.3

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.3: ; preds = %.preheader97.split.i.i.2
  %i.ap = add nsw i64 %.sroa.0.05.i, -4           ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !1535, !noalias !1536, !noundef !3 ; 2 uses
  %.not.i.not.i.i.i.3 = icmp eq i8 %i.ar, %i.x
  br i1 %.not.i.not.i.i.i.3, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.3, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.2, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.1, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i
  %.lcssa44 = phi i64 [ %i.ag, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i ], [ %i.aj, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.1 ], [ %i.am, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.2 ], [ %i.ap, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.3 ]
  %.lcssa42 = phi i8 [ %i.ai, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i ], [ %i.al, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.1 ], [ %i.ao, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.2 ], [ %i.ar, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.3 ]
  %i.as = add nuw nsw i64 %.sroa.0.05.i, 15
  %i.at = icmp ult i64 %2, %i.as
  br i1 %i.at, label %.lr.ph.split.us.i.i.i, label %.thread93.i.i

.thread.i.i:                                      ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.thread
  %i.au = icmp ult i64 %2, 17
  br i1 %i.au, label %.lr.ph.split.us.i.i.i, label %.thread93.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.g
  %.sroa.0.05.i25 = phi i64 [ 2, %.thread.i.i ], [ %.sroa.0.05.i, %bb.g ] ; 4 uses
  %bcmp.i.i.us23.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i25), !alias.scope !1537, !noalias !1538
  %i.av = icmp eq i32 %bcmp.i.i.us23.i.i.i, 0
  br i1 %i.av, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.preheader

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i
  %i.aw = add i64 %2, -1                          ; 2 uses
  %.not28.i.i.i37 = icmp ugt i64 %.sroa.0.05.i25, %i.aw
  br i1 %.not28.i.i.i37, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i
  %i.ax = phi i64 [ %i.ba, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i ], [ %i.aw, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.preheader ]
  %.pn.i.i38 = phi ptr [ %i.ay, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i ], [ %1, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn.i.i38, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ay, ptr noundef nonnull readonly dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i25), !alias.scope !1537, !noalias !1538
  %i.az = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.az, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i: ; preds = %.split.us.i.i.i
  %i.ba = add i64 %i.ax, -1                       ; 2 uses
  %.not28.i.i.i = icmp ugt i64 %.sroa.0.05.i25, %i.ba
  br i1 %.not28.i.i.i, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

.thread93.i.i:                                    ; preds = %bb.g, %.thread.i.i
  %.sink33 = phi i8 [ %i.ab, %.thread.i.i ], [ %i.x, %bb.g ]
  %i.bb = phi i64 [ 1, %.thread.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %.sroa.0.05.i27 = phi i64 [ 2, %.thread.i.i ], [ %.sroa.0.05.i, %bb.g ] ; 2 uses
  %i.bc = phi i8 [ %i.i, %.thread.i.i ], [ %.lcssa42, %bb.g ]
  %storemerge9295.i.i = phi i64 [ 1, %.thread.i.i ], [ %.lcssa44, %bb.g ] ; 6 uses
  %i.bd = insertelement <16 x i8> poison, i8 %.sink33, i64 0
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bf = insertelement <16 x i8> poison, i8 %i.bc, i64 0
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1537
  store ptr %1, ptr %i.a, align 8, !noalias !1537
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.bi, align 8, !noalias !1537
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !1537
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bb, ptr %i.bk, align 8, !noalias !1537
  %i.bl = add nuw nsw i64 %.sroa.0.05.i27, 63     ; 2 uses
  %.not111.i.i = icmp ult i64 %i.bl, %2
  br i1 %.not111.i.i, label %.lr.ph.i8.i, label %.preheader.i5.i

.preheader.i5.i:                                  ; preds = %bb.k, %.thread93.i.i
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %.thread93.i.i ], [ %.sroa.014.2.3.i.i, %bb.k ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %.thread93.i.i ], [ %i.dh, %bb.k ] ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.0.05.i27, 15     ; 2 uses
  %i.bn = add i64 %.sroa.06.0.lcssa.i.i, %i.bm
  %i.bo = icmp uge i64 %i.bn, %2
  %i.bp = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3106.i.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond3106.i.i, label %._crit_edge.i6.i, label %.lr.ph108.i.i

.lr.ph.i8.i:                                      ; preds = %.thread93.i.i, %bb.k
  %.sroa.06.0104.i.i = phi i64 [ %i.dh, %bb.k ], [ 0, %.thread93.i.i ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0104.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !1539, !noalias !1540
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.i.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !1539, !noalias !1540
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.be
  %i.bt = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i, %i.bg
  %i.bu = and <16 x i1> %i.bs, %i.bt
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bw, align 1, !alias.scope !1539, !noalias !1540
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bx, align 1, !alias.scope !1539, !noalias !1540
  %i.by = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.be
  %i.bz = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i, %i.bg
  %i.ca = and <16 x i1> %i.by, %i.bz
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.cc, align 1, !alias.scope !1539, !noalias !1540
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.cd, align 1, !alias.scope !1539, !noalias !1540
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.be
  %i.cf = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i, %i.bg
  %i.cg = and <16 x i1> %i.ce, %i.cf
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.ci, align 1, !alias.scope !1539, !noalias !1540
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.cj, align 1, !alias.scope !1539, !noalias !1540
  %i.ck = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.be
  %i.cl = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i, %i.bg
  %i.cm = and <16 x i1> %i.ck, %i.cl
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %i.co = icmp eq i16 %i.bv, 0
  br i1 %i.co, label %.preheader96.1.i.i, label %bb.l

.preheader96.1.i.i:                               ; preds = %bb.l, %.lr.ph.i8.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i8.i ], [ %i.dm, %bb.l ] ; 3 uses
  %i.cp = icmp eq i16 %i.cb, 0
  br i1 %i.cp, label %.preheader96.2.i.i, label %bb.h

bb.h:                                             ; preds = %.preheader96.1.i.i
  %i.cq = or disjoint i64 %.sroa.06.0104.i.i, 16
  %i.cr = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.cs = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cq, i16 noundef %i.cb, i1 noundef zeroext %i.cr)
  %i.ct = zext i1 %i.cs to i8
  %i.cu = or i8 %.sroa.014.2.i.i, %i.ct
  br label %.preheader96.2.i.i

.preheader96.2.i.i:                               ; preds = %bb.h, %.preheader96.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader96.1.i.i ], [ %i.cu, %bb.h ] ; 3 uses
  %i.cv = icmp eq i16 %i.ch, 0
  br i1 %i.cv, label %.preheader96.3.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader96.2.i.i
  %i.cw = or disjoint i64 %.sroa.06.0104.i.i, 32
  %i.cx = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.cy = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cw, i16 noundef %i.ch, i1 noundef zeroext %i.cx)
  %i.cz = zext i1 %i.cy to i8
  %i.da = or i8 %.sroa.014.2.1.i.i, %i.cz
  br label %.preheader96.3.i.i

.preheader96.3.i.i:                               ; preds = %bb.i, %.preheader96.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader96.2.i.i ], [ %i.da, %bb.i ] ; 3 uses
  %i.db = icmp eq i16 %i.cn, 0
  br i1 %i.db, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader96.3.i.i
  %i.dc = or disjoint i64 %.sroa.06.0104.i.i, 48
  %i.dd = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.de = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dc, i16 noundef %i.cn, i1 noundef zeroext %i.dd)
  %i.df = zext i1 %i.de to i8
  %i.dg = or i8 %.sroa.014.2.2.i.i, %i.df
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader96.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader96.3.i.i ], [ %i.dg, %bb.j ] ; 2 uses
  %i.dh = add i64 %.sroa.06.0104.i.i, 64          ; 3 uses
  %i.di = add i64 %i.dh, %i.bl
  %i.dj = icmp uge i64 %i.di, %2
  %i.dk = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i.i, label %.preheader.i5.i, label %.lr.ph.i8.i

bb.l:                                             ; preds = %.lr.ph.i8.i
  %i.dl = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0104.i.i, i16 noundef %i.bv, i1 noundef zeroext false)
  %i.dm = zext i1 %i.dl to i8
  br label %.preheader96.1.i.i

._crit_edge.i6.i:                                 ; preds = %bb.m, %.preheader.i5.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i5.i ], [ %.sroa.014.4.i.i, %bb.m ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.bp, %.preheader.i5.i ], [ %i.eg, %bb.m ]
  %i.dn = sub nuw i64 %2, %i.bb
  %i.do = add i64 %i.dn, -16                      ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do ; 2 uses
  %.sroa.0.0.copyload.i58.i.i = load <16 x i8>, ptr %i.dp, align 1, !alias.scope !1539, !noalias !1541
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i59.i.i = load <16 x i8>, ptr %i.dq, align 1, !alias.scope !1539, !noalias !1541
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i, %i.be
  %i.ds = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i, %i.bg
  %i.dt = and <16 x i1> %i.dr, %i.ds
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %i.dv = icmp eq i16 %i.du, 0
  br i1 %i.dv, label %bb.o, label %bb.p

.lr.ph108.i.i:                                    ; preds = %.preheader.i5.i, %bb.m
  %.sroa.06.1107.i.i = phi i64 [ %i.ed, %bb.m ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i5.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.1107.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i = load <16 x i8>, ptr %i.dw, align 1, !alias.scope !1539, !noalias !1542
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i61.i.i = load <16 x i8>, ptr %i.dx, align 1, !alias.scope !1539, !noalias !1542
  %i.dy = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i, %i.be
  %i.dz = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i, %i.bg
  %i.ea = and <16 x i1> %i.dy, %i.dz
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %i.ec = icmp eq i16 %i.eb, 0
  br i1 %i.ec, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %.lr.ph108.i.i
  %.sroa.014.4.i.i = phi i8 [ 0, %.lr.ph108.i.i ], [ %i.ei, %bb.n ] ; 2 uses
  %i.ed = add i64 %.sroa.06.1107.i.i, 16          ; 2 uses
  %i.ee = add i64 %i.ed, %i.bm
  %i.ef = icmp uge i64 %i.ee, %2
  %i.eg = trunc nuw i8 %.sroa.014.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.ef, %i.eg
  br i1 %or.cond3.i.i, label %._crit_edge.i6.i, label %.lr.ph108.i.i

bb.n:                                             ; preds = %.lr.ph108.i.i
  %i.eh = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1107.i.i, i16 noundef %i.eb, i1 noundef zeroext false)
  %i.ei = zext i1 %i.eh to i8
  br label %bb.m

bb.o:                                             ; preds = %bb.p, %._crit_edge.i6.i
  %.sroa.014.5.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i, %._crit_edge.i6.i ], [ %i.el, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1537
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.p:                                             ; preds = %._crit_edge.i6.i
  %i.ej = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.do, i16 noundef %i.du, i1 noundef zeroext %.lcssa.i.i)
  %i.ek = zext i1 %i.ej to i8
  %i.el = or i8 %.sroa.014.3.lcssa.i.i, %i.ek
  br label %bb.o

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.3, %.preheader97.split.i.i.2, %.preheader97.split.i.i.1, %.preheader97.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1543
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 1, 5) %.sroa.0.05.i)
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.em = load i64, ptr %i.c, align 8, !range !5, !noalias !1543, !noundef !3
  %i.en = trunc nuw nsw i64 %i.em to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1543
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.q:                                             ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.d, ptr noundef nonnull readonly dereferenceable(1) %1, i64 range(i64 1, 5) %2), !alias.scope !1543
  %i.eo = icmp eq i32 %bcmp.i, 0
  %i.ep = zext i1 %i.eo to i8
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i, %.split.us.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.preheader, %bb.f, %.lr.ph.split.us.i.i.i, %bb.o, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i, %bb.q
  %.sroa.0.0.i = phi i8 [ 0, %bb.f ], [ 1, %.lr.ph.split.us.i.i.i ], [ %i.ep, %bb.q ], [ %i.en, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i ], [ %.sroa.014.5.i.i, %bb.o ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.preheader ], [ 1, %.split.us.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i ]
  %i.eq = trunc nuw i8 %.sroa.0.0.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit

bb.r:                                             ; preds = %bb.a
  %i.er = trunc nuw nsw i32 %0 to i8              ; 2 uses
  %i.es = icmp samesign ult i64 %2, 16
  br i1 %i.es, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %bb.r
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %i.et = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %i.er, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
  %i.eu = extractvalue { i64, i64 } %i.et, 0
  %i.ev = icmp eq i64 %i.eu, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.ez, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !1544, !noundef !3
  %i.ey = icmp eq i8 %i.ex, %i.er                 ; 2 uses
  %i.ez = add nuw nsw i64 %.sroa.01.05.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ez, %2
  %or.cond = select i1 %i.ey, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit, label %.lr.ph.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit: ; preds = %.lr.ph.i, %bb.s, %.preheader.i, %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
  %.sroa.0.0.in = phi i1 [ %i.eq, %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit ], [ %i.ev, %bb.s ], [ false, %.preheader.i ], [ %i.ey, %.lr.ph.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCskEUeM34gmJU_6ty_ide11all_symbols13AllSymbolInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 7                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1547
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1547
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1547
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCs56aZGHL6Dc6_7ruff_db5files4FileENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtNtBO_5alloc6GlobalEECskEUeM34gmJU_6ty_ide.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 4 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtNtBO_5alloc6GlobalEECskEUeM34gmJU_6ty_ide.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.j
  %i.s = shl i64 %i.f, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtNtBO_5alloc6GlobalEECskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtNtBO_5alloc6GlobalEECskEUeM34gmJU_6ty_ide.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !3 ; 4 uses
  %i.x = icmp ult i64 %i.w, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !3 ; 2 uses
  %.not3.i.i10 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtNtBO_5alloc6GlobalEECskEUeM34gmJU_6ty_ide.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.w
  %i.af = shl i64 %i.f, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 4 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleNtNtBO_5alloc6GlobalEECskEUeM34gmJU_6ty_ide.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 4 uses
  %i.k = icmp ult i64 %i.j, 768614336404564651
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleNtNtBO_5alloc6GlobalEECskEUeM34gmJU_6ty_ide.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.j
  %i.s = mul i64 %i.f, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleNtNtBO_5alloc6GlobalEECskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfDzkztWVnn_18ty_module_resolver6module6ModuleNtNtBO_5alloc6GlobalEECskEUeM34gmJU_6ty_ide.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !3 ; 4 uses
end_hunk_0
