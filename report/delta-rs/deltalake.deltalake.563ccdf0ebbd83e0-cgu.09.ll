inline.NumInlined: 7581
inline.NumDeleted: 2927
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core3stre16trim_end_matchescECs7p2uQeJxui2_9deltalake:_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %i.a = ptrtoint ptr %0 to i64
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass6.i = phi i64 [ %.reass.i, %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.reass6.i ; 4 uses
  %i.c = icmp samesign eq i64 %.reass6.i, 0
  br i1 %i.c, label %_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !36, !noundef !4 ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit17.i.i.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit17.i.i.i: ; preds = %bb.b
  %i.g = icmp ne i64 %.reass6.i, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !36, !noundef !4 ; 3 uses
  %i.j = and i8 %i.i, 31
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp slt i8 %i.i, -64
  br i1 %i.l, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit19.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.e to i32
  br label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit17.i.i.i
  %i.n = icmp ne i64 %.reass6.i, 2
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !36, !noundef !4 ; 3 uses
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp slt i8 %i.p, -64
  br i1 %i.s, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit21.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.e ], [ %i.h, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.k, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit17.i.i.i ]
  %i.t = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.u = and i8 %i.e, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit19.i.i.i
  %i.x = icmp ne i64 %.reass6.i, 3
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !36, !noundef !4
  %i.aa = and i8 %i.z, 7
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 6
  %i.ad = and i8 %i.p, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit21.i.i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.y, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit21.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.af, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit21.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7p2uQeJxui2_9deltalake.exit19.i.i.i ]
  %i.ag = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.ah = and i8 %i.i, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  br label %bb.d

_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.d ], [ %i.d, %bb.c ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.w, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = ptrtoint ptr %.sroa.6.2.ph.i.i to i64
  %.reass.i = sub i64 %i.al, %i.a
  %.not.i = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs7p2uQeJxui2_9deltalake.exit

_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %i.am = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %.reass6.i, 1
  ret { ptr, i64 } %i.an
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre9ends_withcECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  store i32 0, ptr %i.a, align 4, !noalias !45
  %i.b = icmp samesign ult i32 %2, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %2, 2048
  %i.d = trunc i32 %2 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %2, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %2, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %2, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %2 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !48, !noalias !45
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !48, !noalias !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !48, !noalias !45
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %2, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !48, !noalias !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !48, !noalias !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !48, !noalias !45
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !48, !noalias !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !48, !noalias !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !48, !noalias !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !48, !noalias !45
  br label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  ret i1 %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(address_is_null) %1, i64 %2, ptr %.0.val, ptr %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !57
  %i.b = load i64, ptr %i.a, align 8, !range !3, !noalias !57, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !63, !noalias !57, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !noalias !57
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #37, !noalias !57
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !noalias !57, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !65
  br label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit

_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.d
  store i64 %i.e, ptr %0, align 8, !alias.scope !66, !noalias !67
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !66, !noalias !67
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !66, !noalias !67
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val)
  br label %bb.f

bb.f:                                             ; preds = %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsgFsIr8bmZ1R_10env_logger6loggerNtB3_7Builder8from_envNtB3_3EnvECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 9 uses
  %i.f = alloca [168 x i8], align 8               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 0, ptr %i.g, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  store i8 0, ptr %.sroa.52.0..sroa_idx, align 1
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 90
  store i8 0, ptr %.sroa.63.0..sroa_idx, align 2
  store i64 1, ptr %i.f, align 8
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 4, ptr %.sroa.04.sroa.4.0..sroa_idx, align 8
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @7, ptr %.sroa.04.sroa.5.0..sroa_idx, align 8
  %.sroa.04.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.04.sroa.6.0..sroa_idx, align 8
  %.sroa.04.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr %.sroa.04.sroa.7.0..sroa_idx, align 8
  %.sroa.04.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i8 0, ptr %.sroa.04.sroa.11.0..sroa_idx, align 4
  %.sroa.04.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  store i8 0, ptr %.sroa.04.sroa.12.0..sroa_idx, align 1
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i8 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i8 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(96) %1, i64 96, i1 false), !alias.scope !72, !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !68
  invoke void @_RNvMs3_NtCsgFsIr8bmZ1R_10env_logger6loggerNtB5_3Env10get_filter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e)
          to label %bb.c unwind label %bb.b, !noalias !68

.body.i:                                          ; preds = %bb.r, %bb.p, %bb.h, %bb.f, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.ae, %bb.p ], [ %i.r, %bb.h ], [ %i.j, %bb.b ], [ %i.af, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(96) %i.e) #38
          to label %.body unwind label %bb.j, !noalias !80

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 8, !range !63, !noalias !68, !noundef !4
  %.not.i = icmp eq i64 %i.k, -9223372036854775808
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !68, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !68, !noundef !4
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMNtCsgFsIr8bmZ1R_10env_logger6loggerNtB2_7Builder13parse_filters(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.g unwind label %bb.f, !noalias !80 ; 0 uses

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  invoke void @_RNvMs3_NtCsgFsIr8bmZ1R_10env_logger6loggerNtB5_3Env15get_write_style(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e)
          to label %bb.k unwind label %bb.b, !noalias !80

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %.body.i unwind label %bb.j, !noalias !80

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.h, !noalias !80

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.i, !noalias !80

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !80
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.b, !noalias !80

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68
  br label %bb.e

bb.j:                                             ; preds = %bb.p, %bb.f, %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !80
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.b, align 8, !range !63, !noalias !68, !noundef !4
  %.not1.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !68, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !68, !noundef !4
  %i.z = invoke noundef nonnull align 8 ptr @_RNvMNtCsgFsIr8bmZ1R_10env_logger6loggerNtB2_7Builder17parse_write_style(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.q unwind label %bb.p, !noalias !80 ; 0 uses

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit7.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3VarECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n, !noalias !80

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3VarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ab) #38
          to label %.body unwind label %bb.o, !noalias !80

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !80
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3VarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ad)
          to label %bb.u unwind label %bb.t

bb.p:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %.body.i unwind label %bb.j, !noalias !80

bb.q:                                             ; preds = %bb.l
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i4.i unwind label %bb.r, !noalias !80

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.s, !noalias !80

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !80
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i4.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit7.i unwind label %bb.b, !noalias !80

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit7.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  br label %bb.m

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.n, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.t ], [ %i.aa, %bb.n ], [ %.pn.i, %.body.i ]
end_hunk_0
begin_hunk_1_@_RINvNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder7projectNtNtB6_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB15_EECs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.l

bb.ab:                                            ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5926
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.l)
  br label %bb.ad

.thread.i:                                        ; preds = %.body298.i, %bb.b
  %.pn243362.i = phi { ptr, i32 } [ %i.r, %bb.b ], [ %.pn241.i, %.body298.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.k) #38
          to label %bb.ac unwind label %bb.k, !noalias !5941

bb.ac:                                            ; preds = %.thread.i, %bb.ab, %bb.m
  %.pn245.ph.i = phi { ptr, i32 } [ %.pn243362.i, %.thread.i ], [ %i.be, %bb.ab ], [ %i.al, %bb.m ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.l) #38
          to label %.body unwind label %bb.k, !noalias !5941

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

.body:                                            ; preds = %bb.ac, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %.pn245.ph.i, %bb.ac ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB1e_10DeltaError15type_object_raw0INtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEEB1g_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB3D_10DeltaError15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB3F_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBV_5types6string8PyStringEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMs7_B2G_NtB2G_8Interned3get0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB1e_18TableNotFoundError15type_object_raw0INtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEEB1g_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB3D_18TableNotFoundError15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB3F_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB1e_18DeltaProtocolError15type_object_raw0INtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEEB1g_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB3D_18DeltaProtocolError15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB3F_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB1e_17CommitFailedError15type_object_raw0INtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEEB1g_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB3D_17CommitFailedError15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB3F_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB1e_19SchemaMismatchError15type_object_raw0INtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEEB1g_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB6_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB3D_19SchemaMismatchError15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB3F_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_22fastcall_with_keywords0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @38, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread57

.thread57:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.047.0.copyload = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.448.0.copyload = load ptr, ptr %.sroa.448.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.549.0.copyload = load ptr, ptr %.sroa.549.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.650.0.copyload = load ptr, ptr %.sroa.650.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.751.0.copyload = load ptr, ptr %.sroa.751.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %.sroa.047.0.copyload, align 8, !noalias !5955, !nonnull !4, !noundef !4
  %i.j = load ptr, ptr %.sroa.448.0.copyload, align 8, !noalias !5955, !noundef !4
  %i.k = load ptr, ptr %.sroa.549.0.copyload, align 8, !noalias !5955, !noundef !4
  %i.l = load i64, ptr %.sroa.650.0.copyload, align 8, !noalias !5955, !noundef !4
  %i.m = load ptr, ptr %.sroa.751.0.copyload, align 8, !noalias !5955, !noundef !4
  invoke void %i.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef %i.j, ptr noundef %i.k, i64 noundef %i.l, ptr noundef %i.m)
          to label %bb.e unwind label %bb.c, !inline_history !5962

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread70 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

.thread70:                                        ; preds = %bb.c
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload13 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16 = load ptr, ptr %.sroa.8.0..sroa_idx15, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.13.0.copyload28 = load ptr, ptr %.sroa.13.0..sroa_idx27, align 8
  %.sroa.14.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.844.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx31, i64 24, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load <2 x ptr>, ptr %.sroa.11.0..sroa_idx19, align 8
  %.sroa.11.0.copyload20 = load ptr, ptr %.sroa.11.0..sroa_idx19, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload13, ptr %i.c, align 8
  store ptr %.sroa.8.0.copyload16, ptr %.sroa.440.0..sroa_idx, align 8
  store <2 x ptr> %i.t, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.13.0.copyload28, ptr %.sroa.743.0..sroa_idx, align 8
  %i.u = ptrtoint ptr %.sroa.0.0.copyload13 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %i.u, label %.invoke [
    i64 2, label %bb.f
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10
  ], !prof !5963

bb.f:                                             ; preds = %.thread70, %bb.e
  %.sroa.0.0.4574 = phi ptr [ %i.r, %.thread70 ], [ %.sroa.8.0.copyload16, %bb.e ]
  %.sroa.8.8.4673 = phi ptr [ %i.s, %.thread70 ], [ %.sroa.11.0.copyload20, %bb.e ]
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %.sroa.0.0.4574, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.8.8.4673)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.b, %bb.f ], [ %.sroa.440.0..sroa_idx, %bb.e ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10: ; preds = %.invoke, %bb.e
  %.sroa.0.0.i = phi ptr [ null, %.invoke ], [ %.sroa.8.0.copyload16, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %bb.g, %.thread57
  %.pn56 = phi { ptr, i32 } [ %i.h, %.thread57 ], [ %i.w, %bb.g ]
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn56
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @38, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread29

.thread29:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val1.i = load ptr, ptr %1, align 8, !noundef !4
  invoke void %.val.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef %.val1.i)
          to label %bb.e unwind label %bb.c, !inline_history !5964

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %.thread36 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

.thread36:                                        ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload14 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16 = load ptr, ptr %.sroa.8.0..sroa_idx15, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx18, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload14, ptr %i.c, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload16, ptr %.sroa.421.0..sroa_idx, align 8
  %.pr.cast = ptrtoint ptr %.sroa.0.0.copyload14 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %.pr.cast, label %.invoke [
    i64 2, label %._crit_edge
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10
  ], !prof !5963

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %.sroa.522.0..sroa_idx, align 8, !alias.scope !5965
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.thread36
  %i.o = phi ptr [ %i.n, %.thread36 ], [ %.pre, %._crit_edge ]
  %.sroa.0.0.2338 = phi ptr [ %i.m, %.thread36 ], [ %.sroa.8.0.copyload16, %._crit_edge ]
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %.sroa.0.0.2338, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.b, %bb.f ], [ %.sroa.421.0..sroa_idx, %bb.e ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10: ; preds = %.invoke, %bb.e
  %.sroa.0.0.i = phi ptr [ null, %.invoke ], [ %.sroa.8.0.copyload16, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %bb.g, %.thread29
  %.pn28 = phi { ptr, i32 } [ %i.h, %.thread29 ], [ %i.q, %bb.g ]
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn28
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline21trampoline_unraisableNCNvB2_7dealloc0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 5 uses
  %i.b = alloca [56 x i8], align 16               ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @38, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 30, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread8

.thread8:                                         ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 4
  %.val.i24 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val1.i = load ptr, ptr %1, align 8, !noundef !4
  invoke void %.val.i24(ptr noundef %.val1.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit unwind label %bb.c, !inline_history !5968

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = extractvalue { ptr, ptr } %i.j, 0
  %i.m = extractvalue { ptr, ptr } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.5.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.5.sroa.6.0..sroa_idx5, i64 40, i1 false)
  %i.n = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.n, ptr %i.a, align 16
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a)
          to label %bb.h unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.h
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.thread unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @PyErr_WriteUnraisable(ptr noundef null) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %.thread, %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %bb.g, %.thread8
  %.pn7 = phi { ptr, i32 } [ %i.g, %.thread8 ], [ %i.o, %bb.g ]
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileEB1c_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5969)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !5969, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5969
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsp_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_15ObjectInputFileNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !5972
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvXsk_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_.exit.i.i, !prof !5

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_.exit.i.i: ; preds = %bb.a
  call void @_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE8try_initB1p_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 @_RNvNvXsp_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_15ObjectInputFileNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT), !noalias !5969
  %.pre.i.i = load i64, ptr %i.a, align 8, !range !3, !noalias !5969
  %i.f = trunc nuw i64 %.pre.i.i to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_.exit.i._RNvXsk_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i, !prof !5975

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_.exit.i._RNvXsk_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_.exit.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !noalias !5969
  br label %_RNvXsk_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i

bb.b:                                             ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_.exit.i.i
  call void @_RNvNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 15) #37, !noalias !5969
  unreachable

_RNvXsk_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_.exit.i._RNvXsk_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i, %bb.a
  %i.h = phi ptr [ %.pre.i, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_.exit.i._RNvXsk_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXsp_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_15ObjectInputFileNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.a ]
  %i.i = load ptr, ptr %i.h, align 8, !noalias !5969, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5969
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !5969, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit

_RNvYNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit: ; preds = %_RNvXsk_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i
  %i.l = call noundef i32 @PyType_IsSubtype(ptr noundef %i.k, ptr noundef nonnull %i.i) #41, !noalias !5969
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread

bb.c:                                             ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %i.b, align 8
end_hunk_1
begin_hunk_2_@_RNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB8_14SessionContext5tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0Cs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6481
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #38
          to label %.body92.i unwind label %bb.av, !noalias !6506

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i85.i, %bb.bt, %bb.bs
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

bb.bv:                                            ; preds = %bb.bw
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6481
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #38
          to label %.body86.i unwind label %bb.av, !noalias !6506

bb.bw:                                            ; preds = %.noexc70.i
  %i.gu = load ptr, ptr %i.gq, align 8, !noalias !6546, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6546
  store i64 %i.gp, ptr %i.e, align 8, !noalias !6481
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gu, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6481
  %.sroa.5148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5148.0..sroa_idx.i, align 8, !noalias !6481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6481
  store ptr %i.h, ptr %i.d, align 8, !noalias !6481
  %.sroa.5131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5131.0..sroa_idx.i, align 8, !noalias !6481
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.gv, align 8, !noalias !6481
  %.sroa.5133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5133.0..sroa_idx.i, align 8, !noalias !6481
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @32, ptr noundef nonnull %i.d)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit83.i unwind label %bb.bv, !noalias !6506

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit83.i:   ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6481
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i85.i unwind label %bb.bx, !noalias !6506

bb.bx:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit83.i
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body86.i unwind label %bb.by, !noalias !6506

bb.by:                                            ; preds = %bb.bx
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6506
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i85.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit83.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit89.i unwind label %bb.bu, !noalias !6506

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit89.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6481
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i91.i unwind label %bb.bz, !noalias !6506

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit89.i
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body92.i unwind label %bb.ca, !noalias !6506

bb.ca:                                            ; preds = %bb.bz
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6506
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i91.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit89.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.cc unwind label %bb.cb, !noalias !6506

.body92.i:                                        ; preds = %bb.cb, %bb.bz, %.body86.i, %bb.bq
  %.pn17.i = phi { ptr, i32 } [ %i.gk, %bb.bq ], [ %.pn15.i, %.body86.i ], [ %i.hc, %bb.cb ], [ %i.gy, %bb.bz ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6481
  call void @llvm.experimental.noalias.scope.decl(metadata !6550)
  %i.ha = load ptr, ptr %i.k, align 8, !alias.scope !6550, !noalias !6481, !noundef !4 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %.body60.i, label %bb.bk

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i91.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body92.i

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6481
  %.sroa.0144.0.copyload.i = load ptr, ptr %i.i, align 8, !alias.scope !6551, !noalias !6481
  %.sroa.5145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5145.0.copyload.i = load ptr, ptr %.sroa.5145.0..sroa_idx.i, align 8, !alias.scope !6551, !noalias !6481
  %.sroa.6146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6146.0.copyload.i = load i64, ptr %.sroa.6146.0..sroa_idx.i, align 8, !alias.scope !6551, !noalias !6481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6481
  br label %bb.bn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit65.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6481
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6555)
  call void @llvm.experimental.noalias.scope.decl(metadata !6558)
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !6561, !noalias !6481, !nonnull !4, !noundef !4
  %i.hf = atomicrmw sub ptr %i.he, i64 1 release, align 8, !noalias !6562
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit97.i

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit65.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hd) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit97.i unwind label %bb.ce, !noalias !6506

bb.ce:                                            ; preds = %bb.ci, %bb.cd
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit97.i: ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit65.i
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i99.i unwind label %bb.cf, !noalias !6506

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit97.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %.body.i unwind label %bb.cg, !noalias !6506

bb.cg:                                            ; preds = %bb.cf
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6506
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i99.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs7p2uQeJxui2_9deltalake.exit97.i
  %i.hl = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.12137.sroa.0.1.i, i64 0
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %bb.cl unwind label %bb.ab, !noalias !6506

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6481
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6563)
  call void @llvm.experimental.noalias.scope.decl(metadata !6566)
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !6569, !noalias !6481, !nonnull !4, !noundef !4
  %i.ho = atomicrmw sub ptr %i.hn, i64 1 release, align 8, !noalias !6570
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit57.i

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hm) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit57.i unwind label %bb.ce, !noalias !6506

bb.cj:                                            ; preds = %.body.i
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.hq) #38
          to label %bb.x unwind label %bb.av, !noalias !6506

common.ret:                                       ; preds = %bb.dd, %bb.ck
  %storemerge = phi i8 [ 1, %bb.dd ], [ 3, %bb.ck ]
  store i8 %storemerge, ptr %i.x, align 8
  ret void

bb.ck:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6481
  store i8 3, ptr %i.ff, align 8, !noalias !6481
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.038)
  br label %common.ret

bb.cl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i99.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.hr = phi ptr [ %i.eu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.ff, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i99.i ]
  %i.hs = phi ptr [ %i.ev, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.fg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i99.i ]
  %.sroa.0134.2.i = phi i64 [ %.sroa.0134.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.0134.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i99.i ] ; 2 uses
  %.sroa.5135.2.i = phi ptr [ %.sroa.5135.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.5135.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i99.i ] ; 5 uses
  %.sroa.9136.2.i = phi ptr [ %.sroa.9136.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.9136.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i99.i ] ; 4 uses
  %i.ht = phi <2 x i64> [ %i.ew, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i99.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 305
  store i8 0, ptr %i.hu, align 1, !noalias !6481
  store i8 1, ptr %i.hr, align 8, !noalias !6481
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext14table_providerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.hs)
          to label %bb.cn unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.cn:                                            ; preds = %bb.cl
  %.not.i = icmp eq i64 %.sroa.0134.2.i, 20
  br i1 %.not.i, label %bb.co, label %bb.do

bb.co:                                            ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9136.2.i) ]
  store ptr %.sroa.5135.2.i, ptr %i.w, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.9136.2.i, ptr %i.hw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.038)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 313 ; 2 uses
  store i8 0, ptr %i.hx, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.hy, i64 56, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5135.2.i) ]
  %i.hz = atomicrmw add ptr %.sroa.5135.2.i, i64 1 monotonic, align 8
  %i.ia = icmp slt i64 %i.hz, 0
  br i1 %i.ia, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  call void @llvm.trap()
  unreachable

bb.cq:                                            ; preds = %bb.cs
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.dm

bb.cr:                                            ; preds = %bb.co
  %i.ic = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.5135.2.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.9136.2.i)
          to label %bb.cs unwind label %bb.dn     ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %i.id = extractvalue { ptr, ptr } %i.ic, 0
  %i.ie = extractvalue { ptr, ptr } %i.ic, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 -9223372036854775808, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6571
  store i64 0, ptr %i.a, align 8, !noalias !6571
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.if, align 8, !noalias !6571
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ig, align 8, !noalias !6571
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder23scan_with_filters_innerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.r, ptr noundef nonnull %i.id, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ie, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 0, i64 undef)
          to label %bb.ct unwind label %bb.cq

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !6577)
  %i.ih = load i64, ptr %i.s, align 8, !range !403, !alias.scope !6580, !noalias !6577, !noundef !4 ; 2 uses
  %.not.i24 = icmp eq i64 %i.ih, 20
  %i.ii = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !6582 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %.not.i24, label %bb.cu, label %bb.dl

bb.cu:                                            ; preds = %bb.ct
  %i.il = load i8, ptr %i.ik, align 8, !range !101, !alias.scope !6580, !noalias !6577, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.im = trunc nuw i8 %i.il to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.t, ptr noundef nonnull %i.ij, i1 noundef zeroext %i.im)
          to label %bb.cw unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !6583)
  %i.io = load i64, ptr %i.t, align 16, !range !485, !alias.scope !6586, !noalias !6583, !noundef !4 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 36
  %i.iq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.857.sroa.0.0.copyload99 = load i64, ptr %i.iq, align 8, !alias.scope !6588 ; 2 uses
  %.sroa.857.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.857.sroa.8.0.copyload101 = load ptr, ptr %.sroa.857.sroa.8.0..sroa_idx, align 16, !alias.scope !6588 ; 2 uses
  %.sroa.857.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.857.sroa.9.0.copyload103 = load ptr, ptr %.sroa.857.sroa.9.0..sroa_idx, align 8, !alias.scope !6588 ; 2 uses
  %.sroa.857.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ir = load <2 x i64>, ptr %.sroa.857.sroa.10.0..sroa_idx, align 16, !alias.scope !6588 ; 2 uses
  br i1 %i.ip, label %bb.dj, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.sroa.1059.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.577.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.1059.0..sroa_idx60, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.io, ptr %i.u, align 16
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.857.sroa.0.0.copyload99, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.476.sroa.4.0..sroa.476.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.857.sroa.8.0.copyload101, ptr %.sroa.476.sroa.4.0..sroa.476.0..sroa_idx.sroa_idx, align 16
  %.sroa.476.sroa.5.0..sroa.476.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %.sroa.857.sroa.9.0.copyload103, ptr %.sroa.476.sroa.5.0..sroa.476.0..sroa_idx.sroa_idx, align 8
  %.sroa.476.sroa.6.0..sroa.476.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store <2 x i64> %i.ir, ptr %.sroa.476.sroa.6.0..sroa.476.0..sroa_idx.sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.it = load ptr, ptr %i.is, align 8, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext5state(ptr noalias noundef nonnull sret([1680 x i8]) align 8 captures(none) dereferenceable(1680) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.it)
          to label %bb.cz unwind label %bb.dg

bb.cy:                                            ; preds = %bb.cz
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.de

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.n, ptr noundef nonnull align 16 dereferenceable(320) %i.u, i64 320, i1 false)
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame3new(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1680) %i.o, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.n)
          to label %bb.da unwind label %bb.cy

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.078.0.copyload = load i64, ptr %i.p, align 16
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.580.0.copyload = load i64, ptr %.sroa.580.0..sroa_idx, align 8
  %.sroa.883.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.883.0.copyload = load ptr, ptr %.sroa.883.0..sroa_idx, align 16
  %.sroa.1086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.1086.0.copyload = load ptr, ptr %.sroa.1086.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.iv = load <2 x i64>, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.15, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.15.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !6589)
  call void @llvm.experimental.noalias.scope.decl(metadata !6592)
  %i.iw = load ptr, ptr %i.w, align 8, !alias.scope !6595, !nonnull !4, !noundef !4
  %i.ix = atomicrmw sub ptr %i.iw, i64 1 release, align 8, !noalias !6595
  %i.iy = icmp eq i64 %i.ix, 1
  br i1 %i.iy, label %bb.db, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit

