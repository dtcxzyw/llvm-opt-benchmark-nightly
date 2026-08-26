Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_dtype-1a69546bcdb44d93.polars_dtype.5d47620fe5dcef62-cgu.08?download=true
inline.NumInlined: 158
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCs80wj1cxFixi_12polars_dtype:bb.a
  br i1 %i.l, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEE3newCs80wj1cxFixi_12polars_dtype.exit, !dbg !1268, !prof !155

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #23
          to label %.noexc unwind label %bb.c, !dbg !1269

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !1269

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #21
          to label %bb.e unwind label %bb.d, !dbg !1270

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !1271
  unreachable, !dbg !1271

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m, !dbg !1271

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEE3newCs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1274
  ret ptr %i.k, !dbg !1275
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE8from_vecCs80wj1cxFixi_12polars_dtype(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1276 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1277
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1278
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1278, !nonnull !13, !noundef !13
  %i.d = load i64, ptr %0, align 8, !dbg !1278, !range !203, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1278
  %i.f = load i64, ptr %i.e, align 8, !dbg !1278, !noundef !13 ; 2 uses
  %i.g = icmp ult i64 %i.f, 1152921504606846976, !dbg !1279
  tail call void @llvm.assume(i1 %i.g), !dbg !1284
  %i.h = shl nuw nsw i64 %i.f, 3, !dbg !1285
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1286
  store i64 1, ptr %i.i, align 8, !dbg !1286
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !1286
  store ptr %i.c, ptr %i.j, align 8, !dbg !1286
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !1286
  store i64 %i.h, ptr %i.k, align 8, !dbg !1286
  store i64 0, ptr %i.a, align 8, !dbg !1286
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1286
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1286
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1286
  store ptr @8, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1286
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !1290, !noalias !1298
  %i.l = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 49) 48, i64 noundef 8) #20, !dbg !1301, !noalias !1298 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !1302
  br i1 %i.m, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEE3newCs80wj1cxFixi_12polars_dtype.exit, !dbg !1303, !prof !155

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #23
          to label %.noexc unwind label %bb.c, !dbg !1304

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !1304

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #21
          to label %bb.e unwind label %bb.d, !dbg !1305

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !1306
  unreachable, !dbg !1306

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n, !dbg !1306

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEE3newCs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !1307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1309
  ret ptr %i.l, !dbg !1310
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEE9drop_slowCs80wj1cxFixi_12polars_dtype(ptr nonnull captures(address) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1311 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerINtNtBL_6buffer6BufferhEEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerINtNtB1k_6buffer6BufferhEEEECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.b, !dbg !1312

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #20, !dbg !1317
  resume { ptr, i32 } %i.a, !dbg !1312

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerINtNtB1k_6buffer6BufferhEEEECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #20, !dbg !1326
  ret void, !dbg !1332
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE9drop_slowCs80wj1cxFixi_12polars_dtype(ptr nonnull captures(address) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1333 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEEECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.b, !dbg !1334

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #20, !dbg !1339
  resume { ptr, i32 } %i.a, !dbg !1334

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEEECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #20, !dbg !1348
  ret void, !dbg !1354
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE9drop_slowCs80wj1cxFixi_12polars_dtype(ptr nonnull captures(address) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1355 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEEECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.b, !dbg !1356

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #20, !dbg !1361
  resume { ptr, i32 } %i.a, !dbg !1356

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEEECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #20, !dbg !1370
  ret void, !dbg !1376
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE9drop_slowCs80wj1cxFixi_12polars_dtype(ptr nonnull captures(address) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1377 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEEECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.b, !dbg !1378

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #20, !dbg !1383
  resume { ptr, i32 } %i.a, !dbg !1378

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEEECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #20, !dbg !1392
  ret void, !dbg !1398
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB6_7Display3fmtCs80wj1cxFixi_12polars_dtype(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1399 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1403, !nonnull !13, !align !652, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 23, !dbg !1404
  %i.c = load i8, ptr %i.b, align 1, !dbg !1404, !range !589, !alias.scope !1426, !noalias !1429, !noundef !13 ; 2 uses
  %i.d = icmp ugt i8 %i.c, -41, !dbg !1432
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !1432

bb.b:                                             ; preds = %bb.a
  %i.e = add i8 %i.c, 64, !dbg !1433
  %i.f = tail call i8 @llvm.umin.i8(i8 %i.e, i8 24), !dbg !1437
  %.sroa.0.0.i.i = zext nneg i8 %i.f to i64, !dbg !1437
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !1443

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !dbg !1446, !alias.scope !1426, !noalias !1429, !noundef !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1447
  %i.i = load i64, ptr %i.h, align 8, !dbg !1447, !alias.scope !1426, !noalias !1429, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !1448

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.i, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !1449
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ], !dbg !1450
  %i.j = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !1451
  ret i1 %i.j, !dbg !1452
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1t_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_ENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCs80wj1cxFixi_12polars_dtype(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1453 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1459
  %i.c = load i64, ptr %i.b, align 8, !dbg !1459, !noundef !13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1463
  %i.e = load i64, ptr %i.d, align 8, !dbg !1463, !noundef !13
  %i.f = icmp eq i64 %i.c, %i.e, !dbg !1465
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !1465

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1466
  %i.g = load ptr, ptr %0, align 8, !dbg !1467, !noundef !13 ; 3 uses
  %.not = icmp ne ptr %i.g, null, !dbg !1467      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1471
  %i.i = load i64, ptr %i.h, align 8, !dbg !1471
  %.sroa.12.0.a = select i1 %.not, i64 %i.c, i64 0, !dbg !1471
  %.sroa.12.0 = select i1 %.not, i64 %i.i, i64 undef, !dbg !1471 ; 2 uses
  %.sroa.8.0 = zext i1 %.not to i64, !dbg !1471   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472), !dbg !1475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476), !dbg !1475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478), !dbg !1475
  %i.j = load ptr, ptr %1, align 8, !dbg !1480, !alias.scope !1493, !noalias !1496, !noundef !13 ; 3 uses
  %.not.i.i = icmp ne ptr %i.j, null, !dbg !1480  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1498
  %i.l = load i64, ptr %i.k, align 8, !dbg !1498, !alias.scope !1478, !noalias !1499
  %.sroa.6.0.i = select i1 %.not.i.i, i64 %i.l, i64 undef, !dbg !1498 ; 2 uses
  %.sink19.i.i = zext i1 %.not.i.i to i64, !dbg !1498 ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i64 %i.c, i64 0, !dbg !1498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500), !dbg !1503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510), !dbg !1503
  store i64 %.sroa.8.0, ptr %i.a, align 8, !dbg !1512, !alias.scope !1516, !noalias !1518
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1512
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1512, !alias.scope !1516, !noalias !1518
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1512
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx19, align 8, !dbg !1512, !alias.scope !1516, !noalias !1518
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1512
  store i64 %.sroa.12.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !1512, !alias.scope !1516, !noalias !1518
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !1512
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !1512, !alias.scope !1516, !noalias !1518
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !1512
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !1512, !alias.scope !1516, !noalias !1518
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !1512
  store ptr %i.g, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !1512, !alias.scope !1516, !noalias !1518
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !1512
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !1512, !alias.scope !1516, !noalias !1518
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !1512
  store i64 %.sroa.12.0.a, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !1512, !alias.scope !1516, !noalias !1518
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !1512 ; 2 uses
  store i64 %.sink19.i.i, ptr %i.m, align 8, !dbg !1512, !alias.scope !1519, !noalias !1520
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !1512
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !1512, !alias.scope !1519, !noalias !1520
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !1512
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !1512, !alias.scope !1519, !noalias !1520
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !1512
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !1512, !alias.scope !1519, !noalias !1520
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104, !dbg !1512
  store i64 %.sink19.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !1512, !alias.scope !1519, !noalias !1520
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !1512
  store ptr null, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !1512, !alias.scope !1519, !noalias !1520
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !1512
  store ptr %i.j, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !1512, !alias.scope !1519, !noalias !1520
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128, !dbg !1512
  store i64 %.sroa.6.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !1512, !alias.scope !1519, !noalias !1520
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !1512
  store i64 %.sink.i.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !dbg !1512, !alias.scope !1519, !noalias !1520
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !1512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !dbg !1512, !alias.scope !1521, !noalias !1522
  br label %bb.d, !dbg !1523

