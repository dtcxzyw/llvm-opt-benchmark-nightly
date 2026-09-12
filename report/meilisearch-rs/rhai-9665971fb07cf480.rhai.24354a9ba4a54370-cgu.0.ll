Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h55c51ef7de2ade87E":bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5ac1ddf5a676ecfcE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !55, !noundef !55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !55, !noundef !55
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 2                   ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !1256
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !1256
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !alias.scope !1256
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5d4a8f4d31c4b3d5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %.val = load i128, ptr %1, align 16, !alias.scope !1264, !noalias !1265, !noundef !55 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i128, ptr %i.a, align 16, !alias.scope !1265, !noalias !1264, !noundef !55 ; 2 uses
  %i.b = icmp slt i128 %.val, %.val1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1266
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !alias.scope !1266
  br label %"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9size_hint17hd4129afdc68f8959E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i128, i1 } @llvm.ssub.with.overflow.i128(i128 %.val1, i128 %.val) ; 2 uses
  %i.e = extractvalue { i128, i1 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i128, i1 } %i.d, 1
  br i1 %i.f, label %bb.e, label %bb.d, !prof !66

bb.d:                                             ; preds = %bb.c
  %or.cond.i.i = icmp ugt i128 %i.e, 18446744073709551615
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !1267
  br label %"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9size_hint17hd4129afdc68f8959E.exit"

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %0, align 8, !alias.scope !1267
  br label %"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9size_hint17hd4129afdc68f8959E.exit"

bb.g:                                             ; preds = %bb.d
  %i.g = trunc nuw i128 %i.e to i64               ; 2 uses
  store i64 %i.g, ptr %0, align 8, !alias.scope !1267
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8, !alias.scope !1267
  br label %"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9size_hint17hd4129afdc68f8959E.exit"