bb.db:                                            ; preds = %bb.da
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.dc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit27: ; preds = %bb.de, %bb.df, %bb.dc, %bb.r
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.r ], [ %i.jc, %bb.dc ], [ %.pn13.pn, %bb.df ], [ %.pn13.pn, %bb.de ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 313
  %i.ja = load i8, ptr %i.iz, align 1, !range !101, !noundef !4
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.dr, label %bb.b

bb.dc:                                            ; preds = %bb.dk, %bb.db
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i8 0, ptr %i.hx, align 1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit
  %.sroa.078.0 = phi i64 [ 36, %bb.dp ], [ %.sroa.078.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit ]
  %.sroa.580.0 = phi i64 [ %.sroa.580.2, %bb.dp ], [ %.sroa.580.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit ]
  %.sroa.883.0 = phi ptr [ %.sroa.883.2, %bb.dp ], [ %.sroa.883.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit ]
  %.sroa.1086.0 = phi ptr [ %.sroa.1086.2, %bb.dp ], [ %.sroa.1086.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit ]
  %i.jd = phi <2 x i64> [ %i.jp, %bb.dp ], [ %i.iv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit ]
  store i64 %.sroa.078.0, ptr %0, align 16
  %.sroa.580.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.580.0, ptr %.sroa.580.0..sroa_idx81, align 8
  %.sroa.883.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.883.0, ptr %.sroa.883.0..sroa_idx84, align 16
  %.sroa.1086.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.1086.0, ptr %.sroa.1086.0..sroa_idx87, align 8
  %.sroa.13.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.jd, ptr %.sroa.13.0..sroa_idx89, align 16
  %.sroa.15.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.15.0..sroa_idx93, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.15, i64 288, i1 false)
  br label %common.ret

bb.de:                                            ; preds = %bb.cy, %bb.di, %bb.dg
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.di ], [ %i.jh, %bb.dg ], [ %i.iu, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !6596)
  call void @llvm.experimental.noalias.scope.decl(metadata !6599)
  %i.je = load ptr, ptr %i.w, align 8, !alias.scope !6602, !nonnull !4, !noundef !4
  %i.jf = atomicrmw sub ptr %i.je, i64 1 release, align 8, !noalias !6602
  %i.jg = icmp eq i64 %i.jf, 1
  br i1 %i.jg, label %bb.df, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit27

bb.df:                                            ; preds = %bb.de
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit27 unwind label %bb.dh

bb.dg:                                            ; preds = %bb.cx
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.u) #38
          to label %bb.de unwind label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.dr, %bb.dn, %bb.dg, %.body
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.di:                                            ; preds = %bb.cv, %bb.dm
end_hunk_2
begin_hunk_3_@_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext20execute_logical_plan00Cs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6621
  store ptr %i.ab, ptr %i.x, align 8, !noalias !6621
  %.sroa.5367.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXsa_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5367.0..sroa_idx.i, align 8, !noalias !6621
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @179, ptr noundef nonnull %i.x)
          to label %bb.cl unwind label %bb.cj, !noalias !6625

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.y, i64 24, i1 false), !alias.scope !6686, !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6690
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc167.i unwind label %bb.cn, !noalias !6625

.noexc167.i:                                      ; preds = %bb.cl
  %i.fj = load i64, ptr %i.a, align 8, !range !3, !noalias !6690, !noundef !4
  %i.fk = trunc nuw i64 %i.fj to i1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !63, !noalias !6690, !noundef !4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.fk, label %bb.cm, label %bb.cp, !prof !64

bb.cm:                                            ; preds = %.noexc167.i
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !6690
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.fm, i64 %i.fo) #37
          to label %.noexc168.i unwind label %bb.cn, !noalias !6625

.noexc168.i:                                      ; preds = %bb.cm
  unreachable

.body184.i:                                       ; preds = %bb.cq, %bb.co, %bb.cn
  %.pn72.i = phi { ptr, i32 } [ %i.fq, %bb.co ], [ %i.fp, %bb.cn ], [ %i.ft, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6621
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #38
          to label %.body190.i unwind label %bb.ax, !noalias !6625

bb.cn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i183.i, %bb.cm, %bb.cl
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body184.i

bb.co:                                            ; preds = %bb.cp
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6621
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #38
          to label %.body184.i unwind label %bb.ax, !noalias !6625

bb.cp:                                            ; preds = %.noexc167.i
  %i.fr = load ptr, ptr %i.fn, align 8, !noalias !6690, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6690
  store i64 %i.fm, ptr %i.w, align 8, !noalias !6621
  %.sroa.4427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.fr, ptr %.sroa.4427.0..sroa_idx.i, align 8, !noalias !6621
  %.sroa.5428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.5428.0..sroa_idx.i, align 8, !noalias !6621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6621
  store ptr %i.z, ptr %i.v, align 8, !noalias !6621
  %.sroa.5369.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5369.0..sroa_idx.i, align 8, !noalias !6621
  %i.fs = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.fs, align 8, !noalias !6621
  %.sroa.5371.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5371.0..sroa_idx.i, align 8, !noalias !6621
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull @32, ptr noundef nonnull %i.v)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit181.i unwind label %bb.co, !noalias !6625

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit181.i:  ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6621
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i183.i unwind label %bb.cq, !noalias !6625

bb.cq:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit181.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body184.i unwind label %bb.cr, !noalias !6625

bb.cr:                                            ; preds = %bb.cq
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6625
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i183.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit181.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit187.i unwind label %bb.cn, !noalias !6625

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit187.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i183.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6621
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i189.i unwind label %bb.cs, !noalias !6625

bb.cs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit187.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body190.i unwind label %bb.ct, !noalias !6625

bb.ct:                                            ; preds = %bb.cs
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6625
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i189.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit187.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.cv unwind label %bb.cu, !noalias !6625

.body190.i:                                       ; preds = %bb.cu, %bb.cs, %.body184.i, %bb.cj
  %.pn74.i = phi { ptr, i32 } [ %i.fi, %bb.cj ], [ %.pn72.i, %.body184.i ], [ %i.fx, %bb.cu ], [ %i.fv, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6621
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ab) #38
          to label %bb.cw unwind label %bb.ax, !noalias !6625

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i189.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body190.i

bb.cv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i189.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6621
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.22.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6621
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 10, ptr %i.fy, align 8, !noalias !6621
  store i64 36, ptr %i.f, align 16, !noalias !6621
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ab)
          to label %bb.cy unwind label %bb.cx, !noalias !6625

bb.cw:                                            ; preds = %bb.cx, %.body190.i
  %.pn80.i = phi { ptr, i32 } [ %i.fz, %bb.cx ], [ %.pn74.i, %.body190.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6621
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cy:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6621
  br label %bb.gi

bb.cz:                                            ; preds = %bb.da
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6621
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.gd) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ax, !noalias !6625

bb.da:                                            ; preds = %bb.ci, %bb.f
  %.sink15.i198.sroa.gep317.i52 = phi ptr [ %.sink15.i198.sroa.gep317.i, %bb.f ], [ %.sink15.i198.sroa.gep317.i53, %bb.ci ] ; 2 uses
  %.sink15.i198.sroa.gep.i49 = phi ptr [ %.sink15.i198.sroa.gep.i, %bb.f ], [ %.sink15.i198.sroa.gep.i50, %bb.ci ]
  %.sink18.i196.sroa.gep316.i46 = phi ptr [ %.sink18.i196.sroa.gep316.i, %bb.f ], [ %.sink18.i196.sroa.gep316.i47, %bb.ci ] ; 2 uses
  %.sink18.i196.sroa.gep.i43 = phi ptr [ %.sink18.i196.sroa.gep.i, %bb.f ], [ %.sink18.i196.sroa.gep.i44, %bb.ci ]
  %i.gb = phi ptr [ %i.bb, %bb.f ], [ %i.ev, %bb.ci ] ; 9 uses
  %i.gc = phi ptr [ %i.ba, %bb.f ], [ %i.ew, %bb.ci ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !6621
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aj, ptr noundef nonnull align 8 %i.gd, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.db unwind label %bb.cz, !noalias !6625

bb.db:                                            ; preds = %bb.da
  %i.ge = load i64, ptr %i.aj, align 8, !range !6350, !noalias !6621, !noundef !4 ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 21
  br i1 %i.gf, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6621
  store i64 37, ptr %0, align 16, !alias.scope !6625, !noalias !6694
  br label %.thread75

bb.dd:                                            ; preds = %bb.db
  %.sroa.3300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.3300.0.copyload.i = load ptr, ptr %.sroa.3300.0..sroa_idx.i, align 8, !noalias !6621 ; 3 uses
  %.sroa.5301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5301.0.copyload.i = load ptr, ptr %.sroa.5301.0..sroa_idx.i, align 8, !noalias !6621 ; 3 uses
  %.sroa.7302.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7302.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7302.0..sroa_idx.i, i64 16, i1 false), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6621
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.gd)
          to label %bb.df unwind label %bb.de, !noalias !6625

bb.de:                                            ; preds = %bb.dd
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.df:                                            ; preds = %bb.dd
  %.not.i194.i = icmp eq i64 %i.ge, 20
  br i1 %.not.i194.i, label %bb.dg, label %bb.eb

bb.dg:                                            ; preds = %bb.df
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3300.0.copyload.i), "nonnull"(ptr %.sroa.5301.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !6621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6621
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !6621, !nonnull !4, !align !344, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !6621
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !6621, !nonnull !4, !align !344, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6695)
  call void @llvm.experimental.noalias.scope.decl(metadata !6698)
  %i.gl = load i64, ptr %i.gk, align 8, !range !288, !alias.scope !6698, !noalias !6700, !noundef !4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !6698, !noalias !6700, !nonnull !4, !noundef !4 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !6698, !noalias !6700, !noundef !4 ; 3 uses
  %i.gq = atomicrmw add ptr %i.gn, i64 1 monotonic, align 8, !noalias !6701
  %i.gr = icmp slt i64 %i.gq, 0                   ; 3 uses
  switch i64 %i.gl, label %default.unreachable22 [
    i64 0, label %bb.dh
    i64 1, label %bb.di
    i64 2, label %bb.dj
  ]

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.gr, label %bb.dk, label %bb.du

bb.di:                                            ; preds = %bb.dg
  br i1 %i.gr, label %bb.dm, label %bb.dl

bb.dj:                                            ; preds = %bb.dg
  br i1 %i.gr, label %bb.dp, label %bb.do

bb.dk:                                            ; preds = %bb.dh
  call void @llvm.trap()
  unreachable

.sink.split.i195.i:                               ; preds = %bb.ds, %bb.dl
  %.sink18.i196.sroa.phi.i = phi ptr [ %.sink18.i196.sroa.gep.i43, %bb.ds ], [ %.sink18.i196.sroa.gep316.i46, %bb.dl ]
  %.sink16.i197.i = phi ptr [ %i.gz, %bb.ds ], [ %i.gn, %bb.dl ]
  %.sink15.i198.sroa.phi.i = phi ptr [ %.sink15.i198.sroa.gep.i49, %bb.ds ], [ %.sink15.i198.sroa.gep317.i52, %bb.dl ]
  %.sink13.i199.i = phi i64 [ %i.hb, %bb.ds ], [ %i.gp, %bb.dl ]
  %.sink12.ph.i200.i = phi i64 [ 40, %bb.ds ], [ 24, %bb.dl ]
  %.sink10.ph.i201.i = phi ptr [ %i.hf, %bb.ds ], [ %i.gt, %bb.dl ]
  %.sink9.ph.i202.i = phi i64 [ 48, %bb.ds ], [ 32, %bb.dl ]
  %.sink7.ph.i203.i = phi i64 [ %i.hh, %bb.ds ], [ %i.gv, %bb.dl ]
  store ptr %.sink16.i197.i, ptr %.sink18.i196.sroa.phi.i, align 8, !alias.scope !6695, !noalias !6702
  store i64 %.sink13.i199.i, ptr %.sink15.i198.sroa.phi.i, align 8, !alias.scope !6695, !noalias !6702
  br label %bb.du

bb.dl:                                            ; preds = %bb.di
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !6698, !noalias !6700, !nonnull !4, !noundef !4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !6698, !noalias !6700, !noundef !4
  %i.gw = atomicrmw add ptr %i.gt, i64 1 monotonic, align 8, !noalias !6701
  %i.gx = icmp slt i64 %i.gw, 0
  br i1 %i.gx, label %bb.dn, label %.sink.split.i195.i

bb.dm:                                            ; preds = %bb.di
  call void @llvm.trap()
  unreachable

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.trap()
  unreachable

bb.do:                                            ; preds = %bb.dj
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !6698, !noalias !6700, !nonnull !4, !noundef !4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !6698, !noalias !6700, !noundef !4
  %i.hc = atomicrmw add ptr %i.gz, i64 1 monotonic, align 8, !noalias !6701
  %i.hd = icmp slt i64 %i.hc, 0
  br i1 %i.hd, label %bb.dr, label %bb.dq

bb.dp:                                            ; preds = %bb.dj
  call void @llvm.trap()
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.he = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !6698, !noalias !6700, !nonnull !4, !noundef !4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !6698, !noalias !6700, !noundef !4
  %i.hi = atomicrmw add ptr %i.hf, i64 1 monotonic, align 8, !noalias !6701
  %i.hj = icmp slt i64 %i.hi, 0
  br i1 %i.hj, label %bb.dt, label %bb.ds

bb.dr:                                            ; preds = %bb.do
  call void @llvm.trap()
  unreachable

bb.ds:                                            ; preds = %bb.dq
  store ptr %i.gn, ptr %.sink18.i196.sroa.gep316.i46, align 8, !alias.scope !6695, !noalias !6702
  store i64 %i.gp, ptr %.sink15.i198.sroa.gep317.i52, align 8, !alias.scope !6695, !noalias !6702
  br label %.sink.split.i195.i

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.trap()
  unreachable

bb.du:                                            ; preds = %.sink.split.i195.i, %bb.dh
  %.sink12.i204.i = phi i64 [ 8, %bb.dh ], [ %.sink12.ph.i200.i, %.sink.split.i195.i ]
  %.sink10.i205.i = phi ptr [ %i.gn, %bb.dh ], [ %.sink10.ph.i201.i, %.sink.split.i195.i ]
  %.sink9.i206.i = phi i64 [ 16, %bb.dh ], [ %.sink9.ph.i202.i, %.sink.split.i195.i ]
  %.sink7.i207.i = phi i64 [ %i.gp, %bb.dh ], [ %.sink7.ph.i203.i, %.sink.split.i195.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink12.i204.i
  store ptr %.sink10.i205.i, ptr %i.hk, align 8, !alias.scope !6695, !noalias !6702
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink9.i206.i
  store i64 %.sink7.i207.i, ptr %i.hl, align 8, !alias.scope !6695, !noalias !6702
  store i64 %i.gl, ptr %i.ag, align 8, !alias.scope !6695, !noalias !6702
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ag, ptr noundef nonnull %.sroa.3300.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5301.0.copyload.i)
          to label %bb.dv unwind label %bb.dz, !noalias !6625

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6621
  call void @llvm.experimental.noalias.scope.decl(metadata !6703)
  %i.hm = load i64, ptr %i.ah, align 8, !range !403, !alias.scope !6706, !noalias !6708, !noundef !4 ; 2 uses
  %.not.i211.i = icmp eq i64 %i.hm, 20
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !alias.scope !6709, !noalias !6621 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !6709, !noalias !6621 ; 2 uses
  br i1 %.not.i211.i, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6621
  store ptr %i.ho, ptr %i.ai, align 8, !noalias !6621
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.hq, ptr %i.hr, align 8, !noalias !6621
  %i.hs = icmp eq ptr %i.ho, null
  br i1 %i.hs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ht = atomicrmw sub ptr %i.ho, i64 1 release, align 8, !noalias !6710
  %i.hu = icmp eq i64 %i.ht, 1
  br i1 %i.hu, label %bb.dy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.dy:                                            ; preds = %bb.dx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread446.i, !noalias !6625

.thread446.i:                                     ; preds = %bb.dy
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6621
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.dy, %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6621
  %i.hw = load ptr, ptr %i.gh, align 8, !noalias !6621, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hw)
          to label %bb.gi unwind label %.thread.i, !noalias !6625

bb.dz:                                            ; preds = %bb.du
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6621
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.ea:                                            ; preds = %bb.dv
  %.sroa.12314.0..sroa_idx315.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.4321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4321.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12314.0..sroa_idx315.i, i64 16, i1 false), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6621
  call void @llvm.experimental.noalias.scope.decl(metadata !6717)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.hm, ptr %i.hz, align 8, !alias.scope !6720, !noalias !6621
  %.sroa.2319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.ho, ptr %.sroa.2319.0..sroa_idx.i, align 16, !alias.scope !6720, !noalias !6621
  %.sroa.3320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.hq, ptr %.sroa.3320.0..sroa_idx.i, align 8, !alias.scope !6720, !noalias !6621
  store i64 36, ptr %i.f, align 16, !alias.scope !6722, !noalias !6723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6621
  br label %bb.gi

bb.eb:                                            ; preds = %bb.df
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7302.i, i64 16, i1 false), !noalias !6621
  call void @llvm.experimental.noalias.scope.decl(metadata !6724)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ge, ptr %i.ia, align 8, !alias.scope !6727, !noalias !6621
  %.sroa.2304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.3300.0.copyload.i, ptr %.sroa.2304.0..sroa_idx.i, align 16, !alias.scope !6727, !noalias !6621
  %.sroa.3305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.5301.0.copyload.i, ptr %.sroa.3305.0..sroa_idx.i, align 8, !alias.scope !6727, !noalias !6621
  store i64 36, ptr %i.f, align 16, !alias.scope !6729, !noalias !6730
  br label %bb.gi

bb.ec:                                            ; preds = %bb.ed
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6621
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ie) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ax, !noalias !6625

bb.ed:                                            ; preds = %bb.ci, %bb.f
  %.sink15.i219.sroa.gep361.i64 = phi ptr [ %.sink15.i219.sroa.gep361.i, %bb.f ], [ %.sink15.i219.sroa.gep361.i65, %bb.ci ] ; 2 uses
  %.sink15.i219.sroa.gep.i61 = phi ptr [ %.sink15.i219.sroa.gep.i, %bb.f ], [ %.sink15.i219.sroa.gep.i62, %bb.ci ]
  %.sink18.i217.sroa.gep360.i58 = phi ptr [ %.sink18.i217.sroa.gep360.i, %bb.f ], [ %.sink18.i217.sroa.gep360.i59, %bb.ci ] ; 2 uses
  %.sink18.i217.sroa.gep.i55 = phi ptr [ %.sink18.i217.sroa.gep.i, %bb.f ], [ %.sink18.i217.sroa.gep.i56, %bb.ci ]
  %i.ic = phi ptr [ %i.bb, %bb.f ], [ %i.ev, %bb.ci ] ; 9 uses
  %i.id = phi ptr [ %i.ba, %bb.f ], [ %i.ew, %bb.ci ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !6621
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.af, ptr noundef nonnull align 8 %i.ie, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ee unwind label %bb.ec, !noalias !6625

bb.ee:                                            ; preds = %bb.ed
  %i.if = load i64, ptr %i.af, align 8, !range !6350, !noalias !6621, !noundef !4 ; 3 uses
  %i.ig = icmp eq i64 %i.if, 21
  br i1 %i.ig, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6621
  store i64 37, ptr %0, align 16, !alias.scope !6625, !noalias !6694
  br label %.thread75

bb.eg:                                            ; preds = %bb.ee
  %.sroa.3343.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.3343.0.copyload.i = load ptr, ptr %.sroa.3343.0..sroa_idx.i, align 8, !noalias !6621 ; 3 uses
  %.sroa.5344.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5344.0.copyload.i = load ptr, ptr %.sroa.5344.0..sroa_idx.i, align 8, !noalias !6621 ; 3 uses
  %.sroa.7345.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7345.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7345.0..sroa_idx.i, i64 16, i1 false), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6621
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ie)
          to label %bb.ei unwind label %bb.eh, !noalias !6625

bb.eh:                                            ; preds = %bb.eg
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.ei:                                            ; preds = %bb.eg
  %.not.i214.i = icmp eq i64 %i.if, 20
  br i1 %.not.i214.i, label %bb.ej, label %bb.fe

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3343.0.copyload.i), "nonnull"(ptr %.sroa.5344.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !6621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6621
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !6621, !nonnull !4, !align !344, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6621
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !6621, !nonnull !4, !align !344, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6731)
  call void @llvm.experimental.noalias.scope.decl(metadata !6734)
  %i.im = load i64, ptr %i.il, align 8, !range !288, !alias.scope !6734, !noalias !6736, !noundef !4 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !6734, !noalias !6736, !nonnull !4, !noundef !4 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !6734, !noalias !6736, !noundef !4 ; 3 uses
  %i.ir = atomicrmw add ptr %i.io, i64 1 monotonic, align 8, !noalias !6737
  %i.is = icmp slt i64 %i.ir, 0                   ; 3 uses
  switch i64 %i.im, label %default.unreachable22 [
    i64 0, label %bb.ek
    i64 1, label %bb.el
    i64 2, label %bb.em
  ]

bb.ek:                                            ; preds = %bb.ej
  br i1 %i.is, label %bb.en, label %bb.ex

bb.el:                                            ; preds = %bb.ej
  br i1 %i.is, label %bb.ep, label %bb.eo

bb.em:                                            ; preds = %bb.ej
  br i1 %i.is, label %bb.es, label %bb.er

bb.en:                                            ; preds = %bb.ek
  call void @llvm.trap()
  unreachable

.sink.split.i216.i:                               ; preds = %bb.ev, %bb.eo
  %.sink18.i217.sroa.phi.i = phi ptr [ %.sink18.i217.sroa.gep.i55, %bb.ev ], [ %.sink18.i217.sroa.gep360.i58, %bb.eo ]
  %.sink16.i218.i = phi ptr [ %i.ja, %bb.ev ], [ %i.io, %bb.eo ]
  %.sink15.i219.sroa.phi.i = phi ptr [ %.sink15.i219.sroa.gep.i61, %bb.ev ], [ %.sink15.i219.sroa.gep361.i64, %bb.eo ]
  %.sink13.i220.i = phi i64 [ %i.jc, %bb.ev ], [ %i.iq, %bb.eo ]
  %.sink12.ph.i221.i = phi i64 [ 40, %bb.ev ], [ 24, %bb.eo ]
  %.sink10.ph.i222.i = phi ptr [ %i.jg, %bb.ev ], [ %i.iu, %bb.eo ]
  %.sink9.ph.i223.i = phi i64 [ 48, %bb.ev ], [ 32, %bb.eo ]
  %.sink7.ph.i224.i = phi i64 [ %i.ji, %bb.ev ], [ %i.iw, %bb.eo ]
  store ptr %.sink16.i218.i, ptr %.sink18.i217.sroa.phi.i, align 8, !alias.scope !6731, !noalias !6738
  store i64 %.sink13.i220.i, ptr %.sink15.i219.sroa.phi.i, align 8, !alias.scope !6731, !noalias !6738
  br label %bb.ex

bb.eo:                                            ; preds = %bb.el
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !6734, !noalias !6736, !nonnull !4, !noundef !4 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !6734, !noalias !6736, !noundef !4
  %i.ix = atomicrmw add ptr %i.iu, i64 1 monotonic, align 8, !noalias !6737
  %i.iy = icmp slt i64 %i.ix, 0
  br i1 %i.iy, label %bb.eq, label %.sink.split.i216.i

bb.ep:                                            ; preds = %bb.el
  call void @llvm.trap()
  unreachable

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.trap()
  unreachable

bb.er:                                            ; preds = %bb.em
  %i.iz = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !6734, !noalias !6736, !nonnull !4, !noundef !4 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.jc = load i64, ptr %i.jb, align 8, !alias.scope !6734, !noalias !6736, !noundef !4
  %i.jd = atomicrmw add ptr %i.ja, i64 1 monotonic, align 8, !noalias !6737
  %i.je = icmp slt i64 %i.jd, 0
  br i1 %i.je, label %bb.eu, label %bb.et

bb.es:                                            ; preds = %bb.em
  call void @llvm.trap()
  unreachable

bb.et:                                            ; preds = %bb.er
  %i.jf = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %i.jg = load ptr, ptr %i.jf, align 8, !alias.scope !6734, !noalias !6736, !nonnull !4, !noundef !4 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !6734, !noalias !6736, !noundef !4
  %i.jj = atomicrmw add ptr %i.jg, i64 1 monotonic, align 8, !noalias !6737
  %i.jk = icmp slt i64 %i.jj, 0
  br i1 %i.jk, label %bb.ew, label %bb.ev

bb.eu:                                            ; preds = %bb.er
  call void @llvm.trap()
  unreachable

