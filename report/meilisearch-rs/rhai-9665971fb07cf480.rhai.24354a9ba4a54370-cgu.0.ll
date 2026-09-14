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

bb.c:                                             ; preds = %bb.b
  %i.s = add i64 %i.o, 1
  store i64 %i.s, ptr %i.n, align 8, !alias.scope !1531, !noalias !1532
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1533, !nonnull !55, !noundef !55 ; 4 uses
  store ptr %i.v, ptr %i.b, align 8, !noalias !1529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1536, !noalias !1537, !noundef !55 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1541, !noalias !1542, !noundef !55 ; 3 uses
  %i.aa = load i64, ptr %i.x, align 8, !noalias !1543, !noundef !55
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %_ZN4core3ops8function6FnOnce9call_once17h803685f60169efc7E.exit.thread.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add i64 %i.z, 1
  store i64 %i.ac, ptr %i.y, align 8, !alias.scope !1541, !noalias !1542
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !1544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  %i.af = load i64, ptr %i.a, align 8, !alias.scope !1546, !noalias !1547, !noundef !55 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 3                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1546, !noalias !1547, !nonnull !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1546, !noalias !1547
  %.sink11.i.i.i.i.i.i.i.i.i = select i1 %i.ag, ptr %i.ai, ptr %i.ah ; 2 uses
  %.sink10.i.i.i.i.i.i.i.i.i = select i1 %i.ag, i64 %i.ak, i64 %i.af ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  %i.al = shl i64 %.sink10.i.i.i.i.i.i.i.i.i, 3   ; 4 uses
  %i.am = icmp ugt i64 %.sink10.i.i.i.i.i.i.i.i.i, 2305843009213693951
  %i.an = icmp ugt i64 %i.al, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.am, %i.an
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !71

bb.f:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17he9a634324b0db34aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a) #72
          to label %.body.i.i.i unwind label %bb.k, !noalias !1549

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ap = icmp eq i64 %i.al, 0
  br i1 %i.ap, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.thread.i.i.i.i.i.i.i.i.i", label %bb.g

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.thread.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = icmp eq i64 %.sink10.i.i.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.aq)
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread19.i.i.i.i

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !1550
  %i.ar = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8) #71, !noalias !1550 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i.i.i.i.i"

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3070) #70
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.f, !noalias !1551

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.g
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i.i.i.i.i, i64 %.sink10.i.i.i.i.i.i.i.i.i
  %2 = icmp eq i64 %.sink10.i.i.i.i.i.i.i.i.i, 0
  br i1 %2, label %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread19.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i.i.i.i.i", %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.013.023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sink11.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.10.021.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sink10.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i.i.i.i.i" ]
  %i.au = add nsw i64 %.sroa.10.021.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.av = icmp eq ptr %.sroa.013.023.i.i.i.i.i.i.i.i.i, %i.at
  br i1 %i.av, label %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1548, !noalias !1552, !nonnull !55, !noundef !55 ; 2 uses
  %i.aw = atomicrmw add ptr %.val.i.i.i.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !1553
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i.i.i.i.i"

bb.j:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.i
  %i.ay = add nuw nsw i64 %.sroa.7.022.i.i.i.i.i.i.i.i.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i.i.i.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.sroa.7.022.i.i.i.i.i.i.i.i.i
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.ba, align 8, !noalias !1553
  %i.bb = icmp eq i64 %i.au, 0
  br i1 %i.bb, label %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !1551
  unreachable

_ZN4core3ops8function6FnOnce9call_once17h803685f60169efc7E.exit.thread.i.i.i.i.i: ; preds = %bb.d
  %i.bd = icmp eq ptr %i.x, @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE
  br i1 %i.bd, label %"_ZN4core3ptr335drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$thin_vec..IntoIter$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$$C$$LT$rhai..types..scope..Scope$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$..into_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h78f73fffaea9464fE.exit.i.i.i.i.i", label %bb.l, !prof !72

bb.l:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h803685f60169efc7E.exit.thread.i.i.i.i.i
  invoke void @"_ZN69_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17hf6e44fa975fd566bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.w)
          to label %bb.n unwind label %bb.m, !noalias !1537

bb.m:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h9bf87e7d9eb192bfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.w)
          to label %bb.q unwind label %bb.o, !noalias !1537

