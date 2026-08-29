Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki_proto-ab95bdb510ed74d3.anki_proto.a4bf6806f308371e-cgu.15?download=true
inline.NumInlined: 29
inline.NumDeleted: 4
begin_hunk_0_@"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h2741a31f01204cacE":bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr %i.a(ptr align 8 null), !inline_history !3 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std6thread5local18panic_access_error17h8f81ecb49b0705c7E(ptr nonnull align 8 @14) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @"_ZN3std4hash6random11RandomState3new28_$u7b$$u7b$closure$u7d$$u7d$17h931fcfef24bb47f2E"(ptr nonnull align 8 %i.b)
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h3c4d92082c9978d1E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call ptr %i.a(ptr align 8 null)     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @"_ZN3std4hash6random11RandomState3new28_$u7b$$u7b$closure$u7d$$u7d$17h931fcfef24bb47f2E"(ptr nonnull align 8 %i.b) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcbe722fec4b25329E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN4core3fmt9Formatter12debug_struct17h1e7fed6a090e7031E(ptr nonnull sret([16 x i8]) align 8 %i.d, ptr align 8 %1, ptr nonnull align 1 @0, i64 18)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.f, ptr %i.c, align 8
  %i.g = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr nonnull align 8 %i.d, ptr nonnull align 1 @1, i64 7, ptr nonnull align 1 %i.c, ptr nonnull align 8 @2)
  store ptr %i.e, ptr %i.b, align 8
  %i.h = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr align 8 %i.g, ptr nonnull align 1 @3, i64 8, ptr nonnull align 1 %i.b, ptr nonnull align 8 @4)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h00201168a26291d3E(ptr align 8 %i.h, ptr nonnull align 1 @5, i64 16, ptr nonnull align 1 %i.a, ptr nonnull align 8 @6)
  %i.k = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17h85c161700f9add69E(ptr align 8 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17hac356742b74317baE"(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter10debug_list17hce385b9777d986d7E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %2)
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %i.c = call align 8 ptr @_ZN4core3fmt8builders9DebugList7entries17hded57b8044162664E(ptr nonnull align 8 %i.a, ptr %0, ptr %i.b)
  %i.d = call zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hbf71f56035f2c70aE(ptr align 8 %i.c)
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h207b651bac4e51e6E"(ptr nofree readonly align 1 captures(none) %0, i64 %1, ptr nofree readonly align 1 captures(none) %2, i64 %3) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.a = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.a, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4core9core_arch3x867__m128i8as_i8x1617ha3f4e57a58f83f74E(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c66ce22343e03e9E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hc6aac222587edc07E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr nonnull align 1 %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hc6aac222587edc07E.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hc6aac222587edc07E.exit: ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h89df376d51c0570aE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hf3ec56a16590f8a1E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr nonnull align 1 %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hf3ec56a16590f8a1E.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hf3ec56a16590f8a1E.exit: ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4d87c98f8d31957E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h1a98e44fe2a12850E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 24) ; 2 uses
  %2 = extractvalue { i64, i1 } %1, 1
  br i1 %2, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = extractvalue { i64, i1 } %1, 0
  %i.f = add nuw i64 %3, 8
  %i.g = and i64 %i.f, -16                        ; 3 uses
  %i.h = add i64 %i.c, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.k, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.g, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.i, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = sub nsw i64 0, %.sroa.8.0.i
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr nonnull align 1 %i.a, ptr %i.n, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h1a98e44fe2a12850E.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h1a98e44fe2a12850E.exit: ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab8e9276b7f61f7bE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h54317882c5980d3fE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr nonnull align 1 %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i)
  br label %_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h54317882c5980d3fE.exit

