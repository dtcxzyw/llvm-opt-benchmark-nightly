Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/vergen_gitcl-b92187c9e2c5b0e5.vergen_gitcl.a0eaf33017eefd6d-cgu.0?download=true
inline.NumInlined: 163
inline.NumDeleted: 6
begin_hunk_0_@"_ZN83_$LT$time..error..component_range..ComponentRange$u20$as$u20$core..fmt..Display$GT$3fmt17hd33030fcda9dd0e2E":bb.a
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt2rt8Argument11new_display17ha284d397608a9280E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hfb2e622652f23766E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 @203, ptr nonnull align 8 %i.b)
  %i.d = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17he7d7cc779dfade1cE(ptr align 8 %1, ptr nonnull align 8 %i.c)
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hde146324a1d102caE"(ptr nofree align 8 captures(none) %0) unnamed_addr #8 !guid !178 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hc66b5cc6554b025cE"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !179 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i64 @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17hb6350ab9e6140c10E"(ptr %i.b, ptr %i.c) ; 0 uses
  %i.e = tail call align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41bcefbc207482d3E"(ptr nonnull align 8 %0) ; 2 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.02.09 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 58
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = add i64 %.sroa.02.09, 1
  %i.j = tail call align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41bcefbc207482d3E"(ptr nonnull align 8 %0) ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %.sroa.02.09, %.lr.ph ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %.lr.ph ], [ 0, %bb.b ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN94_$LT$core..slice..iter..Windows$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce3bdc72805dc85E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 !guid !180 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = tail call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h22b7d39be086b3f6E"(i64 1, ptr align 1 %i.f, i64 %i.d, ptr nonnull align 8 @205) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.h, ptr %0, align 8
  store i64 %i.i, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.j = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %i.b, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN94_$LT$time..error..parse_from_description..ParseFromDescription$u20$as$u20$core..fmt..Debug$GT$3fmt17h0b2adb4dda348b7fE"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 !guid !181 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @206, i64 14)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8 %1, ptr nonnull align 1 @207, i64 16, ptr nonnull align 1 %i.a, ptr nonnull align 8 @208)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @209, i64 28)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN96_$LT$time..error..parse_from_description..ParseFromDescription$u20$as$u20$core..fmt..Display$GT$3fmt17ha9a883102b1ca8a8E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 !guid !182 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = load i64, ptr %0, align 8
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @210, i64 33)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument11new_display17h8fc826fe3ccaf6c3E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hfb2e622652f23766E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 @213, ptr nonnull align 8 %i.b)
  %i.h = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17he7d7cc779dfade1cE(ptr align 8 %1, ptr nonnull align 8 %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @214, i64 61)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb4637c75cdc3f920E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 !guid !183 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6fdafc4833b082a5E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.0.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.0.0.copyload, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.2.0.copyload, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6fdafc4833b082a5E.exit"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6fdafc4833b082a5E.exit": ; preds = %bb.a, %bb.b
  %.sink25.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.0.copyload.sink.i = phi i64 [ %.sroa.3.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink25.i, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink25.i, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0.copyload.sink.i, ptr %i.c, align 8
  call void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h1cb7940334e48c71E"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h10f907d1cd97e6c6E"(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !185 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %1 = load i64, ptr %i.d, align 8                ; 2 uses
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit.thread", label %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit.peel"

"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit.peel": ; preds = %bb.a
  %3 = add i64 %1, -1
  store i64 %3, ptr %i.d, align 8
  call void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h0a1aaac77d001f3eE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %0)
  %.sroa.0.0.copyload1.peel = load ptr, ptr %i.a, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.peel = icmp eq ptr %.sroa.0.0.copyload1.peel, null
  br i1 %.not.peel, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit.thread", label %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit"

"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit.thread": ; preds = %bb.b, %bb.a
  call void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17ha2195f23b815e2c5E"(ptr nonnull align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit": ; preds = %bb.b
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  call void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h0a1aaac77d001f3eE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %0)
  %.sroa.0.0.copyload1 = load ptr, ptr %i.a, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit.peel", %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit"
  %.sroa.0.0.copyload1.peel.sink = phi ptr [ %.sroa.0.0.copyload1, %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit" ], [ %.sroa.0.0.copyload1.peel, %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit.peel" ]
  store ptr %.sroa.0.0.copyload1.peel.sink, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  invoke void @"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h31e22435ffbf5aa2E"(ptr nonnull align 8 %i.c)
          to label %bb.b unwind label %bb.d, !llvm.loop !184