bb.n:                                             ; preds = %bb.l
  invoke void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h9bf87e7d9eb192bfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.w)
          to label %"_ZN4core3ptr335drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$thin_vec..IntoIter$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$$C$$LT$rhai..types..scope..Scope$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$..into_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h78f73fffaea9464fE.exit.i.i.i.i.i" unwind label %bb.p, !noalias !1537

bb.o:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !1554
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

"_ZN4core3ptr335drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$thin_vec..IntoIter$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$$C$$LT$rhai..types..scope..Scope$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$..into_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h78f73fffaea9464fE.exit.i.i.i.i.i": ; preds = %bb.n, %_ZN4core3ops8function6FnOnce9call_once17h803685f60169efc7E.exit.thread.i.i.i.i.i
  store ptr null, ptr %i.w, align 8, !alias.scope !1536, !noalias !1537
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread.i.i.i.i

bb.q:                                             ; preds = %bb.p, %bb.m
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %i.be, %bb.m ]
  store ptr null, ptr %i.w, align 8, !alias.scope !1536, !noalias !1537
  br label %.body.i.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread19.i.i.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.thread.i.i.i.i.i.i.i.i.i"
  %.sroa.5.0.i.i.i.i.ph.i.i.i.i = phi ptr [ %i.ar, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.thread.i.i.i.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17he9a634324b0db34aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %.noexc.i.i.i unwind label %bb.v, !noalias !1529

.noexc.i.i.i:                                     ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1544
  br label %.thread33.i

_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.i.i.i.i: ; preds = %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17he9a634324b0db34aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %.noexc7.i.i.i unwind label %bb.v, !noalias !1529

.noexc7.i.i.i:                                    ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1544
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  br label %.thread33.i

_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread.i.i.i.i: ; preds = %"_ZN4core3ptr335drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$thin_vec..IntoIter$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$$C$$LT$rhai..types..scope..Scope$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$..into_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h78f73fffaea9464fE.exit.i.i.i.i.i", %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.bh = load i64, ptr %1, align 8, !range !69, !alias.scope !1557, !noalias !1558, !noundef !55
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h295ec7d2f9961f95E.exit.thread30.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !1557, !noalias !1558, !nonnull !55, !noundef !55 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !1557, !noalias !1558, !noundef !55 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.bk = shl i64 %.val2.i.i.i.i.i.i, 3           ; 4 uses
  %i.bl = icmp ugt i64 %.val2.i.i.i.i.i.i, 2305843009213693951
  %i.bm = icmp ugt i64 %i.bk, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i2.i.i.i.i = or i1 %i.bl, %i.bm
  br i1 %or.cond.i.i.i.i.i.i.i.i2.i.i.i.i, label %.noexc.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i3.i.i.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i3.i.i.i.i: ; preds = %bb.r
  %i.bn = icmp eq i64 %i.bk, 0
  br i1 %i.bn, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.thread.i.i.i.i.i13.i.i.i.i", label %bb.s

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.thread.i.i.i.i.i13.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i3.i.i.i.i
  %i.bo = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.bo)
  br label %.thread33.i

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i3.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !1560
  %i.bp = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bk, i64 noundef range(i64 1, 9) 8) #71, !noalias !1560 ; 5 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.noexc.i.i.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i4.i.i.i.i"

.noexc.i.i.i.i.i:                                 ; preds = %bb.s, %bb.r
  %.sroa.4.0.ph.i.i.i.i.i.i12.i.i.i.i = phi i64 [ 8, %bb.s ], [ 0, %bb.r ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i12.i.i.i.i, i64 %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3070) #70
          to label %.noexc8.i.i.i unwind label %bb.v, !noalias !1529

.noexc8.i.i.i:                                    ; preds = %.noexc.i.i.i.i.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i4.i.i.i.i": ; preds = %bb.s
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i
  %3 = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %3, label %.thread33.i, label %.lr.ph.i.i.i.i.i5.i.i.i.i