bb.c:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTTRB1M_B3P_EB3O_ENCNvXs1t_BU_INtBU_8BTreeMapB1M_B1M_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit
  %.sroa.0.0 = phi i1 [ %i.bd, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTTRB1M_B3P_EB3O_ENCNvXs1t_BU_INtBU_8BTreeMapB1M_B1M_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit ], [ false, %bb.a ], !dbg !1529
  ret i1 %.sroa.0.0, !dbg !1530

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1d_EB1c_ENCNvXs1t_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB2m_8BTreeMapB1e_B1e_ENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i, %bb.b
  %i.o = call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB13_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a), !dbg !1531, !noalias !1538 ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0, !dbg !1531 ; 5 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1, !dbg !1531 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.p, null, !dbg !1543
  br i1 %.not.i.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTTRB1M_B3P_EB3O_ENCNvXs1t_BU_INtBU_8BTreeMapB1M_B1M_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, label %bb.e, !dbg !1547

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = call fastcc { ptr, ptr } @_RNvXsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB13_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(72) %i.m), !dbg !1548, !noalias !1538 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0, !dbg !1550 ; 5 uses
  %.not16.i.i.i = icmp eq ptr %i.s, null, !dbg !1551
  br i1 %.not16.i.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTTRB1M_B3P_EB3O_ENCNvXs1t_BU_INtBU_8BTreeMapB1M_B1M_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, label %bb.f, !dbg !1553

bb.f:                                             ; preds = %bb.e
  %i.t = extractvalue { ptr, ptr } %i.r, 1, !dbg !1550 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 23, !dbg !1554
  %i.v = load i8, ptr %i.u, align 1, !dbg !1554, !range !589, !alias.scope !1582, !noalias !1585, !noundef !13 ; 2 uses
  %i.w = icmp ugt i8 %i.v, -41, !dbg !1592
  br i1 %i.w, label %bb.h, label %bb.g, !dbg !1592

bb.g:                                             ; preds = %bb.f
  %i.x = add i8 %i.v, 64, !dbg !1593
  %i.y = call i8 @llvm.umin.i8(i8 %i.x, i8 24), !dbg !1595
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.y to i64, !dbg !1595
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i, !dbg !1598

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.p, align 8, !dbg !1599, !alias.scope !1582, !noalias !1585, !noundef !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !1600
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !1600, !alias.scope !1582, !noalias !1585, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i, !dbg !1601

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.ab, %bb.h ], [ %.sroa.0.0.i.i.i.i.i, %bb.g ], !dbg !1602 ; 2 uses
  %.sroa.0.0.i4.i.i.i = phi ptr [ %i.z, %bb.h ], [ %i.p, %bb.g ], !dbg !1603
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 23, !dbg !1604
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !1604, !range !589, !alias.scope !1616, !noalias !1619, !noundef !13 ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, -41, !dbg !1620
  br i1 %i.ae, label %bb.j, label %bb.i, !dbg !1620

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i
  %i.af = add i8 %i.ad, 64, !dbg !1621
  %i.ag = call i8 @llvm.umin.i8(i8 %i.af, i8 24), !dbg !1623
  %.sroa.0.0.i.i5.i.i.i = zext nneg i8 %i.ag to i64, !dbg !1623
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit8.i.i.i, !dbg !1626

bb.j:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i
  %i.ah = load ptr, ptr %i.s, align 8, !dbg !1627, !alias.scope !1616, !noalias !1619, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !1628
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !1628, !alias.scope !1616, !noalias !1619, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit8.i.i.i, !dbg !1629

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit8.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.01.0.i6.i.i.i = phi i64 [ %i.aj, %bb.j ], [ %.sroa.0.0.i.i5.i.i.i, %bb.i ], !dbg !1630
  %.sroa.0.0.i7.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %i.s, %bb.i ], !dbg !1631
  %i.ak = icmp eq i64 %.sroa.01.0.i.i.i.i, %.sroa.01.0.i6.i.i.i, !dbg !1632
  br i1 %i.ak, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCs80wj1cxFixi_12polars_dtype.exit3.i.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTTRB1M_B3P_EB3O_ENCNvXs1t_BU_INtBU_8BTreeMapB1M_B1M_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, !dbg !1632

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCs80wj1cxFixi_12polars_dtype.exit3.i.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit8.i.i.i
  %bcmp.i2.i.i.i = call i32 @bcmp(ptr %.sroa.0.0.i4.i.i.i, ptr %.sroa.0.0.i7.i.i.i, i64 %.sroa.01.0.i.i.i.i), !dbg !1650, !noalias !1619
  %i.al = icmp eq i32 %bcmp.i2.i.i.i, 0, !dbg !1650
  br i1 %i.al, label %bb.k, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTTRB1M_B3P_EB3O_ENCNvXs1t_BU_INtBU_8BTreeMapB1M_B1M_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, !dbg !1655

bb.k:                                             ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCs80wj1cxFixi_12polars_dtype.exit3.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 23, !dbg !1656
  %i.an = load i8, ptr %i.am, align 1, !dbg !1656, !range !589, !alias.scope !1665, !noalias !1668, !noundef !13 ; 2 uses
  %i.ao = icmp ugt i8 %i.an, -41, !dbg !1671
  br i1 %i.ao, label %bb.m, label %bb.l, !dbg !1671

bb.l:                                             ; preds = %bb.k
  %i.ap = add i8 %i.an, 64, !dbg !1672
  %i.aq = call i8 @llvm.umin.i8(i8 %i.ap, i8 24), !dbg !1674
  %.sroa.0.0.i.i9.i.i.i = zext nneg i8 %i.aq to i64, !dbg !1674
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i.i.i, !dbg !1677