.loopexit:                                        ; preds = %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit", %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit.peel", %"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha8558eb47daddaffE.exit.thread"
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr %0, ptr %i.b, align 8
  invoke void @"_ZN4core3ptr250drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$C$alloc..alloc..Global$GT$$GT$17h44f5fa1ef972a6e2E"(ptr nonnull align 8 %i.b) #25
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h76134fe40c892713E"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr align 8, ptr align 1, i64, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h68cfe210401133f4E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h413b918065e880bcE"(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr align 8, ptr align 1, i64, ptr align 1, i64, ptr align 1, ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h710ca7a4ffc6cc7bE"(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr align 8, ptr align 1, i64, ptr align 1, i64, ptr align 1, ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17h6d993ab6eac66fbfE(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h86895bd5ac7dc244E"(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17he7d7cc779dfade1cE(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17hd2e634eb3ecff2ebE(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h7b782e105e875febE"(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17h8fc826fe3ccaf6c3E(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$8is_empty17h1f5d27074a08fa40E"(ptr align 1, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h54c382a03c3f5927E"(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64, i64, i64, ptr align 8) unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN108_$LT$core..iter..adapters..peekable..Peekable$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h50f5e51839c0e1acE"(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h31e22435ffbf5aa2E"(ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #15

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17h347c932f54186e16E"(ptr align 1, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h1a3aba9cc58f7ca9E"(ptr sret([48 x i8]) align 8, ptr, ptr, ptr, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hff2f1b4549f0331aE"(ptr align 8, ptr align 1, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h59f68af8faa096c1E"(i1 zeroext) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN185_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..ops..control_flow..ControlFlow$LT$B$C$core..convert..Infallible$GT$$GT$$GT$13from_residual17h640804d30ab89d35E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h2b723cb0cfb15c9bE"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h22b7d39be086b3f6E"(i64, ptr align 1, i64, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8, ptr align 1, i64) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64, i64, ptr align 8) unnamed_addr #17

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden ptr @"_ZN12vergen_gitcl5gitcl5Gitcl25add_git_timestamp_entries28_$u7b$$u7b$closure$u7d$$u7d$17h1e61b357ac6ebb63E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN12vergen_gitcl5gitcl5Gitcl25inner_add_git_map_entries28_$u7b$$u7b$closure$u7d$$u7d$17h0801a49c8cfc8fd9E"(i1 zeroext) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN99_$LT$time..format_description..parse..format_item..PeriodCase$u20$as$u20$core..default..Default$GT$7default17hb4bac55163ee07cdE"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN100_$LT$time..format_description..parse..format_item..WeekdayRepr$u20$as$u20$core..default..Default$GT$7default17he2b10e0f0a33cad6E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN98_$LT$time..format_description..parse..format_item..MonthRepr$u20$as$u20$core..default..Default$GT$7default17h9aa9c48427eacccdE"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN101_$LT$time..format_description..parse..format_item..SignBehavior$u20$as$u20$core..default..Default$GT$7default17hf4144c579616ceb8E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN96_$LT$time..format_description..parse..format_item..Padding$u20$as$u20$core..default..Default$GT$7default17h02bd5124298d171fE"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN97_$LT$time..format_description..parse..format_item..YearRepr$u20$as$u20$core..default..Default$GT$7default17h4c86d8f11e9e6e02E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN102_$LT$time..format_description..parse..format_item..TrailingInput$u20$as$u20$core..default..Default$GT$7default17hd89dcc45512a3472E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN104_$LT$time..format_description..parse..format_item..SubsecondDigits$u20$as$u20$core..default..Default$GT$7default17h7a22f19d4558e9d1E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN106_$LT$time..format_description..parse..format_item..WeekdayOneIndexed$u20$as$u20$core..default..Default$GT$7default17h746ac38c504fd97bE"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN97_$LT$time..format_description..parse..format_item..HourBase$u20$as$u20$core..default..Default$GT$7default17h2f1fb608d30748f0E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN103_$LT$time..format_description..parse..format_item..WeekNumberRepr$u20$as$u20$core..default..Default$GT$7default17h5615fffa2de3df51E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN98_$LT$time..format_description..parse..format_item..YearRange$u20$as$u20$core..default..Default$GT$7default17h25a338ee6d9e66d0E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN109_$LT$time..format_description..parse..format_item..WeekdayCaseSensitive$u20$as$u20$core..default..Default$GT$7default17hbfdea455ca3c4942E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN97_$LT$time..format_description..parse..format_item..YearBase$u20$as$u20$core..default..Default$GT$7default17h0827b9e1c4c6b094E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @"_ZN111_$LT$time..format_description..parse..format_item..UnixTimestampPrecision$u20$as$u20$core..default..Default$GT$7default17hee621e5cf47028a3E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN108_$LT$time..format_description..parse..format_item..PeriodCaseSensitive$u20$as$u20$core..default..Default$GT$7default17h79c2589e96c75de8E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN107_$LT$time..format_description..parse..format_item..MonthCaseSensitive$u20$as$u20$core..default..Default$GT$7default17had5c60e10c8e7223E"() unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month28_$u7b$$u7b$closure$u7d$$u7d$17h82a53a651771ea0eE"(ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nounwind nonlazybind uwtable
declare hidden void @_ZN4core4hint21unreachable_unchecked18precondition_check17hf58e64e9272d5529E(ptr align 8) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core4iter8adapters8peekable17Peekable$LT$I$GT$4peek28_$u7b$$u7b$closure$u7d$$u7d$17h2257caabbe8a1aa8E"(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr191drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$core..result..Result$LT$time..format_description..parse..lexer..Token$C$time..format_description..parse..Error$GT$$GT$$GT$$GT$17hc13ee0a515e52ba5E"(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @_ZN4time7weekday7Weekday23number_days_from_monday17h9ecb4750ea1b24a3E(i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN38_$LT$T$u20$as$u20$num_conv..Extend$GT$6extend17h74c0f253a2788a84E"(i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17h98690ae6279abbdaE"(ptr align 1, i64, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @_ZN4time7weekday7Weekday23number_days_from_sunday17h18bd3b2e8fd147fcE(i8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i8 @"_ZN4core3num7nonzero16NonZero$LT$T$GT$3get17h6a410f09f55e6ea6E"(i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @"_ZN38_$LT$T$u20$as$u20$num_conv..Extend$GT$6extend17hf941af17e8d8dd24E"(i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powi17h113372023883b7b2E"(double, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$5trunc17hb1f07334654d9eb1E"(double) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f64(double) #15

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{i64 -3491630787339690821}
!4 = !{i64 -356917703928092121}
!5 = !{i64 4509910907355304158}
!6 = !{i64 -7812503066974998824}
!7 = !{i64 -7444088385661207577}
!8 = !{i64 -6915039154369399172}
!9 = !{i64 -2452237054476294685}
!10 = !{i64 6345090481648768407}
!11 = !{i64 5101714278496078806}
!12 = !{i64 6371317171120727388}
!13 = !{i64 567179547184924009}
!14 = !{i64 -7412886579137372144}
!15 = !{i64 -7041702275027636797}
!16 = !{i64 -8435321967943370894}
!17 = !{i64 -8766079318958592338}
!18 = !{i64 4465988065692061948}
!19 = !{i64 8021385784596270244}
!20 = !{i64 -8411305273602395161}
!21 = !{i64 -7262162427210070049}
!22 = !{i64 4877116692364619118}
!23 = !{i64 -6458255613945850833}
!24 = !{i64 6769221151868186898}
!25 = !{i64 -804234863754004295}
!26 = !{i64 -7980000639789654865}
!27 = !{i64 -3876338974199865224}
!28 = !{i64 -7392678255633178502}
!29 = !{i64 -2986519483837479954}
!30 = !{i64 3009797277198250618}
!31 = !{i64 3391675795184972591}
!32 = !{i64 52969313902806614}
!33 = !{i64 -2794513730761016327}
!34 = !{i64 894994580372287316}
!35 = !{i64 -8141099743200657010}
!36 = !{i64 -8577687447935116650}
!37 = !{i64 -1549395037716638224}
!38 = !{i64 4923691392307792999}
!39 = !{i64 3796503459940240240}
!40 = !{i64 -6858740387929429143}
!41 = !{i64 -3542723767814377142}
!42 = !{i64 7931929780535293893}
!43 = !{i64 -5004086786030973454}
!44 = !{i64 -7471087120997136879}
!45 = !{i64 5645941158402579467}
!46 = !{i64 6211884214039869574}
!47 = !{i64 -4870483076422549814}
!48 = !{i64 4612292462596531879}
!49 = !{i64 -5809838729355671240}
!50 = !{i64 487544936801395549}
!51 = !{i64 -1377540764052091643}
!52 = !{i64 4286455783616440459}
!53 = !{i64 2269023564130800396}
!54 = !{i64 -370838210663559226}
!55 = !{i64 -5714306704705358520}
!56 = !{i64 -8193979710425751804}
!57 = !{i64 -1277583415366933676}
!58 = !{i64 6698701098510111014}
!59 = !{i64 -1791694718408711318}
!60 = !{i64 -4907156464883479014}
!61 = !{i64 -70891815441111550}
!62 = !{i64 -1892724023479605380}
!63 = !{i64 -8528818979904392490}
!64 = !{i64 -8287828078355314147}
!65 = !{i64 4480693754340886549}
!66 = !{i64 3492445128435979911}
!67 = !{i64 1261726443056103029}
!68 = !{i64 5756356806033146680}
!69 = !{i64 -5064096937376732725}
!70 = !{i64 -2515100658389394986}
!71 = !{i64 3410365708237006282}
!72 = !{i64 6911472626241353691}
!73 = !{i64 -5510040107263036433}
!74 = !{i64 2623597262109964597}
!75 = !{i64 7140277166588447799}
!76 = !{i64 -3892682854834550738}
!77 = !{i64 -6675172827664174741}
!78 = !{i64 9124848482644348537}
!79 = !{i64 1677986675491375427}
!80 = !{i64 -3468989865505200766}
!81 = !{i64 -6250663911551011662}
!82 = !{i64 7828501056093478089}
!83 = !{i64 -1738756562775871124}
!84 = !{i64 -2242299055668915671}
!85 = !{i64 1309382795905428910}
!86 = !{i64 787690629647572119}
!87 = !{i64 4408736143545026718}
!88 = !{i64 -8161560141215629539}
!89 = !{i64 832829312069185800}
!90 = !{i64 4939136469028330585}
!91 = !{i64 -1292948069319552486}
!92 = !{i64 2881158011882232112}
!93 = !{i64 1921895956769447458}
!94 = !{i64 4638010800655473759}
!95 = !{i64 -9037065453718312905}
!96 = !{i64 -2151957454946538425}
!97 = !{i64 -53927499183556630}
!98 = !{i64 -167277090832948160}
!99 = !{i64 2812688580579804118}
!100 = !{i64 -5910587297171139502}
!101 = !{i64 -6425367403052103301}
!102 = !{i64 7164567848416524026}
!103 = !{i64 -8379593054413363787}
!104 = !{i64 -8383014124803246700}
!105 = !{i64 -8762417408278869787}
!106 = !{i64 -1568571425332610424}
!107 = !{i64 -7422245469775035513}
!108 = !{i64 -3667693355502626315}
!109 = !{i64 -7944653748388342977}
!110 = !{i64 3144834494552776656}
!111 = !{i64 -6536029920673393237}
!112 = !{i64 6258322396185692468}
!113 = !{i64 -4787435210167114226}
!114 = !{i64 1613713444217578836}
!115 = distinct !{!115, i1 true, !"_ZN4time5error15component_range14ComponentRange11conditional17h59aebecf876b432fE"}
!116 = distinct !{!116, !115, !"_ZN4time5error15component_range14ComponentRange11conditional17h59aebecf876b432fE: argument 0"}
!117 = !{i64 81103637216264239}
!118 = !{!116}
!119 = !{ptr @_ZN4time10formatting13format_number17h3f1e507c229397f7E, ptr @_ZN4time10formatting13format_number17h65192779b60cd19cE}
!120 = !{i64 -123974648978135188}
!121 = !{i64 -3682176303237034331}
!122 = !{i64 1062009090906477331}
!123 = !{i64 631943065669028780}
!124 = !{i64 5991632570406133906}
!125 = !{i64 -1991401013582976221}
!126 = !{i64 6516190791807897409}
!127 = !{i64 3193662334622770049}
!128 = !{i64 5952545646147022333}
!129 = !{i64 -2742446957367115755}
!130 = !{i64 -5513674858699150841}
!131 = !{i64 6769991006610693263}
!132 = !{i64 -2234657406346466915}
!133 = !{i64 4151208723294637793}
!134 = !{i64 5130312146421050479}
!135 = !{i64 -5876472266482418335}
!136 = !{i64 -7719173883382495806}
!137 = !{i64 806690933731389394}
!138 = !{i64 6619590142500221670}
!139 = !{i64 -6602852738639673388}
!140 = !{i64 8995788431113655116}
!141 = !{i64 1949727592310760776}
!142 = !{i64 -4811898897301509404}
!143 = !{i64 6110069508628413529}
!144 = !{i64 -1299836260405373164}
!145 = !{i64 8992896680882853582}
!146 = !{i64 -4208987981474999892}
!147 = !{i64 -2862191371160462941}
!148 = !{i64 -3192894208375924707}
!149 = !{i64 8635527567992050616}
!150 = !{i64 -2427786819095794481}
!151 = !{i64 3423589238292535662}
!152 = !{i64 -2833866975133876912}
!153 = !{i64 -6063805299696235188}
!154 = !{i64 4163060193412754130}
!155 = !{i64 -4205821711308615118}
!156 = !{i64 -2181119839664177532}
!157 = !{i64 -5200621410839743892}
!158 = !{i64 4259250768753311702}
!159 = !{i64 7544176459202291381}
!160 = !{i64 -7309325274006895974}
!161 = !{i64 -6933422962627905225}
!162 = !{i64 -7602768293002436352}
!163 = !{i64 6435202108109756331}
!164 = !{i64 577155083925514509}
!165 = !{i64 1679087980403123396}
!166 = !{i64 -5642467535702511724}
!167 = !{i64 2341781136519657224}
!168 = !{i64 1601552676827268904}
!169 = !{i64 6440368892807027405}
!170 = !{i64 -1470899753586287246}
!171 = !{i64 5671526926217270676}
!172 = !{i64 1121690743005813517}
!173 = !{i64 8058010135087550004}
!174 = !{i64 -54274817534777685}
!175 = !{i64 2751821293669462477}
!176 = !{i64 -1376093851538974228}
!177 = !{i64 -8949218523512240603}
!178 = !{i64 -9220432382808995303}
!179 = !{i64 -3442993189678774824}
!180 = !{i64 -8729622066495288168}
!181 = !{i64 2037136746814930660}
!182 = !{i64 9191287270999120499}
!183 = !{i64 -870590069265506882}
!184 = distinct !{!184, !186}
!185 = !{i64 -8213806773658643385}
!186 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