.lr.ph.i.i.i.i.i5.i.i.i.i:                        ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i4.i.i.i.i", %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i10.i.i.i.i"
  %.sroa.013.023.i.i.i.i.i6.i.i.i.i = phi ptr [ %i.bx, %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i10.i.i.i.i" ], [ %.val.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i4.i.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i.i.i7.i.i.i.i = phi i64 [ %i.bw, %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i10.i.i.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i4.i.i.i.i" ] ; 2 uses
  %.sroa.10.021.i.i.i.i.i8.i.i.i.i = phi i64 [ %i.bs, %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i10.i.i.i.i" ], [ %.val2.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i4.i.i.i.i" ]
  %i.bs = add nsw i64 %.sroa.10.021.i.i.i.i.i8.i.i.i.i, -1 ; 2 uses
  %i.bt = icmp eq ptr %.sroa.013.023.i.i.i.i.i6.i.i.i.i, %i.br
  br i1 %i.bt, label %.thread33.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i5.i.i.i.i
  %.val.i.i.i.i.i9.i.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i.i.i6.i.i.i.i, align 8, !alias.scope !1559, !noalias !1561, !nonnull !55, !noundef !55 ; 2 uses
  %i.bu = atomicrmw add ptr %.val.i.i.i.i.i9.i.i.i.i, i64 1 monotonic, align 8, !noalias !1562
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.u, label %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i10.i.i.i.i"

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.trap()
  unreachable

"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i10.i.i.i.i": ; preds = %bb.t
  %i.bw = add nuw nsw i64 %.sroa.7.022.i.i.i.i.i7.i.i.i.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i.i.i6.i.i.i.i, i64 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.7.022.i.i.i.i.i7.i.i.i.i
  store ptr %.val.i.i.i.i.i9.i.i.i.i, ptr %i.by, align 8, !noalias !1562
  %i.bz = icmp eq i64 %i.bs, 0
  br i1 %i.bz, label %.thread33.i, label %.lr.ph.i.i.i.i.i5.i.i.i.i

bb.v:                                             ; preds = %.noexc.i.i.i.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.i.i.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread19.i.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %bb.q, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ca, %bb.v ], [ %eh.lpad-body.i.i.i.i.i, %bb.q ], [ %i.ao, %bb.f ] ; 2 uses
  %i.cb = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !1563
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.w, label %.body.i

bb.w:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %.body.i unwind label %bb.y, !noalias !1529

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h295ec7d2f9961f95E.exit.thread30.i.i.i": ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17ha9d1c7bffc941edfE.exit.thread.i.i.i.i
  %i.cd = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !1564
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h295ec7d2f9961f95E.exit.thread30.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %.thread.i unwind label %bb.z, !noalias !1521

bb.y:                                             ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !1529
  unreachable

"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.thread.i": ; preds = %bb.a, %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.i"
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775808, ptr %i.cg, align 8, !alias.scope !1519, !noalias !1520
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h64e233cdcb57d8a9E.exit"

bb.z:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.z, %bb.w, %.body.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ch, %bb.z ], [ %eh.lpad-body.i.i.i, %bb.w ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.c)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i" unwind label %bb.aa, !noalias !1521, !inline_history !73

.thread.i:                                        ; preds = %bb.x, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h295ec7d2f9961f95E.exit.thread30.i.i.i", %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1529
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775808, ptr %i.ci, align 8, !alias.scope !1519, !noalias !1520
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.c), !noalias !1521, !inline_history !73
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h64e233cdcb57d8a9E.exit"