bb.m:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.q, align 8, !dbg !1678, !alias.scope !1665, !noalias !1668, !noundef !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !1679
  %i.at = load i64, ptr %i.as, align 8, !dbg !1679, !alias.scope !1665, !noalias !1668, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i.i.i, !dbg !1680

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i.i.i: ; preds = %bb.m, %bb.l
  %.sroa.01.0.i10.i.i.i = phi i64 [ %i.at, %bb.m ], [ %.sroa.0.0.i.i9.i.i.i, %bb.l ], !dbg !1681 ; 2 uses
  %.sroa.0.0.i11.i.i.i = phi ptr [ %i.ar, %bb.m ], [ %i.q, %bb.l ], !dbg !1682
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 23, !dbg !1683
  %i.av = load i8, ptr %i.au, align 1, !dbg !1683, !range !589, !alias.scope !1690, !noalias !1619, !noundef !13 ; 2 uses
  %i.aw = icmp ugt i8 %i.av, -41, !dbg !1693
  br i1 %i.aw, label %bb.o, label %bb.n, !dbg !1693

bb.n:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i.i.i
  %i.ax = add i8 %i.av, 64, !dbg !1694
  %i.ay = call i8 @llvm.umin.i8(i8 %i.ax, i8 24), !dbg !1696
  %.sroa.0.0.i.i13.i.i.i = zext nneg i8 %i.ay to i64, !dbg !1696
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit16.i.i.i, !dbg !1699

bb.o:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit12.i.i.i
  %i.az = load ptr, ptr %i.t, align 8, !dbg !1700, !alias.scope !1690, !noalias !1619, !noundef !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !1701
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !1701, !alias.scope !1690, !noalias !1619, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit16.i.i.i, !dbg !1702

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit16.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.01.0.i14.i.i.i = phi i64 [ %i.bb, %bb.o ], [ %.sroa.0.0.i.i13.i.i.i, %bb.n ], !dbg !1703
  %.sroa.0.0.i15.i.i.i = phi ptr [ %i.az, %bb.o ], [ %i.t, %bb.n ], !dbg !1704
  %i.bc = icmp eq i64 %.sroa.01.0.i10.i.i.i, %.sroa.01.0.i14.i.i.i, !dbg !1705
  br i1 %i.bc, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1d_EB1c_ENCNvXs1t_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB2m_8BTreeMapB1e_B1e_ENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTTRB1M_B3P_EB3O_ENCNvXs1t_BU_INtBU_8BTreeMapB1M_B1M_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, !dbg !1705

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1d_EB1c_ENCNvXs1t_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB2m_8BTreeMapB1e_B1e_ENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit16.i.i.i
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.sroa.0.0.i11.i.i.i, ptr %.sroa.0.0.i15.i.i.i, i64 %.sroa.01.0.i10.i.i.i), !dbg !1710, !noalias !1619
  %.not.i = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !1710
  br i1 %.not.i, label %bb.d, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTTRB1M_B3P_EB3O_ENCNvXs1t_BU_INtBU_8BTreeMapB1M_B1M_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, !dbg !1712

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTTRB1M_B3P_EB3O_ENCNvXs1t_BU_INtBU_8BTreeMapB1M_B1M_ENtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.d, %bb.e, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit8.i.i.i, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCs80wj1cxFixi_12polars_dtype.exit3.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit16.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1d_EB1c_ENCNvXs1t_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB2m_8BTreeMapB1e_B1e_ENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i
  %i.bd = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ false, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1d_EB1c_ENCNvXs1t_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB2m_8BTreeMapB1e_B1e_ENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit16.i.i.i ], [ false, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCs80wj1cxFixi_12polars_dtype.exit3.i.i.i ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit8.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1713
  br label %bb.c, !dbg !1465
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 !dbg !1714 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1718 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1718, !alias.scope !1726, !noundef !13 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !1729
  tail call void @llvm.assume(i1 %i.c), !dbg !1731
  %i.d = icmp samesign ult i32 %1, 128, !dbg !1732 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b, !dbg !1732

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048, !dbg !1742
  br i1 %i.e, label %bb.d, label %bb.c, !dbg !1742

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536, !dbg !1743
  %..i = select i1 %i.f, i64 3, i64 4, !dbg !1744
  br label %bb.d, !dbg !1744

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ], !dbg !1744 ; 2 uses
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i), !dbg !1745
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1749
  %i.h = load ptr, ptr %i.g, align 8, !dbg !1749, !alias.scope !1726, !nonnull !13, !noundef !13
  %i.i = load i64, ptr %i.a, align 8, !dbg !1758, !alias.scope !1726, !noundef !13 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !1762
  tail call void @llvm.assume(i1 %i.j), !dbg !1764
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i, !dbg !1765 ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e, !dbg !1768

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048, !dbg !1773
  %i.m = trunc i32 %1 to i8, !dbg !1774
  %i.n = and i8 %i.m, 63, !dbg !1774
  %i.o = or disjoint i8 %i.n, -128, !dbg !1774    ; 3 uses
  %i.p = lshr i32 %1, 6, !dbg !1776
  %i.q = trunc i32 %i.p to i8, !dbg !1778         ; 2 uses
  %i.r = and i8 %i.q, 63, !dbg !1778
  %i.s = or disjoint i8 %i.r, -128, !dbg !1778    ; 2 uses
  %i.t = lshr i32 %1, 12, !dbg !1779
  %i.u = trunc i32 %i.t to i8, !dbg !1781         ; 2 uses
  %i.v = and i8 %i.u, 63, !dbg !1781
  %i.w = or disjoint i8 %i.v, -128, !dbg !1781
  %i.x = lshr i32 %1, 18, !dbg !1782
  %i.y = trunc nuw nsw i32 %i.x to i8, !dbg !1784
  %i.z = or disjoint i8 %i.y, -16, !dbg !1784
  br i1 %i.l, label %bb.g, label %bb.h, !dbg !1785

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8, !dbg !1787
  store i8 %i.aa, ptr %i.k, align 1, !dbg !1787
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !1788

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64, !dbg !1791
  store i8 %i.ab, ptr %i.k, align 1, !dbg !1791
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !1792
  store i8 %i.o, ptr %i.ac, align 1, !dbg !1795
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !1796

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536, !dbg !1773
  br i1 %i.ad, label %bb.i, label %bb.j, !dbg !1798

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32, !dbg !1799
  store i8 %i.ae, ptr %i.k, align 1, !dbg !1799
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !1800
  store i8 %i.s, ptr %i.af, align 1, !dbg !1802
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !1803
  store i8 %i.o, ptr %i.ag, align 1, !dbg !1805
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !1796

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1, !dbg !1806
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !1807
  store i8 %i.w, ptr %i.ah, align 1, !dbg !1809
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !1810
  store i8 %i.s, ptr %i.ai, align 1, !dbg !1812
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3, !dbg !1813
  store i8 %i.o, ptr %i.aj, align 1, !dbg !1815
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !1816