bb.ev:                                            ; preds = %bb.et
  store ptr %i.io, ptr %.sink18.i217.sroa.gep360.i58, align 8, !alias.scope !6731, !noalias !6738
  store i64 %i.iq, ptr %.sink15.i219.sroa.gep361.i64, align 8, !alias.scope !6731, !noalias !6738
  br label %.sink.split.i216.i

bb.ew:                                            ; preds = %bb.et
  call void @llvm.trap()
  unreachable

bb.ex:                                            ; preds = %.sink.split.i216.i, %bb.ek
  %.sink12.i225.i = phi i64 [ 8, %bb.ek ], [ %.sink12.ph.i221.i, %.sink.split.i216.i ]
  %.sink10.i226.i = phi ptr [ %i.io, %bb.ek ], [ %.sink10.ph.i222.i, %.sink.split.i216.i ]
  %.sink9.i227.i = phi i64 [ 16, %bb.ek ], [ %.sink9.ph.i223.i, %.sink.split.i216.i ]
  %.sink7.i228.i = phi i64 [ %i.iq, %bb.ek ], [ %.sink7.ph.i224.i, %.sink.split.i216.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink12.i225.i
  store ptr %.sink10.i226.i, ptr %i.jl, align 8, !alias.scope !6731, !noalias !6738
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink9.i227.i
  store i64 %.sink7.i228.i, ptr %i.jm, align 8, !alias.scope !6731, !noalias !6738
  store i64 %i.im, ptr %i.ac, align 8, !alias.scope !6731, !noalias !6738
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ij, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ac, ptr noundef nonnull %.sroa.3343.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5344.0.copyload.i)
          to label %bb.ey unwind label %bb.fc, !noalias !6625

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6621
  call void @llvm.experimental.noalias.scope.decl(metadata !6739)
  %i.jn = load i64, ptr %i.ad, align 8, !range !403, !alias.scope !6742, !noalias !6744, !noundef !4 ; 2 uses
  %.not.i232.i = icmp eq i64 %i.jn, 20
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !alias.scope !6745, !noalias !6621 ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !alias.scope !6745, !noalias !6621 ; 2 uses
  br i1 %.not.i232.i, label %bb.ez, label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6621
  store ptr %i.jp, ptr %i.ae, align 8, !noalias !6621
  %i.js = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.jr, ptr %i.js, align 8, !noalias !6621
  %i.jt = icmp eq ptr %i.jp, null
  br i1 %i.jt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit235.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ju = atomicrmw sub ptr %i.jp, i64 1 release, align 8, !noalias !6746
  %i.jv = icmp eq i64 %i.ju, 1
  br i1 %i.jv, label %bb.fb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit235.i

bb.fb:                                            ; preds = %bb.fa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit235.i unwind label %.thread467.i, !noalias !6625

.thread467.i:                                     ; preds = %bb.fb
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6621
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit235.i: ; preds = %bb.fb, %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6621
  %i.jx = load ptr, ptr %i.ii, align 8, !noalias !6621, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jx)
          to label %bb.gi unwind label %.thread464.i, !noalias !6625

bb.fc:                                            ; preds = %bb.ex
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6621
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread464.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit235.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.fd:                                            ; preds = %bb.ey
  %.sroa.12358.0..sroa_idx359.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.4365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4365.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12358.0..sroa_idx359.i, i64 16, i1 false), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6621
  call void @llvm.experimental.noalias.scope.decl(metadata !6753)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.jn, ptr %i.ka, align 8, !alias.scope !6756, !noalias !6621
  %.sroa.2363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.jp, ptr %.sroa.2363.0..sroa_idx.i, align 16, !alias.scope !6756, !noalias !6621
  %.sroa.3364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.jr, ptr %.sroa.3364.0..sroa_idx.i, align 8, !alias.scope !6756, !noalias !6621
  store i64 36, ptr %i.f, align 16, !alias.scope !6758, !noalias !6759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6621
  br label %bb.gi

bb.fe:                                            ; preds = %bb.ei
  %.sroa.4349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4349.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7345.i, i64 16, i1 false), !noalias !6621
  call void @llvm.experimental.noalias.scope.decl(metadata !6760)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.if, ptr %i.kb, align 8, !alias.scope !6763, !noalias !6621
  %.sroa.2347.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.3343.0.copyload.i, ptr %.sroa.2347.0..sroa_idx.i, align 16, !alias.scope !6763, !noalias !6621
  %.sroa.3348.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.5344.0.copyload.i, ptr %.sroa.3348.0..sroa_idx.i, align 8, !alias.scope !6763, !noalias !6621
  store i64 36, ptr %i.f, align 16, !alias.scope !6765, !noalias !6766
  br label %bb.gi

bb.ff:                                            ; preds = %bb.fg
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6621
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.kf) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ax, !noalias !6625

bb.fg:                                            ; preds = %bb.f, %bb.ak
  %.sink15.i243.sroa.gep415.i73 = phi ptr [ %.sink15.i243.sroa.gep415.i, %bb.f ], [ %.sink15.i243.sroa.gep415.i74, %bb.ak ] ; 2 uses
  %.sink15.i243.sroa.gep.i71 = phi ptr [ %.sink15.i243.sroa.gep.i, %bb.f ], [ %.sink15.i243.sroa.gep.i72, %bb.ak ]
  %.sink18.i241.sroa.gep414.i69 = phi ptr [ %.sink18.i241.sroa.gep414.i, %bb.f ], [ %.sink18.i241.sroa.gep414.i70, %bb.ak ] ; 2 uses
  %.sink18.i241.sroa.gep.i67 = phi ptr [ %.sink18.i241.sroa.gep.i, %bb.f ], [ %.sink18.i241.sroa.gep.i68, %bb.ak ]
  %i.kd = phi ptr [ %i.bb, %bb.f ], [ %i.bc, %bb.ak ] ; 9 uses
  %i.ke = phi ptr [ %i.ba, %bb.f ], [ %i.bd, %bb.ak ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6621
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.p, ptr noundef nonnull align 8 %i.kf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.fh unwind label %bb.ff, !noalias !6625

bb.fh:                                            ; preds = %bb.fg
  %i.kg = load i64, ptr %i.p, align 8, !range !6350, !noalias !6621, !noundef !4 ; 3 uses
  %i.kh = icmp eq i64 %i.kg, 21
  br i1 %i.kh, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6621
  br label %.thread75

bb.fj:                                            ; preds = %bb.fh
  %.sroa.3397.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.3397.0.copyload.i = load ptr, ptr %.sroa.3397.0..sroa_idx.i, align 8, !noalias !6621 ; 3 uses
  %.sroa.5398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5398.0.copyload.i = load ptr, ptr %.sroa.5398.0..sroa_idx.i, align 8, !noalias !6621 ; 3 uses
  %.sroa.7399.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7399.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7399.0..sroa_idx.i, i64 16, i1 false), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6621
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext19create_custom_table0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.kf)
          to label %bb.fl unwind label %bb.fk, !noalias !6625

bb.fk:                                            ; preds = %bb.fj
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.fl:                                            ; preds = %bb.fj
  %.not.i238.i = icmp eq i64 %i.kg, 20
  br i1 %.not.i238.i, label %bb.fm, label %bb.gh

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3397.0.copyload.i), "nonnull"(ptr %.sroa.5398.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6621
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !6621, !nonnull !4, !align !344, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6621
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !6621, !nonnull !4, !align !344, !noundef !4 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6767)
  call void @llvm.experimental.noalias.scope.decl(metadata !6770)
  %i.kn = load i64, ptr %i.km, align 8, !range !288, !alias.scope !6770, !noalias !6772, !noundef !4 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !alias.scope !6770, !noalias !6772, !nonnull !4, !noundef !4 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !6770, !noalias !6772, !noundef !4 ; 3 uses
  %i.ks = atomicrmw add ptr %i.kp, i64 1 monotonic, align 8, !noalias !6773
  %i.kt = icmp slt i64 %i.ks, 0                   ; 3 uses
  switch i64 %i.kn, label %default.unreachable22 [
    i64 0, label %bb.fn
    i64 1, label %bb.fo
    i64 2, label %bb.fp
  ]

bb.fn:                                            ; preds = %bb.fm
  br i1 %i.kt, label %bb.fq, label %bb.ga

bb.fo:                                            ; preds = %bb.fm
  br i1 %i.kt, label %bb.fs, label %bb.fr

bb.fp:                                            ; preds = %bb.fm
  br i1 %i.kt, label %bb.fv, label %bb.fu

bb.fq:                                            ; preds = %bb.fn
  call void @llvm.trap()
  unreachable

.sink.split.i240.i:                               ; preds = %bb.fy, %bb.fr
  %.sink18.i241.sroa.phi.i = phi ptr [ %.sink18.i241.sroa.gep.i67, %bb.fy ], [ %.sink18.i241.sroa.gep414.i69, %bb.fr ]
  %.sink16.i242.i = phi ptr [ %i.lb, %bb.fy ], [ %i.kp, %bb.fr ]
  %.sink15.i243.sroa.phi.i = phi ptr [ %.sink15.i243.sroa.gep.i71, %bb.fy ], [ %.sink15.i243.sroa.gep415.i73, %bb.fr ]
  %.sink13.i244.i = phi i64 [ %i.ld, %bb.fy ], [ %i.kr, %bb.fr ]
  %.sink12.ph.i245.i = phi i64 [ 40, %bb.fy ], [ 24, %bb.fr ]
  %.sink10.ph.i246.i = phi ptr [ %i.lh, %bb.fy ], [ %i.kv, %bb.fr ]
  %.sink9.ph.i247.i = phi i64 [ 48, %bb.fy ], [ 32, %bb.fr ]
  %.sink7.ph.i248.i = phi i64 [ %i.lj, %bb.fy ], [ %i.kx, %bb.fr ]
  store ptr %.sink16.i242.i, ptr %.sink18.i241.sroa.phi.i, align 8, !alias.scope !6767, !noalias !6774
  store i64 %.sink13.i244.i, ptr %.sink15.i243.sroa.phi.i, align 8, !alias.scope !6767, !noalias !6774
  br label %bb.ga

bb.fr:                                            ; preds = %bb.fo
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !6770, !noalias !6772, !nonnull !4, !noundef !4 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.kx = load i64, ptr %i.kw, align 8, !alias.scope !6770, !noalias !6772, !noundef !4
  %i.ky = atomicrmw add ptr %i.kv, i64 1 monotonic, align 8, !noalias !6773
  %i.kz = icmp slt i64 %i.ky, 0
  br i1 %i.kz, label %bb.ft, label %.sink.split.i240.i

bb.fs:                                            ; preds = %bb.fo
  call void @llvm.trap()
  unreachable

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.trap()
  unreachable

bb.fu:                                            ; preds = %bb.fp
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !alias.scope !6770, !noalias !6772, !nonnull !4, !noundef !4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ld = load i64, ptr %i.lc, align 8, !alias.scope !6770, !noalias !6772, !noundef !4
  %i.le = atomicrmw add ptr %i.lb, i64 1 monotonic, align 8, !noalias !6773
  %i.lf = icmp slt i64 %i.le, 0
  br i1 %i.lf, label %bb.fx, label %bb.fw

bb.fv:                                            ; preds = %bb.fp
  call void @llvm.trap()
  unreachable

bb.fw:                                            ; preds = %bb.fu
  %i.lg = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !6770, !noalias !6772, !nonnull !4, !noundef !4 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.lj = load i64, ptr %i.li, align 8, !alias.scope !6770, !noalias !6772, !noundef !4
  %i.lk = atomicrmw add ptr %i.lh, i64 1 monotonic, align 8, !noalias !6773
  %i.ll = icmp slt i64 %i.lk, 0
  br i1 %i.ll, label %bb.fz, label %bb.fy

bb.fx:                                            ; preds = %bb.fu
  call void @llvm.trap()
  unreachable

bb.fy:                                            ; preds = %bb.fw
  store ptr %i.kp, ptr %.sink18.i241.sroa.gep414.i69, align 8, !alias.scope !6767, !noalias !6774
  store i64 %i.kr, ptr %.sink15.i243.sroa.gep415.i73, align 8, !alias.scope !6767, !noalias !6774
  br label %.sink.split.i240.i

bb.fz:                                            ; preds = %bb.fw
  call void @llvm.trap()
  unreachable

bb.ga:                                            ; preds = %.sink.split.i240.i, %bb.fn
  %.sink12.i249.i = phi i64 [ 8, %bb.fn ], [ %.sink12.ph.i245.i, %.sink.split.i240.i ]
  %.sink10.i250.i = phi ptr [ %i.kp, %bb.fn ], [ %.sink10.ph.i246.i, %.sink.split.i240.i ]
  %.sink9.i251.i = phi i64 [ 16, %bb.fn ], [ %.sink9.ph.i247.i, %.sink.split.i240.i ]
  %.sink7.i252.i = phi i64 [ %i.kr, %bb.fn ], [ %.sink7.ph.i248.i, %.sink.split.i240.i ]
  %i.lm = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sink12.i249.i
  store ptr %.sink10.i250.i, ptr %i.lm, align 8, !alias.scope !6767, !noalias !6774
  %i.ln = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sink9.i251.i
  store i64 %.sink7.i252.i, ptr %i.ln, align 8, !alias.scope !6767, !noalias !6774
  store i64 %i.kn, ptr %i.m, align 8, !alias.scope !6767, !noalias !6774
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.m, ptr noundef nonnull %.sroa.3397.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5398.0.copyload.i)
          to label %bb.gb unwind label %bb.gf, !noalias !6625

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6621
  call void @llvm.experimental.noalias.scope.decl(metadata !6775)
  %i.lo = load i64, ptr %i.n, align 8, !range !403, !alias.scope !6778, !noalias !6780, !noundef !4 ; 2 uses
  %.not.i256.i = icmp eq i64 %i.lo, 20
  %i.lp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !alias.scope !6781, !noalias !6621 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !6781, !noalias !6621 ; 2 uses
  br i1 %.not.i256.i, label %bb.gc, label %bb.gg

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6621
  store ptr %i.lq, ptr %i.o, align 8, !noalias !6621
  %i.lt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ls, ptr %i.lt, align 8, !noalias !6621
  %i.lu = icmp eq ptr %i.lq, null
  br i1 %i.lu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit259.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.lv = atomicrmw sub ptr %i.lq, i64 1 release, align 8, !noalias !6782
  %i.lw = icmp eq i64 %i.lv, 1
  br i1 %i.lw, label %bb.ge, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit259.i

bb.ge:                                            ; preds = %bb.gd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit259.i unwind label %.thread488.i, !noalias !6625

.thread488.i:                                     ; preds = %bb.ge
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6621
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit259.i: ; preds = %bb.ge, %bb.gd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6621
  %i.ly = load ptr, ptr %i.kj, align 8, !noalias !6621, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ly)
          to label %bb.gi unwind label %.thread485.i, !noalias !6625

bb.gf:                                            ; preds = %bb.ga
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6621
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread485.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit259.i
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.gg:                                            ; preds = %bb.gb
  %.sroa.12412.0..sroa_idx413.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.4419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12412.0..sroa_idx413.i, i64 16, i1 false), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6621
  call void @llvm.experimental.noalias.scope.decl(metadata !6789)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.lo, ptr %i.mb, align 8, !alias.scope !6792, !noalias !6621
  %.sroa.2417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.lq, ptr %.sroa.2417.0..sroa_idx.i, align 16, !alias.scope !6792, !noalias !6621
  %.sroa.3418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.ls, ptr %.sroa.3418.0..sroa_idx.i, align 8, !alias.scope !6792, !noalias !6621
  store i64 36, ptr %i.f, align 16, !alias.scope !6794, !noalias !6795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6621
  br label %bb.gi

bb.gh:                                            ; preds = %bb.fl
  %.sroa.4403.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4403.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7399.i, i64 16, i1 false), !noalias !6621
  call void @llvm.experimental.noalias.scope.decl(metadata !6796)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.kg, ptr %i.mc, align 8, !alias.scope !6799, !noalias !6621
  %.sroa.2401.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.3397.0.copyload.i, ptr %.sroa.2401.0..sroa_idx.i, align 16, !alias.scope !6799, !noalias !6621
  %.sroa.3402.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.5398.0.copyload.i, ptr %.sroa.3402.0..sroa_idx.i, align 8, !alias.scope !6799, !noalias !6621
  store i64 36, ptr %i.f, align 16, !alias.scope !6801, !noalias !6802
  br label %bb.gi

.thread75:                                        ; preds = %bb.fi, %bb.ef, %bb.dc, %bb.ce
  %.ph = phi ptr [ %i.ev, %bb.ce ], [ %i.gb, %bb.dc ], [ %i.ic, %bb.ef ], [ %i.kd, %bb.fi ]
  %.sink.i.ph = phi i8 [ 3, %bb.ce ], [ 4, %bb.dc ], [ 5, %bb.ef ], [ 6, %bb.fi ]
  store i8 %.sink.i.ph, ptr %.ph, align 8, !noalias !6621
end_hunk_3
begin_hunk_4_@_RNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB9_13RawDeltaTable12compact_logs0s_0B9_:bb.a
  %i.np = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_13put_multipart(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.nl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mp)
          to label %bb.en unwind label %bb.em, !noalias !6886 ; 2 uses

bb.em:                                            ; preds = %bb.el
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %.body203.i.i.i

bb.en:                                            ; preds = %bb.el
  %i.nr = extractvalue { ptr, ptr } %i.np, 0      ; 2 uses
  %i.ns = extractvalue { ptr, ptr } %i.np, 1      ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 544
  store ptr %i.nr, ptr %i.nt, align 8, !noalias !6882
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr %i.ns, ptr %i.nu, align 8, !noalias !6882
  br label %bb.ey

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit141.i.i.i: ; preds = %bb.jy, %bb.fn, %.body203.i.i.i, %bb.ek
  %.pn54.i.i.i = phi { ptr, i32 } [ %i.yc, %bb.jy ], [ %i.nk, %bb.ek ], [ %.pn51.pn.i.i.i, %bb.fn ], [ %.pn51.pn.i.i.i, %.body203.i.i.i ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 522
  %i.nw = load i8, ptr %i.nv, align 2, !range !101, !noalias !6882, !noundef !4
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %bb.lg, label %.body211.i.i.i

bb.eo:                                            ; preds = %bb.ei
  %.sroa.10291.0..sroa_idx292.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.3295.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3295.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10291.0..sroa_idx292.i.i.i, i64 48, i1 false), !noalias !6882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6882
  %.sroa.2294.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2294.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8289.i.i.i, i64 40, i1 false), !noalias !6882
  store i64 %i.my, ptr %i.j, align 16, !alias.scope !6964, !noalias !6882
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit237.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit237.i.i.i: ; preds = %bb.la, %bb.kz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.eo
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 522
  store i8 0, ptr %i.ny, align 2, !noalias !6882
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.ep, !noalias !6886

bb.ep:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit237.i.i.i
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nz)
          to label %.body129.i.i.i unwind label %bb.eq, !noalias !6886

bb.eq:                                            ; preds = %bb.ep
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6886
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs7p2uQeJxui2_9deltalake.exit237.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.kg, !noalias !6886

.body211.i.i.i:                                   ; preds = %bb.lg, %bb.lc, %bb.lb, %bb.kd, %bb.kc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit141.i.i.i, %bb.eh
  %.pn56.pn.i.i.i = phi { ptr, i32 } [ %i.mx, %bb.eh ], [ %.pn54.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit141.i.i.i ], [ %.pn54.i.i.i, %bb.lg ], [ %i.yl, %bb.kc ], [ %i.yl, %bb.kd ], [ %i.aan, %bb.lb ], [ %i.aan, %bb.lc ]
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 522
  store i8 0, ptr %i.oc, align 2, !noalias !6882
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 424
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.od) #38
          to label %.body129.i.i.i unwind label %bb.ew, !noalias !6886

bb.er:                                            ; preds = %bb.ef
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.body129.i.i.i

bb.es:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6882
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.es, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel14log_compaction6writer19LogCompactionWriterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(112) %i.of)
          to label %bb.eu unwind label %bb.kh, !noalias !6886

.body129.i.i.i:                                   ; preds = %bb.kg, %bb.ke, %bb.er, %.body211.i.i.i, %bb.ep, %bb.ec
  %.pn59.pn.i.i.i = phi { ptr, i32 } [ %i.yv, %bb.kg ], [ %i.yt, %bb.ke ], [ %.pn56.pn.i.i.i, %.body211.i.i.i ], [ %i.oa, %bb.ep ], [ %i.oe, %bb.er ], [ %i.mk, %bb.ec ]
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel14log_compaction6writer19LogCompactionWriterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(112) %i.og) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2B_5error5ErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ew, !noalias !6886

bb.et:                                            ; preds = %bb.ea
  %i.oh = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.8.16..sroa_idx276.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.8.i.i.i, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx276.i.i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.oh, i64 96, i1 false), !noalias !6882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx276.i.i.i, i64 96, i1 false), !noalias !6882
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ev, %bb.et, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 525
  store i8 0, ptr %i.oi, align 1, !noalias !6882
  br label %bb.cx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2B_5error5ErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.kh, %.body129.i.i.i, %bb.dz, %bb.dt, %bb.ds, %.body.i.i.i.i.i, %bb.dh, %bb.dc, %bb.cs
  %.pn64.pn.i.i.i = phi { ptr, i32 } [ %.pn59.pn.i.i.i, %.body129.i.i.i ], [ %i.mf, %bb.dz ], [ %i.yx, %bb.kh ], [ %i.km, %bb.cs ], [ %i.la, %bb.dc ], [ %i.le, %bb.dh ], [ %i.lw, %bb.ds ], [ %i.lw, %bb.dt ], [ %i.ll, %.body.i.i.i.i.i ]
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 525 ; 2 uses
  %i.ok = load i8, ptr %i.oj, align 1, !range !101, !noalias !6882, !noundef !4
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.lh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ev:                                            ; preds = %bb.dx, %bb.dv
  %.sink537.i.i.i = phi i64 [ %i.lf, %bb.dx ], [ -9223372036854775722, %bb.dv ]
  %.sroa.13.sroa.0.0.copyload.sink.i.i.i = phi ptr [ %.sroa.13.sroa.0.0.copyload.i.i.i, %bb.dx ], [ %.sroa.4.i.sroa.0.0.copyload.i.i.i, %bb.dv ]
  store i64 %.sink537.i.i.i, ptr %i.j, align 16, !noalias !6882
  %.sroa.2.0..sroa_idx271.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.13.sroa.0.0.copyload.sink.i.i.i, ptr %.sroa.2.0..sroa_idx271.i.i.i, align 8, !noalias !6882
  br label %bb.eu

bb.ew:                                            ; preds = %bb.lk, %bb.li, %bb.lg, %bb.lf, %bb.iv, %bb.ij, %bb.ii, %bb.if, %.body146.i.i.i, %bb.gg, %bb.fy, %bb.fo, %bb.fn, %.body206.i.i.i, %bb.ex, %.body129.i.i.i, %.body211.i.i.i, %bb.dc, %bb.cz
  %i.om = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6886
  unreachable

bb.ex:                                            ; preds = %bb.ey
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6882
  %.val95.i.i.i = load ptr, ptr %i.oo, align 8, !noalias !6882
  %.val96.i.i.i = load ptr, ptr %i.op, align 8, !noalias !6882, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val95.i.i.i, ptr nonnull %.val96.i.i.i) #38
          to label %.body203.i.i.i unwind label %bb.ew, !noalias !6886