.thread33.i:                                      ; preds = %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i10.i.i.i.i", %.lr.ph.i.i.i.i.i5.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i4.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.thread.i.i.i.i.i13.i.i.i.i", %.noexc7.i.i.i, %.noexc.i.i.i
  %.sroa.5.041.i = phi i64 [ 0, %.noexc.i.i.i ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.thread.i.i.i.i.i13.i.i.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i4.i.i.i.i" ], [ %.sink10.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i ], [ %.val2.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i5.i.i.i.i ], [ %.val2.i.i.i.i.i.i, %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i10.i.i.i.i" ] ; 2 uses
  %.sroa.9.040.i = phi ptr [ %.sroa.5.0.i.i.i.i.ph.i.i.i.i, %.noexc.i.i.i ], [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.thread.i.i.i.i.i13.i.i.i.i" ], [ %i.bp, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i.i4.i.i.i.i" ], [ %i.ar, %.noexc7.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i5.i.i.i.i ], [ %i.bp, %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..clone..Clone$GT$5clone17h4929ef187fbcc4c8E.exit.i.i.i.i.i10.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !1520
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.041.i, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.9.040.i, ptr %.sroa.623.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.724.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.041.i, ptr %.sroa.724.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h64e233cdcb57d8a9E.exit"

bb.aa:                                            ; preds = %.body.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !1521
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i": ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h64e233cdcb57d8a9E.exit": ; preds = %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.thread.i", %.thread.i, %.thread33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1521
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..logic..min_max_functions..max_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11has_context17ha71e39ddfff7c8baE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..logic..min_max_functions..max_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11is_volatile17h92b504bbc1833842E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..logic..min_max_functions..max_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$14is_method_call17hf67105eeb4c70948E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @"_ZN102_$LT$rhai..packages..logic..min_max_functions..max_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$4call17hd1257a0005483406E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias readonly align 8 captures(none) dead_on_return %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = call fastcc noundef i64 @_ZN4rhai5types7dynamic7Dynamic4cast17h52acf56d99487057E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3 = icmp eq i64 %4, 1
  br i1 %.not3, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #70
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = call fastcc noundef i64 @_ZN4rhai5types7dynamic7Dynamic4cast17h52acf56d99487057E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = tail call i64 @llvm.smax.i64(i64 %i.d, i64 %i.g)
  store i8 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.55.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %., ptr %.sroa.6.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #70
  unreachable
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..logic..min_max_functions..max_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$7is_pure17h6f7309f32f292b8cE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..logic..min_max_functions..min_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11has_context17haaedffcb813b296eE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..logic..min_max_functions..min_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11is_volatile17h3ab5783f49b2c18fE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..logic..min_max_functions..min_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$14is_method_call17h1f08c47408221f91E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @"_ZN102_$LT$rhai..packages..logic..min_max_functions..min_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$4call17hb8c75ef3c9fd6ffdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias readonly align 8 captures(none) dead_on_return %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = call fastcc noundef i64 @_ZN4rhai5types7dynamic7Dynamic4cast17h52acf56d99487057E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3 = icmp eq i64 %4, 1
  br i1 %.not3, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #70
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = call fastcc noundef i64 @_ZN4rhai5types7dynamic7Dynamic4cast17h52acf56d99487057E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.g)
  store i8 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.55.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %., ptr %.sroa.6.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #70
  unreachable
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..logic..min_max_functions..min_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$7is_pure17h57d10d69f1e16654E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..map_basic..map_functions..get_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11has_context17h18d9c25462e95e2bE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..map_basic..map_functions..get_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11is_volatile17he0ebd8b39f1abe5cE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$rhai..packages..map_basic..map_functions..get_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$14is_method_call17hb29fcf8c04ed5525E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @"_ZN102_$LT$rhai..packages..map_basic..map_functions..get_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$4call17hf36cfa0a984ffd8aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias readonly align 8 captures(none) dead_on_return %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = icmp ugt i64 %4, 1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4rhai8packages11string_more16string_functions10pop_string17h23a3d84a3637a5beE:bb.a
"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i": ; preds = %bb.ab, %.noexc11.i.i.i.i
  %.sroa.0.0.i.ph.i.i.i.i.i.i = phi i32 [ %.sroa.4.1.i.ph13.i.i.i.i.i.i.i.i, %bb.ab ], [ %.sroa.4.1.i.ph10.i.i.i.i.i.i.i.i, %.noexc11.i.i.i.i ]
  %i.eg = icmp samesign ult i64 %i.ao, 2305843009213693952
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = load i64, ptr %i.b, align 8, !range !65, !alias.scope !45400, !noalias !45401, !noundef !55
  %i.ei = icmp eq i64 %i.ao, %i.eh
  br i1 %i.ei, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i.i.i.i.i", label %.noexc13.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i.i.i.i.i": ; preds = %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ao, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 4)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i..noexc13_crit_edge.i.i.i.i" unwind label %.loopexit.split-lp.i.i.i.i, !noalias !45387

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i..noexc13_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45400, !noalias !45401
  br label %.noexc13.i.i.i.i

.noexc13.i.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i..noexc13_crit_edge.i.i.i.i", %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i"
  %i.ej = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i..noexc13_crit_edge.i.i.i.i" ], [ %i.an, %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ao
  store i32 %.sroa.0.0.i.ph.i.i.i.i.i.i, ptr %i.ek, align 4, !noalias !45402
  %i.el = add nuw nsw i64 %i.ao, 1                ; 3 uses
  store i64 %i.el, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45400, !noalias !45401
  %umax.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i10, i64 %i.ar)
  %exitcond.not.i.i.i13.not.i.i.i.i.i.i = icmp ult i64 %i.ar, %.sroa.0.0.i10
  br i1 %exitcond.not.i.i.i13.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i"