_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b, !dbg !1817
  store i64 %i.ak, ptr %i.a, align 8, !dbg !1818, !alias.scope !1726
  ret i1 false, !dbg !1821
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 !dbg !1822 {
bb.a:
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !dbg !1823, !noalias !1837
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1840 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1840, !alias.scope !1843, !noalias !1837, !noundef !13 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !1847
  tail call void @llvm.assume(i1 %i.c), !dbg !1849
  %.not.i.i = icmp eq i64 %2, 0, !dbg !1850
  br i1 %.not.i.i, label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8push_str.exit, label %bb.b, !dbg !1850

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1852
  %i.e = load ptr, ptr %i.d, align 8, !dbg !1852, !alias.scope !1843, !noalias !1837, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b, !dbg !1861
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !1864
  %.pre.i.i = load i64, ptr %i.a, align 8, !dbg !1867, !alias.scope !1843, !noalias !1837
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8push_str.exit, !dbg !1868

_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ], !dbg !1867
  %i.h = add i64 %i.g, %2, !dbg !1867
  store i64 %i.h, ptr %i.a, align 8, !dbg !1867, !alias.scope !1843, !noalias !1837
  ret i1 false, !dbg !1869
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !1870 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1871, !nonnull !13, !noundef !13 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1874, !range !132, !noundef !13
  %i.c = icmp eq i64 %i.b, 3, !dbg !1878
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1878

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1879
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !1886
  %i.f = icmp eq i64 %i.e, 1, !dbg !1889
  br i1 %i.f, label %bb.d, label %bb.c, !dbg !1889, !prof !155

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret void, !dbg !1890

bb.d:                                             ; preds = %bb.b
  fence acquire, !dbg !1891
  tail call fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEE9drop_slowCs80wj1cxFixi_12polars_dtype(ptr %i.a), !dbg !1893
  br label %bb.c, !dbg !1893
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !1894 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1895, !nonnull !13, !noundef !13 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1898, !range !132, !noundef !13
  %i.c = icmp eq i64 %i.b, 3, !dbg !1902
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1902

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1903
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !1910
  %i.f = icmp eq i64 %i.e, 1, !dbg !1913
  br i1 %i.f, label %bb.d, label %bb.c, !dbg !1913, !prof !155

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret void, !dbg !1914

bb.d:                                             ; preds = %bb.b
  fence acquire, !dbg !1915
  tail call fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE9drop_slowCs80wj1cxFixi_12polars_dtype(ptr %i.a), !dbg !1917
  br label %bb.c, !dbg !1917
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !124 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1918, !nonnull !13, !noundef !13 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1921, !range !132, !noundef !13
  %i.c = icmp eq i64 %i.b, 3, !dbg !1922
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1922

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1923
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !1927
  %i.f = icmp eq i64 %i.e, 1, !dbg !1929
  br i1 %i.f, label %bb.d, label %bb.c, !dbg !1929, !prof !155

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret void, !dbg !1930

bb.d:                                             ; preds = %bb.b
  fence acquire, !dbg !1931
  tail call fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE9drop_slowCs80wj1cxFixi_12polars_dtype(ptr %i.a), !dbg !1933
  br label %bb.c, !dbg !1933
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !1934 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1935, !nonnull !13, !noundef !13 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1938, !range !132, !noundef !13
  %i.c = icmp eq i64 %i.b, 3, !dbg !1942
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1942

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1943
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !1950
  %i.f = icmp eq i64 %i.e, 1, !dbg !1953
  br i1 %i.f, label %bb.d, label %bb.c, !dbg !1953, !prof !155

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret void, !dbg !1954

bb.d:                                             ; preds = %bb.b
  fence acquire, !dbg !1955
  tail call fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE9drop_slowCs80wj1cxFixi_12polars_dtype(ptr %i.a), !dbg !1957
  br label %bb.c, !dbg !1957
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterOINtNtNtCs2mZqlW55729_12polars_utils5parma3raw11AllocHeaderemEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1958 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1962
  %i.b = load ptr, ptr %0, align 8, !dbg !1970, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1971
  %i.d = load i64, ptr %i.c, align 8, !dbg !1971, !noundef !13
  store i64 %i.d, ptr %i.a, align 8, !dbg !1972
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1972
  store ptr %i.b, ptr %i.e, align 8, !dbg !1972
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecOINtNtNtCs2mZqlW55729_12polars_utils5parma3raw11AllocHeaderemEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !1977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1980
  ret void, !dbg !1981
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB13_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1982 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !1984 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !1984, !noundef !13 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !1984
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !1984

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1, !dbg !1985
  store i64 %i.g, ptr %i.d, align 8, !dbg !1985
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(64) %0), !dbg !1986 ; 3 uses
  %.not = icmp eq ptr %i.h, null, !dbg !1992
  br i1 %.not, label %bb.h, label %bb.d, !dbg !1995, !prof !155

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeETRB1R_B39_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs80wj1cxFixi_12polars_dtype.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeETRB1R_B39_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs80wj1cxFixi_12polars_dtype.exit ], [ undef, %bb.a ], !dbg !1996
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeETRB1R_B39_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs80wj1cxFixi_12polars_dtype.exit ], [ null, %bb.a ], !dbg !1996
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !1997
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1, !dbg !1997
  ret { ptr, ptr } %i.j, !dbg !1997

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1998, !noalias !2009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2012, !noalias !2009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2012, !noalias !2017
  invoke void @_RNvMsh_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeE7next_kvCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g, !dbg !2021

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !dbg !2022, !noalias !2017, !noundef !13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null, !dbg !2022
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !2028, !prof !155

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2029, !noalias !2017
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %.noexc1.i unwind label %bb.g, !dbg !2030, !noalias !2009

.noexc1.i:                                        ; preds = %bb.e
  unreachable, !dbg !2030

bb.f:                                             ; preds = %.noexc.i
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2033
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx.i.i, i64 16, i1 false), !dbg !2033, !noalias !2017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2029, !noalias !2017
  store ptr %i.k, ptr %i.a, align 8, !dbg !2034, !noalias !2017
  invoke void @_RNvMsp_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !dbg !2035, !noalias !2009

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1E_NtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeETRB1R_B39_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs80wj1cxFixi_12polars_dtype.exit unwind label %bb.g, !dbg !2037, !noalias !2009 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !dbg !2038
  unreachable, !dbg !2038