_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h54317882c5980d3fE.exit: ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN89_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he50fbffc66191f95E"(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN89_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he50fbffc66191f95E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN89_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..fmt..Debug$GT$3fmt17he50fbffc66191f95E.2", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr align 8 %1, ptr nonnull align 1 %switch.load2, i64 %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @"_ZN95_$LT$anki_proto..notes..note_fields_check_response..State$u20$as$u20$core..default..Default$GT$7default17h69fe564986628b06E"() unnamed_addr #1 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17h183dbfd4733d68f4E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17h9c66313c7d2e3911E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17ha4e6a69800d2bbc2E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17ha8f9a3c098b945feE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.h)
  %i.i = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = trunc i32 %i.j to i16
  %i.o = xor i16 %i.n, -1
  br label %.lr.ph

.loopexit:                                        ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit", %bb.c, %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.05.019 = phi ptr [ %.sroa.05.229, %bb.c ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.4.018 = phi ptr [ %.sroa.4.228, %bb.c ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.sroa.1.017 = phi i64 [ %i.z, %bb.c ], [ %i.k, %.lr.ph.preheader ]
  %.sroa.76.016 = phi i16 [ %i.ab, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not9.i = icmp eq i16 %.sroa.76.016, 0
  br i1 %.not9.i, label %.lr.ph.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit"

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.4.1 = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.4.018, %.lr.ph ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.05.019, %.lr.ph ]
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1)
  %i.p = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.p, ptr %i.a, align 16
  %i.q = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.r = trunc i32 %i.q to i16                    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.05.1, i64 -768 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.1, i64 16 ; 2 uses
  %.not.i = icmp eq i16 %i.r, -1
  br i1 %.not.i, label %.lr.ph.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread": ; preds = %.lr.ph.i
  %i.u = xor i16 %i.r, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit": ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.05.019, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread", %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit"
  %.lcssa.i30 = phi i16 [ %i.u, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread" ], [ %.sroa.76.016, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit" ] ; 3 uses
  %.sroa.05.229 = phi ptr [ %i.s, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread" ], [ %.sroa.05.019, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit" ] ; 2 uses
  %.sroa.4.228 = phi ptr [ %i.t, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit.thread" ], [ %.sroa.4.018, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd047561bbf49dc94E.exit" ]
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [48 x i8], ptr %.sroa.05.229, i64 %i.x
  %i.z = add i64 %.sroa.10.sroa.1.017, -1         ; 2 uses
  %i.aa = add i16 %.lcssa.i30, -1
  %i.ab = and i16 %i.aa, %.lcssa.i30
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -48
  call void @"_ZN4core3ptr88drop_in_place$LT$$LP$alloc..string..String$C$anki_proto..i18n..TranslateArgValue$RP$$GT$17hd84af07bb2f8e801E"(ptr nonnull align 8 %i.ac)
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN9hashbrown3raw13RawTableInner13drop_elements17hca6c760c39ba2a41E(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h1a98e44fe2a12850E(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr align 1 %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h54317882c5980d3fE(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr align 1 %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hc6aac222587edc07E(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr align 1 %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17hf3ec56a16590f8a1E(ptr nofree readonly align 8 captures(none) %0, ptr align 1 %1, i64 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h946115732aa43fb8E"(ptr align 1 %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h27a5b47c0e1eb747E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h09db7cd94120b88bE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h2d9de00399f842b1E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h3bcf17665fdb0941E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h7798dcd1650e8197E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17hea9361ba33032aa2E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 26)) %0, ptr %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %3
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %1)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.d, ptr %i.a, align 16
  %i.e = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.f = trunc i32 %i.e to i16
  %i.g = xor i16 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.g, ptr %i.i, align 8
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2f2de52951f82862E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq i16 %i.d, 0
  br i1 %.not9, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre12 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -384
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre12, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [24 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_ZN4core9core_arch3x864sse214_mm_load_si12817h617502d1b1db8545E(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n)
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_ZN4core9core_arch3x864sse217_mm_movemask_epi817hae2ab878f2a56d9bE(ptr nonnull align 16 %i.a)
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -384
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
end_hunk_0