.loopexit.i.i.i.i:                                ; preds = %bb.p, %bb.o
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp.i.i.i.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i.i.i.i.i", %bb.s, %.thread.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !45387 ; 2 uses
  %i.em = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.em, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !45387, !nonnull !55, !noundef !55
  %i.en = shl nuw i64 %.val.i.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !45387
  br label %common.resume

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i": ; preds = %.noexc13.i.i.i.i, %"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E.exit.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i"
  %.sroa.5.0.copyload = phi i64 [ %i.ao, %"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E.exit.i.i.i.i.i.i" ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i" ], [ %i.el, %.noexc13.i.i.i.i ]
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !noalias !45403
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !45403
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit

common.resume:                                    ; preds = %bb.an, %.noexc21, %.noexc.i.i, %bb.ae, %bb.ac, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.et, %.noexc.i.i ], [ %lpad.phi.i.i.i.i, %bb.ac ], [ %lpad.phi.i.i.i.i, %bb.ad ], [ %i.et, %bb.ae ], [ %i.ff, %.noexc21 ], [ %i.ff, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit: ; preds = %bb.l, %bb.k, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i"
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i" ], [ 0, %bb.k ], [ 0, %bb.l ] ; 3 uses
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i" ], [ inttoptr (i64 4 to ptr), %bb.k ], [ inttoptr (i64 4 to ptr), %bb.l ] ; 5 uses
  %.sroa.0.031 = phi i64 [ %.sroa.0.0.copyload, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i" ], [ 0, %bb.k ], [ 0, %bb.l ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45387
  %i.eo = icmp ult i64 %.sroa.5.0, 2305843009213693952
  tail call void @llvm.assume(i1 %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45404
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.46.0..sroa_idx.i.i, i8 0, i64 23, i1 false), !noalias !45404
  store i8 1, ptr %i.a, align 8, !noalias !45404
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  %i.ep = icmp eq i64 %.sroa.5.0, 0
  br i1 %i.ep, label %._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit
  %.idx = shl nuw nsw i64 %.sroa.5.0, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 %.idx
  br label %bb.ai

"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i": ; preds = %bb.ah, %bb.ag
  %i.er = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc.i.i unwind label %bb.ak, !noalias !45404

.noexc.i.i:                                       ; preds = %"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i"
  br i1 %i.er, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %.noexc.i.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ak, !noalias !45404

bb.af:                                            ; preds = %bb.ai
  %i.es = icmp eq ptr %.sroa.3.0, %i.ew
  br i1 %i.es, label %._crit_edge, label %bb.ai

bb.ag:                                            ; preds = %bb.ai
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = icmp eq i64 %.sroa.0.031, 0
  br i1 %i.eu, label %"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = shl nuw i64 %.sroa.0.031, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !45405
  br label %"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i"

bb.ai:                                            ; preds = %.lr.ph99, %bb.af
  %.sroa.8.0.i.i98 = phi ptr [ %i.eq, %.lr.ph99 ], [ %i.ew, %bb.af ]
  %i.ew = getelementptr inbounds i8, ptr %.sroa.8.0.i.i98, i64 -4 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !range !62, !noalias !45406, !noundef !55
  invoke fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$4push17h9885ce1ce9200adeE"(ptr noalias noundef align 8 dereferenceable(24) %i.a, i32 noundef %i.ex)
          to label %bb.af unwind label %bb.ag, !noalias !45404

._crit_edge:                                      ; preds = %bb.af, %_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit
  %i.ey = icmp eq i64 %.sroa.0.031, 0
  br i1 %i.ey, label %_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.ez = shl nuw i64 %.sroa.0.031, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !45407
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit

bb.ak:                                            ; preds = %bb.ae, %"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i"
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !45404
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit: ; preds = %._crit_edge, %bb.aj
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45404
  store i64 1, ptr %i.c, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fc, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !45408
  %i.fd = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !45408 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.al, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit", !prof !58

bb.al:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %.noexc21 unwind label %bb.ao

.noexc21:                                         ; preds = %bb.am
  br i1 %i.fg, label %common.resume, label %bb.an

bb.an:                                            ; preds = %.noexc21
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fd, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit", %bb.j, %bb.d
  %.sroa.0.0 = phi ptr [ %i.n, %bb.d ], [ %i.fd, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit" ], [ %i.d, %bb.j ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN4rhai8packages11string_more16string_functions10sub_string17ha45a76b445a11fbeE(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = icmp eq i64 %2, 0
  %i.h = icmp slt i64 %4, 1
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !55, !align !56, !noundef !55
  %i.j = tail call fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17heaefd3ff7337519aE(ptr noundef nonnull align 8 %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = shl i64 %2, 2                            ; 4 uses
  %i.l = icmp ugt i64 %2, 4611686018427387903
  %i.m = icmp ugt i64 %i.k, 9223372036854775804
  %or.cond.i.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.c
  %5 = icmp eq i64 %i.k, 0
  br i1 %5, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !45455
  %i.n = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 9) 4) #71, !noalias !45455 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i = phi i64 [ 4, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1870) #70
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %2, %bb.d ] ; 3 uses
  %6 = icmp samesign ule i64 %2, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %6)
  store i64 %.sroa.4.0.i, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.q, align 8
  %i.r = icmp slt i64 %3, 0
  br i1 %i.r, label %bb.i, label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit"
  %i.s = icmp samesign ult i64 %2, 32
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = invoke noundef i64 @_ZN4core3str5count14do_count_chars17h06c5e5b89e2be9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit" unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.u = invoke noundef i64 @_ZN4core3str5count23char_count_general_case17h131e6cedc3bd189cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit" unwind label %bb.j