_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeETRB1R_B39_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs80wj1cxFixi_12polars_dtype.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2045, !noalias !2009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2047, !noalias !2009
  %i.o = extractvalue { ptr, ptr } %i.m, 0, !dbg !2048
  %i.p = extractvalue { ptr, ptr } %i.m, 1, !dbg !2048
  br label %bb.c, !dbg !2049

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24, !dbg !2050
  unreachable, !dbg !2050
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 !dbg !2051 {
_RNvXs_NvNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtQNtNtCsgZ49sUHp3tW_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs80wj1cxFixi_12polars_dtype.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @9, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !2053, !inline_history !2058
  ret i1 %i.a, !dbg !2059
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecOINtNtNtCs2mZqlW55729_12polars_utils5parma3raw11AllocHeaderemEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeE7next_kvCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1E_NtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs80wj1cxFixi_12polars_dtype(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { noinline }
attributes #23 = { noreturn }
attributes #24 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.dbg.cu = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!5 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !6, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "crates/polars-dtype/src/lib.rs/@/polars_dtype.5d47620fe5dcef62-cgu.08", directory: "/opt-bench/work/pola-rs/polars")
!7 = distinct !DISubprogram(name: "fill_with<core::mem::maybe_uninit::MaybeUninit<core::sync::atomic::Atomic<*mut u8>>, polars_utils::parma::raw::{impl#0}::new::{closure_env#1}<str, u32>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitINtNtNtB5_4sync6atomic6AtomicOhEE9fill_withNCNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB1W_11AllocHeaderemE3news_0ECs80wj1cxFixi_12polars_dtype", scope: !9, file: !8, line: 4190, type: !12, scopeLine: 4190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!8 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b606e5d97bff599edd0dcbc6067a14f1")
!9 = !DINamespace(name: "{impl#0}", scope: !10)
!10 = !DINamespace(name: "slice", scope: !11)
!11 = !DINamespace(name: "core", scope: null)
!12 = !DISubroutineType(types: !13)
!13 = !{}
!14 = !DILocation(line: 1717, column: 9, scope: !15, inlinedAt: !20)
!15 = distinct !DISubprogram(name: "eq<core::mem::maybe_uninit::MaybeUninit<core::sync::atomic::Atomic<*mut u8>>>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtNtB9_4sync6atomic6AtomicOhEEENtNtB9_3cmp9PartialEq2eqCs80wj1cxFixi_12polars_dtype", scope: !17, file: !16, line: 1716, type: !12, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!16 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84a86787d0c87de0d69993189aea0a0d")
!17 = !DINamespace(name: "{impl#15}", scope: !18)
!18 = !DINamespace(name: "non_null", scope: !19)
!19 = !DINamespace(name: "ptr", scope: !11)
!20 = !DILocation(line: 180, column: 28, scope: !21, inlinedAt: !27)
!21 = distinct !DILexicalBlock(scope: !23, file: !22, line: 162, column: 17)
!22 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "87d1f0c2746f51593d75ddf4c9271f14")
!23 = distinct !DILexicalBlock(scope: !24, file: !22, line: 161, column: 17)
!24 = distinct !DISubprogram(name: "next<core::mem::maybe_uninit::MaybeUninit<core::sync::atomic::Atomic<*mut u8>>>", linkageName: "_RNvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtNtBa_4sync6atomic6AtomicOhEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype", scope: !25, file: !22, line: 157, type: !12, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!25 = !DINamespace(name: "{impl#179}", scope: !26)
!26 = !DINamespace(name: "iter", scope: !10)
!27 = !DILocation(line: 4194, column: 19, scope: !28)
!28 = !DILexicalBlockFile(scope: !29, file: !8, discriminator: 2)
!29 = distinct !DILexicalBlock(scope: !7, file: !8, line: 4194, column: 9)
!30 = !DILocation(line: 961, column: 18, scope: !31, inlinedAt: !35)
!31 = distinct !DISubprogram(name: "add<core::mem::maybe_uninit::MaybeUninit<core::sync::atomic::Atomic<*mut u8>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitINtNtNtB6_4sync6atomic6AtomicOhEE3addCs80wj1cxFixi_12polars_dtype", scope: !33, file: !32, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!32 = !DIFile(filename: "library/core/src/ptr/mut_ptr.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7c03c8e0ae695174f7f10881dc49d2cb")
!33 = !DINamespace(name: "{impl#0}", scope: !34)
!34 = !DINamespace(name: "mut_ptr", scope: !19)
!35 = !DILocation(line: 242, column: 82, scope: !36, inlinedAt: !41)
end_hunk_0
begin_hunk_1_@llvm.umin.i8
!1848 = distinct !DILexicalBlock(scope: !1841, file: !781, line: 3024, column: 9)
!1849 = !DILocation(line: 3029, column: 18, scope: !1848, inlinedAt: !1842)
!1850 = !DILocation(line: 2908, column: 12, scope: !1851, inlinedAt: !1826)
!1851 = distinct !DILexicalBlock(scope: !1824, file: !781, line: 2907, column: 9)
!1852 = !DILocation(line: 614, column: 9, scope: !1853, inlinedAt: !1854)
!1853 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs80wj1cxFixi_12polars_dtype", scope: !772, file: !771, line: 613, type: !12, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1854 = distinct !DILocation(line: 609, column: 14, scope: !1855, inlinedAt: !1856)
!1855 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs80wj1cxFixi_12polars_dtype", scope: !772, file: !771, line: 608, type: !12, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1856 = distinct !DILocation(line: 296, column: 20, scope: !1857, inlinedAt: !1858)
!1857 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCs80wj1cxFixi_12polars_dtype", scope: !778, file: !771, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1858 = distinct !DILocation(line: 2026, column: 18, scope: !1859, inlinedAt: !1860)
!1859 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE10as_mut_ptrCs80wj1cxFixi_12polars_dtype", scope: !782, file: !781, line: 2023, type: !12, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1860 = distinct !DILocation(line: 2910, column: 66, scope: !1851, inlinedAt: !1826)
!1861 = !DILocation(line: 961, column: 18, scope: !1862, inlinedAt: !1863)
!1862 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCs80wj1cxFixi_12polars_dtype", scope: !33, file: !32, line: 927, type: !12, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1863 = distinct !DILocation(line: 2910, column: 79, scope: !1851, inlinedAt: !1826)
!1864 = !DILocation(line: 552, column: 14, scope: !1865, inlinedAt: !1866)
!1865 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECs80wj1cxFixi_12polars_dtype", scope: !19, file: !75, line: 531, type: !12, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1866 = distinct !DILocation(line: 2910, column: 17, scope: !1851, inlinedAt: !1826)
!1867 = !DILocation(line: 2913, column: 9, scope: !1851, inlinedAt: !1826)
!1868 = !DILocation(line: 2908, column: 9, scope: !1851, inlinedAt: !1826)
!1869 = !DILocation(line: 3347, column: 6, scope: !1822)
!1870 = distinct !DISubprogram(name: "drop<polars_buffer::buffer::Buffer<u8>>", linkageName: "_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype", scope: !125, file: !97, line: 482, type: !12, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1871 = !DILocation(line: 411, column: 20, scope: !1872, inlinedAt: !1873)
!1872 = distinct !DISubprogram(name: "inner<polars_buffer::buffer::Buffer<u8>>", linkageName: "_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEE5innerCs80wj1cxFixi_12polars_dtype", scope: !1171, file: !97, line: 410, type: !12, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1873 = !DILocation(line: 483, column: 26, scope: !1870)
!1874 = !DILocation(line: 484, column: 21, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1876, file: !97, discriminator: 0)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !122, line: 429, column: 9)
!1877 = distinct !DILexicalBlock(scope: !1870, file: !97, line: 483, column: 9)
!1878 = !DILocation(line: 484, column: 12, scope: !1875)
!1879 = !DILocation(line: 2447, column: 9, scope: !1880, inlinedAt: !1881)
!1880 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<u64>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8yEE3getCs80wj1cxFixi_12polars_dtype", scope: !140, file: !139, line: 2443, type: !12, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1881 = !DILocation(line: 3615, column: 24, scope: !1882, inlinedAt: !1883)
!1882 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE6as_ptr", scope: !145, file: !144, line: 3614, type: !12, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1883 = !DILocation(line: 3193, column: 42, scope: !1884, inlinedAt: !1885)
!1884 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE9fetch_sub", scope: !145, file: !144, line: 3191, type: !12, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1885 = !DILocation(line: 489, column: 28, scope: !1877)
!1886 = !DILocation(line: 3956, column: 24, scope: !1887, inlinedAt: !1888)
!1887 = distinct !DISubprogram(name: "atomic_sub<u64, u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subyyECs80wj1cxFixi_12polars_dtype", scope: !146, file: !144, line: 3950, type: !12, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1888 = !DILocation(line: 3193, column: 26, scope: !1884, inlinedAt: !1885)
!1889 = !DILocation(line: 489, column: 12, scope: !1877)
!1890 = !DILocation(line: 495, column: 6, scope: !1870)
!1891 = !DILocation(line: 4387, column: 24, scope: !157, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 490, column: 13, scope: !1877)
!1893 = !DILocation(line: 492, column: 22, scope: !1877)
!1894 = distinct !DISubprogram(name: "drop<polars_arrow::array::binview::view::View>", linkageName: "_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype", scope: !125, file: !97, line: 482, type: !12, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1895 = !DILocation(line: 411, column: 20, scope: !1896, inlinedAt: !1897)
!1896 = distinct !DISubprogram(name: "inner<polars_arrow::array::binview::view::View>", linkageName: "_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE5innerCs80wj1cxFixi_12polars_dtype", scope: !1171, file: !97, line: 410, type: !12, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1897 = !DILocation(line: 483, column: 26, scope: !1894)
!1898 = !DILocation(line: 484, column: 21, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1900, file: !97, discriminator: 0)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !122, line: 429, column: 9)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !97, line: 483, column: 9)
!1902 = !DILocation(line: 484, column: 12, scope: !1899)
!1903 = !DILocation(line: 2447, column: 9, scope: !1904, inlinedAt: !1905)
!1904 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<u64>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8yEE3getCs80wj1cxFixi_12polars_dtype", scope: !140, file: !139, line: 2443, type: !12, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1905 = !DILocation(line: 3615, column: 24, scope: !1906, inlinedAt: !1907)
!1906 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE6as_ptr", scope: !145, file: !144, line: 3614, type: !12, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1907 = !DILocation(line: 3193, column: 42, scope: !1908, inlinedAt: !1909)
!1908 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE9fetch_sub", scope: !145, file: !144, line: 3191, type: !12, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1909 = !DILocation(line: 489, column: 28, scope: !1901)
!1910 = !DILocation(line: 3956, column: 24, scope: !1911, inlinedAt: !1912)
!1911 = distinct !DISubprogram(name: "atomic_sub<u64, u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subyyECs80wj1cxFixi_12polars_dtype", scope: !146, file: !144, line: 3950, type: !12, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1912 = !DILocation(line: 3193, column: 26, scope: !1908, inlinedAt: !1909)
!1913 = !DILocation(line: 489, column: 12, scope: !1901)
!1914 = !DILocation(line: 495, column: 6, scope: !1894)
!1915 = !DILocation(line: 4387, column: 24, scope: !157, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 490, column: 13, scope: !1901)
!1917 = !DILocation(line: 492, column: 22, scope: !1901)
!1918 = !DILocation(line: 411, column: 20, scope: !1919, inlinedAt: !1920)
!1919 = distinct !DISubprogram(name: "inner<u8>", linkageName: "_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE5innerCs80wj1cxFixi_12polars_dtype", scope: !1171, file: !97, line: 410, type: !12, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1920 = !DILocation(line: 483, column: 26, scope: !124)
!1921 = !DILocation(line: 484, column: 21, scope: !120)
!1922 = !DILocation(line: 484, column: 12, scope: !120)
!1923 = !DILocation(line: 2447, column: 9, scope: !138, inlinedAt: !1924)
!1924 = !DILocation(line: 3615, column: 24, scope: !143, inlinedAt: !1925)
!1925 = !DILocation(line: 3193, column: 42, scope: !149, inlinedAt: !1926)
!1926 = !DILocation(line: 489, column: 28, scope: !123)
!1927 = !DILocation(line: 3956, column: 24, scope: !152, inlinedAt: !1928)
!1928 = !DILocation(line: 3193, column: 26, scope: !149, inlinedAt: !1926)
!1929 = !DILocation(line: 489, column: 12, scope: !123)
!1930 = !DILocation(line: 495, column: 6, scope: !124)
!1931 = !DILocation(line: 4387, column: 24, scope: !157, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 490, column: 13, scope: !123)
!1933 = !DILocation(line: 492, column: 22, scope: !123)
!1934 = distinct !DISubprogram(name: "drop<i64>", linkageName: "_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype", scope: !125, file: !97, line: 482, type: !12, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1935 = !DILocation(line: 411, column: 20, scope: !1936, inlinedAt: !1937)
!1936 = distinct !DISubprogram(name: "inner<i64>", linkageName: "_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE5innerCs80wj1cxFixi_12polars_dtype", scope: !1171, file: !97, line: 410, type: !12, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1937 = !DILocation(line: 483, column: 26, scope: !1934)
!1938 = !DILocation(line: 484, column: 21, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1940, file: !97, discriminator: 0)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !122, line: 429, column: 9)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !97, line: 483, column: 9)
!1942 = !DILocation(line: 484, column: 12, scope: !1939)
!1943 = !DILocation(line: 2447, column: 9, scope: !1944, inlinedAt: !1945)
!1944 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<u64>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8yEE3getCs80wj1cxFixi_12polars_dtype", scope: !140, file: !139, line: 2443, type: !12, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1945 = !DILocation(line: 3615, column: 24, scope: !1946, inlinedAt: !1947)
!1946 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE6as_ptr", scope: !145, file: !144, line: 3614, type: !12, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1947 = !DILocation(line: 3193, column: 42, scope: !1948, inlinedAt: !1949)
!1948 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE9fetch_sub", scope: !145, file: !144, line: 3191, type: !12, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1949 = !DILocation(line: 489, column: 28, scope: !1941)
!1950 = !DILocation(line: 3956, column: 24, scope: !1951, inlinedAt: !1952)
!1951 = distinct !DISubprogram(name: "atomic_sub<u64, u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subyyECs80wj1cxFixi_12polars_dtype", scope: !146, file: !144, line: 3950, type: !12, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1952 = !DILocation(line: 3193, column: 26, scope: !1948, inlinedAt: !1949)
!1953 = !DILocation(line: 489, column: 12, scope: !1941)
!1954 = !DILocation(line: 495, column: 6, scope: !1934)
!1955 = !DILocation(line: 4387, column: 24, scope: !157, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 490, column: 13, scope: !1941)
!1957 = !DILocation(line: 492, column: 22, scope: !1941)
!1958 = distinct !DISubprogram(name: "drop<*mut polars_utils::parma::raw::AllocHeader<str, u32>, alloc::alloc::Global>", linkageName: "_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterOINtNtNtCs2mZqlW55729_12polars_utils5parma3raw11AllocHeaderemEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype", scope: !1960, file: !1959, line: 497, type: !12, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1959 = !DIFile(filename: "library/alloc/src/vec/into_iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "67afe9548c17103ef643b1b8003217a3")
!1960 = !DINamespace(name: "{impl#16}", scope: !1961)
!1961 = !DINamespace(name: "into_iter", scope: !783)
!1962 = !DILocation(line: 506, column: 29, scope: !1963, inlinedAt: !1967)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !1959, line: 504, column: 21)
!1964 = distinct !DISubprogram(name: "drop<*mut polars_utils::parma::raw::AllocHeader<str, u32>, alloc::alloc::Global>", linkageName: "_RNvXNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropINtB2_9DropGuardOINtNtNtCs2mZqlW55729_12polars_utils5parma3raw11AllocHeaderemENtNtBc_5alloc6GlobalEB12_4dropCs80wj1cxFixi_12polars_dtype", scope: !1965, file: !1959, line: 501, type: !128, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1965 = !DINamespace(name: "{impl#0}", scope: !1966)
!1966 = !DINamespace(name: "drop", scope: !1960)
!1967 = distinct !DILocation(line: 810, column: 1, scope: !1968, inlinedAt: !1969)
!1968 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::into_iter::{impl#16}::drop::DropGuard<*mut polars_utils::parma::raw::AllocHeader<str, u32>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtBP_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardOINtNtNtCs2mZqlW55729_12polars_utils5parma3raw11AllocHeaderemENtNtBT_5alloc6GlobalEECs80wj1cxFixi_12polars_dtype", scope: !19, file: !75, line: 810, type: !128, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1969 = distinct !DILocation(line: 517, column: 5, scope: !1958)
!1970 = !DILocation(line: 506, column: 53, scope: !1963, inlinedAt: !1967)
!1971 = !DILocation(line: 506, column: 65, scope: !1963, inlinedAt: !1967)
!1972 = !DILocation(line: 287, column: 13, scope: !1973, inlinedAt: !1976)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !771, line: 286, column: 13)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !771, line: 285, column: 13)
!1975 = distinct !DISubprogram(name: "from_nonnull_in<*mut polars_utils::parma::raw::AllocHeader<str, u32>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecOINtNtNtCs2mZqlW55729_12polars_utils5parma3raw11AllocHeaderemEE15from_nonnull_inCs80wj1cxFixi_12polars_dtype", scope: !778, file: !771, line: 282, type: !12, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1976 = distinct !DILocation(line: 506, column: 29, scope: !1963, inlinedAt: !1967)
!1977 = !DILocation(line: 810, column: 1, scope: !1978, inlinedAt: !1979)
!1978 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<*mut polars_utils::parma::raw::AllocHeader<str, u32>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecOINtNtNtCs2mZqlW55729_12polars_utils5parma3raw11AllocHeaderemEEECs80wj1cxFixi_12polars_dtype", scope: !19, file: !75, line: 810, type: !12, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1979 = distinct !DILocation(line: 506, column: 83, scope: !1963, inlinedAt: !1967)
!1980 = !DILocation(line: 506, column: 83, scope: !1963, inlinedAt: !1967)
!1981 = !DILocation(line: 517, column: 6, scope: !1958)
!1982 = distinct !DISubprogram(name: "next<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvXsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB13_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype", scope: !1983, file: !1454, line: 1716, type: !12, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1983 = !DINamespace(name: "{impl#22}", scope: !1456)
!1984 = !DILocation(line: 1717, column: 12, scope: !1982)
!1985 = !DILocation(line: 1720, column: 13, scope: !1982)
!1986 = !DILocation(line: 161, column: 23, scope: !1987, inlinedAt: !1991)
!1987 = distinct !DISubprogram(name: "next_unchecked<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMs9_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E14next_uncheckedCs80wj1cxFixi_12polars_dtype", scope: !1989, file: !1988, line: 160, type: !12, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1988 = !DIFile(filename: "library/alloc/src/collections/btree/navigate.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "5fbe35ba8143e73c8533baebcc18218c")
!1989 = !DINamespace(name: "LazyLeafRange", scope: !1990)
!1990 = !DINamespace(name: "navigate", scope: !1457)
!1991 = !DILocation(line: 1721, column: 38, scope: !1982)
!1992 = !DILocation(line: 1014, column: 15, scope: !1993, inlinedAt: !1994)
!1993 = distinct !DISubprogram(name: "unwrap<&mut alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionQINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node6HandleINtBL_7NodeRefNtNtBL_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2e_NtB1W_4LeafENtB1W_4EdgeEE6unwrapCs80wj1cxFixi_12polars_dtype", scope: !1112, file: !1111, line: 1013, type: !12, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!1994 = !DILocation(line: 161, column: 36, scope: !1987, inlinedAt: !1991)
!1995 = !DILocation(line: 1014, column: 9, scope: !1993, inlinedAt: !1994)
!1996 = !DILocation(line: 0, scope: !1982)
!1997 = !DILocation(line: 1723, column: 6, scope: !1982)
!1998 = !DILocation(line: 27, column: 28, scope: !1999, inlinedAt: !2004)
!1999 = distinct !DILexicalBlock(scope: !2001, file: !2000, line: 26, column: 5)
!2000 = !DIFile(filename: "library/alloc/src/collections/btree/mem.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "cbbb453e921be15b68c5af700a463b89")
!2001 = distinct !DILexicalBlock(scope: !2002, file: !2000, line: 25, column: 5)
!2002 = distinct !DISubprogram(name: "replace<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, (&polars_utils::pl_str::PlSmallStr, &polars_utils::pl_str::PlSmallStr), alloc::collections::btree::navigate::{impl#22}::next_unchecked::{closure_env#0}<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeETRB1R_B39_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs80wj1cxFixi_12polars_dtype", scope: !2003, file: !2000, line: 18, type: !12, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2003 = !DINamespace(name: "mem", scope: !1457)
!2004 = distinct !DILocation(line: 533, column: 9, scope: !2005, inlinedAt: !2008)
!2005 = distinct !DISubprogram(name: "next_unchecked<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeE14next_uncheckedCs80wj1cxFixi_12polars_dtype", scope: !2006, file: !1988, line: 532, type: !12, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2006 = !DINamespace(name: "Handle", scope: !2007)
!2007 = !DINamespace(name: "node", scope: !1457)
!2008 = !DILocation(line: 161, column: 45, scope: !1987, inlinedAt: !1991)
!2009 = !{!2010}
!2010 = distinct !{!2010, !2011, !"_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeETRB1R_B39_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs80wj1cxFixi_12polars_dtype: argument 0"}
!2011 = distinct !{!2011, !"_RINvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeETRB1R_B39_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs80wj1cxFixi_12polars_dtype"}
!2012 = !DILocation(line: 534, column: 22, scope: !2013, inlinedAt: !2016)
!2013 = distinct !DISubprogram(name: "{closure#0}<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNCNvMsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1T_NtB1A_4LeafENtB1A_4EdgeE14next_unchecked0Cs80wj1cxFixi_12polars_dtype", scope: !2014, file: !1988, line: 533, type: !12, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2014 = !DINamespace(name: "next_unchecked", scope: !2015)
!2015 = !DINamespace(name: "{impl#22}", scope: !1990)
!2016 = distinct !DILocation(line: 27, column: 28, scope: !1999, inlinedAt: !2004)
!2017 = !{!2018, !2020, !2010}
!2018 = distinct !{!2018, !2019, !"_RNCNvMsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1T_NtB1A_4LeafENtB1A_4EdgeE14next_unchecked0Cs80wj1cxFixi_12polars_dtype: argument 0"}
!2019 = distinct !{!2019, !"_RNCNvMsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1T_NtB1A_4LeafENtB1A_4EdgeE14next_unchecked0Cs80wj1cxFixi_12polars_dtype"}
!2020 = distinct !{!2020, !2019, !"_RNCNvMsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB9_4node6HandleINtB12_7NodeRefNtNtB12_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1T_NtB1A_4LeafENtB1A_4EdgeE14next_unchecked0Cs80wj1cxFixi_12polars_dtype: argument 1"}
!2021 = !DILocation(line: 534, column: 32, scope: !2013, inlinedAt: !2016)
!2022 = !DILocation(line: 713, column: 15, scope: !2023, inlinedAt: !2027)
!2023 = distinct !DISubprogram(name: "ok<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::LeafOrInternal>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node6HandleINtBK_7NodeRefNtNtBK_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2d_NtB1V_14LeafOrInternalENtB1V_2KVEB1F_E2okCs80wj1cxFixi_12polars_dtype", scope: !2025, file: !2024, line: 708, type: !12, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2024 = !DIFile(filename: "library/core/src/result.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7ebc974a4b69a504d7e902d792c422dd")
!2025 = !DINamespace(name: "Result", scope: !2026)
!2026 = !DINamespace(name: "result", scope: !11)
!2027 = distinct !DILocation(line: 534, column: 42, scope: !2013, inlinedAt: !2016)
!2028 = !DILocation(line: 713, column: 9, scope: !2023, inlinedAt: !2027)
!2029 = !DILocation(line: 534, column: 45, scope: !2013, inlinedAt: !2016)
!2030 = !DILocation(line: 1016, column: 21, scope: !2031, inlinedAt: !2032)
!2031 = distinct !DISubprogram(name: "unwrap<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Immut, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node6HandleINtBK_7NodeRefNtNtBK_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2d_NtB1V_14LeafOrInternalENtB1V_2KVEE6unwrapCs80wj1cxFixi_12polars_dtype", scope: !1112, file: !1111, line: 1013, type: !12, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2032 = distinct !DILocation(line: 534, column: 47, scope: !2013, inlinedAt: !2016)
!2033 = !DILocation(line: 714, column: 16, scope: !2023, inlinedAt: !2027)
!2034 = !DILocation(line: 1015, column: 18, scope: !2031, inlinedAt: !2032)
!2035 = !DILocation(line: 535, column: 17, scope: !2036, inlinedAt: !2016)
!2036 = distinct !DILexicalBlock(scope: !2013, file: !1988, line: 534, column: 13)
!2037 = !DILocation(line: 535, column: 38, scope: !2036, inlinedAt: !2016)
!2038 = !DILocation(line: 22, column: 13, scope: !2039, inlinedAt: !2042)
!2039 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXNvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replaceNtB2_10PanicGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !2040, file: !2000, line: 21, type: !128, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2040 = !DINamespace(name: "{impl#0}", scope: !2041)
!2041 = !DINamespace(name: "replace", scope: !2003)
!2042 = distinct !DILocation(line: 810, column: 1, scope: !2043, inlinedAt: !2044)
!2043 = distinct !DISubprogram(name: "drop_in_place<alloc::collections::btree::mem::replace::PanicGuard>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNvNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mem7replace10PanicGuardECs80wj1cxFixi_12polars_dtype", scope: !19, file: !75, line: 810, type: !128, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2044 = distinct !DILocation(line: 33, column: 1, scope: !2002, inlinedAt: !2004)
!2045 = !DILocation(line: 536, column: 10, scope: !2013, inlinedAt: !2016)
!2046 = !DILocation(line: 27, column: 10, scope: !1999, inlinedAt: !2004)
!2047 = !DILocation(line: 27, column: 41, scope: !1999, inlinedAt: !2004)
!2048 = !DILocation(line: 533, column: 9, scope: !2005, inlinedAt: !2008)
!2049 = !DILocation(line: 1717, column: 9, scope: !1982)
!2050 = !DILocation(line: 1016, column: 21, scope: !1993, inlinedAt: !1994)
!2051 = distinct !DISubprogram(name: "write_fmt<alloc::string::String>", linkageName: "_RNvYNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCs80wj1cxFixi_12polars_dtype", scope: !2052, file: !1400, line: 212, type: !12, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2052 = !DINamespace(name: "Write", scope: !1402)
!2053 = !DILocation(line: 236, column: 21, scope: !2054, inlinedAt: !2057)
!2054 = distinct !DISubprogram(name: "spec_write_fmt<alloc::string::String>", linkageName: "_RNvXs_NvNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtQNtNtCsgZ49sUHp3tW_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs80wj1cxFixi_12polars_dtype", scope: !2055, file: !1400, line: 232, type: !12, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!2055 = !DINamespace(name: "{impl#1}", scope: !2056)
!2056 = !DINamespace(name: "write_fmt", scope: !2052)
!2057 = distinct !DILocation(line: 241, column: 14, scope: !2051)
!2058 = distinct !{null}
!2059 = !DILocation(line: 242, column: 6, scope: !2051)
end_hunk_1