bb.ey:                                            ; preds = %bb.en, %bb.cf
  %.val1.i.i.i.i = phi ptr [ %.val1.i.pre.i.i.i, %bb.cf ], [ %i.ns, %bb.en ]
  %.val.i.i.i.i = phi ptr [ %.val.i.pre.i.i.i, %bb.cf ], [ %i.nr, %bb.en ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6882
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6887)
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 24
  %i.or = load ptr, ptr %i.oq, align 8, !invariant.load !4, !noalias !6968, !nonnull !4
  invoke void %i.or(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.v, ptr noundef nonnull %.val.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #42
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ex, !noalias !6886, !inline_history !6969

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ey
  %i.os = load i64, ptr %i.v, align 8, !range !3413, !noalias !6882, !noundef !4 ; 3 uses
  %i.ot = icmp eq i64 %i.os, -9223372036854775789
  br i1 %i.ot, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6882
  br label %.thread.i.i

bb.fa:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.3307.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.3307.0.copyload.i.i.i = load ptr, ptr %.sroa.3307.0..sroa_idx.i.i.i, align 8, !noalias !6882 ; 3 uses
  %.sroa.5308.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5308.0.copyload.i.i.i = load ptr, ptr %.sroa.5308.0..sroa_idx.i.i.i, align 8, !noalias !6882 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !6882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6882
  %.val93.i.i.i = load ptr, ptr %i.oo, align 8, !noalias !6882 ; 5 uses
  %.val94.i.i.i = load ptr, ptr %i.op, align 8, !noalias !6882, !nonnull !4, !align !344, !noundef !4 ; 5 uses
  %i.ou = load ptr, ptr %.val94.i.i.i, align 8, !invariant.load !4, !noalias !6886 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val93.i.i.i) ]
  invoke void %i.ou(ptr noundef nonnull %.val93.i.i.i)
          to label %bb.fc unwind label %bb.fe, !noalias !6886

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.ov = getelementptr inbounds nuw i8, ptr %.val94.i.i.i, i64 8
  %i.ow = load i64, ptr %i.ov, align 8, !range !276, !invariant.load !4, !noalias !6886 ; 2 uses
  %i.ox = icmp eq i64 %i.ow, 0
  br i1 %i.ox, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.oy = getelementptr inbounds nuw i8, ptr %.val94.i.i.i, i64 16
  %i.oz = load i64, ptr %i.oy, align 8, !range !605, !invariant.load !4, !noalias !6886
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val93.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val93.i.i.i, i64 noundef range(i64 1, 0) %i.ow, i64 noundef range(i64 1, 536870913) %i.oz) #41, !noalias !6886
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.fe:                                            ; preds = %bb.fb
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.val94.i.i.i, i64 8
  %i.pc = load i64, ptr %i.pb, align 8, !range !276, !invariant.load !4, !noalias !6886 ; 2 uses
  %i.pd = icmp eq i64 %i.pc, 0
  br i1 %i.pd, label %.body203.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.pe = getelementptr inbounds nuw i8, ptr %.val94.i.i.i, i64 16
  %i.pf = load i64, ptr %i.pe, align 8, !range !605, !invariant.load !4, !noalias !6886
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val93.i.i.i, i64 noundef range(i64 1, 0) %i.pc, i64 noundef range(i64 1, 536870913) %i.pf) #41, !noalias !6886
  br label %.body203.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.fd, %bb.fc
  %.not.i135.i.i.i = icmp eq i64 %i.os, -9223372036854775790
  br i1 %.not.i135.i.i.i, label %bb.fg, label %bb.fl

bb.fg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3307.0.copyload.i.i.i), "nonnull"(ptr %.sroa.5308.0.copyload.i.i.i) ]
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %.sroa.3307.0.copyload.i.i.i, ptr %i.pg, align 8, !noalias !6882
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %.sroa.5308.0.copyload.i.i.i, ptr %i.ph, align 8, !noalias !6882
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 488
  call void @llvm.experimental.noalias.scope.decl(metadata !6970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6973
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 8388608, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc137.i.i.i unwind label %bb.fi, !noalias !6886

.noexc137.i.i.i:                                  ; preds = %bb.fg
  %i.pj = load i64, ptr %i.e, align 8, !range !3, !noalias !6973, !noundef !4
  %i.pk = trunc nuw i64 %i.pj to i1
  %i.pl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.pm = load i64, ptr %i.pl, align 8, !range !63, !noalias !6973, !noundef !4 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.pk, label %bb.fh, label %bb.fj, !prof !64

bb.fh:                                            ; preds = %.noexc137.i.i.i
  %i.po = load i64, ptr %i.pn, align 8, !noalias !6973
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.pm, i64 %i.po) #37
          to label %.noexc138.i.i.i unwind label %bb.fi, !noalias !6886

.noexc138.i.i.i:                                  ; preds = %bb.fh
  unreachable

.body206.i.i.i:                                   ; preds = %bb.lf, %bb.ku, %bb.ju, %.body185.i.i.i, %bb.fi
  %.pn49.i.i.i = phi { ptr, i32 } [ %.pn46.pn.i.i.i, %.body185.i.i.i ], [ %.pn46.pn.i.i.i, %bb.lf ], [ %i.xw, %bb.ju ], [ %i.ps, %bb.fi ], [ %i.aaa, %bb.ku ]
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 520
  store i8 0, ptr %i.pp, align 8, !noalias !6882
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.val90.i.i.i = load ptr, ptr %i.pq, align 8, !noalias !6882
  %i.pr = getelementptr i8, ptr %1, i64 376
  %.val91.i.i.i = load ptr, ptr %i.pr, align 8, !noalias !6882, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake(ptr %.val90.i.i.i, ptr nonnull %.val91.i.i.i) #38
          to label %.body203.i.i.i unwind label %bb.ew, !noalias !6886

bb.fi:                                            ; preds = %bb.kv, %bb.jv, %bb.fh, %bb.fg
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %.body206.i.i.i

bb.fj:                                            ; preds = %.noexc137.i.i.i
  %i.pt = load ptr, ptr %i.pn, align 8, !noalias !6973, !nonnull !4, !noundef !4
  %i.pu = icmp ugt i64 %i.pm, 8388607
  call void @llvm.assume(i1 %i.pu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6973
  store i64 %i.pm, ptr %i.pi, align 8, !alias.scope !6970, !noalias !6882
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 496
  store ptr %i.pt, ptr %i.pv, align 8, !alias.scope !6970, !noalias !6882
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 0, ptr %i.pw, align 8, !alias.scope !6970, !noalias !6882
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 520
  store i8 1, ptr %i.px, align 8, !noalias !6882
  br label %bb.fk

bb.fk:                                            ; preds = %bb.gd, %bb.fj
  %.sroa.14334.sroa.9.0.i.i.i = phi i64 [ undef, %bb.fj ], [ %.sroa.14334.sroa.9.3.i.i.i, %bb.gd ]
  %.sroa.14334.sroa.0.sroa.9.0.i.i.i = phi ptr [ undef, %bb.fj ], [ %.sroa.0313.2.i.i.i, %bb.gd ]
  %.sroa.14334.sroa.0.sroa.11.0.i.i.i = phi ptr [ undef, %bb.fj ], [ %.sroa.10315.2.i.i.i, %bb.gd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6882
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 522
  store i8 0, ptr %i.py, align 2, !noalias !6882
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.pz, i64 40, i1 false), !noalias !6882
  %i.qa = invoke noundef nonnull ptr @_RINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB2c_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB4_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
          to label %bb.gf unwind label %bb.ge, !noalias !6886

bb.fl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.4312.0..sroa.4.0..sroa_idx.i136.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.4312.0..sroa.4.0..sroa_idx.i136.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i.i, i64 48, i1 false), !noalias !6882
  call void @llvm.experimental.noalias.scope.decl(metadata !6974)
  store i64 -9223372036854775743, ptr %i.j, align 16, !alias.scope !6977, !noalias !6979
  %.sroa.4.0..sroa_idx.i136.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.os, ptr %.sroa.4.0..sroa_idx.i136.i.i.i, align 8, !alias.scope !6980, !noalias !6882
  %.sroa.2310.0..sroa.4.0..sroa_idx.i136.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.3307.0.copyload.i.i.i, ptr %.sroa.2310.0..sroa.4.0..sroa_idx.i136.sroa_idx.i.i.i, align 16, !alias.scope !6980, !noalias !6882
  %.sroa.3311.0..sroa.4.0..sroa_idx.i136.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %.sroa.5308.0.copyload.i.i.i, ptr %.sroa.3311.0..sroa.4.0..sroa_idx.i136.sroa_idx.i.i.i, align 8, !alias.scope !6980, !noalias !6882
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake.exit227.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake.exit227.i.i.i: ; preds = %bb.kq, %bb.kp, %bb.fl
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6981)
  call void @llvm.experimental.noalias.scope.decl(metadata !6984)
  %i.qc = load ptr, ptr %i.qb, align 8, !alias.scope !6987, !noalias !6882, !nonnull !4, !noundef !4
  %i.qd = atomicrmw sub ptr %i.qc, i64 1 release, align 8, !noalias !6988
  %i.qe = icmp eq i64 %i.qd, 1
  br i1 %i.qe, label %bb.fm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.fm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EECs7p2uQeJxui2_9deltalake.exit227.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qb) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.jy, !noalias !6886

.body203.i.i.i:                                   ; preds = %bb.ks, %bb.kr, %bb.js, %bb.jr, %.body206.i.i.i, %bb.ff, %bb.fe, %bb.ex, %bb.em
  %.pn51.pn.i.i.i = phi { ptr, i32 } [ %i.zt, %bb.ks ], [ %.pn49.i.i.i, %.body206.i.i.i ], [ %i.xp, %bb.jr ], [ %i.xp, %bb.js ], [ %i.zt, %bb.kr ], [ %i.nq, %bb.em ], [ %i.on, %bb.ex ], [ %i.pa, %bb.fe ], [ %i.pa, %bb.ff ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6989)
  call void @llvm.experimental.noalias.scope.decl(metadata !6992)
  %i.qg = load ptr, ptr %i.qf, align 8, !alias.scope !6995, !noalias !6882, !nonnull !4, !noundef !4
  %i.qh = atomicrmw sub ptr %i.qg, i64 1 release, align 8, !noalias !6996
  %i.qi = icmp eq i64 %i.qh, 1
  br i1 %i.qi, label %bb.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit141.i.i.i

bb.fn:                                            ; preds = %.body203.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qf) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit141.i.i.i unwind label %bb.ew, !noalias !6886

bb.fo:                                            ; preds = %bb.fp
  %i.qj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6882
  %.val84.i.i.i = load ptr, ptr %i.qk, align 8, !noalias !6882
  %.val85.i.i.i = load ptr, ptr %i.ql, align 8, !noalias !6882, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val84.i.i.i, ptr nonnull %.val85.i.i.i) #38
          to label %.body146.i.i.i unwind label %bb.ew, !noalias !6886

bb.fp:                                            ; preds = %bb.hp, %bb.cg
  %.val1.i143.i.i.i = phi ptr [ %i.tp, %bb.hp ], [ %.val1.i143.pre.i.i.i, %bb.cg ]
  %.val.i142.i.i.i = phi ptr [ %i.to, %bb.hp ], [ %.val.i142.pre.i.i.i, %bb.cg ]
  %.sroa.0313.0.i.i.i = phi ptr [ %.sroa.14334.sroa.0.sroa.9.0.copyload.i.i.i, %bb.hp ], [ undef, %bb.cg ] ; 5 uses
  %.sroa.10315.0.i.i.i = phi ptr [ %.sroa.14334.sroa.0.sroa.11.0.copyload.i.i.i, %bb.hp ], [ undef, %bb.cg ] ; 5 uses
  %.sroa.14334.sroa.9.2.i.i.i = phi i64 [ %.sroa.14334.sroa.9.0.copyload.i.i.i, %bb.hp ], [ undef, %bb.cg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6882
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6893)
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.val1.i143.i.i.i, i64 24
  %i.qn = load ptr, ptr %i.qm, align 8, !invariant.load !4, !noalias !6997, !nonnull !4
  invoke void %i.qn(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.o, ptr noundef nonnull %.val.i142.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #42
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.fo, !noalias !6886, !inline_history !6998

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.fp
  %i.qo = load i64, ptr %i.o, align 8, !range !3413, !noalias !6882, !noundef !4 ; 3 uses
  %i.qp = icmp eq i64 %i.qo, -9223372036854775789
  br i1 %i.qp, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6882
  br label %.thread.i.i

bb.fr:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.3391.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3391.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3391.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !6882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6882
  %.val82.i.i.i = load ptr, ptr %i.qk, align 8, !noalias !6882 ; 5 uses
  %.val83.i.i.i = load ptr, ptr %i.ql, align 8, !noalias !6882, !nonnull !4, !align !344, !noundef !4 ; 5 uses
  %i.qq = load ptr, ptr %.val83.i.i.i, align 8, !invariant.load !4, !noalias !6886 ; 2 uses
  %.not.i.i145.i.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i145.i.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val82.i.i.i) ]
  invoke void %i.qq(ptr noundef nonnull %.val82.i.i.i)
          to label %bb.ft unwind label %bb.fv, !noalias !6886

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.qr = getelementptr inbounds nuw i8, ptr %.val83.i.i.i, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !range !276, !invariant.load !4, !noalias !6886 ; 2 uses
  %i.qt = icmp eq i64 %i.qs, 0
  br i1 %i.qt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.qu = getelementptr inbounds nuw i8, ptr %.val83.i.i.i, i64 16
  %i.qv = load i64, ptr %i.qu, align 8, !range !605, !invariant.load !4, !noalias !6886
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val82.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val82.i.i.i, i64 noundef range(i64 1, 0) %i.qs, i64 noundef range(i64 1, 536870913) %i.qv) #41, !noalias !6886
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.fv:                                            ; preds = %bb.fs
  %i.qw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.val83.i.i.i, i64 8
  %i.qy = load i64, ptr %i.qx, align 8, !range !276, !invariant.load !4, !noalias !6886 ; 2 uses
  %i.qz = icmp eq i64 %i.qy, 0
  br i1 %i.qz, label %.body146.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ra = getelementptr inbounds nuw i8, ptr %.val83.i.i.i, i64 16
  %i.rb = load i64, ptr %i.ra, align 8, !range !605, !invariant.load !4, !noalias !6886
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val82.i.i.i, i64 noundef range(i64 1, 0) %i.qy, i64 noundef range(i64 1, 536870913) %i.rb) #41, !noalias !6886
  br label %.body146.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.fu, %bb.ft
  %.not.i148.i.i.i = icmp eq i64 %i.qo, -9223372036854775790
  br i1 %.not.i148.i.i.i, label %bb.fx, label %bb.ib

bb.fx:                                            ; preds = %bb.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.0313.2.i.i.i = phi ptr [ %.sroa.14334.sroa.0.sroa.9.0.copyload.i.i.i, %bb.hl ], [ %.sroa.0313.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 3 uses
  %.sroa.10315.2.i.i.i = phi ptr [ %.sroa.14334.sroa.0.sroa.11.0.copyload.i.i.i, %bb.hl ], [ %.sroa.10315.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 3 uses
  %.sroa.14334.sroa.9.3.i.i.i = phi i64 [ %.sroa.14334.sroa.9.0.copyload.i.i.i, %bb.hl ], [ %.sroa.14334.sroa.9.2.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsdFjMDJQAyx6_10arrow_json6writer6WriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtBJ_13LineDelimitedEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(160) %i.rc)
          to label %bb.ga unwind label %bb.fz, !noalias !6886

bb.fy:                                            ; preds = %.body146.i.i.i, %bb.he, %bb.fz
  %.sroa.0313.3.i.i.i = phi ptr [ %.sroa.0313.4.i.i.i, %bb.fz ], [ %.sroa.0313.8.i.i.i, %.body146.i.i.i ], [ %.sroa.14334.sroa.0.sroa.9.0.copyload.i.i.i, %bb.he ]
  %.sroa.10315.3.i.i.i = phi ptr [ %.sroa.10315.4.i.i.i, %bb.fz ], [ %.sroa.10315.8.i.i.i, %.body146.i.i.i ], [ %.sroa.14334.sroa.0.sroa.11.0.copyload.i.i.i, %bb.he ]
end_hunk_4
begin_hunk_5_@_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable23get_files_by_partitions0Cs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.534.8.copyload = load ptr, ptr %.sroa.534.8..sroa_idx, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.8.copyload = load i64, ptr %.sroa.6.8..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.3.0 = phi i64 [ %.sroa.3.8.copyload, %bb.s ], [ %.sroa.3.sroa.0.0.copyload, %bb.u ]
  %.sroa.534.0 = phi ptr [ %.sroa.534.8.copyload, %bb.s ], [ %.sroa.3.sroa.3.0.copyload, %bb.u ]
  %.sroa.6.0 = phi i64 [ %.sroa.6.8.copyload, %bb.s ], [ %.sroa.3.sroa.5.0.copyload, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.t, ptr %0, align 16
  %.sroa.3.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx33, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.534.0, ptr %.sroa.534.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7, i64 64, i1 false)
  br label %common.ret

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  br label %bb.t

bb.v:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtCs7p2uQeJxui2_9deltalake10filesystemNtB7_18ObjectOutputStream7try_new0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.960 = alloca [16 x i8], align 8          ; 3 uses
  %.sroa.7.sroa.2 = alloca [16 x i8], align 8     ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !1864, !noundef !4
  switch i8 %i.d, label %default.unreachable76 [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.b
  ]

default.unreachable76:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !8583, !noalias !8586
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert71, align 8, !alias.scope !8583, !noalias !8586
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !344, !noundef !4 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  %i.j = getelementptr i8, ptr %1, i64 56
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  store i64 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !605, !invariant.load !4
  %i.q = add nsw i64 %i.p, -1
  %i.r = and i64 %i.q, -16
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !nonnull !4
  %i.w = invoke { ptr, ptr } %i.v(ptr noundef nonnull %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.z, ptr %i.ab, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #36
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #36
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val12 = load ptr, ptr %i.ad, align 8
  %.val13 = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val12, ptr nonnull %.val13) #38
          to label %.body unwind label %bb.aa

bb.i:                                             ; preds = %bb.b, %bb.e
  %.val1.i = phi ptr [ %.val1.i.pre, %bb.b ], [ %i.z, %bb.e ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.b ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8583)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !4, !noalias !8589, !nonnull !4
  invoke void %i.ag(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #42
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit unwind label %bb.h, !inline_history !6969

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i
  %i.ah = load i64, ptr %i.b, align 8, !range !3413, !noundef !4 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, -9223372036854775789
  br i1 %i.ai, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx42, align 8 ; 2 uses
  %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx42.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx42.sroa_idx, i64 16, i1 false)
  %.sroa.7.sroa.3.0..sroa.7.0..sroa_idx42.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.7.sroa.3.0.copyload = load ptr, ptr %.sroa.7.sroa.3.0..sroa.7.0..sroa_idx42.sroa_idx, align 8 ; 2 uses
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx42.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aj = load <2 x i64>, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx42.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.ad, align 8            ; 5 uses
  %.val11 = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !344, !noundef !4 ; 5 uses
  %i.ak = load ptr, ptr %.val11, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ak(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !276, !invariant.load !4 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !605, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !276, !invariant.load !4 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !605, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #41
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n, %bb.m
  %.not.i = icmp eq i64 %i.ah, -9223372036854775790
  br i1 %.not.i, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8590
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.q
  %i.aw = load i64, ptr %i.a, align 8, !range !3, !noalias !8590, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !63, !noalias !8590, !noundef !4 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.r, label %bb.t, !prof !64

bb.r:                                             ; preds = %.noexc
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !8590
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.bb) #37
          to label %.noexc19 unwind label %bb.s

.noexc19:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api5mutex5MutexNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_EEECs7p2uQeJxui2_9deltalake(ptr nonnull %.sroa.3.0.copyload, ptr nonnull %.sroa.5.0.copyload) #38
          to label %.body unwind label %bb.aa

bb.t:                                             ; preds = %.noexc
  %i.bd = load ptr, ptr %i.ba, align 8, !noalias !8590, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = icmp ugt i64 %i.az, 1
  call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8590
  store i16 25207, ptr %i.bd, align 1, !noalias !8599
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960, i8 0, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body20 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit unwind label %bb.x

.body20:                                          ; preds = %bb.ac, %bb.u, %bb.x, %.body
  %.pn7 = phi { ptr, i32 } [ %.pn4.pn, %.body ], [ %i.bj, %bb.u ], [ %i.bp, %bb.x ], [ %i.ca, %bb.ac ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8600)
  call void @llvm.experimental.noalias.scope.decl(metadata !8603)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !8606, !nonnull !4, !noundef !4
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !8606
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit

bb.w:                                             ; preds = %.body20
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bl) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.aa

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8607)
  call void @llvm.experimental.noalias.scope.decl(metadata !8610)
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !8613, !nonnull !4, !noundef !4
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !8613
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bq) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body20, %bb.w, %bb.z
  %.pn9 = phi { ptr, i32 } [ %i.bu, %bb.z ], [ %.pn7, %bb.w ], [ %.pn7, %.body20 ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn9

bb.z:                                             ; preds = %bb.ae, %bb.y
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31, %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit, %bb.y
  %.sroa.052.0 = phi i64 [ %i.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ %i.az, %bb.y ], [ -9223372036854775808, %bb.ae ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  %.sroa.354.0 = phi i64 [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ %i.bf, %bb.y ], [ %i.ah, %bb.ae ], [ %i.ah, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  %.sroa.456.0 = phi ptr [ inttoptr (i64 2 to ptr), %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ inttoptr (i64 2 to ptr), %bb.y ], [ %.sroa.3.0.copyload, %bb.ae ], [ %.sroa.3.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  %.sroa.558.0 = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ 0, %bb.y ], [ %i.by, %bb.ae ], [ %i.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  %.sroa.759.0 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ inttoptr (i64 8 to ptr), %bb.y ], [ %.sroa.7.sroa.0.0.copyload, %bb.ae ], [ %.sroa.7.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  %.sroa.1061.0 = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ inttoptr (i64 1 to ptr), %bb.y ], [ %.sroa.7.sroa.3.0.copyload, %bb.ae ], [ %.sroa.7.sroa.3.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  %.sroa.16.0 = phi ptr [ %.sroa.3.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.3.0.copyload, %bb.y ], [ undef, %bb.ae ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  %.sroa.17.0 = phi ptr [ %.sroa.5.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.5.0.copyload, %bb.y ], [ undef, %bb.ae ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  %.sroa.19.0 = phi i64 [ %i.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ %i.bh, %bb.y ], [ undef, %bb.ae ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  %i.bv = phi <2 x i64> [ zeroinitializer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit ], [ zeroinitializer, %bb.y ], [ %i.aj, %bb.ae ], [ %i.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 ]
  store i64 %.sroa.052.0, ptr %0, align 8
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.354.0, ptr %.sroa.354.0..sroa_idx, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.456.0, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.558.0, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.759.0, ptr %.sroa.759.0..sroa_idx, align 8
  %.sroa.960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960, i64 16, i1 false)
  %.sroa.1061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.1061.0, ptr %.sroa.1061.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.bv, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 8192, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.1463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %.sroa.1463.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %.sroa.20.0..sroa_idx, align 8
  br label %common.ret

bb.aa:                                            ; preds = %bb.w, %bb.s, %bb.h, %.body
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.body:                                            ; preds = %bb.s, %bb.d, %bb.h, %bb.o, %bb.p
  %.pn4.pn = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %i.aq, %bb.o ], [ %i.ac, %bb.h ], [ %i.x, %bb.d ], [ %i.bc, %bb.s ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.bx) #38
          to label %.body20 unwind label %bb.aa

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.960, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.2, i64 16, i1 false)
  %i.by = ptrtoint ptr %.sroa.5.0.copyload to i64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body20 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31 unwind label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i27
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8614)
  call void @llvm.experimental.noalias.scope.decl(metadata !8617)
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !8620, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !8620
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit31
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cc) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit25 unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame14execute_stream0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [240 x i8], align 8               ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1736 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !1864, !noundef !4
  switch i8 %i.f, label %default.unreachable26 [
    i8 0, label %bb.b
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.l
  ]

default.unreachable26:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1738 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1737 ; 2 uses
  store i8 0, ptr %i.h, align 1
  store i8 1, ptr %i.g, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.i, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 336, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame8task_ctx(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(336) %i.i)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8621
  store i64 1, ptr %i.a, align 8, !noalias !8621
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !8621
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(240) %i.d, i64 240, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !8624
  %i.m = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3025) 256, i64 noundef range(i64 8, 17) 8) #41, !noalias !8624 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.h, !prof !64

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #37
          to label %.noexc.i unwind label %bb.f, !noalias !8621

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.a) #38
          to label %.body unwind label %bb.g, !noalias !8621

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8621
  unreachable

.body:                                            ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit10

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.m, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false), !noalias !8621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8621
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1728
  store ptr %i.m, ptr %i.q, align 16
  store i8 1, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.g, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.r, ptr noundef nonnull align 16 dereferenceable(336) %i.i, i64 336, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1712
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 16
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit10: ; preds = %bb.aa, %bb.ab, %bb.y, %bb.v, %.body
  %.pn7 = phi { ptr, i32 } [ %i.an, %bb.y ], [ %.pn, %.body ], [ %.pn4.pn, %bb.v ], [ %.pn4.pn, %bb.ab ], [ %.pn4.pn, %bb.aa ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1737
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1738 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !range !101, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.ad, label %bb.ac

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #36
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #36
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.x) #38
          to label %bb.v unwind label %bb.z

bb.l:                                             ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame20create_physical_plan0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 16 %i.x, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.y = load i64, ptr %i.c, align 8, !range !6350, !noundef !4 ; 3 uses
  %i.z = icmp eq i64 %i.y, 21
  br i1 %i.z, label %bb.n, label %bb.o