bb.i:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h2f605f1855116948E"(ptr noalias noundef align 8 dereferenceable(24) %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %bb.ad, %bb.h, %bb.g, %bb.i, %thread-pre-split.thread, %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ak, %.noexc31, %bb.ag, %bb.ah, %bb.aa, %bb.ab, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.cf, %bb.ag ], [ %lpad.phi.i.i, %bb.aa ], [ %i.w, %bb.j ], [ %lpad.phi.i.i, %bb.ab ], [ %i.cf, %bb.ah ], [ %i.cl, %.noexc31 ], [ %i.cl, %bb.ak ]
  %.val19 = load i64, ptr %i.f, align 8           ; 2 uses
  %i.x = icmp eq i64 %.val19, 0
  br i1 %i.x, label %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h123b6f4760d18fdaE.exit", label %bb.k

bb.k:                                             ; preds = %.body
  %.val20 = load ptr, ptr %i.p, align 8, !nonnull !55, !noundef !55
  %i.y = shl nuw i64 %.val19, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 4) #71
  br label %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h123b6f4760d18fdaE.exit"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit": ; preds = %bb.g, %bb.h
  %.sroa.01.0.i = phi i64 [ %i.t, %bb.g ], [ %i.u, %bb.h ]
  %.not = icmp ult i64 %3, %.sroa.01.0.i
  br i1 %.not, label %thread-pre-split.thread, label %bb.l

