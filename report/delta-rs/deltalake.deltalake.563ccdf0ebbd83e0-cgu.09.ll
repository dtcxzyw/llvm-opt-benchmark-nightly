inline.NumInlined: 7581
inline.NumDeleted: 2927
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core3stre16trim_end_matchescECs7p2uQeJxui2_9deltalake:_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern13into_searcher.exit
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val)
  br label %bb.f

bb.f:                                             ; preds = %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsgFsIr8bmZ1R_10env_logger6loggerNtB3_7Builder8from_envNtB3_3EnvECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  store i8 0, ptr %.sroa.4.0..sroa_idx.a, align 1
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 90
  store i8 0, ptr %.sroa.52.0..sroa_idx, align 2
  store i64 1, ptr %i.f, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 4, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @7, ptr %.sroa.04.sroa.5.0..sroa_idx, align 8
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.04.sroa.4.0..sroa_idx, align 8
  %.sroa.04.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr %.sroa.04.sroa.5.0..sroa_idx.a, align 8
  %.sroa.04.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i8 0, ptr %.sroa.04.sroa.6.0..sroa_idx, align 4
  %.sroa.04.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  store i8 0, ptr %.sroa.04.sroa.7.0..sroa_idx, align 1
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger7BuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(168) %i.f) #38
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger3EnvECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.f, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.v:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB3_7Builder11parse_lossyReECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([1784 x i8]) align 8 captures(none) dereferenceable(1784) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [664 x i8], align 16              ; 12 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [56 x i8], align 8                ; 9 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 17 uses
  %i.o = alloca [472 x i8], align 8               ; 10 uses
  %i.p = alloca [472 x i8], align 8               ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [80 x i8], align 8                ; 15 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [80 x i8], align 8                ; 8 uses
end_hunk_0