common.ret:                                       ; preds = %bb.u, %bb.n
  %storemerge = phi i8 [ 1, %bb.u ], [ 3, %bb.n ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.o:                                             ; preds = %bb.m
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.520.0.copyload = load ptr, ptr %.sroa.520.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.x)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %.not.i = icmp eq i64 %i.y, 20
  br i1 %.not.i, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.520.0.copyload) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1737 ; 2 uses
  store i8 0, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.ad = load ptr, ptr %i.ac, align 16, !nonnull !4, !noundef !4
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull %.sroa.3.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.520.0.copyload, ptr noundef nonnull %i.ad)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  store i8 0, ptr %i.ab, align 1
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit, %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1738
  store i8 0, ptr %i.af, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %common.ret

bb.v:                                             ; preds = %bb.k, %bb.p, %bb.s
  %.pn4.pn = phi { ptr, i32 } [ %i.ae, %bb.s ], [ %i.aa, %bb.p ], [ %i.w, %bb.k ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1737
  %i.ah = load i8, ptr %i.ag, align 1, !range !101, !noundef !4
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit10

bb.w:                                             ; preds = %bb.q
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store i64 %i.y, ptr %i.b, align 8, !alias.scope !8627
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !8627
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.520.0.copyload, ptr %.sroa.322.0..sroa_idx, align 8, !alias.scope !8627
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8631)
  call void @llvm.experimental.noalias.scope.decl(metadata !8634)
  %i.ak = load ptr, ptr %i.aj, align 16, !alias.scope !8637, !nonnull !4, !noundef !4
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !8637
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit10

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.w, %bb.x
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1737
  store i8 0, ptr %i.ao, align 1
  br label %bb.u

bb.z:                                             ; preds = %bb.ab, %bb.ad, %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.aa:                                            ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8638)
  call void @llvm.experimental.noalias.scope.decl(metadata !8641)
  %i.ar = load ptr, ptr %i.aq, align 16, !alias.scope !8644, !nonnull !4, !noundef !4
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !8644
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit10

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.z

bb.ac:                                            ; preds = %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit10
  store i8 0, ptr %i.t, align 2
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn7

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(336) %i.au) #38
          to label %bb.ac unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame19collect_partitioned0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.3.sroa.0.i = alloca [24 x i8], align 8   ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [256 x i8], align 8               ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 12 uses
  %i.m = alloca [240 x i8], align 8               ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 3 uses
  %i.o = load i8, ptr %i.n, align 16, !range !399, !noundef !4
  switch i8 %i.o, label %default.unreachable83 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.c
    i8 4, label %bb.y
  ]

default.unreachable83:                            ; preds = %bb.at, %bb.ap, %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 675 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 673 ; 2 uses
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.r, align 2
  store i8 1, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.s, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 336, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame8task_ctx(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(336) %i.s)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8645
  store i64 1, ptr %i.j, align 8, !noalias !8645
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.u, align 8, !noalias !8645
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(240) %i.m, i64 240, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !8648
  %i.w = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 3025) 256, i64 noundef range(i64 8, 17) 8) #41, !noalias !8648 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %bb.i, !prof !64

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #37
          to label %.noexc.i unwind label %bb.g, !noalias !8645

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.j) #38
          to label %.body unwind label %bb.h, !noalias !8645

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8645
  unreachable

.body:                                            ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit21

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.w, ptr noundef nonnull align 8 dereferenceable(256) %i.j, i64 256, i1 false), !noalias !8645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8645
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr %i.w, ptr %i.aa, align 16
  store i8 1, ptr %i.q, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 0, ptr %i.p, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.ab, ptr noundef nonnull align 16 dereferenceable(336) %i.s, i64 336, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1744
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 16
  br label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit21: ; preds = %bb.cm, %bb.cn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs7p2uQeJxui2_9deltalake.exit, %bb.v, %.body
  %.pn11 = phi { ptr, i32 } [ %i.ay, %bb.v ], [ %.pn, %.body ], [ %.pn8.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs7p2uQeJxui2_9deltalake.exit ], [ %.pn8.pn, %bb.cn ], [ %.pn8.pn, %bb.cm ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 675 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !range !101, !noundef !4
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.cp, label %bb.co

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #36
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #36
  unreachable

bb.l:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.ah) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.w

bb.m:                                             ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 4 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame20create_physical_plan0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.k, ptr noundef nonnull align 16 %i.ah, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.k, align 8, !range !6350, !noundef !4 ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 21
  br i1 %i.aj, label %bb.o, label %bb.p

common.ret:                                       ; preds = %bb.cg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit, %bb.o
  %.sink = phi i8 [ 4, %bb.cg ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit ], [ 3, %bb.o ]
  store i8 %.sink, ptr %i.n, align 16
  ret void

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %common.ret

bb.p:                                             ; preds = %bb.n
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.531.0.copyload = load ptr, ptr %.sroa.531.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.7.sroa.2.0.copyload = load i64, ptr %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.ah)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %bb.p
  %.not.i = icmp eq i64 %i.ai, 20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 674 ; 2 uses
  br i1 %.not.i, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.531.0.copyload) ]
  store ptr %.sroa.3.0.copyload, ptr %i.l, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.531.0.copyload, ptr %i.al, align 8
  store i8 0, ptr %3, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ao = load ptr, ptr %i.an, align 16, !nonnull !4, !noundef !4
  store ptr %.sroa.3.0.copyload, ptr %i.ah, align 16
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 712
  store ptr %.sroa.531.0.copyload, ptr %.sroa.844.0..sroa_idx, align 8
  %.sroa.1046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr %i.ao, ptr %.sroa.1046.0..sroa_idx, align 16
  %.sroa.1247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 794
  store i8 0, ptr %.sroa.1247.0..sroa_idx, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.0.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 794
  br label %bb.z

bb.s:                                             ; preds = %bb.ci, %.body15
  %.pn6 = phi { ptr, i32 } [ %i.ft, %bb.ci ], [ %eh.lpad-body16, %.body15 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 674
  %i.as = load i8, ptr %i.ar, align 2, !range !101, !noundef !4
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs7p2uQeJxui2_9deltalake.exit

bb.t:                                             ; preds = %bb.r
  store i8 0, ptr %3, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8651)
  call void @llvm.experimental.noalias.scope.decl(metadata !8654)
  %i.av = load ptr, ptr %i.au, align 16, !alias.scope !8657, !nonnull !4, !noundef !4
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !8657
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit21

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.u, %bb.t, %bb.cj
  %.sroa.051.0 = phi i64 [ %.sroa.088.1.i, %bb.cj ], [ %i.ai, %bb.t ], [ %i.ai, %bb.u ]
  %.sroa.352.0 = phi ptr [ %.sroa.4.i.sroa.0.0, %bb.cj ], [ %.sroa.3.0.copyload, %bb.t ], [ %.sroa.3.0.copyload, %bb.u ]
  %.sroa.553.0 = phi ptr [ %.sroa.4.i.sroa.6.0, %bb.cj ], [ %.sroa.531.0.copyload, %bb.t ], [ %.sroa.531.0.copyload, %bb.u ]
  %.sroa.654.0 = phi i64 [ %.sroa.4.i.sroa.7.0, %bb.cj ], [ %.sroa.7.sroa.0.0.copyload, %bb.t ], [ %.sroa.7.sroa.0.0.copyload, %bb.u ]
  %.sroa.755.0 = phi i64 [ %.sroa.789.1.i, %bb.cj ], [ %.sroa.7.sroa.2.0.copyload, %bb.t ], [ %.sroa.7.sroa.2.0.copyload, %bb.u ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 673
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 675
  store i8 0, ptr %i.ba, align 1
  store i64 %.sroa.051.0, ptr %0, align 8
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.352.0, ptr %.sroa.352.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.553.0, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.654.0, ptr %.sroa.654.0..sroa_idx, align 8
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.755.0, ptr %.sroa.755.0..sroa_idx, align 8
  br label %common.ret

bb.w:                                             ; preds = %bb.cn, %bb.cl, %bb.cp, %.body15, %bb.l
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.l, %bb.q, %bb.ck, %bb.cl, %bb.s
  %.pn8.pn = phi { ptr, i32 } [ %.pn6, %bb.ck ], [ %.pn6, %bb.s ], [ %.pn6, %bb.cl ], [ %i.ak, %bb.q ], [ %i.ag, %bb.l ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.bc, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 673
  %i.be = load i8, ptr %i.bd, align 1, !range !101, !noundef !4
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs7p2uQeJxui2_9deltalake.exit21

bb.x:                                             ; preds = %bb.an, %bb.am
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %bb.al, %bb.x
  %i.bh = phi ptr [ %i.bi, %bb.x ], [ %i.cx, %bb.al ]
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.bg, %bb.x ], [ %.pn29.pn.i, %bb.al ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.bh) #38
          to label %bb.s unwind label %bb.w

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 794
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !1864, !noalias !8658
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.0.i)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 794 ; 6 uses
  switch i8 %.pre, label %default.unreachable83 [
    i8 0, label %bb.z
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ap
  ]

bb.z:                                             ; preds = %.thread, %bb.y
  %i.bk = phi ptr [ %i.aq, %.thread ], [ %i.bj, %bb.y ] ; 5 uses
  %i.bl = phi ptr [ %i.ap, %.thread ], [ %i.bi, %bb.y ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 793 ; 3 uses
  store i8 0, ptr %i.bm, align 1, !noalias !8658
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 2 uses
  store i8 0, ptr %i.bn, align 8, !noalias !8658
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.bp = load ptr, ptr %i.bo, align 16, !noalias !8658, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !8658, !nonnull !4, !align !344, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.bt = load ptr, ptr %i.bs, align 16, !noalias !8658, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8658
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan26execute_stream_partitioned(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noundef nonnull %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.br, ptr noundef nonnull %i.bt)
          to label %bb.ab unwind label %bb.aa, !noalias !8662

bb.aa:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8658
  br label %bb.al

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !8663)
  %i.bv = load i64, ptr %i.h, align 8, !range !403, !alias.scope !8666, !noalias !8668, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bv, 20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %i.bw, align 8, !alias.scope !8669, !noalias !8658 ; 3 uses
  %.sroa.8.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8.i.sroa.7.0.copyload = load ptr, ptr %.sroa.8.i.sroa.7.0..sroa_idx, align 8, !alias.scope !8669, !noalias !8658 ; 5 uses
  %.sroa.8.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.8.i.sroa.8.0.copyload = load i64, ptr %.sroa.8.i.sroa.8.0..sroa_idx, align 8, !alias.scope !8669, !noalias !8658 ; 4 uses
  br i1 %.not.i.i, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8658
  store ptr %.sroa.8.i.sroa.0.0.copyload, ptr %i.i, align 8, !noalias !8658
  %.sroa.8.i.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.8.i.sroa.7.0.copyload, ptr %.sroa.8.i.sroa.7.0..sroa_idx65, align 8, !noalias !8658
  %.sroa.8.i.sroa.8.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.8.i.sroa.8.0.copyload, ptr %.sroa.8.i.sroa.8.0..sroa_idx67, align 8, !noalias !8658
  store i8 1, ptr %i.bm, align 1, !noalias !8658
  %i.bx = invoke { ptr, i64 } @_RNvMs_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3newCs7p2uQeJxui2_9deltalake()
          to label %bb.af unwind label %bb.ae, !noalias !8662 ; 2 uses

bb.ad:                                            ; preds = %bb.aj, %bb.ae
  %i.by = phi ptr [ %i.cu, %bb.aj ], [ %i.cd, %bb.ae ] ; 2 uses
  %i.bz = phi ptr [ %i.cv, %bb.aj ], [ %i.ce, %bb.ae ] ; 2 uses
  %.pn21.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn.pn.i, %bb.aj ], [ %i.cf, %bb.ae ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 793
  %i.cb = load i8, ptr %i.ca, align 1, !range !101, !noalias !8658, !noundef !4
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.cf, label %bb.al

bb.ae:                                            ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.ac
  %i.cd = phi ptr [ %i.dr, %bb.cc ], [ %i.dr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.bk, %bb.ac ]
  %i.ce = phi ptr [ %i.ds, %bb.cc ], [ %i.ds, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.bl, %bb.ac ]
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
  %i.cg = ptrtoint ptr %.sroa.8.i.sroa.0.0.copyload to i64
  %i.ch = extractvalue { ptr, i64 } %i.bx, 0
  %i.ci = extractvalue { ptr, i64 } %i.bx, 1
  store ptr %i.ch, ptr %i.bl, align 8, !noalias !8658
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i64 %i.ci, ptr %i.cj, align 8, !noalias !8658
  store i8 0, ptr %i.bm, align 1, !noalias !8658
  %i.ck = icmp ult i64 %.sroa.8.i.sroa.8.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.i.sroa.7.0.copyload, i64 %.sroa.8.i.sroa.8.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8670
  store ptr %.sroa.8.i.sroa.7.0.copyload, ptr %i.d, align 8, !noalias !8677
  %.sroa.058.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.8.i.sroa.7.0.copyload, ptr %.sroa.058.sroa.5.0..sroa_idx.i, align 8, !noalias !8677
  %.sroa.058.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.cg, ptr %.sroa.058.sroa.6.0..sroa_idx.i, align 8, !noalias !8677
  %.sroa.058.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cl, ptr %.sroa.058.sroa.7.0..sroa_idx.i, align 8, !noalias !8677
  invoke void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtBa_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB12_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB12_6marker4SendEL_EEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB5K_8adapters9enumerateINtB6A_9EnumeratepEB5E_4fold9enumerateBX_uNCINvNvB5E_8for_each4callTjBX_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bl, i64 noundef 0)
          to label %bb.ai unwind label %bb.ag, !noalias !8662

bb.ag:                                            ; preds = %bb.af
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.body41.i:                                        ; preds = %bb.ce, %bb.cd, %bb.bj, %bb.ah
  %i.cn = phi ptr [ %i.fk, %bb.ce ], [ %i.fk, %bb.cd ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.bj ]
  %i.co = phi ptr [ %i.fl, %bb.ce ], [ %i.fl, %bb.cd ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.bj ]
  %.pn21.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.i, %bb.ce ], [ %.pn21.pn.pn.pn.i, %bb.cd ], [ %i.cq, %bb.ah ], [ %i.eq, %bb.bj ]
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 792
  store i8 0, ptr %i.cp, align 8, !noalias !8658
  br label %bb.aj

bb.ah:                                            ; preds = %bb.bk
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8670
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i64 0, ptr %i.cr, align 16, !alias.scope !8678, !noalias !8658
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 728
  store ptr inttoptr (i64 8 to ptr), ptr %i.cs, align 8, !alias.scope !8678, !noalias !8658
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 736
  store i64 0, ptr %i.ct, align 16, !alias.scope !8678, !noalias !8658
  store i8 1, ptr %i.bn, align 8, !noalias !8658
  br label %.thread106.i

bb.aj:                                            ; preds = %.body41.i, %bb.ag
  %i.cu = phi ptr [ %i.cn, %.body41.i ], [ %i.bk, %bb.ag ]
  %i.cv = phi ptr [ %i.co, %.body41.i ], [ %i.bl, %bb.ag ] ; 2 uses
  %.pn21.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn.i, %.body41.i ], [ %i.cm, %bb.ag ]
end_hunk_5
begin_hunk_6_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_custom_table0Cs7p2uQeJxui2_9deltalake:bb.a
          to label %.body unwind label %bb.z, !noalias !8857

bb.z:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8857
  unreachable

bb.aa:                                            ; preds = %bb.v, %.body.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8857
  unreachable

bb.ab:                                            ; preds = %bb.t
  unreachable

_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ag unwind label %bb.ac

bb.ac:                                            ; preds = %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs7p2uQeJxui2_9deltalake.exit.i, %select.unfold
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %.noexc32
  %i.ck = getelementptr inbounds i8, ptr %i.bk, i64 -16
  %.val26 = load ptr, ptr %i.ck, align 8, !nonnull !4, !noundef !4
  %i.cl = getelementptr i8, ptr %i.bk, i64 -8
  %.val27 = load ptr, ptr %i.cl, align 8, !nonnull !4, !align !344, !noundef !4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val27, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !range !605, !invariant.load !4
  %i.co = add nsw i64 %i.cn, -1
  %i.cp = and i64 %i.co, -16
  %i.cq = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.val27, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !invariant.load !4, !nonnull !4
  %i.cu = invoke { ptr, ptr } %i.ct(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @162, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %i.l)
          to label %bb.af unwind label %bb.ae     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.ad
  %i.cw = extractvalue { ptr, ptr } %i.cu, 0      ; 2 uses
  %i.cx = extractvalue { ptr, ptr } %i.cu, 1      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store ptr %i.cw, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 1728
  store ptr %i.cx, ptr %i.cz, align 8
  br label %bb.ao

bb.ag:                                            ; preds = %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext19create_custom_table00Cs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8853
  %i.da = load <2 x ptr>, ptr %i.f, align 16, !noalias !8858
  %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.db = load i64, ptr %.sroa.11.sroa.6.0..sroa.11.8..sroa_idx.sroa_idx, align 16, !noalias !8858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8848
  %i.dc = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.db, i64 0
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, %bb.ag
  %.sroa.072.0 = phi i64 [ 10, %bb.ag ], [ %i.dp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.dd = phi <2 x i64> [ %i.dc, %bb.ag ], [ %i.ds, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.de = phi <2 x ptr> [ %i.da, %bb.ag ], [ %i.dr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %.body36 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.l

.body:                                            ; preds = %bb.ae, %bb.an, %bb.au, %bb.av, %.body.i.i, %bb.y, %bb.ac, %.loopexit.split-lp, %.loopexit
  %.pn8.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cg, %bb.y ], [ %.pn.i.i, %.body.i.i ], [ %i.cj, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %i.dz, %bb.au ], [ %i.dk, %bb.an ], [ %i.dz, %bb.av ], [ %i.cv, %bb.ae ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di) #38
          to label %.body36 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.f, %bb.an, %.body, %.body36
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.az, %.body36
  %.pn13 = phi { ptr, i32 } [ %i.el, %bb.az ], [ %.pn11, %.body36 ], [ %i.z, %bb.g ], [ %i.w, %bb.d ], [ %i.z, %bb.f ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn13

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #36
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #36
  unreachable

bb.an:                                            ; preds = %bb.ao
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val19 = load ptr, ptr %i.dl, align 8
  %.val20 = load ptr, ptr %i.dm, align 8, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val19, ptr nonnull %.val20) #38
          to label %.body unwind label %bb.ak

bb.ao:                                            ; preds = %bb.b, %bb.af
  %.val1.i = phi ptr [ %.val1.i.pre, %bb.b ], [ %i.cx, %bb.af ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.b ], [ %i.cw, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1720 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8821)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !invariant.load !4, !noalias !8859, !nonnull !4
  invoke void %i.do(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #42
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit unwind label %bb.an, !inline_history !8860

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ao
  %i.dp = load i64, ptr %i.g, align 8, !range !6350, !noundef !4 ; 3 uses
  %i.dq = icmp eq i64 %i.dp, 21
  br i1 %i.dq, label %bb.ap, label %bb.aq

common.ret:                                       ; preds = %bb.ba, %bb.ap
  %storemerge = phi i8 [ 3, %bb.ap ], [ 1, %bb.ba ]
  store i8 %storemerge, ptr %i.h, align 8
  ret void

bb.ap:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.aq:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit
  %.sroa.367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dr = load <2 x ptr>, ptr %.sroa.367.0..sroa_idx, align 8 ; 4 uses
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ds = load <2 x i64>, ptr %.sroa.768.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val17 = load ptr, ptr %i.dl, align 8          ; 5 uses
  %.val18 = load ptr, ptr %i.dm, align 8, !nonnull !4, !align !344, !noundef !4 ; 5 uses
  %i.dt = load ptr, ptr %.val18, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i40, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.dt(ptr noundef nonnull %.val17)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.du = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !276, !invariant.load !4 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dx = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !range !605, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.dv, i64 noundef range(i64 1, 536870913) %i.dy) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.au:                                            ; preds = %bb.ar
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !276, !invariant.load !4 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.body, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ed = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !range !605, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.eb, i64 noundef range(i64 1, 536870913) %i.ee) #41
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.at, %bb.as
  %.not.i43 = icmp eq i64 %i.dp, 20
  br i1 %.not.i43, label %bb.aw, label %bb.ah

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.ef = extractelement <2 x ptr> %i.dr, i64 0
  %i.eg = extractelement <2 x ptr> %i.dr, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef), "nonnull"(ptr %i.eg) ]
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 1696 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i45 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %.body36 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i45: ; preds = %bb.aw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit49 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit49: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i45
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.ek)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit49
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit49
  %.sroa.072.1 = phi i64 [ %.sroa.072.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ], [ 20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit49 ]
  %i.em = phi <2 x i64> [ %i.dd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit49 ]
  %i.en = phi <2 x ptr> [ %i.de, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ], [ %i.dr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit49 ]
  store i64 %.sroa.072.1, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.en, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.1075.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.em, ptr %.sroa.1075.0..sroa_idx, align 8
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.eo)
          to label %bb.ba unwind label %bb.az
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.825.i.i.i = alloca [24 x i8], align 8    ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 16 uses
  %i.s = alloca [24 x i8], align 8                ; 14 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [320 x i8], align 16              ; 5 uses
  %i.v = alloca [1680 x i8], align 8              ; 6 uses
  %i.w = alloca [336 x i8], align 16              ; 6 uses
  %i.x = alloca [320 x i8], align 16              ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [48 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [40 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.8277.i.i = alloca [40 x i8], align 8     ; 7 uses
  %i.an = alloca [48 x i8], align 8               ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %i.ap = alloca [8 x i8], align 8                ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.3272.i.i = alloca [32 x i8], align 8     ; 6 uses
  %.sroa.7268.i.i = alloca [32 x i8], align 8     ; 7 uses
  %i.ar = alloca [320 x i8], align 16             ; 5 uses
  %i.as = alloca [1680 x i8], align 8             ; 6 uses
  %i.at = alloca [336 x i8], align 16             ; 6 uses
  %i.au = alloca [320 x i8], align 16             ; 6 uses
  %i.av = alloca [336 x i8], align 16             ; 42 uses
  %i.aw = alloca [336 x i8], align 16             ; 7 uses
  %i.ax = alloca [56 x i8], align 8               ; 8 uses
  %i.ay = alloca [336 x i8], align 16             ; 7 uses
  %i.az = alloca [2016 x i8], align 16            ; 8 uses
  %i.ba = alloca [336 x i8], align 16             ; 7 uses
  %i.bb = alloca [64 x i8], align 8               ; 7 uses
  %i.bc = alloca [336 x i8], align 16             ; 7 uses
  %i.bd = alloca [432 x i8], align 8              ; 8 uses
  %i.be = alloca [336 x i8], align 16             ; 7 uses
  %i.bf = alloca [432 x i8], align 8              ; 8 uses
  %i.bg = alloca [336 x i8], align 16             ; 7 uses
  %i.bh = alloca [56 x i8], align 8               ; 8 uses
  %i.bi = alloca [336 x i8], align 16             ; 7 uses
  %i.bj = alloca [56 x i8], align 8               ; 8 uses
  %i.bk = alloca [336 x i8], align 16             ; 7 uses
  %i.bl = alloca [528 x i8], align 8              ; 8 uses
  %i.bm = alloca [336 x i8], align 16             ; 7 uses
  %i.bn = alloca [3024 x i8], align 16            ; 8 uses
  %i.bo = alloca [336 x i8], align 16             ; 7 uses
  %i.bp = alloca [2152 x i8], align 8             ; 8 uses
  %i.bq = alloca [64 x i8], align 8               ; 7 uses
  %i.br = alloca [48 x i8], align 8               ; 6 uses
  %i.bs = alloca [320 x i8], align 16             ; 21 uses
  %i.bt = alloca [200 x i8], align 8              ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 9 uses
  %i.bv = alloca [64 x i8], align 8               ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.bw = alloca [40 x i8], align 8               ; 9 uses
  %i.bx = alloca [48 x i8], align 8               ; 10 uses
  %i.by = alloca [48 x i8], align 8               ; 7 uses
  %i.bz = alloca [56 x i8], align 8               ; 7 uses
  %i.ca = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.8.i.i.i = alloca [24 x i8], align 8      ; 8 uses
  %i.cb = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.433.i.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.734.i.i = alloca [272 x i8], align 16    ; 6 uses
  %.sroa.3.i.sroa.5.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.3.i.sroa.7.i = alloca [272 x i8], align 8 ; 6 uses
  %.sroa.826.i.sroa.8.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.826.i.sroa.9.i = alloca [272 x i8], align 8 ; 8 uses
  %i.cc = alloca [200 x i8], align 8              ; 9 uses
  %.sroa.8.i.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %i.cd = alloca [200 x i8], align 8              ; 11 uses
  %.sroa.786.i = alloca [32 x i8], align 16       ; 8 uses
  %.sroa.887.i = alloca [288 x i8], align 16      ; 6 uses
  %.sroa.18.sroa.6.i = alloca [32 x i8], align 8  ; 7 uses
  %.sroa.18.sroa.7.i = alloca [288 x i8], align 8 ; 7 uses
  %i.ce = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.3.sroa.3.i = alloca [32 x i8], align 8   ; 7 uses
  %.sroa.663.i = alloca [272 x i8], align 16      ; 6 uses
  %.sroa.859.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.960.i = alloca [272 x i8], align 16      ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 3128 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 8, !range !1864, !noundef !4
  switch i8 %i.cg, label %default.unreachable66 [
    i8 0, label %.thread67
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable66:                            ; preds = %bb.nc, %bb.ld, %bb.dp, %bb.dk, %bb.v, %bb.m, %bb.e, %bb.a
  unreachable

.thread67:                                        ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.ci = load ptr, ptr %i.ch, align 16, !nonnull !4, !align !344, !noundef !4
  %i.cj = load ptr, ptr %1, align 16, !nonnull !4, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !4
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1696
  store ptr %i.cj, ptr %.sroa.717.0..sroa_idx, align 16
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1704
  store i64 %i.cl, ptr %.sroa.818.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1720
  store ptr %i.ci, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1732
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1733
  store i24 65793, ptr %.sroa.13.0..sroa_idx, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.786.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.887.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.663.i)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1732
  br label %bb.f

.body12:                                          ; preds = %.body
  store i8 2, ptr %i.cf, align 8
  resume { ptr, i32 } %eh.lpad-body

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #36
end_hunk_6
begin_hunk_7_@_RNCNvNtCs7p2uQeJxui2_9deltalake5utils9walk_tree0B5_:bb.a
    i8 3, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.val.i.pre = load ptr, ptr %1, align 8, !alias.scope !9737, !noalias !9740
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !9737, !noalias !9740
  br label %bb.k

default.unreachable17:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !344, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !align !344, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.m = load i8, ptr %i.l, align 1, !range !101, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.e

_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.b
  %i.o = trunc nuw i8 %i.m to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = invoke { ptr, ptr } @_RINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_EB4_(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i1 noundef zeroext %i.o)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  store ptr %i.r, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.f, %bb.c
  %.pn11 = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !9743
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

.body:                                            ; preds = %bb.q, %bb.p, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit
  %.pn3 = phi { ptr, i32 } [ %.pn11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit ], [ %i.y, %bb.j ], [ %i.ak, %bb.p ], [ %i.ak, %bb.q ]
  store i8 2, ptr %i.d, align 8
  resume { ptr, i32 } %.pn3

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #36
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #36
  unreachable

bb.j:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8
  %.val7 = load ptr, ptr %i.z, align 8, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val6, ptr nonnull %.val7) #38
          to label %.body unwind label %bb.g

bb.k:                                             ; preds = %._crit_edge, %bb.d
  %.val1.i = phi ptr [ %.val1.i.pre, %._crit_edge ], [ %i.s, %bb.d ]
  %.val.i = phi ptr [ %.val.i.pre, %._crit_edge ], [ %i.r, %bb.d ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9737)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !4, !noalias !9748, !nonnull !4
  invoke void %i.ab(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #42
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit unwind label %bb.j, !inline_history !9749

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.k
  %i.ac = load i64, ptr %0, align 8, !range !3413, !noundef !4
  %i.ad = icmp eq i64 %i.ac, -9223372036854775789
  br i1 %i.ad, label %common.ret, label %bb.l

common.ret:                                       ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit, %bb.o, %bb.n
  %storemerge = phi i8 [ 1, %bb.o ], [ 1, %bb.n ], [ 3, %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

bb.l:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit
  %.val = load ptr, ptr %1, align 8               ; 5 uses
  %.val5 = load ptr, ptr %i.z, align 8, !nonnull !4, !align !344, !noundef !4 ; 5 uses
  %i.ae = load ptr, ptr %.val5, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ae(ptr noundef nonnull %.val)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !276, !invariant.load !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.ret, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !605, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #41
  br label %common.ret

bb.p:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !276, !invariant.load !4 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !605, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #41
  br label %.body
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !9755 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !9755 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !9755 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !9755 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !9750, !noalias !9753
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !9753, !noalias !9750
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !9750, !noalias !9753
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !9753, !noalias !9750
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtCsjyY8HP3IvQ6_12object_store6uploadINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB6_15MultipartUploadEL_EB1h_5abort0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !1864, !noundef !4
  switch i8 %i.d, label %default.unreachable12 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !9756, !noalias !9759
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert8, align 8, !alias.scope !9756, !noalias !9759
  br label %bb.g

default.unreachable12:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !align !344, !noundef !4 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !344, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !4, !nonnull !4
  %i.k = invoke { ptr, ptr } %i.j(ptr noundef nonnull %i.f)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.p, align 8
  br label %bb.g

.body:                                            ; preds = %bb.o, %bb.n, %bb.h, %bb.c
  %.pn2 = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.u, %bb.h ], [ %i.ad, %bb.n ], [ %i.ad, %bb.o ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #36
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #36
  unreachable

bb.g:                                             ; preds = %._crit_edge, %bb.d
  %.val1.i = phi ptr [ %.val1.i.pre, %._crit_edge ], [ %i.n, %bb.d ]
  %.val.i = phi ptr [ %.val.i.pre, %._crit_edge ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9756)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !4, !noalias !9762, !nonnull !4
  invoke void %i.t(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #42
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit unwind label %bb.h, !inline_history !6998

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.q, align 8
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !4, !align !344, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val, ptr nonnull %.val4) #38
          to label %.body unwind label %bb.p

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g
  %i.v = load i64, ptr %i.b, align 8, !range !3413, !noundef !4
  %i.w = icmp eq i64 %i.v, -9223372036854775789
  br i1 %i.w, label %bb.i, label %bb.j

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, %bb.i
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.i:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.q, align 8            ; 5 uses
  %.val6 = load ptr, ptr %i.r, align 8, !nonnull !4, !align !344, !noundef !4 ; 5 uses
  %i.x = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.x(ptr noundef nonnull %.val5)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !276, !invariant.load !4 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !605, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
end_hunk_7
begin_hunk_8_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler22___pymethod_copy_file__:bb.a
  %i.al = load i64, ptr %i.m, align 8, !range !3, !noundef !4
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.510, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  %i.ar = getelementptr i8, ptr %.sroa.016.0.copyload, i64 136
  %.val = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.016.0.copyload, i64 144
  %.val25 = load ptr, ptr %i.as, align 8          ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10578)
  call void @llvm.experimental.noalias.scope.decl(metadata !10581)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10583
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !10578, !noalias !10585, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !10578, !noalias !10585, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10586
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.aw)
          to label %.noexc.i unwind label %bb.t, !noalias !10583

.noexc.i:                                         ; preds = %bb.p
  %i.ax = load i64, ptr %i.f, align 8, !range !1365, !noalias !10586, !noundef !4
  %.not.i.i = icmp eq i64 %i.ax, -9223372036854775802
  br i1 %.not.i.i, label %.thread.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.r, !noalias !10583

.thread.i.i:                                      ; preds = %.noexc.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !10590
  br label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.q
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.u unwind label %bb.t, !noalias !10583

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.f) #38
          to label %.body.i unwind label %bb.s, !noalias !10591