bb.l:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"
  %i.z = load ptr, ptr %0, align 8, !nonnull !55, !align !56, !noundef !55
  %i.aa = invoke fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17heaefd3ff7337519aE(ptr noundef nonnull align 8 %i.z, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h123b6f4760d18fdaE.exit24" unwind label %bb.j

thread-pre-split:                                 ; preds = %bb.n
  %i.ab = icmp eq i64 %i.ad, 0
  br i1 %i.ab, label %thread-pre-split.thread, label %bb.o

"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h123b6f4760d18fdaE.exit24": ; preds = %bb.l
  %7 = shl nuw i64 %.sroa.4.0.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %7, i64 noundef range(i64 1, -9223372036854775807) 4) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h123b6f4760d18fdaE.exit33", %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h123b6f4760d18fdaE.exit24", %bb.b
  %.sroa.0.0 = phi ptr [ %i.j, %bb.b ], [ %i.cj, %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h123b6f4760d18fdaE.exit33" ], [ %i.aa, %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h123b6f4760d18fdaE.exit24" ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.i
  %i.ac = sub i64 0, %3
  %i.ad = load i64, ptr %i.q, align 8, !noundef !55 ; 6 uses
  %i.ae = icmp ult i64 %i.ad, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp ult i64 %i.ad, %i.ac
  br i1 %i.af, label %thread-pre-split, label %thread-pre-split.thread67

thread-pre-split.thread67:                        ; preds = %bb.n
  %i.ag = add nsw i64 %i.ad, %3
  br label %bb.o

thread-pre-split.thread:                          ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit", %thread-pre-split
  %.sroa.0.04266 = phi i64 [ 0, %thread-pre-split ], [ %3, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit" ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h2f605f1855116948E"(ptr noalias noundef align 8 dereferenceable(24) %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.ah)
          to label %._crit_edge unwind label %bb.j

._crit_edge:                                      ; preds = %thread-pre-split.thread
  %.val22.pre = load i64, ptr %i.q, align 8
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split.thread67, %._crit_edge, %thread-pre-split
  %.sroa.0.04265 = phi i64 [ %.sroa.0.04266, %._crit_edge ], [ 0, %thread-pre-split ], [ %i.ag, %thread-pre-split.thread67 ] ; 5 uses
  %.val22 = phi i64 [ %.val22.pre, %._crit_edge ], [ %i.ad, %thread-pre-split ], [ %i.ad, %thread-pre-split.thread67 ] ; 4 uses
  %i.ai = add i64 %.sroa.0.04265, %4              ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %4
  %i.ak = icmp ugt i64 %i.ai, %.val22
  %or.cond.i.i = select i1 %i.aj, i1 true, i1 %i.ak, !prof !71
  %i.al = sub i64 %.val22, %.sroa.0.04265
  %spec.select.i.i = select i1 %or.cond.i.i, i64 %i.al, i64 %4, !prof !71 ; 2 uses
  %i.am = load ptr, ptr %i.p, align 8, !nonnull !55, !noundef !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45456
  store i64 0, ptr %i.c, align 8, !noalias !45456
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !45456
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !45456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45457)
  %i.an = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.an, label %.sink.split, label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hffb419d9d6f02e27E.exit.i.i.i"

"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hffb419d9d6f02e27E.exit.i.i.i": ; preds = %bb.o
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %.val22, i64 %.sroa.0.04265)
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i.i, i64 %i.ao) ; 2 uses
  %.not.not.i.i = icmp ugt i64 %.val22, %.sroa.0.04265
  br i1 %.not.not.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.thread27.i.i.i", label %.loopexit.thread, !prof !58

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.thread27.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hffb419d9d6f02e27E.exit.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.sroa.0.0.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.lr.ph.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i, !noalias !45456

.loopexit.thread:                                 ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hffb419d9d6f02e27E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45461)
  br label %.sink.split

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.thread27.i.i.i"
  %invariant.gep.i.i.i.i32.i.i.i = getelementptr [4 x i8], ptr %i.am, i64 %.sroa.0.04265
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !45462, !noalias !45463
  br label %bb.p

bb.p:                                             ; preds = %"_ZN4core4iter8adapters6copied9copy_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa293c7ae48d8695E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %i.ap = phi i64 [ %.pre.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ca, %"_ZN4core4iter8adapters6copied9copy_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa293c7ae48d8695E.exit.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.0.010.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aq, %"_ZN4core4iter8adapters6copied9copy_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa293c7ae48d8695E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.aq = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i, 1 ; 2 uses
  %gep.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i32.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i
  %.val9.i.i.i.i.i.i.i = load i32, ptr %gep.i.i.i.i.i.i.i, align 4, !range !62, !noalias !45464, !noundef !55 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45465)
  %i.ar = icmp samesign ult i32 %.val9.i.i.i.i.i.i.i, 128 ; 2 uses
  br i1 %i.ar, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = icmp samesign ult i32 %.val9.i.i.i.i.i.i.i, 2048
  br i1 %i.as, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = icmp samesign ult i32 %.val9.i.i.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i.i.i.i.i = select i1 %i.at, i64 3, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.q ], [ %..i.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ 1, %bb.p ] ; 3 uses
  %i.au = load i64, ptr %i.c, align 8, !range !65, !alias.scope !45466, !noalias !45463, !noundef !55
  %i.av = sub nsw i64 %i.au, %i.ap
  %i.aw = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %i.av
  br i1 %i.aw, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !66

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ap, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i.i unwind label %.loopexit.i.i, !noalias !45456