"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9size_hint17hd4129afdc68f8959E.exit": ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.sink2.i = phi i64 [ 16, %bb.g ], [ 8, %bb.f ], [ 8, %bb.e ], [ 16, %bb.b ]
  %.sink.i = phi i64 [ %i.g, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2.i
  store i64 %.sink.i, ptr %i.i, align 8, !alias.scope !1266
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7fee437027278fc4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %.val = load i128, ptr %1, align 16, !alias.scope !1275, !noalias !1276, !noundef !55 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i128, ptr %i.a, align 16, !alias.scope !1276, !noalias !1275, !noundef !55 ; 2 uses
  %i.b = icmp ult i128 %.val, %.val1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1277
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !alias.scope !1277
  br label %"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9size_hint17h45b022adb90e8229E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = sub nuw i128 %.val1, %.val               ; 2 uses
  %i.e = icmp ugt i128 %i.d, 18446744073709551615
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc nuw i128 %i.d to i64               ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !1278
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !1278
  br label %"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9size_hint17h45b022adb90e8229E.exit"

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !1278
  br label %"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9size_hint17h45b022adb90e8229E.exit"

"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9size_hint17h45b022adb90e8229E.exit": ; preds = %bb.b, %bb.d, %bb.e
  %.sink2.i = phi i64 [ 8, %bb.e ], [ 16, %bb.d ], [ 16, %bb.b ]
  %.sink.i = phi i64 [ 0, %bb.e ], [ %i.f, %bb.d ], [ 0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2.i
  store i64 %.sink.i, ptr %i.h, align 8, !alias.scope !1277
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h83f8ea93686f81f4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1281
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h8ab16e9e9d7f8598E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 4, !range !57, !alias.scope !1289, !noalias !1288, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h9ed1db4b1d1e7482E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.e = load i32, ptr %1, align 4, !alias.scope !1292, !noalias !1293, !noundef !55 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !alias.scope !1294, !noalias !1295, !noundef !55 ; 2 uses
  %.not.i = icmp ugt i32 %i.e, %i.f
  br i1 %.not.i, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h9ed1db4b1d1e7482E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw i32 %i.f, %i.e
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h9ed1db4b1d1e7482E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h9ed1db4b1d1e7482E.exit": ; preds = %bb.a, %bb.b, %bb.c
  %.sink10.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  store i64 %.sink10.i, ptr %0, align 8, !alias.scope !1288, !noalias !1289
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8, !alias.scope !1288, !noalias !1289
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink10.i, ptr %i.k, align 8, !alias.scope !1288, !noalias !1289
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h915fc6ef078f2452E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %1, align 8, !alias.scope !1301, !noalias !1302, !noundef !55 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !alias.scope !1302, !noalias !1301, !noundef !55 ; 2 uses
  %i.b = icmp slt i64 %.val, %.val1
  %i.c = sub i64 %.val1, %.val
  %spec.select.i = select i1 %i.b, i64 %i.c, i64 0 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.d, align 8, !alias.scope !1303
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !1303
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !alias.scope !1303
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9233d1c6973dec2cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1306
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h95d0d9a6784a1d7fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(6) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 2, !range !57, !alias.scope !1314, !noalias !1313, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h24e87e36fcd3e5bdE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %i.e = load i16, ptr %1, align 2, !alias.scope !1317, !noalias !1318, !noundef !55 ; 2 uses
  %i.f = load i16, ptr %i.d, align 2, !alias.scope !1319, !noalias !1320, !noundef !55 ; 2 uses
  %.not.i = icmp sgt i16 %i.e, %i.f
  br i1 %.not.i, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h24e87e36fcd3e5bdE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sext i16 %i.f to i64
  %i.h = sext i16 %i.e to i64
  %i.i = sub nsw i64 %i.g, %i.h                   ; 3 uses
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %i.k = icmp ne i64 %i.i, -1
  %i.l = add nsw i64 %i.i, 1
  %spec.select4.i = zext i1 %i.k to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h24e87e36fcd3e5bdE.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h24e87e36fcd3e5bdE.exit": ; preds = %bb.a, %bb.b, %bb.c
  %.sink10.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %spec.select4.sink.i = phi i64 [ %spec.select4.i, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ]
  %.sink.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i64 %.sink10.i, ptr %0, align 8, !alias.scope !1313, !noalias !1314
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select4.sink.i, ptr %i.m, align 8, !alias.scope !1313, !noalias !1314
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.n, align 8, !alias.scope !1313, !noalias !1314
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9702e596d248303aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %1) unnamed_addr #3 {
bb.a:
  %.val = load i16, ptr %1, align 2, !alias.scope !1326, !noalias !1327, !noundef !55
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val1 = load i16, ptr %i.a, align 2, !alias.scope !1327, !noalias !1326, !noundef !55
  %narrow.i = tail call i16 @llvm.usub.sat.i16(i16 %.val1, i16 %.val)
  %.sink1.i = zext i16 %narrow.i to i64           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink1.i, ptr %i.b, align 8, !alias.scope !1328
  store i64 %.sink1.i, ptr %0, align 8, !alias.scope !1328
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !alias.scope !1328
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9a88c82d4b1a39dbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %1, align 8, !alias.scope !1334, !noalias !1335, !noundef !55
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !alias.scope !1335, !noalias !1334, !noundef !55
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.b, align 8, !alias.scope !1336
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !1336
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !alias.scope !1336
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha3fc1748be708e9dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(3) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.a = load i8, ptr %1, align 1, !range !57, !alias.scope !1344, !noalias !1343, !noundef !55
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17hda991c1d3a3d29a7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.e = load i8, ptr %i.c, align 1, !alias.scope !1347, !noalias !1348, !noundef !55 ; 2 uses
  %i.f = load i8, ptr %i.d, align 1, !alias.scope !1349, !noalias !1350, !noundef !55 ; 2 uses
  %.not.i = icmp ugt i8 %i.e, %i.f
  br i1 %.not.i, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17hda991c1d3a3d29a7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw i8 %i.f, %i.e
  %i.h = zext i8 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17hda991c1d3a3d29a7E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17hda991c1d3a3d29a7E.exit": ; preds = %bb.a, %bb.b, %bb.c
  %.sink10.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  store i64 %.sink10.i, ptr %0, align 8, !alias.scope !1343, !noalias !1344
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8, !alias.scope !1343, !noalias !1344
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink10.i, ptr %i.k, align 8, !alias.scope !1343, !noalias !1344
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha826a29fe157ea2fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 4, !range !57, !alias.scope !1358, !noalias !1357, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h3a6fe7e361b1f5a6E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %i.e = load i32, ptr %1, align 4, !alias.scope !1361, !noalias !1362, !noundef !55 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !alias.scope !1363, !noalias !1364, !noundef !55 ; 2 uses
  %.not.i = icmp sgt i32 %i.e, %i.f
  br i1 %.not.i, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h3a6fe7e361b1f5a6E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %i.f to i64
  %i.h = sext i32 %i.e to i64
  %i.i = sub nsw i64 %i.g, %i.h                   ; 3 uses
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %i.k = icmp ne i64 %i.i, -1
  %i.l = add nsw i64 %i.i, 1
  %spec.select4.i = zext i1 %i.k to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h3a6fe7e361b1f5a6E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h3a6fe7e361b1f5a6E.exit": ; preds = %bb.a, %bb.b, %bb.c
  %.sink10.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %spec.select4.sink.i = phi i64 [ %spec.select4.i, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ]
  %.sink.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i64 %.sink10.i, ptr %0, align 8, !alias.scope !1357, !noalias !1358
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select4.sink.i, ptr %i.m, align 8, !alias.scope !1357, !noalias !1358
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.n, align 8, !alias.scope !1357, !noalias !1358
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb30b6a034c725fb9E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !55, !align !61, !noundef !55
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !55, !align !56, !noundef !55
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !55, !noalias !1368, !nonnull !55
  tail call void %i.c(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 1 %.val), !inline_history !1367
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb449b1e3711d0e5cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !55, !noundef !55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !55, !noundef !55
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4                   ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !1371
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !1371
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !alias.scope !1371
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hb572489043b53d07E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1374
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hbbdaeaaca678257fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(3) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  %i.a = load i8, ptr %1, align 1, !range !57, !alias.scope !1382, !noalias !1381, !noundef !55
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h1e22a7b4ffac16bfE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.e = load i8, ptr %i.c, align 1, !alias.scope !1385, !noalias !1386, !noundef !55 ; 2 uses
  %i.f = load i8, ptr %i.d, align 1, !alias.scope !1387, !noalias !1388, !noundef !55 ; 2 uses
  %.not.i = icmp sgt i8 %i.e, %i.f
  br i1 %.not.i, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h1e22a7b4ffac16bfE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sext i8 %i.f to i64
  %i.h = sext i8 %i.e to i64
  %i.i = sub nsw i64 %i.g, %i.h                   ; 3 uses
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %i.k = icmp ne i64 %i.i, -1
  %i.l = add nsw i64 %i.i, 1
  %spec.select4.i = zext i1 %i.k to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h1e22a7b4ffac16bfE.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17h1e22a7b4ffac16bfE.exit": ; preds = %bb.a, %bb.b, %bb.c
  %.sink10.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %spec.select4.sink.i = phi i64 [ %spec.select4.i, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ]
  %.sink.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i64 %.sink10.i, ptr %0, align 8, !alias.scope !1381, !noalias !1382
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select4.sink.i, ptr %i.m, align 8, !alias.scope !1381, !noalias !1382
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.n, align 8, !alias.scope !1381, !noalias !1382
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc1e7f97196fdaf58E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1391
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc9debad8115e695aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1396, !noalias !1395, !noundef !55 ; 2 uses
  store i64 %i.b, ptr %0, align 8, !alias.scope !1395, !noalias !1396
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !alias.scope !1395, !noalias !1396
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.d, align 8, !alias.scope !1395, !noalias !1396
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4b1a3971c78be29E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  %.val = load i32, ptr %1, align 4, !alias.scope !1402, !noalias !1403, !noundef !55 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1 = load i32, ptr %i.a, align 4, !alias.scope !1403, !noalias !1402, !noundef !55 ; 2 uses
  %i.b = icmp slt i32 %.val, %.val1
  %i.c = sext i32 %.val1 to i64
  %i.d = sext i32 %.val to i64
  %i.e = sub nsw i64 %i.c, %i.d
  %.sink1.i = select i1 %i.b, i64 %i.e, i64 0     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink1.i, ptr %i.f, align 8, !alias.scope !1404
  store i64 %.sink1.i, ptr %0, align 8, !alias.scope !1404
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !1404
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he112ce72b94bbb92E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !57, !alias.scope !1412, !noalias !1411, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17ha81f6bbfa1337b91E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  %i.e = load i64, ptr %1, align 8, !alias.scope !1415, !noalias !1416, !noundef !55 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !alias.scope !1417, !noalias !1418, !noundef !55 ; 2 uses
  %.not.i = icmp sgt i64 %i.e, %i.f
  br i1 %.not.i, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17ha81f6bbfa1337b91E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = tail call i64 @llvm.uadd.sat.i64(i64 %i.g, i64 1)
  %i.i = icmp ne i64 %i.g, -1
  %i.j = add i64 %i.g, 1
  %spec.select4.i = zext i1 %i.i to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17ha81f6bbfa1337b91E.exit"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$9size_hint17ha81f6bbfa1337b91E.exit": ; preds = %bb.a, %bb.b, %bb.c
  %.sink10.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %spec.select4.sink.i = phi i64 [ %spec.select4.i, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ]
  %.sink.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i64 %.sink10.i, ptr %0, align 8, !alias.scope !1411, !noalias !1412
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select4.sink.i, ptr %i.k, align 8, !alias.scope !1411, !noalias !1412
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.l, align 8, !alias.scope !1411, !noalias !1412
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he20fec0a10780e2fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  %.val = load i32, ptr %1, align 4, !alias.scope !1424, !noalias !1425, !noundef !55
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1 = load i32, ptr %i.a, align 4, !alias.scope !1425, !noalias !1424, !noundef !55
  %narrow.i = tail call i32 @llvm.usub.sat.i32(i32 %.val1, i32 %.val)
  %.sink1.i = zext i32 %narrow.i to i64           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink1.i, ptr %i.b, align 8, !alias.scope !1426
  store i64 %.sink1.i, ptr %0, align 8, !alias.scope !1426
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !alias.scope !1426
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he423ae065b7b8dd5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %1) unnamed_addr #3 {
bb.a:
  %.val = load i8, ptr %1, align 1, !alias.scope !1432, !noalias !1433, !noundef !55 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val1 = load i8, ptr %i.a, align 1, !alias.scope !1433, !noalias !1432, !noundef !55 ; 2 uses
  %i.b = icmp slt i8 %.val, %.val1
  %i.c = sext i8 %.val1 to i64
  %i.d = sext i8 %.val to i64
  %i.e = sub nsw i64 %i.c, %i.d
  %.sink1.i = select i1 %i.b, i64 %i.e, i64 0     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink1.i, ptr %i.f, align 8, !alias.scope !1434
  store i64 %.sink1.i, ptr %0, align 8, !alias.scope !1434
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !1434
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfcaed024b7db61c9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1437
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hfdcc2951021fd51aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !55, !noundef !55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !55, !noundef !55
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 2                   ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !1440
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !1440
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !alias.scope !1440
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3966c901feec276eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1521
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1523, !noalias !1524, !noundef !55 ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !1523, !noalias !1524, !nonnull !55, !noundef !55 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !1525, !noundef !55
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.thread.i", label %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.i"

"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.i": ; preds = %bb.a
  %i.j = add i64 %i.f, 1
  store i64 %i.j, ptr %i.e, align 8, !alias.scope !1523, !noalias !1524
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload3.i = load i8, ptr %i.l, align 8, !noalias !1526 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.0.0.copyload3.i, 12
  br i1 %.not.i, label %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.thread.i", label %bb.b

bb.b:                                             ; preds = %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.i"
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.0..sroa_idx4.i, i64 15, i1 false), !noalias !1521
  store i8 %.sroa.0.0.copyload3.i, ptr %i.c, align 8, !noalias !1521
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1529
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1531, !noalias !1532, !noundef !55 ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !1531, !noalias !1532, !nonnull !55, !noundef !55 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !1533, !noundef !55
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %.thread.i, label %bb.c

end_hunk_0