bb.s:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10591
  unreachable

.body.i:                                          ; preds = %bb.aw, %bb.am, %.body24.i, %bb.t, %bb.r
  %.pn14.i = phi { ptr, i32 } [ %.pn.i, %.body24.i ], [ %i.az, %bb.r ], [ %i.ci, %bb.am ], [ %i.bb, %bb.t ], [ %i.cr, %bb.aw ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #38
          to label %.body41.i unwind label %bb.bc, !noalias !10592

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i36.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10583
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !10581, !noalias !10592, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !10581, !noalias !10592, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10593
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf)
          to label %.noexc22.i unwind label %bb.y, !noalias !10583

.noexc22.i:                                       ; preds = %bb.u
  %i.bg = load i64, ptr %i.e, align 8, !range !1365, !noalias !10593, !noundef !4
  %.not.i19.i = icmp eq i64 %i.bg, -9223372036854775802
  br i1 %.not.i19.i, label %.thread.i21.i, label %bb.v

bb.v:                                             ; preds = %.noexc22.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i20.i unwind label %bb.w, !noalias !10583

.thread.i21.i:                                    ; preds = %.noexc22.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !10597
  br label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i20.i: ; preds = %bb.v
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.z unwind label %bb.y, !noalias !10583

bb.w:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.e) #38
          to label %.body24.i unwind label %bb.x, !noalias !10598

bb.x:                                             ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10598
  unreachable

.body24.i:                                        ; preds = %bb.au, %bb.ak, %bb.ae, %bb.y, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.bt, %bb.ae ], [ %i.bi, %bb.w ], [ %i.cg, %bb.ak ], [ %i.bk, %bb.y ], [ %i.cp, %bb.au ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.k) #38
          to label %.body.i unwind label %bb.bc, !noalias !10583

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i48.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i20.i, %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i20.i, %.thread.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10583
  %i.bl = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc28.i unwind label %bb.ae, !noalias !10583

.noexc28.i:                                       ; preds = %bb.z
  store i32 %i.bl, ptr %i.d, align 4, !noalias !10583
  %i.bm = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !10599
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %.noexc28.i
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.ae, !noalias !10583

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.aa, %.noexc28.i
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !10583, !noundef !4 ; 2 uses
  store i32 %i.bo, ptr %i.c, align 4, !noalias !10583
  %i.bp = load i32, ptr %i.d, align 4, !noalias !10583, !noundef !4
  %.not.i27.i = icmp eq i32 %i.bp, %i.bo
  br i1 %.not.i27.i, label %bb.ab, label %bb.ad, !prof !5

bb.ab:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.bq = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !10583
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.af, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %bb.af unwind label %bb.ae, !noalias !10583

bb.ad:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10583
  store ptr %i.d, ptr %i.b, align 8, !noalias !10583
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !10583
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.bs, align 8, !noalias !10583
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !10583
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @370, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #36
          to label %.noexc31.i unwind label %bb.ae, !noalias !10583

.noexc31.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ai, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j) #38
          to label %.body24.i unwind label %bb.bc, !noalias !10583

bb.af:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10583
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val25) ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !605, !invariant.load !4, !noalias !10583
  %i.bw = add nsw i64 %i.bv, -1
  %i.bx = and i64 %i.bw, -16
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.val25, i64 160
  %i.cb = load ptr, ptr %i.ca, align 8, !invariant.load !4, !noalias !10583, !nonnull !4
  %i.cc = invoke { ptr, ptr } %i.cb(ptr noundef nonnull %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.ag unwind label %bb.ae, !noalias !10583 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312)
          to label %bb.ah unwind label %bb.ae, !noalias !10583

bb.ah:                                            ; preds = %bb.ag
  %i.cf = load i64, ptr %i.i, align 8, !range !9817, !noalias !10583, !noundef !4
  %.not.i.not = icmp eq i64 %i.cf, -9223372036854775790 ; 2 uses
  br i1 %.not.i.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !10583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10583
  store i64 -9223372036854775711, ptr %i.h, align 16, !noalias !10583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10583
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.h)
          to label %bb.at unwind label %bb.ae, !noalias !10583

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10583
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ak, !noalias !10583

bb.ak:                                            ; preds = %bb.aj
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body24.i unwind label %bb.al, !noalias !10583

bb.al:                                            ; preds = %bb.ak
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10583
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.y, !noalias !10583

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10583
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i36.i unwind label %bb.am, !noalias !10583

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.an, !noalias !10583

bb.an:                                            ; preds = %bb.am
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10583
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i36.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit40.i unwind label %bb.t, !noalias !10583

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit40.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10583
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ao, !noalias !10592

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit40.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body41.i unwind label %bb.ap, !noalias !10592

bb.ap:                                            ; preds = %bb.ao
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10592
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit40.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.aq, !noalias !10592

.body41.i:                                        ; preds = %bb.ay, %bb.aq, %bb.ao, %.body.i
  %.pn16.i = phi { ptr, i32 } [ %.pn14.i, %.body.i ], [ %i.ck, %bb.ao ], [ %i.cm, %bb.aq ], [ %i.ct, %bb.ay ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #38
          to label %.body unwind label %bb.bc, !noalias !10602

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i60.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit67.i unwind label %bb.ar, !noalias !10602

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.as, !noalias !10602

bb.as:                                            ; preds = %bb.ar
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10602
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit67.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit64.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler9copy_file.exit unwind label %.body27

bb.at:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !10603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10583
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i48.i unwind label %bb.au, !noalias !10583

bb.au:                                            ; preds = %bb.at
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body24.i unwind label %bb.av, !noalias !10583

bb.av:                                            ; preds = %bb.au
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10583
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i48.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit52.i unwind label %bb.y, !noalias !10583

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit52.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10583
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i unwind label %bb.aw, !noalias !10583

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit52.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.ax, !noalias !10583

bb.ax:                                            ; preds = %bb.aw
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10583
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit52.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit58.i unwind label %bb.t, !noalias !10583

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit58.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10583
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i60.i unwind label %bb.ay, !noalias !10592

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit58.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body41.i unwind label %bb.az, !noalias !10592

bb.az:                                            ; preds = %bb.ay
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10592
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i60.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit58.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit64.i unwind label %bb.aq, !noalias !10592

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit64.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i60.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit67.i unwind label %bb.ba, !noalias !10602

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit64.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.bb, !noalias !10602

end_hunk_8
begin_hunk_9_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler22___pymethod_move_file__:bb.a
  %i.al = load i64, ptr %i.m, align 8, !range !3, !noundef !4
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.510, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  %i.ar = getelementptr i8, ptr %.sroa.016.0.copyload, i64 136
  %.val = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.016.0.copyload, i64 144
  %.val25 = load ptr, ptr %i.as, align 8          ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10619)
  call void @llvm.experimental.noalias.scope.decl(metadata !10622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10624
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !10619, !noalias !10626, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !10619, !noalias !10626, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10627
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.aw)
          to label %.noexc.i unwind label %bb.t, !noalias !10624

.noexc.i:                                         ; preds = %bb.p
  %i.ax = load i64, ptr %i.f, align 8, !range !1365, !noalias !10627, !noundef !4
  %.not.i.i = icmp eq i64 %i.ax, -9223372036854775802
  br i1 %.not.i.i, label %.thread.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.r, !noalias !10624

.thread.i.i:                                      ; preds = %.noexc.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !10631
  br label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.q
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.u unwind label %bb.t, !noalias !10624

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.f) #38
          to label %.body.i unwind label %bb.s, !noalias !10632

bb.s:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10632
  unreachable

.body.i:                                          ; preds = %bb.aw, %bb.am, %.body24.i, %bb.t, %bb.r
  %.pn14.i = phi { ptr, i32 } [ %.pn.i, %.body24.i ], [ %i.az, %bb.r ], [ %i.ci, %bb.am ], [ %i.bb, %bb.t ], [ %i.cr, %bb.aw ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #38
          to label %.body41.i unwind label %bb.bc, !noalias !10633

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i36.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10624
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !10622, !noalias !10633, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !10622, !noalias !10633, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10634
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf)
          to label %.noexc22.i unwind label %bb.y, !noalias !10624

.noexc22.i:                                       ; preds = %bb.u
  %i.bg = load i64, ptr %i.e, align 8, !range !1365, !noalias !10634, !noundef !4
  %.not.i19.i = icmp eq i64 %i.bg, -9223372036854775802
  br i1 %.not.i19.i, label %.thread.i21.i, label %bb.v

bb.v:                                             ; preds = %.noexc22.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i20.i unwind label %bb.w, !noalias !10624

.thread.i21.i:                                    ; preds = %.noexc22.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !10638
  br label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i20.i: ; preds = %bb.v
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.z unwind label %bb.y, !noalias !10624

bb.w:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.e) #38
          to label %.body24.i unwind label %bb.x, !noalias !10639

bb.x:                                             ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10639
  unreachable

.body24.i:                                        ; preds = %bb.au, %bb.ak, %bb.ae, %bb.y, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.bt, %bb.ae ], [ %i.bi, %bb.w ], [ %i.cg, %bb.ak ], [ %i.bk, %bb.y ], [ %i.cp, %bb.au ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.k) #38
          to label %.body.i unwind label %bb.bc, !noalias !10624

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i48.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i20.i, %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i20.i, %.thread.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10624
  %i.bl = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc28.i unwind label %bb.ae, !noalias !10624

.noexc28.i:                                       ; preds = %bb.z
  store i32 %i.bl, ptr %i.d, align 4, !noalias !10624
  %i.bm = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !10640
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %.noexc28.i
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.ae, !noalias !10624

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.aa, %.noexc28.i
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !10624, !noundef !4 ; 2 uses
  store i32 %i.bo, ptr %i.c, align 4, !noalias !10624
  %i.bp = load i32, ptr %i.d, align 4, !noalias !10624, !noundef !4
  %.not.i27.i = icmp eq i32 %i.bp, %i.bo
  br i1 %.not.i27.i, label %bb.ab, label %bb.ad, !prof !5

bb.ab:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.bq = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !10624
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.af, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %bb.af unwind label %bb.ae, !noalias !10624

bb.ad:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10624
  store ptr %i.d, ptr %i.b, align 8, !noalias !10624
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !10624
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.bs, align 8, !noalias !10624
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !10624
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @370, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #36
          to label %.noexc31.i unwind label %bb.ae, !noalias !10624

.noexc31.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ai, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j) #38
          to label %.body24.i unwind label %bb.bc, !noalias !10624

bb.af:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10624
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val25) ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !605, !invariant.load !4, !noalias !10624
  %i.bw = add nsw i64 %i.bv, -1
  %i.bx = and i64 %i.bw, -16
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.val25, i64 168
  %i.cb = load ptr, ptr %i.ca, align 8, !invariant.load !4, !noalias !10624, !nonnull !4
  %i.cc = invoke { ptr, ptr } %i.cb(ptr noundef nonnull %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.ag unwind label %bb.ae, !noalias !10624 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313)
          to label %bb.ah unwind label %bb.ae, !noalias !10624

bb.ah:                                            ; preds = %bb.ag
  %i.cf = load i64, ptr %i.i, align 8, !range !9817, !noalias !10624, !noundef !4
  %.not.i.not = icmp eq i64 %i.cf, -9223372036854775790 ; 2 uses
  br i1 %.not.i.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !10624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10624
  store i64 -9223372036854775711, ptr %i.h, align 16, !noalias !10624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10624
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.h)
          to label %bb.at unwind label %bb.ae, !noalias !10624

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10624
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ak, !noalias !10624

bb.ak:                                            ; preds = %bb.aj
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body24.i unwind label %bb.al, !noalias !10624

bb.al:                                            ; preds = %bb.ak
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10624
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.y, !noalias !10624

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10624
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i36.i unwind label %bb.am, !noalias !10624

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.an, !noalias !10624

bb.an:                                            ; preds = %bb.am
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10624
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i36.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit40.i unwind label %bb.t, !noalias !10624

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit40.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10624
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ao, !noalias !10633

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit40.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body41.i unwind label %bb.ap, !noalias !10633

bb.ap:                                            ; preds = %bb.ao
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10633
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit40.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.aq, !noalias !10633

.body41.i:                                        ; preds = %bb.ay, %bb.aq, %bb.ao, %.body.i
  %.pn16.i = phi { ptr, i32 } [ %.pn14.i, %.body.i ], [ %i.ck, %bb.ao ], [ %i.cm, %bb.aq ], [ %i.ct, %bb.ay ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #38
          to label %.body unwind label %bb.bc, !noalias !10643

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i60.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit67.i unwind label %bb.ar, !noalias !10643

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.as, !noalias !10643

bb.as:                                            ; preds = %bb.ar
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10643
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit67.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit64.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler9move_file.exit unwind label %.body27

bb.at:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !10644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10624
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i48.i unwind label %bb.au, !noalias !10624

bb.au:                                            ; preds = %bb.at
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body24.i unwind label %bb.av, !noalias !10624

bb.av:                                            ; preds = %bb.au
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10624
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i48.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit52.i unwind label %bb.y, !noalias !10624

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit52.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10624
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i unwind label %bb.aw, !noalias !10624

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit52.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i unwind label %bb.ax, !noalias !10624

bb.ax:                                            ; preds = %bb.aw
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10624
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit52.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit58.i unwind label %bb.t, !noalias !10624

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit58.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10624
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i60.i unwind label %bb.ay, !noalias !10633

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit58.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body41.i unwind label %bb.az, !noalias !10633

bb.az:                                            ; preds = %bb.ay
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10633
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i60.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit58.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit64.i unwind label %bb.aq, !noalias !10633

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit64.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i60.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit67.i unwind label %bb.ba, !noalias !10643

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit64.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.bb, !noalias !10643

end_hunk_9
begin_hunk_10_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler23___pymethod_delete_dir__:bb.a
  %i.o = alloca [64 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr null, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @339, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.p, i64 noundef 1)
  %i.r = load i64, ptr %i.o, align 8, !range !3, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 1, ptr %0, align 8
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr null, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef align 8 dereferenceable(8) %i.n)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i, %bb.h, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ab, %bb.ag, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.bq, %bb.ag ], [ %i.bm, %bb.ab ], [ %.pn.i, %.body.i ]
  %i.w = load ptr, ptr %i.n, align 8, !alias.scope !10675, !noundef !4
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit unwind label %bb.aq

bb.f:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.m, align 8, !range !3, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.011.0.copyload = load ptr, ptr %i.aa, align 8 ; 3 uses
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.512.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.011.0.copyload, ptr %i.ab, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ao

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentNtNtCs6Po7BT7Nknu_5alloc6string6StringKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @337, i64 noundef 4)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.l, align 8, !range !3, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ao

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  %i.ag = getelementptr i8, ptr %.sroa.011.0.copyload, i64 136
  %.val = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ah = getelementptr i8, ptr %.sroa.011.0.copyload, i64 144
  %.val17 = load ptr, ptr %i.ah, align 8          ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10678)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10681
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !10678, !noalias !10683, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !10678, !noalias !10683, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10684
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.al)
          to label %.noexc.i unwind label %bb.o, !noalias !10681

.noexc.i:                                         ; preds = %bb.k
  %i.am = load i64, ptr %i.e, align 8, !range !1365, !noalias !10684, !noundef !4
  %.not.i.i = icmp eq i64 %i.am, -9223372036854775802
  br i1 %.not.i.i, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.m, !noalias !10681

.thread.i.i:                                      ; preds = %.noexc.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !10688
  br label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.l
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.p unwind label %bb.o, !noalias !10681

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.e) #38
          to label %.body.i unwind label %bb.n, !noalias !10689

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10689
  unreachable

.body.i:                                          ; preds = %bb.ae, %bb.z, %bb.u, %bb.o, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.az, %bb.u ], [ %i.ao, %bb.m ], [ %i.bk, %bb.z ], [ %i.aq, %bb.o ], [ %i.bo, %bb.ae ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #38
          to label %.body unwind label %bb.ai, !noalias !10683

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10681
  %i.ar = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc17.i unwind label %bb.u, !noalias !10681

.noexc17.i:                                       ; preds = %bb.p
  store i32 %i.ar, ptr %i.d, align 4, !noalias !10681
  %i.as = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !10690
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %.noexc17.i
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.u, !noalias !10681

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.q, %.noexc17.i
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !10681, !noundef !4 ; 2 uses
  store i32 %i.au, ptr %i.c, align 4, !noalias !10681
  %i.av = load i32, ptr %i.d, align 4, !noalias !10681, !noundef !4
  %.not.i16.i = icmp eq i32 %i.av, %i.au
  br i1 %.not.i16.i, label %bb.r, label %bb.t, !prof !5

bb.r:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.aw = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !10681
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.v, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %bb.v unwind label %bb.u, !noalias !10681

bb.t:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10681
  store ptr %i.d, ptr %i.b, align 8, !noalias !10681
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !10681
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ay, align 8, !noalias !10681
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !10681
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @370, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #36
          to label %.noexc20.i unwind label %bb.u, !noalias !10681

.noexc20.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.s, %bb.q, %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j) #38
          to label %.body.i unwind label %bb.ai, !noalias !10681