.noexc3.i.i:                                      ; preds = %bb.t
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !45462, !noalias !45463
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc3.i.i, %bb.s
  %i.ax = phi i64 [ %i.ap, %bb.s ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc3.i.i ] ; 2 uses
  %i.ay = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !45462, !noalias !45463, !nonnull !55, !noundef !55 ; 3 uses
  %i.az = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax ; 10 uses
  br i1 %i.ar, label %bb.v, label %bb.u

bb.u:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.bb = icmp samesign ult i32 %.val9.i.i.i.i.i.i.i, 2048
  %i.bc = trunc i32 %.val9.i.i.i.i.i.i.i to i8
  %i.bd = and i8 %i.bc, 63
  %i.be = or disjoint i8 %i.bd, -128              ; 3 uses
  %i.bf = lshr i32 %.val9.i.i.i.i.i.i.i, 6
  %i.bg = trunc i32 %i.bf to i8                   ; 2 uses
  %i.bh = and i8 %i.bg, 63
  %i.bi = or disjoint i8 %i.bh, -128              ; 2 uses
  %i.bj = lshr i32 %.val9.i.i.i.i.i.i.i, 12
  %i.bk = trunc i32 %i.bj to i8                   ; 2 uses
  %i.bl = and i8 %i.bk, 63
  %i.bm = or disjoint i8 %i.bl, -128
  %i.bn = lshr i32 %.val9.i.i.i.i.i.i.i, 18
  %i.bo = trunc nuw nsw i32 %i.bn to i8
  %i.bp = or disjoint i8 %i.bo, -16
  br i1 %i.bb, label %bb.w, label %bb.x

bb.v:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.bq = trunc nuw nsw i32 %.val9.i.i.i.i.i.i.i to i8
  store i8 %i.bq, ptr %i.ba, align 1, !noalias !45467
  br label %"_ZN4core4iter8adapters6copied9copy_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa293c7ae48d8695E.exit.i.i.i.i.i.i.i"

bb.w:                                             ; preds = %bb.u
  %i.br = or disjoint i8 %i.bg, -64
  store i8 %i.br, ptr %i.ba, align 1, !noalias !45467
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.be, ptr %i.bs, align 1, !noalias !45467
  br label %"_ZN4core4iter8adapters6copied9copy_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa293c7ae48d8695E.exit.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.u
  %i.bt = icmp samesign ult i32 %.val9.i.i.i.i.i.i.i, 65536
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bu = or disjoint i8 %i.bk, -32
  store i8 %i.bu, ptr %i.ba, align 1, !noalias !45467
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.bi, ptr %i.bv, align 1, !noalias !45467
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.be, ptr %i.bw, align 1, !noalias !45467
  br label %"_ZN4core4iter8adapters6copied9copy_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa293c7ae48d8695E.exit.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.x
  store i8 %i.bp, ptr %i.ba, align 1, !noalias !45467
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.bm, ptr %i.bx, align 1, !noalias !45467
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.bi, ptr %i.by, align 1, !noalias !45467
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  store i8 %i.be, ptr %i.bz, align 1, !noalias !45467
  br label %"_ZN4core4iter8adapters6copied9copy_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa293c7ae48d8695E.exit.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters6copied9copy_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa293c7ae48d8695E.exit.i.i.i.i.i.i.i": ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %i.ca = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %i.ap ; 6 uses
  store i64 %i.ca, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !45462, !noalias !45463
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.aq, %.sroa.0.0.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit, label %bb.p

.loopexit.i.i:                                    ; preds = %bb.t
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.thread27.i.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45469)
  %.val.i.i.i.i = load i64, ptr %i.c, align 8, !range !65, !alias.scope !45470, !noalias !45456, !noundef !55 ; 2 uses
  %i.cb = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cb, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !45470, !noalias !45456, !nonnull !55, !noundef !55
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !45471
  br label %.body

.loopexit:                                        ; preds = %"_ZN4core4iter8adapters6copied9copy_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfa293c7ae48d8695E.exit.i.i.i.i.i.i.i"
  %.sroa.034.0.copyload.pre = load i64, ptr %i.c, align 8, !noalias !45472 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cc = icmp sgt i64 %i.ca, -1
end_hunk_1