bb.v:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val17) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !605, !invariant.load !4, !noalias !10681
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = and i64 %i.bc, -16
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bf, ptr %i.h, align 8, !noalias !10681
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val17, ptr %i.bg, align 8, !noalias !10681
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.j, ptr %i.bh, align 8, !noalias !10681
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i8 0, ptr %i.bi, align 8, !noalias !10681
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir0EB19_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291)
          to label %bb.w unwind label %bb.u, !noalias !10681

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10681
  %i.bj = load i64, ptr %i.i, align 8, !range !9817, !noalias !10681, !noundef !4
  %.not.i.not = icmp eq i64 %i.bj, -9223372036854775790 ; 2 uses
  br i1 %.not.i.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !10681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10681
  store i64 -9223372036854775711, ptr %i.g, align 16, !noalias !10681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10681
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.g)
          to label %bb.ad unwind label %bb.u, !noalias !10681

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10681
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.z, !noalias !10681

bb.z:                                             ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.aa, !noalias !10681

bb.aa:                                            ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10681
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.o, !noalias !10681

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10681
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i unwind label %bb.ab, !noalias !10683

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.ac, !noalias !10683

bb.ac:                                            ; preds = %bb.ab
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10683
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler10delete_dir.exit unwind label %bb.d

bb.ad:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !10678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10681
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i unwind label %bb.ae, !noalias !10681

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.af, !noalias !10681

bb.af:                                            ; preds = %bb.ae
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10681
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i unwind label %bb.o, !noalias !10681

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10681
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i unwind label %bb.ag, !noalias !10683

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.ah, !noalias !10683

bb.ah:                                            ; preds = %bb.ag
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10683
  unreachable

bb.ai:                                            ; preds = %bb.u, %.body.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10683
  unreachable

_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler10delete_dir.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10693)
  call void @llvm.experimental.noalias.scope.decl(metadata !10696)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler10delete_dir.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, i64 56, i1 false), !alias.scope !10698
  br label %bb.al

bb.ak:                                            ; preds = %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler10delete_dir.exit
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #41, !noalias !10698
  store ptr @_Py_NoneStruct, ptr %i.bt, align 8, !alias.scope !10693, !noalias !10696
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %storemerge.i = phi i64 [ 0, %bb.ak ], [ 1, %bb.aj ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10693, !noalias !10696
  %i.bu = load ptr, ptr %i.n, align 8, !alias.scope !10699, !noundef !4
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.an

bb.an:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.ao:                                            ; preds = %bb.j, %bb.g
  %i.bw = load ptr, ptr %i.n, align 8, !alias.scope !10702, !noundef !4
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.an

bb.aq:                                            ; preds = %bb.e
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler23___pymethod_from_table__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.521.sroa.0.i = alloca [24 x i8], align 8 ; 3 uses
  %i.c = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.610.i.sroa.8 = alloca [40 x i8], align 8 ; 7 uses
  %i.d = alloca [88 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.1050.sroa.5 = alloca [40 x i8], align 8  ; 3 uses
  %i.g = alloca [200 x i8], align 8               ; 16 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.511 = alloca [56 x i8], align 8          ; 7 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.58 = alloca [56 x i8], align 8           ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 17 uses
  %i.l = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.942 = alloca [40 x i8], align 8          ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 11 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
end_hunk_10
begin_hunk_11_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler24___pymethod_delete_file__:bb.a
  %i.m = alloca [8 x i8], align 8                 ; 11 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr null, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @345, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.o, i64 noundef 1)
  %i.q = load i64, ptr %i.n, align 8, !range !3, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 1, ptr %0, align 8
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef align 8 dereferenceable(8) %i.m)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i, %bb.h, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ac, %bb.ah, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.br, %bb.ah ], [ %i.bn, %bb.ac ], [ %.pn.i, %.body.i ]
  %i.v = load ptr, ptr %i.m, align 8, !alias.scope !10769, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit unwind label %bb.ar

bb.f:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.l, align 8, !range !3, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.011.0.copyload = load ptr, ptr %i.z, align 8 ; 3 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.512.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.011.0.copyload, ptr %i.aa, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ap

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentNtNtCs6Po7BT7Nknu_5alloc6string6StringKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @337, i64 noundef 4)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.k, align 8, !range !3, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ap

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  %i.af = getelementptr i8, ptr %.sroa.011.0.copyload, i64 136
  %.val = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ag = getelementptr i8, ptr %.sroa.011.0.copyload, i64 144
  %.val17 = load ptr, ptr %i.ag, align 8          ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10775
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !10772, !noalias !10777, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !10772, !noalias !10777, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10778
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %.noexc.i unwind label %bb.o, !noalias !10775

.noexc.i:                                         ; preds = %bb.k
  %i.al = load i64, ptr %i.e, align 8, !range !1365, !noalias !10778, !noundef !4
  %.not.i.i = icmp eq i64 %i.al, -9223372036854775802
  br i1 %.not.i.i, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.m, !noalias !10775

.thread.i.i:                                      ; preds = %.noexc.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !10782
  br label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.l
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.p unwind label %bb.o, !noalias !10775

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.e) #38
          to label %.body.i unwind label %bb.n, !noalias !10783

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10783
  unreachable

.body.i:                                          ; preds = %bb.af, %bb.aa, %bb.u, %bb.o, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.ay, %bb.u ], [ %i.an, %bb.m ], [ %i.bl, %bb.aa ], [ %i.ap, %bb.o ], [ %i.bp, %bb.af ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #38
          to label %.body unwind label %bb.aj, !noalias !10777

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10775
  %i.aq = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc17.i unwind label %bb.u, !noalias !10775

.noexc17.i:                                       ; preds = %bb.p
  store i32 %i.aq, ptr %i.d, align 4, !noalias !10775
  %i.ar = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !10784
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.q, !prof !5

bb.q:                                             ; preds = %.noexc17.i
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.u, !noalias !10775

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.q, %.noexc17.i
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !10775, !noundef !4 ; 2 uses
  store i32 %i.at, ptr %i.c, align 4, !noalias !10775
  %i.au = load i32, ptr %i.d, align 4, !noalias !10775, !noundef !4
  %.not.i16.i = icmp eq i32 %i.au, %i.at
  br i1 %.not.i16.i, label %bb.r, label %bb.t, !prof !5

bb.r:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.av = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !10775
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.v, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %bb.v unwind label %bb.u, !noalias !10775

bb.t:                                             ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10775
  store ptr %i.d, ptr %i.b, align 8, !noalias !10775
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !10775
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ax, align 8, !noalias !10775
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !10775
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @370, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #36
          to label %.noexc20.i unwind label %bb.u, !noalias !10775

.noexc20.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.y, %bb.w, %bb.v, %bb.t, %bb.s, %bb.q, %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i) #38
          to label %.body.i unwind label %bb.aj, !noalias !10775

bb.v:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10775
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val17) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !605, !invariant.load !4, !noalias !10775
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.val17, i64 120
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !4, !noalias !10775, !nonnull !4
  %i.bh = invoke { ptr, ptr } %i.bg(ptr noundef nonnull %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.w unwind label %bb.u, !noalias !10775 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputINtNtB18_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB18_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noundef nonnull %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292)
          to label %bb.x unwind label %bb.u, !noalias !10775

bb.x:                                             ; preds = %bb.w
  %i.bk = load i64, ptr %i.h, align 8, !range !9817, !noalias !10775, !noundef !4
  %.not.i.not = icmp eq i64 %i.bk, -9223372036854775790 ; 2 uses
  br i1 %.not.i.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !10775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10775
  store i64 -9223372036854775711, ptr %i.g, align 16, !noalias !10775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10775
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.g)
          to label %bb.ae unwind label %bb.u, !noalias !10775

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10775
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.aa, !noalias !10775

bb.aa:                                            ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.ab, !noalias !10775

bb.ab:                                            ; preds = %bb.aa
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10775
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.o, !noalias !10775

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10775
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i unwind label %bb.ac, !noalias !10777

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.ad, !noalias !10777

bb.ad:                                            ; preds = %bb.ac
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10777
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler11delete_file.exit unwind label %bb.d

bb.ae:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !10772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10775
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i unwind label %bb.af, !noalias !10775

bb.af:                                            ; preds = %bb.ae
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.ag, !noalias !10775

bb.ag:                                            ; preds = %bb.af
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10775
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i unwind label %bb.o, !noalias !10775

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10775
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i unwind label %bb.ah, !noalias !10777

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake.exit29.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.ai, !noalias !10777

bb.ai:                                            ; preds = %bb.ah
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10777
  unreachable

bb.aj:                                            ; preds = %bb.u, %.body.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10777
  unreachable

_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler11delete_file.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit31.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10787)
  call void @llvm.experimental.noalias.scope.decl(metadata !10790)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler11delete_file.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3, i64 56, i1 false), !alias.scope !10792
  br label %bb.am

bb.al:                                            ; preds = %_RNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler11delete_file.exit
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #41, !noalias !10792
  store ptr @_Py_NoneStruct, ptr %i.bu, align 8, !alias.scope !10787, !noalias !10790
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %storemerge.i = phi i64 [ 0, %bb.al ], [ 1, %bb.ak ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10787, !noalias !10790
  %i.bv = load ptr, ptr %i.m, align 8, !alias.scope !10793, !noundef !4
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.ap:                                            ; preds = %bb.j, %bb.g
  %i.bx = load ptr, ptr %i.m, align 8, !alias.scope !10796, !noundef !4
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit20: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ao

bb.ar:                                            ; preds = %bb.e
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler26___pymethod_get_file_info__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [96 x i8], align 16               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 11 uses
  %i.k = alloca [96 x i8], align 16               ; 5 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [64 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [64 x i8], align 8                ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [64 x i8], align 8                ; 11 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
end_hunk_11
begin_hunk_12_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler35___pymethod_get_file_info_selector__:bb.a
  %i.bk = load i8, ptr %i.bj, align 1, !range !101, !noundef !4
  %i.bl = getelementptr i8, ptr %.sroa.021.0.copyload, i64 136
  %.val = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.bm = getelementptr i8, ptr %.sroa.021.0.copyload, i64 144
  %.val32 = load ptr, ptr %i.bm, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11055)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11058
  invoke void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 10)
          to label %bb.r unwind label %bb.q, !noalias !11058

bb.p:                                             ; preds = %bb.u, %bb.q
  %.pn254.i = phi { ptr, i32 } [ %i.bn, %bb.q ], [ %.pn252.i, %bb.u ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad) #38
          to label %.body36 unwind label %bb.ce, !noalias !11060

bb.q:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %i.bo = load i64, ptr %i.x, align 8, !range !3, !noalias !11058, !noundef !4
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.0146.0.copyload.i = load ptr, ptr %i.bq, align 8, !noalias !11058 ; 2 uses
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.5147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.15.16.copyload50 = load ptr, ptr %.sroa.5147.0..sroa_idx.i, align 8, !noalias !11055
  %.sroa.19.16..sroa.5147.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.19.16.copyload57 = load i64, ptr %.sroa.19.16..sroa.5147.0..sroa_idx.i.sroa_idx, align 8, !noalias !11055
  %.sroa.21.16..sroa.5147.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21.16..sroa.5147.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !11055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11058
  %i.br = ptrtoint ptr %.sroa.0146.0.copyload.i to i64
  br label %bb.co

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11058
  store ptr %.sroa.0146.0.copyload.i, ptr %i.y, align 8, !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11058
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 8)
          to label %bb.w unwind label %bb.v, !noalias !11058

bb.u:                                             ; preds = %.body.i, %bb.v
  %.pn252.i = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %.pn250.i, %.body.i ]
  %.val259.i = load ptr, ptr %i.y, align 8, !noalias !11058, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val259.i) #41, !noalias !11058
  br label %bb.p

bb.v:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  %i.bt = load i64, ptr %i.v, align 8, !range !3, !noalias !11058, !noundef !4
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0152.0.copyload.i = load ptr, ptr %i.bv, align 8, !noalias !11058 ; 2 uses
  br i1 %i.bu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.15.16.copyload = load ptr, ptr %.sroa.5153.0..sroa_idx.i, align 8, !noalias !11055
  %.sroa.19.16..sroa.5153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.19.16.copyload = load i64, ptr %.sroa.19.16..sroa.5153.0..sroa_idx.i.sroa_idx, align 8, !noalias !11055
  %.sroa.21.16..sroa.5153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.21.16..sroa.5153.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !11055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11058
  %i.bw = ptrtoint ptr %.sroa.0152.0.copyload.i to i64
  br label %bb.cl

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11058
  store ptr %.sroa.0152.0.copyload.i, ptr %i.w, align 8, !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11058
  store ptr %i.y, ptr %i.u, align 8, !noalias !11058
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.a, ptr %i.bx, align 8, !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11058
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !11055, !noalias !11060, !nonnull !4, !noundef !4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !11055, !noalias !11060, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11061
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.cb)
          to label %.noexc.i unwind label %bb.ac, !noalias !11058

.noexc.i:                                         ; preds = %bb.y
  %i.cc = load i64, ptr %i.f, align 8, !range !1365, !noalias !11061, !noundef !4
  %.not.i.i = icmp eq i64 %i.cc, -9223372036854775802
  br i1 %.not.i.i, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc.i
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.cb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.aa, !noalias !11058

.thread.i.i:                                      ; preds = %.noexc.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !11065
  br label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.z
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.ad unwind label %bb.ac, !noalias !11058

bb.aa:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.f) #38
          to label %.body.i unwind label %bb.ab, !noalias !11066

bb.ab:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11066
  unreachable

.body.i:                                          ; preds = %bb.bz, %bb.bu, %.body298.i, %bb.ac, %bb.aa
  %.pn250.i = phi { ptr, i32 } [ %.pn248.i, %.body298.i ], [ %i.ce, %bb.aa ], [ %i.fs, %bb.bu ], [ %i.cg, %bb.ac ], [ %i.fw, %bb.bz ]
  %.val262.i = load ptr, ptr %i.w, align 8, !noalias !11058, !nonnull !4, !noundef !4
  call void @_Py_DecRef(ptr noundef nonnull %.val262.i) #41, !noalias !11058
  br label %bb.u

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i292.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.y
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB14_5ErrorEECs7p2uQeJxui2_9deltalake.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11058
  %i.ch = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc265.i unwind label %bb.ai, !noalias !11058

.noexc265.i:                                      ; preds = %bb.ad
  store i32 %i.ch, ptr %i.e, align 4, !noalias !11058
  %i.ci = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !11067
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.ae, !prof !5

bb.ae:                                            ; preds = %.noexc265.i
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %bb.ai, !noalias !11058

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.ae, %.noexc265.i
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !11058, !noundef !4 ; 2 uses
  store i32 %i.ck, ptr %i.d, align 4, !noalias !11058
  %i.cl = load i32, ptr %i.e, align 4, !noalias !11058, !noundef !4
  %.not.i264.i = icmp eq i32 %i.cl, %i.ck
  br i1 %.not.i264.i, label %bb.af, label %bb.ah, !prof !5

bb.af:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.cm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !11058
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.aj, label %bb.ag, !prof !5

bb.ag:                                            ; preds = %bb.af
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %bb.aj unwind label %bb.ai, !noalias !11058

bb.ah:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11058
  store ptr %i.e, ptr %i.c, align 8, !noalias !11058
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !11058
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.co, align 8, !noalias !11058
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !11058
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @370, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #36
          to label %.noexc268.i unwind label %bb.ai, !noalias !11058

.noexc268.i:                                      ; preds = %bb.ah
  unreachable

.body298.i:                                       ; preds = %bb.cn, %bb.cm, %.thread19.thread.i, %.thread19.i, %bb.cb, %bb.bp, %.thread33.i, %.body272.i, %bb.ai
  %.pn248.i = phi { ptr, i32 } [ %i.eo, %.thread19.i ], [ %.pn246.i, %bb.cm ], [ %.pn246.i, %bb.cn ], [ %.pn246.i, %.body272.i ], [ %.pn2439.i, %.thread19.thread.i ], [ %i.cp, %bb.ai ], [ %i.fy, %bb.cb ], [ %lpad.thr_comm.i, %.thread33.i ], [ %i.fk, %bb.bp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.t) #38
          to label %.body.i unwind label %bb.ce, !noalias !11058

bb.ai:                                            ; preds = %bb.ck, %bb.cc, %bb.al, %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body298.i

bb.aj:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11058
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val32) ]
  %i.cq = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !11058
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.val, ptr %i.cs, align 8, !alias.scope !11070, !noalias !11073
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %.val32, ptr %i.ct, align 8, !alias.scope !11070, !noalias !11073
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.t, ptr %i.cu, align 8, !alias.scope !11070, !noalias !11073
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 41
  store i8 %i.bk, ptr %i.cv, align 1, !alias.scope !11070, !noalias !11073
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i8 0, ptr %i.cw, align 8, !alias.scope !11070, !noalias !11073
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtCs7p2uQeJxui2_9deltalake5utils9walk_tree0EB19_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.r, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311)
          to label %bb.am unwind label %bb.ai, !noalias !11058

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11058
  %i.cx = load i64, ptr %i.r, align 8, !range !9817, !noalias !11058, !noundef !4 ; 4 uses
  %.not.i = icmp eq i64 %i.cx, -9223372036854775790
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = icmp ne i64 %i.cx, -9223372036854775800
  call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp eq i64 %i.cx, -9223372036854775801
  br i1 %i.cz, label %bb.aq, label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.055.0.copyload.i = load i64, ptr %i.da, align 8, !noalias !11058
  %.sroa.256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.256.0.copyload.i = load ptr, ptr %.sroa.256.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.db = load <2 x i64>, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.457.sroa.2.0..sroa.457.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.457.sroa.2.0.copyload.i = load ptr, ptr %.sroa.457.sroa.2.0..sroa.457.0..sroa_idx.sroa_idx.i, align 8, !noalias !11058
  %.sroa.457.sroa.3.0..sroa.457.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.457.sroa.3.0.copyload.i = load i64, ptr %.sroa.457.sroa.3.0..sroa.457.0..sroa_idx.sroa_idx.i, align 8, !noalias !11058
  br label %bb.ap

bb.ap:                                            ; preds = %.thread.i, %bb.ao
  %i.dc = phi i64 [ %.pre.i, %.thread.i ], [ -9223372036854775790, %bb.ao ] ; 3 uses
  %.sroa.929.sroa.11.sroa.10.0.i = phi i64 [ 0, %.thread.i ], [ %.sroa.457.sroa.3.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.11.sroa.9.0.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i ], [ %.sroa.457.sroa.2.0.copyload.i, %bb.ao ]
  %.sroa.929.sroa.9.0.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i ], [ %.sroa.256.0.copyload.i, %bb.ao ] ; 3 uses
  %.sroa.929.sroa.0.0.i = phi i64 [ 0, %.thread.i ], [ %.sroa.055.0.copyload.i, %bb.ao ] ; 3 uses
  %i.dd = phi <2 x i64> [ zeroinitializer, %.thread.i ], [ %i.db, %bb.ao ] ; 2 uses
  store i64 %.sroa.929.sroa.0.0.i, ptr %i.s, align 8, !noalias !11058
  %.sroa.4193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %.sroa.929.sroa.9.0.i, ptr %.sroa.4193.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.5194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx195.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 5 uses
  store <2 x i64> %i.dd, ptr %.sroa.5194.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.7196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %.sroa.929.sroa.11.sroa.9.0.i, ptr %.sroa.7196.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.8197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  store i64 %.sroa.929.sroa.11.sroa.10.0.i, ptr %.sroa.8197.0..sroa_idx.i, align 8, !noalias !11058
  %.not244.i = icmp eq i64 %i.dc, -9223372036854775790
  %i.de = extractelement <2 x i64> %i.dd, i64 0   ; 2 uses
  br i1 %.not244.i, label %bb.bc, label %bb.bd

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11058
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !noalias !11058
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !11058, !nonnull !4, !noundef !4 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !11058, !nonnull !4, !align !344, !noundef !4 ; 6 uses
  br i1 %i.be, label %bb.as, label %bb.ay

bb.ar:                                            ; preds = %bb.an
  %.sroa.282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.282.0.copyload.i = load i64, ptr %.sroa.282.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.383.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.383.0.copyload.i = load ptr, ptr %.sroa.383.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.484.0.copyload.i = load i64, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.585.0.copyload.i = load i64, ptr %.sroa.585.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.686.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.686.0.copyload.i = load ptr, ptr %.sroa.686.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.787.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.787.0.copyload.i = load i64, ptr %.sroa.787.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.888.0..sroa_idx.i, i64 16, i1 false), !noalias !11058
  %i.dk = inttoptr i64 %.sroa.585.0.copyload.i to ptr
  br label %bb.cg

bb.as:                                            ; preds = %bb.aq
  %i.dl = load ptr, ptr %i.dj, align 8, !invariant.load !4, !noalias !11058 ; 2 uses
  %.not.i269.i = icmp eq ptr %i.dl, null
  br i1 %.not.i269.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void %i.dl(ptr noundef nonnull %i.dh)
          to label %bb.au unwind label %bb.aw, !noalias !11058

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !276, !invariant.load !4, !noalias !11058 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !605, !invariant.load !4, !noalias !11058
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dh, i64 noundef range(i64 1, 0) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #41, !noalias !11058
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.aw:                                            ; preds = %bb.at
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !276, !invariant.load !4, !noalias !11058 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.body270.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !605, !invariant.load !4, !noalias !11058
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dh, i64 noundef range(i64 1, 0) %i.dt, i64 noundef range(i64 1, 536870913) %i.dw) #41, !noalias !11058
  br label %.body270.i

bb.ay:                                            ; preds = %bb.aq
  %.sroa.078.0.copyload.i = load i64, ptr %i.p, align 8, !noalias !11058
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.479.0.copyload.i = load ptr, ptr %.sroa.479.0..sroa_idx.i, align 8, !noalias !11058
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.580.0.copyload.i = load i64, ptr %.sroa.580.0..sroa_idx.i, align 8, !noalias !11058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11058
  br label %bb.cg

.body270.i:                                       ; preds = %bb.ax, %bb.aw
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #38
          to label %.body272.i unwind label %bb.ce, !noalias !11058

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.av, %bb.au
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.az, !noalias !11058

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body272.i unwind label %bb.ba, !noalias !11058

bb.ba:                                            ; preds = %bb.az
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11058
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread.i unwind label %bb.bb, !noalias !11058

.thread.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11058
  %.pre.i = load i64, ptr %i.r, align 8, !range !9817, !noalias !11058
  br label %bb.ap

.body272.i:                                       ; preds = %bb.bb, %bb.az, %.body270.i
  %.sroa.0139.0.i = phi i1 [ true, %.body270.i ], [ %i.ec, %bb.bb ], [ true, %bb.az ]
  %.pn246.i = phi { ptr, i32 } [ %i.dr, %.body270.i ], [ %i.eb, %bb.bb ], [ %i.dx, %bb.az ] ; 3 uses
  %i.dz = load i64, ptr %i.r, align 8, !range !9817, !noalias !11058, !noundef !4 ; 3 uses
  %i.ea = icmp ne i64 %i.dz, -9223372036854775790
  %or.cond5.i = select i1 %i.ea, i1 %.sroa.0139.0.i, i1 false
  br i1 %or.cond5.i, label %bb.cm, label %.body298.i

bb.bb:                                            ; preds = %bb.cg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.0139.1.i = phi i8 [ %.sroa.0139.2.i, %bb.cg ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = trunc nuw i8 %.sroa.0139.1.i to i1
  br label %.body272.i

bb.bc:                                            ; preds = %._crit_edge.i, %bb.bd, %bb.ap
  %i.ed = phi i64 [ %.pre47.i, %._crit_edge.i ], [ %i.de, %bb.bd ], [ %i.de, %bb.ap ] ; 2 uses
  %i.ee = phi i64 [ %.pre46.i, %._crit_edge.i ], [ %.sroa.929.sroa.0.0.i, %bb.bd ], [ %.sroa.929.sroa.0.0.i, %bb.ap ]
  %i.ef = phi ptr [ %.pre45.i, %._crit_edge.i ], [ %.sroa.929.sroa.9.0.i, %bb.bd ], [ %.sroa.929.sroa.9.0.i, %bb.ap ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11058
  store i64 0, ptr %i.o, align 8, !noalias !11058
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.eg, align 8, !noalias !11058
  %i.eh = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.eh, align 8, !noalias !11058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11058
  %i.ei = icmp ult i64 %i.ed, 384307168202282326
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.ef, ptr %i.m, align 8, !noalias !11058
end_hunk_12
begin_hunk_13_@_RNvNvNvXsh_NtCs7p2uQeJxui2_9deltalake10filesystemINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_22DeltaFileSystemHandlerEINtBO_9PyMethodsB1L_E10py_methods5ITEMSsc_10trampoline:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit125.i.i: ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ee = load ptr, ptr %i.aa, align 8, !alias.scope !11399, !noalias !11361, !noundef !4
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit125.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.bm, !noalias !11359

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i: ; preds = %bb.bq, %bb.bp, %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.pn114.i.i = phi { ptr, i32 } [ %i.eg, %bb.bm ], [ %.pn110.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.pn112148.i.i, %bb.bq ], [ %.pn112148.i.i, %bb.bp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #38
          to label %.body8 unwind label %bb.ax, !noalias !11359

bb.bm:                                            ; preds = %bb.bl
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit125.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.thread.i unwind label %bb.bn, !noalias !11359

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.thread.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.noexc6 unwind label %bb.bz

.noexc6:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !11339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !11339
  br label %bb.br

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body8 unwind label %bb.bo, !noalias !11359

bb.bo:                                            ; preds = %bb.bn
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11359
  unreachable

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.thread.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.pn112148.i.i = phi { ptr, i32 } [ %i.ed, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ %.pn110.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %i.ej = load ptr, ptr %i.aa, align 8, !alias.scope !11402, !noalias !11361, !noundef !4
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i unwind label %bb.ax, !noalias !11359

bb.br:                                            ; preds = %.noexc6, %.noexc5
  %.sroa.636.i.sroa.9.1 = phi ptr [ %.sroa.636.i.sroa.9.0, %.noexc6 ], [ %.sroa.636.i.sroa.9.0.copyload40, %.noexc5 ]
  %.sroa.636.i.sroa.8.1 = phi ptr [ %.sroa.636.i.sroa.8.0, %.noexc6 ], [ %.sroa.636.i.sroa.8.0.copyload34, %.noexc5 ]
  %.sroa.636.i.sroa.0.1 = phi ptr [ %.sroa.636.i.sroa.0.0, %.noexc6 ], [ %.sroa.636.i.sroa.0.0.copyload29, %.noexc5 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10, i64 32, i1 false), !noalias !11336
  br label %.invoke.i.sink.split

bb.bs:                                            ; preds = %.noexc5
  %.sroa.8.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx13.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false), !noalias !11339
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx13.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx13.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.551.sroa.0.i.i, i64 24, i1 false), !noalias !11339
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx13.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx13.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.i, i64 48, i1 false), !noalias !11339
  store i64 %.sroa.0.0.copyload35.i, ptr %i.w, align 8, !noalias !11339
  %.sroa.6.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.636.i.sroa.0.0.copyload29, ptr %.sroa.6.0..sroa_idx12.i, align 8, !noalias !11339
  %.sroa.636.i.sroa.8.0..sroa.6.0..sroa_idx12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %.sroa.636.i.sroa.8.0.copyload34, ptr %.sroa.636.i.sroa.8.0..sroa.6.0..sroa_idx12.i.sroa_idx, align 8, !noalias !11339
  %.sroa.636.i.sroa.9.0..sroa.6.0..sroa_idx12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %.sroa.636.i.sroa.9.0.copyload40, ptr %.sroa.636.i.sroa.9.0..sroa.6.0..sroa_idx12.i.sroa_idx, align 8, !noalias !11339
  %.sroa.636.i.sroa.10.0..sroa.6.0..sroa_idx12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10.0..sroa.6.0..sroa_idx12.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10, i64 32, i1 false), !noalias !11339
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr %.sroa.049.0.i.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i, align 8, !noalias !11339
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx13.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store i64 %.sroa.551.sroa.5.0.i.i, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx13.sroa_idx.i, align 8, !noalias !11339
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx13.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  store i64 %.sroa.551.sroa.6.0.i.i, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx13.sroa_idx.i, align 8, !noalias !11339
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx13.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  store ptr %i.dj, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx13.sroa_idx.i, align 8, !noalias !11339
  %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx13.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  store ptr %i.dk, ptr %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx13.sroa_idx.i, align 8, !noalias !11339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11339
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerE27create_class_object_of_typeB15_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.w, ptr noundef %0)
          to label %.noexc7 unwind label %bb.bz

.noexc7:                                          ; preds = %bb.bs
  %i.el = load i64, ptr %i.v, align 8, !range !3, !noalias !11339, !noundef !4
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.9.8.copyload10 = load ptr, ptr %i.en, align 8, !noalias !11336 ; 2 uses
  br i1 %i.em, label %.thread88, label %bb.cb

.thread88:                                        ; preds = %.noexc7
  %.sroa.17.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.17.8.copyload15 = load ptr, ptr %.sroa.17.8..sroa_idx, align 8, !noalias !11336
  %.sroa.18.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.18.8.copyload21 = load ptr, ptr %.sroa.18.8..sroa_idx, align 8, !noalias !11336
  %.sroa.19.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.8..sroa_idx, i64 32, i1 false), !noalias !11336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11339
  br label %.invoke.i.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.m, %bb.l, %bb.i
  %.sroa.18.1 = phi ptr [ %.sroa.55.i.sroa.8.0.copyload, %bb.i ], [ %.sroa.58.i.sroa.8.0.copyload, %bb.l ], [ %.sroa.58.i.sroa.8.0.copyload, %bb.m ]
  %.sroa.17.1 = phi ptr [ %.sroa.55.i.sroa.7.0.copyload, %bb.i ], [ %.sroa.58.i.sroa.7.0.copyload, %bb.l ], [ %.sroa.58.i.sroa.7.0.copyload, %bb.m ]
  %.sroa.9.1 = phi ptr [ %.sroa.55.i.sroa.0.0.copyload, %bb.i ], [ %.sroa.58.i.sroa.0.0.copyload, %bb.l ], [ %.sroa.58.i.sroa.0.0.copyload, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !11339
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bt, !noalias !11339

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body8 unwind label %bb.bu, !noalias !11339

bb.bu:                                            ; preds = %bb.bt
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11339
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.noexc9 unwind label %bb.bz

bb.bv:                                            ; preds = %bb.j
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer        ; 2 uses
  %i.er = load ptr, ptr %i.aa, align 8, !alias.scope !11405, !noalias !11339, !noundef !4
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %bb.by unwind label %bb.bx, !noalias !11339

bb.bx:                                            ; preds = %bb.by, %bb.bw
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11339
  unreachable

.noexc9:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %bb.e
  %.sroa.18.2 = phi ptr [ %.sroa.5.i.sroa.8.0.copyload, %bb.e ], [ %.sroa.18.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.17.2 = phi ptr [ %.sroa.5.i.sroa.7.0.copyload, %bb.e ], [ %.sroa.17.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.9.2 = phi ptr [ %.sroa.5.i.sroa.0.0.copyload, %bb.e ], [ %.sroa.9.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !11339
  br label %.invoke.i.sink.split

bb.by:                                            ; preds = %bb.bw, %bb.bv, %bb.g
  %.pn.ph.i = phi { ptr, i32 } [ %i.au, %bb.g ], [ %i.eq, %bb.bw ], [ %i.eq, %bb.bv ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #38
          to label %.body8 unwind label %bb.bx, !noalias !11339

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %bb.bs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.thread.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.i, %bb.d, %bb.b
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  br label %.body8

.body8:                                           ; preds = %bb.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i, %bb.bn, %bb.bt, %bb.by, %bb.bz
  %eh.lpad-body = phi { ptr, i32 } [ %i.eu, %bb.bz ], [ %i.eo, %bb.bt ], [ %.pn.ph.i, %bb.by ], [ %.pn114.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i ], [ %i.eh, %bb.bn ], [ %i.dq, %bb.av ]
  %i.ev = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ew = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ev)
          to label %bb.cc unwind label %bb.ca, !noalias !11336 ; 2 uses

bb.ca:                                            ; preds = %.body8
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39, !noalias !11336
  unreachable

bb.cb:                                            ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11339
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.551.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.636.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11336
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i

bb.cc:                                            ; preds = %.body8
  %i.ey = extractvalue { ptr, ptr } %i.ew, 0      ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ew, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey), "nonnull"(ptr %i.ez) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11336
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.af, ptr noundef nonnull %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ez)
          to label %.invoke.i unwind label %bb.cd, !noalias !11336

.invoke.i.sink.split:                             ; preds = %bb.br, %.noexc9, %bb.c, %.thread88
  %.sroa.9.8.copyload10.sink = phi ptr [ %.sroa.9.8.copyload10, %.thread88 ], [ %.sroa.636.i.sroa.0.1, %bb.br ], [ %.sroa.9.2, %.noexc9 ], [ %.sroa.9.8.copyload14, %bb.c ]
  %.sroa.17.8.copyload15.sink = phi ptr [ %.sroa.17.8.copyload15, %.thread88 ], [ %.sroa.636.i.sroa.8.1, %bb.br ], [ %.sroa.17.2, %.noexc9 ], [ %.sroa.17.8.copyload20, %bb.c ]
  %.sroa.18.8.copyload21.sink = phi ptr [ %.sroa.18.8.copyload21, %.thread88 ], [ %.sroa.636.i.sroa.9.1, %bb.br ], [ %.sroa.18.2, %.noexc9 ], [ %.sroa.18.8.copyload26, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11339
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.551.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.636.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  %.sroa.737.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.737.0..sroa_idx.i93, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19, i64 32, i1 false), !noalias !11336
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  store ptr inttoptr (i64 1 to ptr), ptr %i.ag, align 8, !noalias !11336
  %.sroa.434.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %.sroa.9.8.copyload10.sink, ptr %.sroa.434.0..sroa_idx.i94, align 8, !noalias !11336
  %.sroa.535.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %.sroa.17.8.copyload15.sink, ptr %.sroa.535.0..sroa_idx.i95, align 8, !noalias !11336
  %.sroa.636.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %.sroa.18.8.copyload21.sink, ptr %.sroa.636.0..sroa_idx.i96, align 8, !noalias !11336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11336
  br label %.invoke.i

.invoke.i:                                        ; preds = %.invoke.i.sink.split, %bb.cc
  %i.fa = phi ptr [ %i.af, %bb.cc ], [ %.sroa.434.0..sroa_idx.i94, %.invoke.i.sink.split ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.fa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i unwind label %bb.cd, !noalias !11336

bb.cd:                                            ; preds = %.invoke.i, %bb.cc
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ah)
          to label %.thread.i unwind label %bb.ce, !noalias !11336

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i: ; preds = %bb.cb, %.invoke.i
  %.sroa.0.0.i.i = phi ptr [ null, %.invoke.i ], [ %.sroa.9.8.copyload10, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11336
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ah)
          to label %bb.cg unwind label %bb.cf

bb.ce:                                            ; preds = %.thread.i, %bb.cd
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11336
  unreachable

.thread.i:                                        ; preds = %bb.cd, %.thread49.i
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %.body unwind label %bb.ce, !noalias !11336

bb.cf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.cf
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11336
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsw_NtCs7p2uQeJxui2_9deltalake10filesystemINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_15ObjectInputFileEINtBO_9PyMethodsB1L_E10py_methods5ITEMS10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMsx_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFile18___pymethod_close__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsw_NtCs7p2uQeJxui2_9deltalake10filesystemINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_15ObjectInputFileEINtBO_9PyMethodsB1L_E10py_methods5ITEMSs0_10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMsx_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFile21___pymethod_readable__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsw_NtCs7p2uQeJxui2_9deltalake10filesystemINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_15ObjectInputFileEINtBO_9PyMethodsB1L_E10py_methods5ITEMSs1_10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMsx_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFile21___pymethod_seekable__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsw_NtCs7p2uQeJxui2_9deltalake10filesystemINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_15ObjectInputFileEINtBO_9PyMethodsB1L_E10py_methods5ITEMSs2_10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMsx_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFile21___pymethod_writable__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsw_NtCs7p2uQeJxui2_9deltalake10filesystemINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_15ObjectInputFileEINtBO_9PyMethodsB1L_E10py_methods5ITEMSs3_10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMsx_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFile17___pymethod_tell__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #39
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsw_NtCs7p2uQeJxui2_9deltalake10filesystemINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_15ObjectInputFileEINtBO_9PyMethodsB1L_E10py_methods5ITEMSs4_10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMsx_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_15ObjectInputFile17___pymethod_size__, ptr %i.a, align 8
end_hunk_13
begin_hunk_14_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext15create_function0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit111.i: ; preds = %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13348
  br label %bb.au

bb.bk:                                            ; preds = %bb.bc
  %.sroa.10178.0..sroa_idx179.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3183.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10178.0..sroa_idx179.i, i64 24, i1 false), !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13348
  call void @llvm.experimental.noalias.scope.decl(metadata !13421)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.em, ptr %i.ew, align 8, !alias.scope !13424, !noalias !13348
  %.sroa.2182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.eo, ptr %.sroa.2182.0..sroa_idx.i, align 16, !alias.scope !13424, !noalias !13348
  store i64 36, ptr %i.b, align 16, !alias.scope !13426, !noalias !13427
  %i.ex = cmpxchg ptr %i.eb, i64 8, i64 0 release monotonic, align 8, !noalias !13345
  %.sroa.18.0.in.i.i.i.i112.i = extractvalue { i64, i1 } %i.ex, 1
  br i1 %.sroa.18.0.in.i.i.i.i112.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit114.i, label %bb.bl, !prof !5

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.eb, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit114.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit108.thread215.i, !noalias !13345

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit114.i: ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13348
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit108.thread215.i, %bb.bh, %bb.bg
  %.pn38213.ph.i = phi { ptr, i32 } [ %i.ev, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit108.thread215.i ], [ %.pn36.i, %bb.bg ], [ %.pn36.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13348
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit108.thread.i
  %.pn38213.i = phi { ptr, i32 } [ %i.ef, %bb.bm ], [ %i.ef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit108.thread.i ], [ %.pn38213.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13348
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit108.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.u, !noalias !13345

bb.bn:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13348
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  store ptr %.sroa.4.0.copyload.i, ptr %i.f, align 8, !noalias !13348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13348
  %i.ey = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !13348, !nonnull !4, !align !344, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %.val60.i = load ptr, ptr %i.fa, align 8, !noalias !13345, !nonnull !4, !noundef !4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val60.i, i64 16 ; 8 uses
  %i.fc = cmpxchg weak ptr %i.fb, i64 0, i64 8 acquire monotonic, align 8, !noalias !13345
  %i.fd = extractvalue { i64, i1 } %i.fc, 1
  br i1 %i.fd, label %bb.bp, label %bb.bo, !prof !5

bb.bo:                                            ; preds = %bb.bn
  %i.fe = invoke noundef zeroext i1 @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.fb, i64 undef, i32 noundef 1000000000)
          to label %bb.bp unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread.i, !noalias !13345 ; 0 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread.i: ; preds = %bb.bo
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13348
  call void @llvm.experimental.noalias.scope.decl(metadata !13428)
  call void @llvm.experimental.noalias.scope.decl(metadata !13431)
  %i.fg = load ptr, ptr %i.f, align 8, !alias.scope !13434, !noalias !13348, !nonnull !4, !noundef !4
  %i.fh = atomicrmw sub ptr %i.fg, i64 1 release, align 8, !noalias !13435
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.i

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.fj = getelementptr inbounds nuw i8, ptr %.val60.i, i64 24
  %i.fk = load ptr, ptr %i.f, align 8, !noalias !13348, !nonnull !4, !noundef !4
  invoke void @_RNvXs5_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8VI8w5SIoU4_15datafusion_expr8registry16FunctionRegistry13register_udwf(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.fj, ptr noundef nonnull %i.fk)
          to label %bb.br unwind label %bb.bq, !noalias !13345

bb.bq:                                            ; preds = %bb.bp
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13348
  br label %bb.bv

bb.br:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !13436)
  %i.fm = load i64, ptr %i.d, align 8, !range !403, !alias.scope !13439, !noalias !13441, !noundef !4 ; 2 uses
  %.not.i118.i = icmp eq i64 %i.fm, 20
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !13442, !noalias !13348 ; 4 uses
  br i1 %.not.i118.i, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13348
  store ptr %i.fo, ptr %i.e, align 8, !noalias !13348
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fq = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !13443
  %i.fr = icmp eq i64 %i.fq, 1
  br i1 %i.fr, label %bb.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs7p2uQeJxui2_9deltalake.exit.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bx, !noalias !13345

bb.bv:                                            ; preds = %bb.bx, %bb.bq
  %.pn27.i = phi { ptr, i32 } [ %i.ft, %bb.bx ], [ %i.fl, %bb.bq ] ; 2 uses
  %i.fs = cmpxchg ptr %i.fb, i64 8, i64 0 release monotonic, align 8, !noalias !13345
  %.sroa.18.0.in.i.i.i.i120.i = extractvalue { i64, i1 } %i.fs, 1
  br i1 %.sroa.18.0.in.i.i.i.i120.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i, label %bb.bw, !prof !5

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.fb, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i unwind label %bb.u, !noalias !13345

bb.bx:                                            ; preds = %bb.bu
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.fu = cmpxchg ptr %i.fb, i64 8, i64 0 release monotonic, align 8, !noalias !13345
  %.sroa.18.0.in.i.i.i.i123.i = extractvalue { i64, i1 } %i.fu, 1
  br i1 %.sroa.18.0.in.i.i.i.i123.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit125.i, label %bb.by, !prof !5

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.fb, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit125.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread226.i, !noalias !13345

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread226.i: ; preds = %bb.ca, %bb.by
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit125.i: ; preds = %bb.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13348
  br label %bb.au

bb.bz:                                            ; preds = %bb.br
  %.sroa.10189.0..sroa_idx190.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3194.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10189.0..sroa_idx190.i, i64 24, i1 false), !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13348
  call void @llvm.experimental.noalias.scope.decl(metadata !13450)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.fm, ptr %i.fw, align 8, !alias.scope !13453, !noalias !13348
  %.sroa.2193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fo, ptr %.sroa.2193.0..sroa_idx.i, align 16, !alias.scope !13453, !noalias !13348
  store i64 36, ptr %i.b, align 16, !alias.scope !13455, !noalias !13456
  %i.fx = cmpxchg ptr %i.fb, i64 8, i64 0 release monotonic, align 8, !noalias !13345
  %.sroa.18.0.in.i.i.i.i126.i = extractvalue { i64, i1 } %i.fx, 1
  br i1 %.sroa.18.0.in.i.i.i.i126.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit128.i, label %bb.ca, !prof !5

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.fb, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit128.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread226.i, !noalias !13345

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit128.i: ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13348
  br label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit128.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit114.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit100.i, %bb.t
  %i.fy = getelementptr inbounds nuw i8, ptr %.val, i64 2001 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !range !101, !noalias !13348, !noundef !4
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.cn, label %bb.cm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread226.i, %bb.bw, %bb.bv
  %.pn29224.ph.i = phi { ptr, i32 } [ %i.fv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread226.i ], [ %.pn27.i, %bb.bv ], [ %.pn27.i, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13348
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread.i
  %.pn29224.i = phi { ptr, i32 } [ %i.ff, %bb.cc ], [ %i.ff, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread.i ], [ %.pn29224.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13348
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit122.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.u, !noalias !13345

bb.cd:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13348
  store i64 %.sroa.2.0.copyload.i, ptr %i.c, align 8, !noalias !13348
  %.sroa.3.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa_idx4.i, align 8, !noalias !13348
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx8.i, align 8, !noalias !13348
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8154.0.copyload.i), "nonnull"(ptr %.sroa.10.0.copyload.i) ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !13348, !nonnull !4, !align !344, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext13register_udtf(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, ptr noundef nonnull %.sroa.8154.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.10.0.copyload.i)
          to label %bb.ce unwind label %bb.ck, !noalias !13345

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.cf, !noalias !13345

bb.cf:                                            ; preds = %bb.ce
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body130.i unwind label %bb.cg, !noalias !13345

bb.cg:                                            ; preds = %bb.cf
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !13345
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ch, !noalias !13345

.body130.i:                                       ; preds = %bb.ck, %bb.ch, %bb.cf
  %.pn20.i = phi { ptr, i32 } [ %i.gh, %bb.ck ], [ %i.gf, %bb.ch ], [ %i.gd, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13348
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13348
  br label %bb.au

bb.ci:                                            ; preds = %bb.au
  %i.gg = getelementptr inbounds nuw i8, ptr %.val, i64 2001
  store i8 0, ptr %i.gg, align 1, !noalias !13348
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cm, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %0, ptr noundef nonnull align 16 dereferenceable(336) %i.b, i64 336, i1 false), !noalias !13369
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext15create_function0Cs7p2uQeJxui2_9deltalake.exit

bb.ck:                                            ; preds = %bb.cd
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %.body130.i unwind label %bb.u, !noalias !13345

bb.cl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.gi, align 8, !alias.scope !13457, !noalias !13348
  %.sroa.2156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.2156.0..sroa_idx.i, align 16, !alias.scope !13457, !noalias !13348
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !13457, !noalias !13348
  %.sroa.4157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.8154.0.copyload.i, ptr %.sroa.4157.0..sroa_idx.i, align 16, !alias.scope !13457, !noalias !13348
  %.sroa.5158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.10.0.copyload.i, ptr %.sroa.5158.0..sroa_idx.i, align 8, !alias.scope !13457, !noalias !13348
  br label %bb.t

bb.cm:                                            ; preds = %bb.cn, %bb.cb
  store i8 0, ptr %i.fy, align 1, !noalias !13348
  br label %bb.cj

bb.cn:                                            ; preds = %bb.cb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl14CreateFunctionECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(288) %i.o)
          to label %bb.cm unwind label %bb.cp, !noalias !13345

bb.co:                                            ; preds = %bb.cq, %bb.cp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i
  %.pn55.i = phi { ptr, i32 } [ %i.gk, %bb.cp ], [ %.pn53.i, %bb.cq ], [ %.pn53.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.val, i64 2001
  store i8 0, ptr %i.gj, align 1, !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13348
  store i8 2, ptr %i.p, align 16, !noalias !13348
  resume { ptr, i32 } %.pn55.i

bb.cp:                                            ; preds = %bb.cn
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs7p2uQeJxui2_9deltalake.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl14CreateFunctionECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(288) %i.o) #38
          to label %bb.co unwind label %bb.u, !noalias !13345

_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext15create_function0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.z, %bb.cj
  %storemerge.i = phi i8 [ 1, %bb.cj ], [ 3, %bb.z ]
  store i8 %storemerge.i, ptr %i.p, align 16, !noalias !13348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext19create_memory_table0EENtB4_6Future4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 16 captures(none) dereferenceable(336) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.8.i.i = alloca [304 x i8], align 16      ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [336 x i8], align 16              ; 44 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [56 x i8], align 8                ; 5 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [112 x i8], align 8               ; 6 uses
  %i.w = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.8382.i = alloca [40 x i8], align 8       ; 7 uses
  %i.x = alloca [112 x i8], align 8               ; 7 uses
  %i.y = alloca [112 x i8], align 8               ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.3375.i = alloca [24 x i8], align 8       ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [320 x i8], align 16             ; 5 uses
  %i.ac = alloca [1680 x i8], align 8             ; 5 uses
  %i.ad = alloca [336 x i8], align 16             ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [56 x i8], align 8               ; 11 uses
  %i.ak = alloca [40 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [48 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [112 x i8], align 8              ; 6 uses
  %i.aq = alloca [112 x i8], align 8              ; 8 uses
  %.sroa.8334.i = alloca [40 x i8], align 8       ; 7 uses
  %i.ar = alloca [112 x i8], align 8              ; 7 uses
  %i.as = alloca [112 x i8], align 8              ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.3327.i = alloca [24 x i8], align 8       ; 5 uses
  %i.au = alloca [40 x i8], align 8               ; 8 uses
  %i.av = alloca [320 x i8], align 16             ; 5 uses
  %i.aw = alloca [1680 x i8], align 8             ; 5 uses
  %i.ax = alloca [336 x i8], align 16             ; 4 uses
  %i.ay = alloca [56 x i8], align 8               ; 5 uses
  %i.az = alloca [40 x i8], align 8               ; 9 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [336 x i8], align 16             ; 4 uses
  %i.bc = alloca [336 x i8], align 16             ; 7 uses
  %i.bd = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.0296.i = alloca [56 x i8], align 8       ; 7 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [24 x i8], align 8               ; 11 uses
  %i.bg = alloca [24 x i8], align 8               ; 11 uses
  %i.bh = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.9.i = alloca [40 x i8], align 8          ; 5 uses
  %.sroa.5.i = alloca [272 x i8], align 16        ; 4 uses
  %i.bi = alloca [1680 x i8], align 8             ; 10 uses
  %i.bj = alloca [320 x i8], align 16             ; 9 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 141 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3375.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3327.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 1240 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !2166, !noalias !13464, !noundef !4
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sink18.i.sroa.gep299.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.sink15.i.sroa.gep300.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.sink18.i221.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sink18.i221.sroa.gep351.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sink15.i223.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sink15.i223.sroa.gep352.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  switch i8 %i.bl, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.bc
end_hunk_14
